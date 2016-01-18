unit CuentasXPagarDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, Vcl.Dialogs, System.UITypes;

resourcestring
  strUpdateEstatus  = '¿Desea modificar el estatus del pago?';

type
  TCXPEstatus = (CXPEPendiente,CXPEProgramada,CXPEAutorizada,CXPEPagada,CXPEConciliada);
  TdmCuentasXPagar = class(T_dmStandar)
    adodsMasterIdCuentaXPagar: TIntegerField;
    adodsMasterIdPersonaRol: TIntegerField;
    adodsMasterIdPeriodo: TIntegerField;
    adodsMasterIdCuentaXPagarEstatus: TIntegerField;
    adodsMasterPersona: TStringField;
    adodsMasterPersonaRelacionada: TStringField;
    adodsMasterConceptoGenerico: TStringField;
    adodsMasterSumaSubtotal: TFMTBCDField;
    adodsMasterSumaTotal: TFMTBCDField;
    adodsMasterSumaDescuentos: TFMTBCDField;
    adodsMasterTotalIVATrasladado: TFMTBCDField;
    adodsMasterTotalISRTrasladado: TFMTBCDField;
    adodsMasterTotalIEPSTrasladado: TFMTBCDField;
    adodsMasterTotalLocalesTrasladado: TFMTBCDField;
    adodsMasterTotalIVARetenido: TFMTBCDField;
    adodsMasterTotalISRRetenido: TFMTBCDField;
    adodsMasterTotalLocalesRetenido: TFMTBCDField;
    adodsMasterSaldoPendiente: TFMTBCDField;
    adodsMasterEstatus: TStringField;
    dsMaster: TDataSource;
    adodsMovimientosDetalle: TADODataSet;
    adodsMovimientosDetalleIdMovimientoDetalle: TIntegerField;
    adodsMovimientosDetalleIdCuentaXPagar: TIntegerField;
    adodsMovimientosDetalleIdPersonaRol: TIntegerField;
    adodsMovimientosDetalleIdMovimientoTipo: TIntegerField;
    adodsMovimientosDetalleIdMovimientoEstatus: TIntegerField;
    adodsMovimientosDetallePersonaRelacionada: TStringField;
    adodsMovimientosDetalleTipo: TStringField;
    adodsMovimientosDetalleCategoria: TStringField;
    adodsMovimientosDetalleEfecto: TStringField;
    adodsMovimientosDetalleImporte: TFMTBCDField;
    adodsMovimientosDetalleEstatus: TStringField;
    adospCuentasXPagar: TADOStoredProc;
    adodsPeriodo: TADODataSet;
    adodsCuentasXPagarPagos: TADODataSet;
    adodsCuentasXPagarPagosIdCuentaXPagarPago: TAutoIncField;
    adodsCuentasXPagarPagosIdCuentaXPagar: TIntegerField;
    adodsCuentasXPagarPagosEstatus: TStringField;
    adodsCuentasXPagarPagosReceptora: TStringField;
    adodsCuentasXPagarPagosPagadora: TStringField;
    adodsCuentasXPagarPagosFechaProgramada: TDateTimeField;
    adodsCuentasXPagarPagosMontoProgramado: TFMTBCDField;
    adodsMovimientosDetalleFecha: TDateTimeField;
    adodsMovimientosDetalleAplicarCategoria: TBooleanField;
    adodsMasterFlujoEfectivo: TFMTBCDField;
    actExpotarPagos: TAction;
    actDescargarPagos: TAction;
    actCambiarEstatus: TAction;
    adodsCuentasXPagarPagosIdCuentaXPagarEstatus: TIntegerField;
    adospUpdCuentasXPagarPagosEstatus: TADOStoredProc;
    procedure DataModuleCreate(Sender: TObject);
    procedure actExpotarPagosExecute(Sender: TObject);
    procedure actDescargarPagosExecute(Sender: TObject);
    procedure actCambiarEstatusUpdate(Sender: TObject);
    procedure actCambiarEstatusExecute(Sender: TObject);
  private
    { Private declarations }
    FIdPeriodoActual: Integer;
    function SetIdEstatusDestino: TCXPEstatus;
    function SetIdEstatusOrigen: TCXPEstatus;
    function SetIdCuentaXPagarPago: Integer;
    function CuentasXPagarPagosEstatus: Boolean;
  protected
    procedure SetFilter; override;
    property IdCuentaXPagarPago: Integer read SetIdCuentaXPagarPago;
    property IdEstatusOrigen: TCXPEstatus read SetIdEstatusOrigen;
    property IdEstatusDestino: TCXPEstatus read SetIdEstatusDestino;
  public
    { Public declarations }
    property IdPeriodoActual: Integer read FIdPeriodoActual;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CuentasXPagarForm, MovimientosDetalleFrm, CuentasXPagarPagosForm,
  ConfiguracionDM, ExportarPagosBancoDM, _Utils;

{$R *.dfm}

procedure TdmCuentasXPagar.actCambiarEstatusExecute(Sender: TObject);
begin
  inherited;
  if CuentasXPagarPagosEstatus then
    RefreshADODS(adodsCuentasXPagarPagos, adodsCuentasXPagarPagosIdCuentaXPagarPago);
end;

procedure TdmCuentasXPagar.actCambiarEstatusUpdate(Sender: TObject);
begin
  inherited;
  case IdEstatusOrigen of
    CXPEProgramada:
    begin
      actCambiarEstatus.Enabled:= True;
      actCambiarEstatus.Caption:= 'Cambiar a Autorizar';
    end;
    CXPEAutorizada:
    begin
      actCambiarEstatus.Enabled:= True;
      actCambiarEstatus.Caption:= 'Cambiar a Programar';
    end;
  else
    actCambiarEstatus.Enabled:= False;
  end;
end;

procedure TdmCuentasXPagar.actDescargarPagosExecute(Sender: TObject);
var
  dmExportaPagos: TdmExportarPagosBancos;
begin
  inherited;
  dmExportaPagos := TdmExportarPagosBancos.Create(nil);
  try
    dmExportaPagos.actBajarArchivoPagos.Execute;
  finally
    FreeAndNil(dmExportaPagos);
  end;
end;

procedure TdmCuentasXPagar.actExpotarPagosExecute(Sender: TObject);
var
  dmExportaPagos: TdmExportarPagosBancos;
begin
  inherited;
  dmExportaPagos := TdmExportarPagosBancos.Create(nil);
  try
    dmExportaPagos.actExportaBanorte.Execute;
  finally
    FreeAndNil(dmExportaPagos);
  end;
end;

function TdmCuentasXPagar.CuentasXPagarPagosEstatus: Boolean;
begin
  if IdCuentaXPagarPago <> 0 then
  begin
    if MessageDlg(strUpdateEstatus, mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      ScreenCursorProc(crSQLWait);
      try
        adospUpdCuentasXPagarPagosEstatus.Parameters.ParamByName('@IdCuentaXPagarPago').Value:= IdCuentaXPagarPago;
        adospUpdCuentasXPagarPagosEstatus.Parameters.ParamByName('@IdCuentaXPagarEstatusOrigen').Value:= IdEstatusOrigen;
        adospUpdCuentasXPagarPagosEstatus.Parameters.ParamByName('@IdCuentaXPagarEstatusDestino').Value:= IdEstatusDestino;
        adospUpdCuentasXPagarPagosEstatus.ExecProc;
      finally
        ScreenCursorProc(crDefault);
      end;
//    MessageDlg('Proceso terminado.', mtInformation, [mbOk], 0);
      Result:= True;
    end;
  end;
end;

procedure TdmCuentasXPagar.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FIdPeriodoActual := dmConfiguracion.IdPeridoActual;
  adodsMovimientosDetalle.Open;
  adodsCuentasXPagarPagos.Open;
  gGridForm:= TfrmCuentasXPagar.Create(Self);
  gGridForm.ReadOnlyGrid:= True;
  gGridForm.DataSet:= adodsMaster;
  TfrmCuentasXPagar(gGridForm).ExportarPagos:= actExpotarPagos;
  TfrmCuentasXPagar(gGridForm).DescargarPagos:= actDescargarPagos;
  gFormDeatil1:= TfrmMovimientosDetalle.Create(Self);
  gFormDeatil1.ReadOnlyGrid:= True;
  gFormDeatil1.DataSet:= adodsMovimientosDetalle;
  gFormDeatil2:= TfrmCuentasXPagarPagos.Create(Self);
  gFormDeatil2.ReadOnlyGrid:= True;
  gFormDeatil2.DataSet:= adodsCuentasXPagarPagos;
  TfrmCuentasXPagarPagos(gFormDeatil2).CambiarEstatus:= actCambiarEstatus;
  // Filtrado
  SQLSelect:= 'select IdCuentaXPagar, IdPersonaRol, IdPeriodo, IdCuentaXPagarEstatus, ' +
  'Persona, PersonaRelacionada, ConceptoGenerico, SumaSubtotal, SumaTotal, SumaDescuentos, ' +
  'TotalIVATrasladado, TotalISRTrasladado, TotalIEPSTrasladado, TotalLocalesTrasladado, ' +
  'TotalIVARetenido, TotalISRRetenido, TotalLocalesRetenido, SaldoPendiente, FlujoEfectivo, Estatus from vCuentasXPagar';
  SQLOrderBy:= 'order by Persona';
  gGridForm.actSearch:= actSearch;
  adodsPeriodo.Open;
  TfrmCuentasXPagar(gGridForm).DataSetPeriodo:= adodsPeriodo;
  // Ejecuta filtrado
  TfrmCuentasXPagar(gGridForm).IdPeriodo:= IdPeriodoActual;
  actSearch.Execute;
end;

//function TdmCuentasXPagar.SetCuentaXPagar: Boolean;
//var
//  IdPeriodo: Integer;
//begin
//  Result:= False;
//  IdPeriodo:= IdPeriodoActual;
//  if IdPeriodo <> 0 then
//  begin
//    adospCuentasXPagar.Parameters.ParamByName('@IdPeriodo').Value:= IdPeriodo;
//    adospCuentasXPagar.ExecProc;
//    MessageDlg('Proceso terminado.', mtInformation, [mbOk], 0);
//    Result:= True;
//  end;
//end;

procedure TdmCuentasXPagar.SetFilter;
var
  IdPeriodo: Integer;
begin
  inherited;
  IdPeriodo:= TfrmCuentasXPagar(gGridForm).IdPeriodo;
  SQLWhere:= Format('WHERE IdPeriodo = %d', [IdPeriodo]);
end;

function TdmCuentasXPagar.SetIdCuentaXPagarPago: Integer;
begin
  if adodsCuentasXPagarPagos.Active then
    Result := adodsCuentasXPagarPagosIdCuentaXPagarPago.Value;
end;

function TdmCuentasXPagar.SetIdEstatusDestino: TCXPEstatus;
begin
  case IdEstatusOrigen of
    CXPEProgramada: Result:= CXPEAutorizada;
    CXPEAutorizada: Result:= CXPEProgramada;
  end;
end;

function TdmCuentasXPagar.SetIdEstatusOrigen: TCXPEstatus;
begin
  if adodsCuentasXPagarPagos.Active then
    Result:= TCXPEstatus(adodsCuentasXPagarPagosIdCuentaXPagarEstatus.Value);
end;

end.
