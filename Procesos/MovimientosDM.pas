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
    actMovimientosCalculados: TAction;
    adodsMasterIngresos: TFMTBCDField;
    adodsMasterDescuentos: TFMTBCDField;
    adodsMasterNeto: TFMTBCDField;
    adodsMasterPercepciones: TFMTBCDField;
    adodsMasterDeducciones: TFMTBCDField;
    adodsMasterPrestaciones: TFMTBCDField;
    adodsMasterObligaciones: TFMTBCDField;
    adodsMasterOperaciones: TFMTBCDField;
    adodsMasterCosto: TFMTBCDField;
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
    adospCentasXPagar: TADOStoredProc;
    procedure DataModuleCreate(Sender: TObject);
    procedure actMovimientosCalculadosExecute(Sender: TObject);
    procedure adodsMasterAfterScroll(DataSet: TDataSet);
    procedure actCalcularCXPExecute(Sender: TObject);
  private
    { Private declarations }
    function SetMovimientosCalculados: Boolean;
    function SetCuentaXPagar: Boolean;
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MovimientosFrm, MovimientosDetalleFrm;

{$R *.dfm}

procedure TdmMovimientos.actCalcularCXPExecute(Sender: TObject);
begin
  inherited;
  SetCuentaXPagar
end;

procedure TdmMovimientos.actMovimientosCalculadosExecute(Sender: TObject);
begin
  inherited;
  SetMovimientosCalculados;
end;

procedure TdmMovimientos.adodsMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  adodsPersonaRol.Filtered:= False;
  adodsPersonaRol.Filter:= 'IdPersona = ' + adodsMasterIdPersona.AsString;
  adodsPersonaRol.Filtered:= True;
end;

procedure TdmMovimientos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  adodsMovimientosDet.Open;
  gGridForm:= TfrmMovimientos.Create(Self);
  gGridForm.ReadOnlyGrid:= True;
  gGridForm.DataSet:= adodsMaster;
  TfrmMovimientos(gGridForm).MovimientosCalculados:= actMovimientosCalculados;
  TfrmMovimientos(gGridForm).CalcularCXP:= actCalcularCXP;
  gFormDeatil1:= TfrmMovimientosDetalle.Create(Self);
//  gFormDeatil1.ReadOnlyGrid:= True;
  gFormDeatil1.DataSet:= adodsMovimientosDet;
end;

function TdmMovimientos.SetMovimientosCalculados: Boolean;
var
  IdPeriodo: Integer;
begin
  Result:= False;
  adocGetPeriodoActual.Execute;
  IdPeriodo:= adocGetPeriodoActual.Parameters.ParamByName('IdPeriodo').Value;
  if IdPeriodo <> 0 then
  begin
    adospMovimientosCalculados.Parameters.ParamByName('@IdPeriodo').Value:= IdPeriodo;
    adospMovimientosCalculados.ExecProc;
    MessageDlg('Proceso terminado.', mtInformation, [mbOk], 0);
    Result:= True;
  end;
end;

function TdmMovimientos.SetCuentaXPagar: Boolean;
var
  IdPeriodo: Integer;
begin
  Result:= False;
  adocGetPeriodoActual.Execute;
  IdPeriodo:= adocGetPeriodoActual.Parameters.ParamByName('IdPeriodo').Value;
  if IdPeriodo <> 0 then
  begin
    adospCentasXPagar.Parameters.ParamByName('@IdPeriodo').Value:= IdPeriodo;
    adospCentasXPagar.ExecProc;
    MessageDlg('Proceso terminado.', mtInformation, [mbOk], 0);
    Result:= True;
  end;
end;


end.
