unit ImportXLSDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, Vcl.Controls,
  System.Variants,
  System.UITypes,
  Vcl.Dialogs,
  QImport3, QImport3XLS, dxmdaset, QImport3Xlsx;

const
  MapFieldNombre = 'NOMBRE';
  MapFieldValor  = 'VALOR';
  MapFieldTipo   = 'IdMovimientoTipo';
  MapFieldMoneda = 'IdMoneda';
  MapSeparador   = '=';
  MapFinal       = ';';
  XLSxExt        = '.XLSX';
  IdPersonaSinAsignar = 1;

resourcestring
  StrInvalidFile    = 'El archivo guardado no es valido para el proceso, requiere archivo %s.';
  StrNotInstruction = 'No existe la instruccion seleccionada.';
  StrGetInfo        = 'Obteniendo datos';
  StrVerifInfo      = 'Verificando informaci�n';
  StrSetInfo        = 'Procesando informaci�n';
  StrSelectInfo     = 'Las personas no encontradas no podran generar incidencias, �Desea continuar?';
  StrDeleteIncidentcia = '�Desea eliminar las incidencias relacionadas a esta instrucci�n?';
  StrExistMovimientos  = 'Existen movimientos asociados a incidencias generada por esta instrucci�n, para poder eliminarla primero debe eliminarse los movimientos asociados.';
type
  TdmImportXLS = class(T_dmStandar)
    adoqInstrucciones: TADOQuery;
    QImport3XLS: TQImport3XLS;
    dxmdImportar: TdxMemData;
    dxmdImportarNombre: TStringField;
    dxmdImportarValor: TFloatField;
    adoqInstrucionesTipos: TADOQuery;
    dxmdImportarIdPersona: TIntegerField;
    adocSetIncidencias: TADOCommand;
    adocGetPersona: TADOCommand;
    dxmdImportarIdMovimientoTipo: TIntegerField;
    adocSetIncidenciasDetalle: TADOCommand;
    adoqInstrucionesTiposIdInstruccionTipoDetalle: TAutoIncField;
    adoqInstrucionesTiposIdMovimientoTipo: TIntegerField;
    adoqInstrucionesTiposNombre: TStringField;
    adoqInstrucionesTiposValor: TStringField;
    adoqInstruccionesIdInstruccion: TAutoIncField;
    adoqInstruccionesIdInstruccionTipo: TIntegerField;
    adoqInstruccionesIdDocumento: TIntegerField;
    dxmdImportarGenerada: TBooleanField;
    dxmdImportarEncontrada: TBooleanField;
    adodsMovimientosTipos: TADODataSet;
    dxmdImportarMovimientoTipo: TStringField;
    QImport3Xlsx: TQImport3Xlsx;
    adoqInstrucionesTiposIdMoneda: TIntegerField;
    dxmdImportarIdMoneda: TIntegerField;
    adocGetTipoNombre: TADOCommand;
    adocDeleteIncidencias: TADOCommand;
    adoqVerificaIncedencias: TADOQuery;
    adoqVerificaIncedenciasMovimientos: TIntegerField;
    procedure QImport3XLSBeforePost(Sender: TObject; Row: TQImportRow;
      var Accept: Boolean);
    procedure DataModuleCreate(Sender: TObject);
    procedure dxmdImportarNewRecord(DataSet: TDataSet);
    procedure QImport3XlsxBeforePost(Sender: TObject; Row: TQImportRow;
      var Accept: Boolean);
    procedure QImport3XlsxImportRecord(Sender: TObject);
  private
    { Private declarations }
    FIdInstruccion: Integer;
    FIdInstruccionTipo: Integer;
    FArchivoXLS: string;
    FArchivoXLSx: string;
    procedure SetArchivoXLS(const Value: string);
    procedure SetIdInstruccionTipo(const Value: Integer);
    procedure GetInstrucciones;
    function SetIncidencias: Boolean;
    function CorrectInstrucciones: Boolean;
    procedure SetArchivoXLSx(const Value: string);
    property IdInstruccionTipo: Integer read FIdInstruccionTipo write SetIdInstruccionTipo;
    property ArchivoXLS: string read FArchivoXLS write SetArchivoXLS;
    property ArchivoXLSx: string read FArchivoXLSx write SetArchivoXLSx;
  public
    { Public declarations }
    function Execute: Boolean;
    function DeleteIncidencias: Boolean;
    property IdInstruccion: Integer read FIdInstruccion write FIdInstruccion;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses _ConectionDmod, ImportXLSForm, VerificarForm, DocumentosDM,
  _Utils;

{$R *.dfm}

{ TdmImportXLS }

procedure TdmImportXLS.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmImportXLS.Create(Self);
  gGridForm.ReadOnlyGrid:= True;
  gGridForm.DataSet:= dxmdImportar;
end;

function TdmImportXLS.DeleteIncidencias: Boolean;
begin
  Result:= False;
  adoqVerificaIncedencias.Close;
  adoqVerificaIncedencias.Parameters.ParamByName('IdInstruccion').Value:= IdInstruccion;
  adoqVerificaIncedencias.Open;
  try
    if adoqVerificaIncedenciasMovimientos.Value = 0 then
    begin
      if MessageDlg(StrDeleteIncidentcia, mtConfirmation, mbYesNo, 0) = mrYes then
      begin
        adocDeleteIncidencias.Parameters.ParamByName('IdInstruccion').Value:= IdInstruccion;
        adocDeleteIncidencias.Execute;
        Result:= True;
      end;
    end
    else
      MessageDlg(StrExistMovimientos, mtInformation, [mbOK], 0);
  finally
    adoqVerificaIncedencias.Close;
  end;
end;

procedure TdmImportXLS.dxmdImportarNewRecord(DataSet: TDataSet);
begin
  inherited;
  dxmdImportarGenerada.Value:= False;
  dxmdImportarEncontrada.Value:= False;
end;

function TdmImportXLS.Execute: Boolean;
var
  frmSelect: TfrmVerificar;
  Ejecutar: Boolean;

  function SetArchivo: Boolean;
  var
    dmDocumentos: TdmDocumentos;
    FileName: TFileName;
    Ext: string;
  begin
    Result:= False;
    dmDocumentos := TdmDocumentos.Create(Self);
    try
      FileName:= dmDocumentos.GetFileName(adoqInstruccionesIdDocumento.Value);
    finally
      dmDocumentos.Free;
    end;
    Ext:= UpperCase(ExtractFileExt(FileName));
    if Ext = XLSxExt then
    begin
//    Se podria soportar: ArchivoXLS:= 'C:\Temp\Prueba.xls';
      ArchivoXLSx:= FileName;
      Result:= True;
    end;
  end;

begin
  Result:= False;
  Ejecutar:= True;
  // Obtiene parametros
  adoqInstrucciones.Close;
  adoqInstrucciones.Parameters.ParamByName('IdInstruccion').Value:= IdInstruccion;
  adoqInstrucciones.Open;
  try
    if not adoqInstrucciones.IsEmpty then
    begin
      IdInstruccionTipo:= adoqInstruccionesIdInstruccionTipo.Value;
      if not SetArchivo then
      begin
        Ejecutar:= False;
        MessageDlg(Format(strInvalidFile, [XLSxExt]), mtInformation, [mbOK], 0);
      end;
    end
    else
    begin
      Ejecutar:= False;
      MessageDlg(StrNotInstruction, mtInformation, [mbOK], 0);
    end;
  finally
    adoqInstrucciones.Close;
  end;
  // Ejecuta el proceso
  if Ejecutar then
  begin
    dxmdImportar.Close;
    dxmdImportar.Open;
    try
      GetInstrucciones;
      CorrectInstrucciones;
      frmSelect:= TfrmVerificar.Create(Self);
      try
        frmSelect.Info:= StrSelectInfo;
        ShowModule(frmSelect.pnlMaster,'');
        if frmSelect.ShowModal = mrOk then
          Result:= SetIncidencias;
      finally
        frmSelect.Free;
      end;
    finally
      dxmdImportar.Close;
    end;
  end;
end;

procedure TdmImportXLS.GetInstrucciones;
var
  Total: Integer;
  Position: Integer;
begin
  adoqInstrucionesTipos.Close;
  adoqInstrucionesTipos.Parameters.ParamByName('IdInstruccionTipo').Value:= IdInstruccionTipo;
  adoqInstrucionesTipos.Open;
  Total:= adoqInstrucionesTipos.RecordCount;
  Position:= 0;
  ShowProgress(Position, Total, StrGetInfo);
  while not adoqInstrucionesTipos.Eof do
  begin
    if ArchivoXLS <> EmptyStr then
    begin
      QImport3XLS.Map.Clear;
      QImport3XLS.Map.Add(MapFieldNombre + MapSeparador + adoqInstrucionesTiposNombre.AsString + MapFinal);
      QImport3XLS.Map.Add(MapFieldValor + MapSeparador + adoqInstrucionesTiposValor.AsString + MapFinal);
      QImport3XLS.Map.Add('IdMovimientoTipo=A1;');
      QImport3XLS.Map.Add('IdMoneda=A2;');
      QImport3XLS.Execute;
    end;
    if ArchivoXLSx <> EmptyStr then
    begin
      QImport3Xlsx.Map.Clear;
      QImport3Xlsx.Map.Add(MapFieldNombre + MapSeparador + adoqInstrucionesTiposNombre.AsString + MapFinal);
      QImport3Xlsx.Map.Add(MapFieldValor + MapSeparador + adoqInstrucionesTiposValor.AsString + MapFinal);
      QImport3Xlsx.Map.Add('IdMovimientoTipo=A1;');
      QImport3Xlsx.Map.Add('IdMoneda=A2;');
      QImport3Xlsx.Execute;
    end;
    Inc(Position);
    ShowProgress(Position, Total, StrGetInfo);
    adoqInstrucionesTipos.Next;
  end;
  adoqInstrucionesTipos.Close;
end;

procedure TdmImportXLS.QImport3XLSBeforePost(Sender: TObject; Row: TQImportRow;
  var Accept: Boolean);
var
  i: integer;
begin
  for i := 0 to Row.Count - 1 do begin
    if Row[i].Name = MapFieldNombre then
    begin
      if Row[i].Value = EmptyStr then
      begin
        Accept:= False;
        Continue;
      end;
    end;
    if Row[i].Name = MapFieldTipo then
    begin
      Row[i].Value := adoqInstrucionesTiposIdMovimientoTipo.AsString;
      Continue;
    end;
    if Row[i].Name = MapFieldMoneda then
    begin
      Row[i].Value := adoqInstrucionesTiposIdMoneda.AsString;
      Continue;
    end;
  end;
end;

procedure TdmImportXLS.QImport3XlsxBeforePost(Sender: TObject;
  Row: TQImportRow; var Accept: Boolean);
var
  i: integer;
begin
  for i := 0 to Row.Count - 1 do begin
    if Row[i].Name = MapFieldNombre then
    begin
      if Row[i].Value = EmptyStr then
      begin
        Accept:= False;
        Continue;
      end;
    end;
    if Row[i].Name = MapFieldTipo then
    begin
      Row[i].Value := adoqInstrucionesTiposIdMovimientoTipo.AsString;
      Continue;
    end;
    if Row[i].Name = MapFieldMoneda then
    begin
      Row[i].Value := adoqInstrucionesTiposIdMoneda.AsString;
      Continue;
    end;
  end;
end;

procedure TdmImportXLS.QImport3XlsxImportRecord(Sender: TObject);
begin
  inherited;
//  ShowProgress(QImport3Xlsx.ImportedRecs, 50);
end;

procedure TdmImportXLS.SetArchivoXLS(const Value: string);
begin
  FArchivoXLS := Value;
  QImport3XLS.FileName:= Value;
end;

procedure TdmImportXLS.SetArchivoXLSx(const Value: string);
begin
  FArchivoXLSx := Value;
  QImport3Xlsx.FileName:= Value;
end;

procedure TdmImportXLS.SetIdInstruccionTipo(const Value: Integer);
begin
  FIdInstruccionTipo := Value;
end;

function TdmImportXLS.SetIncidencias: Boolean;
var
  IdIncidencia: Integer;
  Total: Integer;
  Position: Integer;
begin
  Result:= False;
  dxmdImportar.First;
  Total:= dxmdImportar.RecordCount;
  Position:= 0;
  ShowProgress(Position, Total, StrSetInfo);
  while not dxmdImportar.Eof do
  begin
    if (dxmdImportarIdPersona.Value <> IdPersonaSinAsignar) and
    (dxmdImportarValor.Value <> 0) then
    begin
      // Inserta Insidencia
      adocSetIncidencias.Parameters.ParamByName('IdInstruccion').Value:=  IdInstruccion;
      adocSetIncidencias.Parameters.ParamByName('IdPersona').Value:= dxmdImportarIdPersona.Value;
      adocSetIncidencias.Execute;
      IdIncidencia:= adocSetIncidencias.Parameters.ParamByName('IdIncidencia').Value;
      // Inserta Insidencia detalle
      adocSetIncidenciasDetalle.Parameters.ParamByName('IdIncidencia').Value:= IdIncidencia;
      adocSetIncidenciasDetalle.Parameters.ParamByName('IdMovimientoTipo').Value:= dxmdImportarIdMovimientoTipo.Value;
      adocSetIncidenciasDetalle.Parameters.ParamByName('IdMoneda').Value:= dxmdImportarIdMoneda.Value;
      adocSetIncidenciasDetalle.Parameters.ParamByName('Importe').Value:= dxmdImportarValor.Value;
      adocSetIncidenciasDetalle.Execute;
      // Actualiza
      dxmdImportar.Edit;
      dxmdImportarGenerada.Value:= True;
      dxmdImportar.Post;
      Result:= True;
    end;
    Inc(Position);
    ShowProgress(Position, Total, StrSetInfo);
    dxmdImportar.Next;
  end;
end;

function TdmImportXLS.CorrectInstrucciones: Boolean;

function GetTipoNombre: Integer;
begin
  adocGetTipoNombre.Parameters.ParamByName('IdInstruccionTipo').Value:= IdInstruccionTipo;
  adocGetTipoNombre.Execute;
  Result:= adocGetTipoNombre.Parameters.ParamByName('TipoNombre').Value;
end;

function SetIdPersona: Boolean;
const
  SQLRFC = 'SELECT :IdPersona = IdPersona FROM Personas WHERE RFC = :Nombre;';
  SQLNombreNPM = 'SELECT :IdPersona = IdPersona FROM Personas WHERE RazonSocial = :Nombre;';
  SQLNombrePMN = 'SELECT :IdPersona = IdPersona FROM Personas WHERE (ApellidoPaterno + '' '' + ApellidoMaterno + '' '' + Nombre) = :Nombre;';
var
  Total: Integer;
  Position: Integer;
  IdPersona: Variant;
  Nombre: String;
  Dato: String;
  a: integer;
begin
  Result:= True;
  // Seleccciona el tipo de coincidancia
  a:= GetTipoNombre;
  case a of
    0: adocGetPersona.CommandText:= SQLRFC;
    1: adocGetPersona.CommandText:= SQLNombreNPM;
    2: adocGetPersona.CommandText:= SQLNombrePMN;
  end;
  dxmdImportar.First;
  Total:= dxmdImportar.RecordCount;
  Position:= 0;
  ShowProgress(Position, Total, StrVerifInfo);
  Nombre := EmptyStr;
  while not dxmdImportar.Eof do
  begin
    Dato:= Trim(dxmdImportarNombre.AsString);
    if Dato <> EmptyStr then
    begin
      if Dato <> Nombre then
      begin
        Nombre := Dato;
        adocGetPersona.Parameters.ParamByName('Nombre').Value:= Nombre;
        adocGetPersona.Execute;
        IdPersona:= adocGetPersona.Parameters.ParamByName('IdPersona').Value;
      end;
    end
    else
      IdPersona:= Null;
    dxmdImportar.Edit;
    if VarIsNull(IdPersona) then
    begin
      dxmdImportarEncontrada.Value:= False;
      dxmdImportarIdPersona.Value:= IdPersonaSinAsignar;
      Result:= False;
    end
    else
    begin
      dxmdImportarEncontrada.Value:= True;
      dxmdImportarIdPersona.Value:= VarAsType(IdPersona, varInteger );
    end;
    Inc(Position);
    ShowProgress(Position, Total, StrVerifInfo);
    dxmdImportar.Next;
  end;
end;

begin
  Result:= SetIdPersona;
end;

end.
