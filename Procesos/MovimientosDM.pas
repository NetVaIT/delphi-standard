unit MovimientosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, Vcl.Dialogs, System.UITypes;

type
  TdmMovimientos = class(T_dmStandar)
    adodsMasterIdMovimiento: TAutoIncField;
    adodsMasterIdInstruccion: TIntegerField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdPeriodo: TIntegerField;
    adodsMasterFecha: TDateTimeField;
    adodsPersona: TADODataSet;
    adodsPeriodo: TADODataSet;
    adodsMasterPersona: TStringField;
    adodsMasterPariodo: TStringField;
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
    adocGetPeriodoActual: TADOCommand;
    adospMovimientosCalculados: TADOStoredProc;
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
    actEliminarCuentasXPagar: TAction;
    adopDelMovimientos: TADOStoredProc;
    adopDelCuentasXPagar: TADOStoredProc;
    adopUptMovimientosTotales: TADOStoredProc;
    adodsMasterEgresos: TFMTBCDField;
    adodsMasterSaldoAnterior: TFMTBCDField;
    adodsMasterSaldoPeriodo: TFMTBCDField;
    adodsMasterSaldo: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actCalcularmovimientosExecute(Sender: TObject);
    procedure adodsMasterAfterScroll(DataSet: TDataSet);
    procedure actCalcularCXPExecute(Sender: TObject);
    procedure actEliminarCuentasXPagarExecute(Sender: TObject);
    procedure actEliminarMovimientosExecute(Sender: TObject);
    procedure adodsMovimientosDetAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    FIdPeriodoActual: Integer;
    function SetMovimientosCalculados: Boolean;
    function SetCuentaXPagar: Boolean;
    function GetPeriodoActual: Integer;
  protected
    procedure SetFilter; override;
  public
    { Public declarations }
    property IdPeriodoActual: Integer read FIdPeriodoActual;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MovimientosFrm, MovimientosDetalleFrm, _ConectionDmod;

{$R *.dfm}

procedure TdmMovimientos.actCalcularCXPExecute(Sender: TObject);
begin
  inherited;
  SetCuentaXPagar
end;

procedure TdmMovimientos.actCalcularmovimientosExecute(Sender: TObject);
begin
  inherited;
  SetMovimientosCalculados;
end;

procedure TdmMovimientos.actEliminarCuentasXPagarExecute(Sender: TObject);
begin
  inherited;
  if IdPeriodoActual <> 0 then
  begin
    adopDelCuentasXPagar.Parameters.ParamByName('@IdPeriodo').Value:= IdPeriodoActual;
    adopDelCuentasXPagar.ExecProc;
    MessageDlg('Proceso terminado.', mtInformation, [mbOk], 0);
  end;
end;

procedure TdmMovimientos.actEliminarMovimientosExecute(Sender: TObject);
begin
  inherited;
  if IdPeriodoActual <> 0 then
  begin
    adopDelMovimientos.Parameters.ParamByName('@IdPeriodo').Value:= IdPeriodoActual;
    adopDelMovimientos.ExecProc;
    MessageDlg('Proceso terminado.', mtInformation, [mbOk], 0);
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

procedure TdmMovimientos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FIdPeriodoActual := GetPeriodoActual;
  adodsMovimientosDet.Open;
  gGridForm:= TfrmMovimientos.Create(Self);
  gGridForm.ReadOnlyGrid:= True;
  gGridForm.DataSet:= adodsMaster;
  TfrmMovimientos(gGridForm).CalcularMovimientos:= actCalcularmovimientos;
  TfrmMovimientos(gGridForm).CalcularCXP:= actCalcularCXP;
  TfrmMovimientos(gGridForm).EliminarMovimientos:= actEliminarMovimientos;
  TfrmMovimientos(gGridForm).EliminarCuentasXPagar:= actEliminarCuentasXPagar;
  gFormDeatil1:= TfrmMovimientosDetalle.Create(Self);
//  gFormDeatil1.ReadOnlyGrid:= True;
  gFormDeatil1.DataSet:= adodsMovimientosDet;
  // Busqueda
  SQLSelect:= 'SELECT IdMovimiento, IdInstruccion, IdPersona, IdPeriodo, Fecha, Ingresos, Descuentos, Base, Entregas, ' +
  'Percepciones, Deducciones, Prestaciones, Obligaciones, Operaciones, ImpuestoTrasladado, ImpuestoRetenido, ' +
  'Egresos, Costo, Carga, SaldoAnterior, SaldoPeriodo, Saldo FROM Movimientos';
  gGridForm.actSearch:= actSearch;
  adodsPeriodo.Open;
  TfrmMovimientos(gGridForm).DataSetPeriodo:= adodsPeriodo;
  // Ejecuta filtrado
  TfrmMovimientos(gGridForm).IdPeriodo:= IdPeriodoActual;
  actSearch.Execute;
end;

function TdmMovimientos.GetPeriodoActual: Integer;
begin
  adocGetPeriodoActual.Execute;
  Result:= adocGetPeriodoActual.Parameters.ParamByName('IdPeriodo').Value;
end;

function TdmMovimientos.SetMovimientosCalculados: Boolean;
begin
  Result:= False;
  if IdPeriodoActual <> 0 then
  begin
    adospMovimientosCalculados.Parameters.ParamByName('@IdPeriodo').Value:= IdPeriodoActual;
    adospMovimientosCalculados.ExecProc;
    MessageDlg('Proceso terminado.', mtInformation, [mbOk], 0);
    Result:= True;
  end;
end;

function TdmMovimientos.SetCuentaXPagar: Boolean;
begin
  Result:= False;
  if IdPeriodoActual <> 0 then
  begin
    adospCuentasXPagar.Parameters.ParamByName('@IdPeriodo').Value:= IdPeriodoActual;
    adospCuentasXPagar.Parameters.ParamByName('@IdUsuarioRegistro').Value:= _dmConection.IdUsuario;
    adospCuentasXPagar.ExecProc;
    MessageDlg('Proceso terminado.', mtInformation, [mbOk], 0);
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

end.
