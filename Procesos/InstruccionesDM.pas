unit InstruccionesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, Vcl.Dialogs, System.UITypes;

resourcestring
  strProcessGroup = '¿Deseas generar las incidencias de las instrucciones creadas?';

type
  TdmInstrucciones = class(T_dmStandar)
    adodsMasterIdInstruccion: TAutoIncField;
    adodsMasterIdInstruccionTipo: TIntegerField;
    adodsMasterIdPersonaSolicita: TIntegerField;
    adodsMasterIdDocumento: TIntegerField;
    adodsMasterConcepto: TStringField;
    adodsMasterFecha: TDateTimeField;
    adodsInstruccionesTipos: TADODataSet;
    adodsMasterIntruccionTipo: TStringField;
    actProcessXLS: TAction;
    actUpdateFile: TAction;
    adodsDocumentos: TADODataSet;
    adodsMasterNombreArchivo: TStringField;
    adodsMasterIdPeriodoTipo: TIntegerField;
    adodsMasterRepetir: TBooleanField;
    adodsMasterRepetirInicio: TDateTimeField;
    adodsMasterRepetirFinaliza: TIntegerField;
    adodsMasterRepetirFin: TDateTimeField;
    adodsMasterRepetirHasta: TIntegerField;
    adodsPeriodosTipo: TADODataSet;
    adodsMasterPeriodoTipo: TStringField;
    actCreateMov: TAction;
    actCreateGroup: TAction;
    adocUpdInstrucciones: TADOCommand;
    adodsMasterIncidenciasGeneradas: TBooleanField;
    adoqTmpInstrucciones: TADOQuery;
    adoqTmpInstruccionesIdInstruccion: TIntegerField;
    actDeleteIncidencias: TAction;
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure actProcessXLSExecute(Sender: TObject);
    procedure actUpdateFileExecute(Sender: TObject);
    procedure actCreateMovExecute(Sender: TObject);
    procedure actCreateGroupExecute(Sender: TObject);
    procedure actProcessXLSUpdate(Sender: TObject);
    procedure actDeleteIncidenciasExecute(Sender: TObject);
    procedure actDeleteIncidenciasUpdate(Sender: TObject);
  private
    { Private declarations }
    FDiaPagoActual: TDateTime;
    function ProcessXLS(IdInstruccion: Integer): Boolean;
    function DeleteIncidencias(IdInstruccion: Integer): Boolean;
    procedure SetIncidenciasGeneradas(IdInstruccion: Integer; Generadas: Boolean);
  public
    { Public declarations }
    property DiaPagoActual: TDateTime read FDiaPagoActual;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses InstruccionesForm, ImportXLSDM, DocumentosDM,
  InstruccionesPeriodosDM, TmpInstruccionesDM, _Utils, ConfiguracionDM;

{$R *.dfm}

procedure TdmInstrucciones.actCreateGroupExecute(Sender: TObject);
var
  dmInstrucciones: TdmTmpInstrucciones;

  procedure ProcessGroup();
  begin
    if MessageDlg(strProcessGroup, mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      adoqTmpInstrucciones.Close;
      adoqTmpInstrucciones.Open;
      while not adoqTmpInstrucciones.Eof do
      begin
        ProcessXLS(adoqTmpInstruccionesIdInstruccion.Value);
        adoqTmpInstrucciones.Next
      end;
    end;
  end;

begin
  dmInstrucciones := TdmTmpInstrucciones.Create(Self);
  try
    dmInstrucciones.Inicio:= DiaPagoActual;
    dmInstrucciones.IdPersonaSolicita:= 1;
    if dmInstrucciones.Execute then
    begin
      ProcessGroup();
      RefreshADODS(adodsMaster, adodsMasterIdInstruccion);
    end;
  finally
    dmInstrucciones.Free;
  end;
end;

procedure TdmInstrucciones.actCreateMovExecute(Sender: TObject);
var
  dmInstruccionesPeriodos: TdmInstruccionesPeriodos;
begin
  inherited;
  dmInstruccionesPeriodos := TdmInstruccionesPeriodos.Create(Self);
  try
    dmInstruccionesPeriodos.Execute;
  finally
    dmInstruccionesPeriodos.Free;
  end;
end;

procedure TdmInstrucciones.actDeleteIncidenciasExecute(Sender: TObject);
begin
  inherited;
  if DeleteIncidencias(adodsMasterIdInstruccion.Value) then
    RefreshADODS(adodsMaster, adodsMasterIdInstruccion);
end;

procedure TdmInstrucciones.actDeleteIncidenciasUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled:= adodsMasterIncidenciasGeneradas.Value;
end;

procedure TdmInstrucciones.actProcessXLSExecute(Sender: TObject);
begin
  inherited;
  if ProcessXLS(adodsMasterIdInstruccion.Value) then
    RefreshADODS(adodsMaster, adodsMasterIdInstruccion);
end;

procedure TdmInstrucciones.actProcessXLSUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled:= not adodsMasterIncidenciasGeneradas.Value;
end;

procedure TdmInstrucciones.actUpdateFileExecute(Sender: TObject);
var
  dmDocumentos: TdmDocumentos;
  Id: Integer;
begin
  inherited;
  dmDocumentos:= TdmDocumentos.Create(nil);
  Id:= adodsMasterIdDocumento.AsInteger;
  if Id  <> 0 then
  begin
    dmDocumentos.Edit(Id);
    adodsDocumentos.Requery();
  end
  else
  begin
    Id:= dmDocumentos.Add;
    if  Id <> 0 then
    begin
      adodsDocumentos.Requery();
      adodsMasterIdDocumento.AsInteger:= Id;
    end;
  end;
  dmDocumentos.Free;
end;

procedure TdmInstrucciones.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsMasterIdPersonaSolicita.Value:= 1;
  adodsMasterRepetirFinaliza.Value:= 0;
  adodsMasterFecha.Value:= Date;
  adodsMasterRepetirInicio.Value:= DiaPagoActual;
  adodsMasterRepetir.Value:= False;
end;

procedure TdmInstrucciones.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FDiaPagoActual:= dmConfiguracion.DiaPagoActual;
  gGridForm:= TfrmInstrucciones.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  TfrmInstrucciones(gGridForm).CreateMov:= actCreateMov;
  TfrmInstrucciones(gGridForm).CreateGroup:= actCreateGroup;
  TfrmInstrucciones(gGridForm).ProcessXLS:= actProcessXLS;
  TfrmInstrucciones(gGridForm).DeleteIncidencias:= actDeleteIncidencias;
  TfrmInstrucciones(gGridForm).UpdateFile:= actUpdateFile;
end;

function TdmInstrucciones.DeleteIncidencias(IdInstruccion: Integer): Boolean;
var
  dmImportXLS: TdmImportXLS;
begin
  dmImportXLS := TdmImportXLS.Create(Self);
  try
    dmImportXLS.IdInstruccion:= IdInstruccion;
    Result:= dmImportXLS.DeleteIncidencias;
    if Result then
      SetIncidenciasGeneradas(IdInstruccion, False);
  finally
    dmImportXLS.Free;
  end;
end;

function TdmInstrucciones.ProcessXLS(IdInstruccion: Integer): Boolean;
var
  dmImportXLS: TdmImportXLS;
begin
  dmImportXLS := TdmImportXLS.Create(Self);
  try
    dmImportXLS.IdInstruccion:= IdInstruccion;
    Result:= dmImportXLS.Execute;
    if Result then
      SetIncidenciasGeneradas(IdInstruccion, True);
  finally
    dmImportXLS.Free;
  end;
end;

procedure TdmInstrucciones.SetIncidenciasGeneradas(IdInstruccion: Integer;
  Generadas: Boolean);
begin
  adocUpdInstrucciones.Parameters.ParamByName('Generadas').Value:= Generadas;
  adocUpdInstrucciones.Parameters.ParamByName('IdInstruccion').Value:= IdInstruccion;
  adocUpdInstrucciones.Execute;
end;

end.
