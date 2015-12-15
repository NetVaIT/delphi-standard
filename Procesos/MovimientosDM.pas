unit MovimientosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, Vcl.Dialogs, System.UITypes;

resourcestring
  strFinishMovimientos  = 'El proceso de dispersión ha terminado.';
  strDeleteMovimientos  = '¿Deseas eliminar movimientos del periodo actual?';
  strFinishCXP          = 'El proceso de generación de cuentas por pagar ha terminado.';
  strDeleteCXP          = '¿Deseas eliminar las cuentas por pagar del periodo actual?';
  strFinishCXC          = 'El proceso de generación de cuentas por cobrar ha terminado.';
  strDeleteCXC          = '¿Deseas eliminar las cuentas por cobar del periodo actual?';
  strFinish             = 'Proceso terminado.';
  strDeleteMovimientosDiversificados  = '¿Deseas eliminar movimientos diversificados?';
  strMovimientosSolidarios  = '¿Deseas generar los movimientos para los solidarios?';

type
  TdmMovimientos = class(T_dmStandar)
    adodsMasterIdMovimiento: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdPeriodo: TIntegerField;
    adodsPeriodo: TADODataSet;
    dsMaster: TDataSource;
    adodsMovimientosDet: TADODataSet;
    actCalcularmovimientos: TAction;
    adodsPersonaRol: TADODataSet;
    adodsMovimientosTipo: TADODataSet;
    adodsMovimientosDetIdMovimientoDetalle: TAutoIncField;
    adodsMovimientosDetIdMovimiento: TIntegerField;
    adodsMovimientosDetIdPersonaRol: TIntegerField;
    adodsMovimientosDetIdMovimientoTipo: TIntegerField;
    adodsMovimientosDetIdMovimientoEstatus: TIntegerField;
    adodsMovimientosDetImporte: TFMTBCDField;
    adodsMovimientosDetPersonaRelacionada: TStringField;
    adodsMovimientosDetTipo: TStringField;
    adodsMovimientosEstatus: TADODataSet;
    adodsMovimientosDetEstatus: TStringField;
    adodsMovimientosDetIdCuentaXPagar: TIntegerField;
    adospMovimientosDiversificados: TADOStoredProc;
    actCalcularCXP: TAction;
    adospCuentasXPagar: TADOStoredProc;
    adodsMasterIngresos: TFMTBCDField;
    adodsMasterDescuentos: TFMTBCDField;
    adodsMasterBase: TFMTBCDField;
    adodsMasterEntregas: TFMTBCDField;
    adodsMasterPercepciones: TFMTBCDField;
    adodsMasterDeducciones: TFMTBCDField;
    adodsMasterPrestaciones: TFMTBCDField;
    adodsMasterObligaciones: TFMTBCDField;
    adodsMasterOperaciones: TFMTBCDField;
    adodsMasterImpuestoTrasladado: TFMTBCDField;
    adodsMasterImpuestoRetenido: TFMTBCDField;
    adodsMasterCosto: TFMTBCDField;
    adodsMasterCarga: TFMTBCDField;
    actEliminarMovimientos: TAction;
    actEliminarCXP: TAction;
    adopDelMovimientos: TADOStoredProc;
    adopDelCuentasXPagar: TADOStoredProc;
    adopUptMovimientosTotales: TADOStoredProc;
    adodsMasterEgresos: TFMTBCDField;
    adodsMasterSaldoAnterior: TFMTBCDField;
    adodsMasterSaldoPeriodo: TFMTBCDField;
    adodsMasterSaldo: TFMTBCDField;
    adodsMovimientosDetFecha: TDateTimeField;
    adodsMovimientosDetCategoria: TStringField;
    actCalcularCXC: TAction;
    actEliminarCXC: TAction;
    adospCuentasXCobrar: TADOStoredProc;
    adopDelCuentasXCobrar: TADOStoredProc;
    actMostrarISR: TAction;
    adodsMovimientosDetIdIncidenciaDetalle: TIntegerField;
    adodsMovimientosDetIdMoneda: TIntegerField;
    adodsMovimientosDetIdCuentaXCobrar: TIntegerField;
    adodsMasterBaseGrupo: TFMTBCDField;
    adodsMasterCostoGrupo: TFMTBCDField;
    adodsMasterCargaGrupo: TFMTBCDField;
    adodsMasterSaldoAnteriorGrupo: TFMTBCDField;
    adodsMasterSaldoPeriodoGrupo: TFMTBCDField;
    adodsMasterSaldoGrupo: TFMTBCDField;
    adodsMovimientosDetIdPrestamoPago: TIntegerField;
    adodsMovimientosDetAplicarCategoria: TBooleanField;
    adodsMasterRetencion: TFMTBCDField;
    adodsMasterSaldoCosto: TFMTBCDField;
    adodsMasterSaldoCostoGrupo: TFMTBCDField;
    actEliminarDispercion: TAction;
    adopDelMovimientosDiversificados: TADOStoredProc;
    adodsRolesTitular: TADODataSet;
    adodsRolesTitularIdPersonaRol: TAutoIncField;
    adodsRolesTitularIdRol: TIntegerField;
    adodsRolesTitularIdPersona: TAutoIncField;
    adodsRolesTitularPersona: TStringField;
    adodsRolesTitularRol: TStringField;
    adodsRolesTitularPersonaRelacionada: TStringField;
    adodsRolesTitularEstatus: TStringField;
    adodsRolesTitularClase: TStringField;
    adodsRolesTitularCalcular: TBooleanField;
    adodsRolesTitularPorcentajeCalculo: TFMTBCDField;
    actRolesTitular: TAction;
    actMovimientosSolidarios: TAction;
    adopGenMovimientosSolidarios: TADOStoredProc;
    actSetPorcent: TAction;
    adodsMasterPersona: TStringField;
    adodsMasterPersonaTitular: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actCalcularmovimientosExecute(Sender: TObject);
    procedure adodsMasterAfterScroll(DataSet: TDataSet);
    procedure actCalcularCXPExecute(Sender: TObject);
    procedure actEliminarCXPExecute(Sender: TObject);
    procedure actEliminarMovimientosExecute(Sender: TObject);
    procedure adodsMovimientosDetAfterPost(DataSet: TDataSet);
    procedure actCalcularCXCExecute(Sender: TObject);
    procedure actEliminarCXCExecute(Sender: TObject);
    procedure actMostrarISRExecute(Sender: TObject);
    procedure actCalcularmovimientosUpdate(Sender: TObject);
    procedure actEliminarDispercionExecute(Sender: TObject);
    procedure actRolesTitularExecute(Sender: TObject);
    procedure actMovimientosSolidariosExecute(Sender: TObject);
    procedure actSetPorcentExecute(Sender: TObject);
    procedure adodsRolesTitularCalcularChange(Sender: TField);
  private
    { Private declarations }
    FIdPeriodoActual: Integer;
    function SetMovimientosCalculados: Boolean;
    function SetCuentaXPagar: Boolean;
    procedure SetPrestamos;
  protected
    procedure SetFilter; override;
  public
    { Public declarations }
    property IdPeriodoActual: Integer read FIdPeriodoActual;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MovimientosFrm, MovimientosDetalleFrm, _ConectionDmod, ISRProvisionalesDM,
  PrestamosPagoDM, ConfiguracionDM, _Utils, RolesTitularFrm,
  RolesTitularPorcentajeEdit;

{$R *.dfm}

procedure TdmMovimientos.actCalcularCXCExecute(Sender: TObject);
begin
  inherited;
  if IdPeriodoActual <> 0 then
  begin
    ScreenCursorProc(crSQLWait);
    try
      adospCuentasXCobrar.Parameters.ParamByName('@IdPeriodo').Value:= IdPeriodoActual;
      adospCuentasXCobrar.Parameters.ParamByName('@IdUsuarioRegistro').Value:= _dmConection.IdUsuario;
      adospCuentasXCobrar.ExecProc;
    finally
      ScreenCursorProc(crDefault);
    end;
    MessageDlg(strFinishCXC, mtInformation, [mbOk], 0);
  end;
end;

procedure TdmMovimientos.actCalcularCXPExecute(Sender: TObject);
begin
  inherited;
  SetCuentaXPagar
end;

procedure TdmMovimientos.actCalcularmovimientosExecute(Sender: TObject);
begin
  inherited;
  if SetMovimientosCalculados then
    RefreshADODS(adodsMaster, adodsMasterIdMovimiento);
end;

procedure TdmMovimientos.actCalcularmovimientosUpdate(Sender: TObject);
begin
  inherited;
  if Sender is TAction then
    if Assigned(gGridForm) then
      TAction(Sender).Enabled:= (TfrmMovimientos(gGridForm).IdPeriodo = IdPeriodoActual);
end;

procedure TdmMovimientos.actEliminarDispercionExecute(Sender: TObject);
var
  IdMovimiento: Integer;
begin
  inherited;
  IdMovimiento:= adodsMasterIdMovimiento.Value;
  if IdMovimiento <> 0 then
    if MessageDlg(strDeleteMovimientosDiversificados, mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      ScreenCursorProc(crSQLWait);
      try
        adopDelMovimientosDiversificados.Parameters.ParamByName('@IdMovimiento').Value:= IdMovimiento;
        adopDelMovimientosDiversificados.ExecProc;
      finally
        ScreenCursorProc(crDefault);
      end;
      MessageDlg(strFinish, mtInformation, [mbOk], 0);
      RefreshADODS(adodsMaster, adodsMasterIdMovimiento);
    end;
end;

procedure TdmMovimientos.actEliminarCXCExecute(Sender: TObject);
begin
  inherited;
  if IdPeriodoActual <> 0 then
    if MessageDlg(strDeleteCXC, mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      ScreenCursorProc(crSQLWait);
      try
        adopDelCuentasXCobrar.Parameters.ParamByName('@IdPeriodo').Value:= IdPeriodoActual;
        adopDelCuentasXCobrar.ExecProc;
      finally
        ScreenCursorProc(crDefault);
      end;
      MessageDlg(strFinish, mtInformation, [mbOk], 0);
    end;
end;

procedure TdmMovimientos.actEliminarCXPExecute(Sender: TObject);
begin
  inherited;
  if IdPeriodoActual <> 0 then
    if MessageDlg(strDeleteCXP, mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      ScreenCursorProc(crSQLWait);
      try
        adopDelCuentasXPagar.Parameters.ParamByName('@IdPeriodo').Value:= IdPeriodoActual;
        adopDelCuentasXPagar.ExecProc;
      finally
        ScreenCursorProc(crDefault);
      end;
      MessageDlg(strFinish, mtInformation, [mbOk], 0);
    end;
end;

procedure TdmMovimientos.actEliminarMovimientosExecute(Sender: TObject);
begin
  inherited;
  if IdPeriodoActual <> 0 then
    if MessageDlg(strDeleteMovimientos, mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      ScreenCursorProc(crSQLWait);
      try
        adopDelMovimientos.Parameters.ParamByName('@IdPeriodo').Value:= IdPeriodoActual;
        adopDelMovimientos.ExecProc;
      finally
        ScreenCursorProc(crDefault);
      end;
      MessageDlg(strFinish, mtInformation, [mbOk], 0);
      RefreshADODS(adodsMaster, adodsMasterIdMovimiento);
    end;
end;

procedure TdmMovimientos.actMostrarISRExecute(Sender: TObject);
var
  dmISRProvisionales: TdmISRProvisionales;
begin
  inherited;
  dmISRProvisionales := TdmISRProvisionales.Create(Self);
  try
    dmISRProvisionales.IdPersona:= adodsMasterIdPersona.Value;
    dmISRProvisionales.ShowModule(nil, '');
  finally
    dmISRProvisionales.Free;
  end;
end;

procedure TdmMovimientos.actMovimientosSolidariosExecute(Sender: TObject);
begin
  inherited;
  if IdPeriodoActual <> 0 then
    if MessageDlg(strMovimientosSolidarios, mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      ScreenCursorProc(crSQLWait);
      try
        adopGenMovimientosSolidarios.Parameters.ParamByName('@IdPeriodo').Value:= IdPeriodoActual;
        adopGenMovimientosSolidarios.Parameters.ParamByName('@IdPersonaTitular').Value:= adodsMasterIdPersona.Value;
        adopGenMovimientosSolidarios.ExecProc;
      finally
        ScreenCursorProc(crDefault);
      end;
      MessageDlg(strFinish, mtInformation, [mbOk], 0);
      RefreshADODS(adodsMaster, adodsMasterIdMovimiento);
    end;
end;

procedure TdmMovimientos.actRolesTitularExecute(Sender: TObject);
var
  frmRolesTitular: TfrmRolesTitular;
begin
  inherited;
  frmRolesTitular := TfrmRolesTitular.Create(Self);
  try
    frmRolesTitular.DataSet:= adodsRolesTitular;
    frmRolesTitular.actSetPorcent:= actSetPorcent;
    frmRolesTitular.ReadOnlyGrid:= True;
    frmRolesTitular.View:= True;
    adodsRolesTitular.Close;
    adodsRolesTitular.Parameters.ParamByName('IdPersonaTitular').Value:= adodsMasterIdPersona.Value;
    adodsRolesTitular.Open;
    frmRolesTitular.ShowModal;
  finally
    adodsRolesTitular.Close;
    frmRolesTitular.Free;
  end;
end;

procedure TdmMovimientos.actSetPorcentExecute(Sender: TObject);
var
  frmPorcentajeEdit: TfrmRolesTitularPorcentajeEdit;
begin
  inherited;
  frmPorcentajeEdit := TfrmRolesTitularPorcentajeEdit.Create(Self);
  try
    frmPorcentajeEdit.Base:= adodsMasterBase.AsCurrency;
    frmPorcentajeEdit.Execute
  finally
    frmPorcentajeEdit.Free;
  end;
end;

procedure TdmMovimientos.adodsMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if adodsMasterIdPersona.AsString <> EmptyStr then
  begin
    adodsPersonaRol.Filtered:= False;
    adodsPersonaRol.Filter:= 'IdPersona = ' + adodsMasterIdPersona.AsString;
    adodsPersonaRol.Filtered:= True;
  end;
end;

procedure TdmMovimientos.adodsMovimientosDetAfterPost(DataSet: TDataSet);
begin
  inherited;
  adopUptMovimientosTotales.Parameters.ParamByName('@IdMovimiento').Value:= adodsMovimientosDetIdMovimiento.Value;
  adopUptMovimientosTotales.ExecProc;
  adodsMaster.Refresh;
end;

procedure TdmMovimientos.adodsRolesTitularCalcularChange(Sender: TField);
begin
  inherited;
  if not adodsRolesTitularCalcular.Value then
     adodsRolesTitularPorcentajeCalculo.Value:= 0;
end;

procedure TdmMovimientos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FIdPeriodoActual := dmConfiguracion.IdPeridoActual;
  adodsMovimientosDet.Open;
  gGridForm:= TfrmMovimientos.Create(Self);
  gGridForm.ReadOnlyGrid:= True;
  gGridForm.DataSet:= adodsMaster;
  TfrmMovimientos(gGridForm).CalcularMovimientos:= actCalcularmovimientos;
  TfrmMovimientos(gGridForm).EliminarMovimientos:= actEliminarMovimientos;
  TfrmMovimientos(gGridForm).CalcularCXP:= actCalcularCXP;
  TfrmMovimientos(gGridForm).EliminarCXP:= actEliminarCXP;
  TfrmMovimientos(gGridForm).CalcularCXC:= actCalcularCXC;
  TfrmMovimientos(gGridForm).EliminarCXC:= actEliminarCXC;
  TfrmMovimientos(gGridForm).MostrarISR:= actMostrarISR;
  TfrmMovimientos(gGridForm).EliminarDispercion:= actEliminarDispercion;
  TfrmMovimientos(gGridForm).RolesTitular:= actRolesTitular;
  TfrmMovimientos(gGridForm).MovimientosSolidarios:= actMovimientosSolidarios;
  gFormDeatil1:= TfrmMovimientosDetalle.Create(Self);
  gFormDeatil1.ReadOnlyGrid:= True;
  gFormDeatil1.DataSet:= adodsMovimientosDet;
  // Busqueda
  SQLSelect:= 'SELECT Movimientos.IdMovimiento, Movimientos.IdPersona, Movimientos.IdPeriodo, Personas.RazonSocial AS Persona, Personas_1.RazonSocial AS PersonaTitular, Movimientos.Ingresos, Movimientos.Retencion, ' +
  'Movimientos.Descuentos, Movimientos.Base, Movimientos.Entregas, Movimientos.Percepciones, Movimientos.Deducciones, Movimientos.Prestaciones, Movimientos.Obligaciones, Movimientos.Operaciones, ' +
  'Movimientos.ImpuestoTrasladado, Movimientos.ImpuestoRetenido, Movimientos.Egresos, Movimientos.Costo, Movimientos.Carga, Movimientos.SaldoAnterior, Movimientos.SaldoPeriodo, Movimientos.Saldo, ' +
  'Movimientos.SaldoCosto, Movimientos.BaseGrupo, Movimientos.CostoGrupo, Movimientos.CargaGrupo, Movimientos.SaldoAnteriorGrupo, Movimientos.SaldoPeriodoGrupo, Movimientos.SaldoGrupo, Movimientos.SaldoCostoGrupo ' +
  'FROM Movimientos ' +
  'INNER JOIN Personas ON Movimientos.IdPersona = Personas.IdPersona ' +
  'LEFT OUTER JOIN Personas AS Personas_1 ON Personas.IdPersonaTitular = Personas_1.IdPersona ';
  SQLOrderBy:= 'ORDER BY Persona ';
//  SQLSelect:= 'SELECT IdMovimiento, IdPersona, IdPeriodo, Ingresos, Retencion, Descuentos, Base, Entregas, ' +
//  'Percepciones, Deducciones, Prestaciones, Obligaciones, Operaciones, ImpuestoTrasladado, ImpuestoRetenido, ' +
//  'Egresos, Costo, Carga, SaldoAnterior, SaldoPeriodo, Saldo, SaldoCosto, ' +
//  'BaseGrupo, CostoGrupo, CargaGrupo, SaldoAnteriorGrupo, SaldoPeriodoGrupo, SaldoGrupo, SaldoCostoGrupo FROM Movimientos';
  gGridForm.actSearch:= actSearch;
  adodsPeriodo.Open;
  TfrmMovimientos(gGridForm).DataSetPeriodo:= adodsPeriodo;
  // Ejecuta filtrado
  TfrmMovimientos(gGridForm).IdPeriodo:= IdPeriodoActual;
  actSearch.Execute;
end;

function TdmMovimientos.SetMovimientosCalculados: Boolean;
begin
  Result:= False;
  if IdPeriodoActual <> 0 then
  begin
    ScreenCursorProc(crSQLWait);
    try
      adospMovimientosDiversificados.Parameters.ParamByName('@IdPeriodo').Value:= IdPeriodoActual;
      adospMovimientosDiversificados.ExecProc;
    finally
      ScreenCursorProc(crDefault);
    end;
    MessageDlg(strFinishMovimientos, mtInformation, [mbOk], 0);
    SetPrestamos;
    Result:= True;
  end;
end;

function TdmMovimientos.SetCuentaXPagar: Boolean;
begin
  Result:= False;
  if IdPeriodoActual <> 0 then
  begin
    ScreenCursorProc(crSQLWait);
    try
      adospCuentasXPagar.Parameters.ParamByName('@IdPeriodo').Value:= IdPeriodoActual;
      adospCuentasXPagar.Parameters.ParamByName('@IdUsuarioRegistro').Value:= _dmConection.IdUsuario;
      adospCuentasXPagar.ExecProc;
    finally
      ScreenCursorProc(crDefault);
    end;
    MessageDlg(strFinishCXP, mtInformation, [mbOk], 0);
    Result:= True;
  end;
end;

procedure TdmMovimientos.SetFilter;
var
  IdPeriodo: Integer;
begin
  inherited;
  IdPeriodo:= TfrmMovimientos(gGridForm).IdPeriodo;
  SQLWhere:= Format('WHERE IdPeriodo = %d', [IdPeriodo]);
end;

procedure TdmMovimientos.SetPrestamos;
var
  dmPrestamosPago: TdmPrestamosPago;
begin
  dmPrestamosPago := TdmPrestamosPago.Create(Self);
  try
    dmPrestamosPago.Execute;
  finally
    dmPrestamosPago.Free;
  end;
end;


end.
