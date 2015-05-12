unit CuentasXPagarDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, Vcl.Dialogs, System.UITypes;

type
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
    actCalcularCXP: TAction;
    adocGetPeriodoActual: TADOCommand;
    adospCentasXPagar: TADOStoredProc;
    procedure DataModuleCreate(Sender: TObject);
    procedure actCalcularCXPExecute(Sender: TObject);
  private
    { Private declarations }
    function SetCuentaXPagar: Boolean;
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CuentasXPagarForm, MovimientosDetalleFrm;

{$R *.dfm}

procedure TdmCuentasXPagar.actCalcularCXPExecute(Sender: TObject);
begin
  inherited;
  SetCuentaXPagar;
end;

procedure TdmCuentasXPagar.DataModuleCreate(Sender: TObject);
begin
  inherited;
  adodsMovimientosDetalle.Open;
  gGridForm:= TfrmCuentasXPagar.Create(Self);
  gGridForm.ReadOnlyGrid:= True;
  gGridForm.DataSet:= adodsMaster;
  TfrmCuentasXPagar(gGridForm).CalcularCXP:= actCalcularCXP;
  gFormDeatil1:= TfrmMovimientosDetalle.Create(Self);
  gFormDeatil1.ReadOnlyGrid:= True;
  gFormDeatil1.DataSet:= adodsMovimientosDetalle;
end;

function TdmCuentasXPagar.SetCuentaXPagar: Boolean;
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
