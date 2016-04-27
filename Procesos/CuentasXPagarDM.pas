unit CuentasXPagarDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, Vcl.Dialogs, System.UITypes;

resourcestring
  strUpdateEstatus  = '¿Desea modificar el estatus del pago?';
  strAutorizar      = '¿Desea AUTORIZAR en el periodo actual los pagos que se encuentren programados con anterioridad?';

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
    actCambiarEstatus: TAction;
    adodsCuentasXPagarPagosIdCuentaXPagarEstatus: TIntegerField;
    adospUpdCuentasXPagarPagosEstatus: TADOStoredProc;
    actAutorizar: TAction;
    adopSetCuentasXPagarPagosAutorizar: TADOStoredProc;
    adodsCuentasXPagarPagosIdPersonaRol: TIntegerField;
    adodsMonedas: TADODataSet;
    adodsCtaBanPagador: TADODataSet;
    adodsCtaBanCobrador: TADODataSet;
    adodsPagos: TADODataSet;
    adodsPagosIdPersonaRol: TIntegerField;
    adodsPagosFechaProgramacion: TDateTimeField;
    adodsPagosIdUsuarioPrograma: TIntegerField;
    adodsPagosFechaProgramada: TDateTimeField;
    adodsPagosMontoAutorizado: TFMTBCDField;
    adodsPagosMontoProgramado: TFMTBCDField;
    adodsPagosFechaPago: TDateTimeField;
    adodsPagosIdUsuarioPago: TIntegerField;
    adodsPagosFechaConcilia: TDateTimeField;
    adodsPagosIdUsuarioConcilia: TIntegerField;
    adodsPagosIDCuentaBancariaPagador: TIntegerField;
    adodsPagosIDCuentaBancariaCobrador: TIntegerField;
    adodsPagosIDMoneda: TIntegerField;
    adodsPagosIdCuentaXPagarPago: TAutoIncField;
    adodsPagosIdCuentaXPagar: TIntegerField;
    adodsPagosFechaAutorizacion: TDateTimeField;
    adodsPagosIdUsuarioAutoriza: TIntegerField;
    adodsPagosIdMonedaExtranjera: TIntegerField;
    adodsPagosTipoCambio: TFMTBCDField;
    adodsPagosTotalMonedaExtranjera: TFMTBCDField;
    adodsPagosTotalMonedaNacional: TFMTBCDField;
    adodsPagosIdEstadoCuenta: TIntegerField;
    adodsPagosUsuarioPrograma: TStringField;
    adodsPagosUsuarioAutoriza: TStringField;
    adodsPagosUsuarioPaga: TStringField;
    adodsPagosUsuarioConcilia: TStringField;
    adodsPagosMoneda: TStringField;
    adodsPagosMonedaExt: TStringField;
    adodsPagosCuentaBanPagador: TStringField;
    adodsPagosCuentaBanCobrador: TStringField;
    adodsPagosIdCuentaXPagarEstatus: TIntegerField;
    adodsPagosEstatusCXP: TStringField;
    adodsPagosFechaAutorizaPago: TDateTimeField;
    adodsPagosMontoPagado: TFMTBCDField;
    adodsPagosIDMetodoPago: TIntegerField;
    adodsPagosMetodoPago: TStringField;
    adodsPagosCuentaBanCompleta2: TStringField;
    adodsUsuAutoriza: TADODataSet;
    adodsUsuPrograma: TADODataSet;
    adodsUsuPaga: TADODataSet;
    adodsUsuConcilia: TADODataSet;
    adodsEstatusCXP: TADODataSet;
    adodsMetodosPago: TADODataSet;
    adodsMetodosPagoIdMetodoPago: TIntegerField;
    adodsMetodosPagoIdentificador: TStringField;
    adodsMetodosPagoDescripcion: TStringField;
    adodsCuentaBancariaConsulta: TADODataSet;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdPersonaRelacionada: TIntegerField;
    ADODtStTotales: TADODataSet;
    dsPagos: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure actCambiarEstatusUpdate(Sender: TObject);
    procedure actCambiarEstatusExecute(Sender: TObject);
    procedure actAutorizarExecute(Sender: TObject);
    procedure dsPagosDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    FIdPeriodoActual: Integer;
    function SetIdEstatusDestino: TCXPEstatus;
    function SetIdEstatusOrigen: TCXPEstatus;
    function SetIdCuentaXPagarPago: Integer;
    function CuentasXPagarPagosEstatus: Boolean;
    function AutorizarCuentasXPagarPagos: Boolean;
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
  ConfiguracionDM, _Utils, _ConectionDmod;

{$R *.dfm}

procedure TdmCuentasXPagar.actAutorizarExecute(Sender: TObject);
begin
  inherited;
  if AutorizarCuentasXPagarPagos then
    RefreshADODS(adodsPagos, adodsPagosIdCuentaXPagarPago);
//    RefreshADODS(adodsCuentasXPagarPagos, adodsCuentasXPagarPagosIdCuentaXPagarPago);
end;

procedure TdmCuentasXPagar.actCambiarEstatusExecute(Sender: TObject);
begin
  inherited;
  if CuentasXPagarPagosEstatus then
    RefreshADODS(adodsPagos, adodsPagosIdCuentaXPagarPago);
//    RefreshADODS(adodsCuentasXPagarPagos, adodsCuentasXPagarPagosIdCuentaXPagarPago);
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

function TdmCuentasXPagar.AutorizarCuentasXPagarPagos: Boolean;
begin
  Result:= False;
  if MessageDlg(strAutorizar, mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    ScreenCursorProc(crSQLWait);
    try
      adopSetCuentasXPagarPagosAutorizar.Parameters.ParamByName('@IdUsuario').Value:= _dmConection.IdUsuario;
      adopSetCuentasXPagarPagosAutorizar.ExecProc;
    finally
      ScreenCursorProc(crDefault);
    end;
    Result:= True;
  end;
end;

function TdmCuentasXPagar.CuentasXPagarPagosEstatus: Boolean;
begin
  Result:= False;
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
      Result:= True;
    end;
  end;
end;

procedure TdmCuentasXPagar.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FIdPeriodoActual := dmConfiguracion.IdPeridoActual;
  adodsMovimientosDetalle.Open;
  adodsPagos.Open;
  gGridForm:= TfrmCuentasXPagar.Create(Self);
  gGridForm.ReadOnlyGrid:= True;
  gGridForm.DataSet:= adodsMaster;
  TfrmCuentasXPagar(gGridForm).actAutorizar := actAutorizar;
  gFormDeatil1:= TfrmCuentasXPagarPagos.Create(Self);
//  gFormDeatil1.ReadOnlyGrid:= True;
  gFormDeatil1.DataSet:= adodsPagos;
  TfrmCuentasXPagarPagos(gFormDeatil1).CambiarEstatus:= actCambiarEstatus;
  gFormDeatil2:= TfrmMovimientosDetalle.Create(Self);
  gFormDeatil2.ReadOnlyGrid:= True;
  gFormDeatil2.DataSet:= adodsMovimientosDetalle;
  // Filtrado
  SQLSelect:= 'select IdCuentaXPagar, IdPersonaRol, IdPersona, IdPersonaRelacionada, IdPeriodo, IdCuentaXPagarEstatus, ' +
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

procedure TdmCuentasXPagar.dsPagosDataChange(Sender: TObject; Field: TField);
begin
  inherited;

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
  if adodsPagos.Active then
    Result := adodsPagosIdCuentaXPagarPago.Value;
//  if adodsCuentasXPagarPagos.Active then
//    Result := adodsCuentasXPagarPagosIdCuentaXPagarPago.Value;
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
  if adodsPagos.Active then
    Result:= TCXPEstatus(adodsPagosIdCuentaXPagarEstatus.Value);
//  if adodsCuentasXPagarPagos.Active then
//    Result:= TCXPEstatus(adodsCuentasXPagarPagosIdCuentaXPagarEstatus.Value);
end;

end.
