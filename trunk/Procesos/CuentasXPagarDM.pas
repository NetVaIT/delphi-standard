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
    adodsPeriodo: TADODataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure actCalcularCXPExecute(Sender: TObject);
  private
    { Private declarations }
    FIdPeriodoActual: Integer;
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
  FIdPeriodoActual := GetPeriodoActual;
  adodsMovimientosDetalle.Open;
  gGridForm:= TfrmCuentasXPagar.Create(Self);
  gGridForm.ReadOnlyGrid:= True;
  gGridForm.DataSet:= adodsMaster;
  TfrmCuentasXPagar(gGridForm).CalcularCXP:= actCalcularCXP;
  gFormDeatil1:= TfrmMovimientosDetalle.Create(Self);
  gFormDeatil1.ReadOnlyGrid:= True;
  gFormDeatil1.DataSet:= adodsMovimientosDetalle;
  // Filtrado
  SQLSelect:= 'select IdCuentaXPagar, IdPersonaRol, IdPeriodo, IdCuentaXPagarEstatus, ' +
  'Persona, PersonaRelacionada, ConceptoGenerico, SumaSubtotal, SumaTotal, SumaDescuentos, ' +
  'TotalIVATrasladado, TotalISRTrasladado, TotalIEPSTrasladado, TotalLocalesTrasladado, ' +
  'TotalIVARetenido, TotalISRRetenido, TotalLocalesRetenido, SaldoPendiente, Estatus from vCuentasXPagar';
  gGridForm.actSearch:= actSearch;
  adodsPeriodo.Open;
  TfrmCuentasXPagar(gGridForm).DataSetPeriodo:= adodsPeriodo;
  // Ejecuta filtrado
  TfrmCuentasXPagar(gGridForm).IdPeriodo:= IdPeriodoActual;
  actSearch.Execute;
end;

function TdmCuentasXPagar.GetPeriodoActual: Integer;
begin
  adocGetPeriodoActual.Execute;
  Result:= adocGetPeriodoActual.Parameters.ParamByName('IdPeriodo').Value;
end;

function TdmCuentasXPagar.SetCuentaXPagar: Boolean;
var
  IdPeriodo: Integer;
begin
  Result:= False;
  IdPeriodo:= IdPeriodoActual;
  if IdPeriodo <> 0 then
  begin
    adospCentasXPagar.Parameters.ParamByName('@IdPeriodo').Value:= IdPeriodo;
    adospCentasXPagar.ExecProc;
    MessageDlg('Proceso terminado.', mtInformation, [mbOk], 0);
    Result:= True;
  end;
end;

procedure TdmCuentasXPagar.SetFilter;
var
  IdPeriodo: Integer;
begin
  inherited;
  IdPeriodo:= TfrmCuentasXPagar(gGridForm).IdPeriodo;
  SQLWhere:= Format('WHERE IdPeriodo = %d', [IdPeriodo]);
end;

end.
