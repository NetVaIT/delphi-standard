unit ImportXLSDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, Vcl.Controls,
  System.Variants,
  Dialogs,
  QImport3, QImport3XLS, dxmdaset, QImport3Xlsx;

const
  IdPersonaSinAsignar = 1;

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
    adoqInstruccionesIdDocumentoAdjunto: TIntegerField;
    dxmdImportarGenerada: TBooleanField;
    dxmdImportarEncontrada: TBooleanField;
    adodsMovimientosTipos: TADODataSet;
    dxmdImportarMovimientoTipo: TStringField;
    QImport3Xlsx1: TQImport3Xlsx;
    procedure QImport3XLSBeforePost(Sender: TObject; Row: TQImportRow;
      var Accept: Boolean);
    procedure DataModuleCreate(Sender: TObject);
    procedure dxmdImportarNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    FIdInstruccion: Integer;
    FIdInstruccionTipo: Integer;
    FArchivoXLS: string;
    procedure SetArchivoXLS(const Value: string);
    procedure SetIdInstruccionTipo(const Value: Integer);
    procedure GetInstrucciones;
    procedure SetIncidencias;
    function CorrectInstrucciones: Boolean;
    property IdInstruccionTipo: Integer read FIdInstruccionTipo write SetIdInstruccionTipo;
    property ArchivoXLS: string read FArchivoXLS write SetArchivoXLS;
  public
    { Public declarations }
    procedure Execute;
    property IdInstruccion: Integer read FIdInstruccion write FIdInstruccion;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses _ConectionDmod, ImportXLSForm, ImportXLSSelect;

{$R *.dfm}

{ TdmImportXLS }

procedure TdmImportXLS.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmImportXLS.Create(Self);
  gGridForm.ReadOnlyGrid:= True;
  gGridForm.DataSet:= dxmdImportar;
end;

procedure TdmImportXLS.dxmdImportarNewRecord(DataSet: TDataSet);
begin
  inherited;
  dxmdImportarGenerada.Value:= False;
end;

procedure TdmImportXLS.Execute;
var
  frmSelect: TfrmImportXLSSelect;
begin
  // Obtiene parametros
  adoqInstrucciones.Close;
  adoqInstrucciones.Parameters.ParamByName('IdInstruccion').Value:= IdInstruccion;
  adoqInstrucciones.Open;
  try
    if not adoqInstrucciones.IsEmpty then
    begin
      IdInstruccionTipo:= adoqInstruccionesIdInstruccionTipo.Value;
      ArchivoXLS:= 'C:\Temp\Prueba.xls';
    end
    else
    begin
      ShowMessage('No existe la instruccion seleccionada.');
    end;
  finally
    adoqInstrucciones.Close;
  end;
  // Ejecuta el proceso
  dxmdImportar.Close;
  dxmdImportar.Open;
  try
    GetInstrucciones;
    CorrectInstrucciones;
    frmSelect:= TfrmImportXLSSelect.Create(Self);
    try
      ShowModule(frmSelect.pnlMaster,'');
      if frmSelect.ShowModal = mrOk then
        SetIncidencias;
    finally
      frmSelect.Free;
    end;
  finally
    dxmdImportar.Close;
  end;
end;

procedure TdmImportXLS.GetInstrucciones;
const
  MapFieldNombre = 'NOMBRE';
  MapFieldValor  = 'VALOR';
  MapSeparador   = '=';
  MapFinal       = ';';
begin
  adoqInstrucionesTipos.Close;
  adoqInstrucionesTipos.Parameters.ParamByName('IdInstruccionTipo').Value:= IdInstruccionTipo;
  adoqInstrucionesTipos.Open;
  while not adoqInstrucionesTipos.Eof do
  begin
    QImport3XLS.Map.Clear;
    QImport3XLS.Map.Add(MapFieldNombre + MapSeparador + adoqInstrucionesTiposNombre.AsString + MapFinal);
    QImport3XLS.Map.Add(MapFieldValor + MapSeparador + adoqInstrucionesTiposValor.AsString + MapFinal);
    QImport3XLS.Map.Add('IdMovimientoTipo=A1;');
    QImport3XLS.Execute;
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
    if Row[i].Name = 'IdMovimientoTipo' then begin
      Row[i].Value := adoqInstrucionesTiposIdMovimientoTipo.AsString;
      Continue;
    end;
  end;
end;

procedure TdmImportXLS.SetArchivoXLS(const Value: string);
begin
  FArchivoXLS := Value;
  QImport3XLS.FileName:= Value;
end;

procedure TdmImportXLS.SetIdInstruccionTipo(const Value: Integer);
begin
  FIdInstruccionTipo := Value;
end;

procedure TdmImportXLS.SetIncidencias;
var
  IdIncidencia: Integer;
begin
  dxmdImportar.First;
  while not dxmdImportar.Eof do
  begin
    if dxmdImportarIdPersona.Value <> IdPersonaSinAsignar then
    begin
      // Inserta Insidencia
      adocSetIncidencias.Parameters.ParamByName('IdInstruccion').Value:=  IdInstruccion;
      adocSetIncidencias.Parameters.ParamByName('IdPersona').Value:= dxmdImportarIdPersona.Value;
      adocSetIncidencias.Execute;
      IdIncidencia:= adocSetIncidencias.Parameters.ParamByName('IdIncidencia').Value;
      // Inserta Insidencia detalle
      adocSetIncidenciasDetalle.Parameters.ParamByName('IdIncidencia').Value:= IdIncidencia;
      adocSetIncidenciasDetalle.Parameters.ParamByName('IdMovimientoTipo').Value:= dxmdImportarIdMovimientoTipo.Value;
      adocSetIncidenciasDetalle.Parameters.ParamByName('Importe').Value:= dxmdImportarValor.Value;
      adocSetIncidenciasDetalle.Execute;
      // Actualiza
      dxmdImportar.Edit;
      dxmdImportarGenerada.Value:= True;
      dxmdImportar.Post;
    end;
    dxmdImportar.Next;
  end;
end;

function TdmImportXLS.CorrectInstrucciones: Boolean;

function SetIdPersona: Boolean;
begin
  Result:= True;
  dxmdImportar.First;
  while not dxmdImportar.Eof do
  begin
    adocGetPersona.Parameters.ParamByName('Nombre').Value:=  dxmdImportarNombre.AsString;
    adocGetPersona.Execute;
    dxmdImportar.Edit;
    if VarIsNull(adocGetPersona.Parameters.ParamByName('IdPersona').Value) then
    begin
      dxmdImportarEncontrada.Value:= False;
      dxmdImportarIdPersona.Value:= IdPersonaSinAsignar;
      Result:= False;
    end
    else
    begin
      dxmdImportarEncontrada.Value:= True;
      dxmdImportarIdPersona.Value:= adocGetPersona.Parameters.ParamByName('IdPersona').Value;
    end;
    dxmdImportar.Next;
  end;
end;

begin
  Result:= SetIdPersona;
end;

end.
