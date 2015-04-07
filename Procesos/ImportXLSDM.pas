unit ImportXLSDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB,
  System.Variants,
  Dialogs,
  QImport3, QImport3XLS, dxmdaset;

type
  TdmImportXLS = class(T_dmStandar)
    adoqInstrucciones: TADOQuery;
    QImport3XLS: TQImport3XLS;
    dxMemData: TdxMemData;
    dxMemDataNombre: TStringField;
    dxMemDataValor: TFloatField;
    adoqInstrucionesTipos: TADOQuery;
    dxMemDataIdPersona: TIntegerField;
    adocSetIncidencias: TADOCommand;
    adocGetPersona: TADOCommand;
    dxMemDataIdMovimientoTipo: TIntegerField;
    adocSetIncidenciasDetalle: TADOCommand;
    adoqInstrucionesTiposIdInstruccionTipoDetalle: TAutoIncField;
    adoqInstrucionesTiposIdMovimientoTipo: TIntegerField;
    adoqInstrucionesTiposNombre: TStringField;
    adoqInstrucionesTiposValor: TStringField;
    adoqInstruccionesIdInstruccion: TAutoIncField;
    adoqInstruccionesIdInstruccionTipo: TIntegerField;
    adoqInstruccionesIdDocumentoAdjunto: TIntegerField;
    procedure QImport3XLSBeforePost(Sender: TObject; Row: TQImportRow;
      var Accept: Boolean);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FIdInstruccion: Integer;
    FIdInstruccionTipo: Integer;
    FArchivoXLS: string;
    procedure SetArchivoXLS(const Value: string);
    procedure SetIdInstruccionTipo(const Value: Integer);
    procedure SetIncidencias(IdInstruccion, IdInstruccionTipo: Integer);
    property IdInstruccionTipo: Integer read FIdInstruccionTipo write SetIdInstruccionTipo;
    property ArchivoXLS: string read FArchivoXLS write SetArchivoXLS;
  public
    { Public declarations }
    procedure Execute;
    property IdInstruccion: Integer read FIdInstruccion write FIdInstruccion;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses _ConectionDmod, ImportXLSForm;

{$R *.dfm}

{ TdmImportXLS }

procedure TdmImportXLS.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmImportXLS.Create(Self);
  gGridForm.DataSet:= dxMemData;
end;

procedure TdmImportXLS.Execute;
begin
  adoqInstrucciones.Close;
  adoqInstrucciones.Parameters.ParamByName('IdInstruccion').Value:= IdInstruccion;
  adoqInstrucciones.Open;
  try
    if not adoqInstrucciones.IsEmpty then
    begin
      IdInstruccionTipo:= adoqInstruccionesIdInstruccionTipo.Value;
      ArchivoXLS:= 'C:\Temp\Prueba.xls';
      SetIncidencias(IdInstruccion, IdInstruccionTipo);
      ShowMessage('Proceso terminado...');
    end
    else
    begin
      ShowMessage('No existe la instruccion seleccionada.');
    end;
  finally
    adoqInstrucciones.Close;
  end;
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

procedure TdmImportXLS.SetIncidencias(IdInstruccion, IdInstruccionTipo: Integer);
const
  MapFieldNombre = 'NOMBRE';
  MapFieldValor  = 'VALOR';
  MapSeparador   = '=';
  MapFinal       = ';';

procedure GetInstrucciones;
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

procedure SetIdPersona;
begin
  dxMemData.First;
  while not dxMemData.Eof do
  begin
    adocGetPersona.Parameters.ParamByName('Nombre').Value:=  dxMemDataNombre.AsString;
    adocGetPersona.Execute;
    dxMemData.Edit;
    if VarIsNull(adocGetPersona.Parameters.ParamByName('IdPersona').Value) then
      dxMemDataIdPersona.Value:= 0
    else
      dxMemDataIdPersona.Value:= adocGetPersona.Parameters.ParamByName('IdPersona').Value;
    dxMemData.Next;
  end;
end;

procedure SetInstruccion;
var
  IdIncidencia: Integer;
begin
  dxMemData.First;
  while not dxMemData.Eof do
  begin
    if dxMemDataIdPersona.Value <> 0 then
    begin
      // Inserta Insidencia
      adocSetIncidencias.Parameters.ParamByName('IdInstruccion').Value:=  IdInstruccion;
      adocSetIncidencias.Parameters.ParamByName('IdPersona').Value:= dxMemDataIdPersona.Value;
      adocSetIncidencias.Execute;
      IdIncidencia:= adocSetIncidencias.Parameters.ParamByName('IdIncidencia').Value;
      // Inserta Insidencia detalle
      adocSetIncidenciasDetalle.Parameters.ParamByName('IdIncidencia').Value:= IdIncidencia;
      adocSetIncidenciasDetalle.Parameters.ParamByName('IdMovimientoTipo').Value:= dxMemDataIdMovimientoTipo.Value;
      adocSetIncidenciasDetalle.Parameters.ParamByName('Importe').Value:= dxMemDataValor.Value;
      adocSetIncidenciasDetalle.Execute;
    end;
    dxMemData.Next;
  end;
end;

begin
  dxMemData.Close;
  dxMemData.Open;
  GetInstrucciones;
  SetIdPersona;
  SetInstruccion;
end;

end.
