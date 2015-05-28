unit CuentasXCobrarDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmCuentasXCobrar = class(T_dmStandar)
    adodsMasterIdCuentaXCobrar: TIntegerField;
    adodsMasterIdPersonaRol: TIntegerField;
    adodsMasterIdPeriodo: TIntegerField;
    adodsMasterIdCuentaXCobrarEstatus: TIntegerField;
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
    adodsPeriodo: TADODataSet;
    adocGetPeriodoActual: TADOCommand;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FIdPeriodoActual: Integer;
    function GetPeriodoActual: Integer;
  protected
    procedure SetFilter; override;
  public
    { Public declarations }
    property IdPeriodoActual: Integer read FIdPeriodoActual;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CuentasXCobrarForm, FacturacionDM;

{$R *.dfm}

procedure TdmCuentasXCobrar.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FIdPeriodoActual := GetPeriodoActual;
  gGridForm := TfrmCuentasXCobrarForm.Create(Self);
  gGridForm.ReadOnlyGrid:= True;
  gGridForm.DataSet := adodsMaster;
  // Filtrado
  SQLSelect:= 'SELECT IdCuentaXCobrar, IdPersonaRol, IdPeriodo, IdCuentaXCobrarEstatus, ' +
  'Persona, PersonaRelacionada, ConceptoGenerico, SumaSubtotal, SumaTotal, SumaDescuentos, ' +
  'TotalIVATrasladado, TotalISRTrasladado, TotalIEPSTrasladado, TotalLocalesTrasladado, ' +
  'TotalIVARetenido, TotalISRRetenido, TotalLocalesRetenido, SaldoPendiente, Estatus FROM vCuentasXCobrar';
  gGridForm.actSearch:= actSearch;
  adodsPeriodo.Open;
  TfrmCuentasXCobrarForm(gGridForm).DataSetPeriodo:= adodsPeriodo;
  TfrmCuentasXCobrarForm(gGridForm).IdPeriodo:= IdPeriodoActual;
  actSearch.Execute;
end;

function TdmCuentasXCobrar.GetPeriodoActual: Integer;
begin
  adocGetPeriodoActual.Execute;
  Result:= adocGetPeriodoActual.Parameters.ParamByName('IdPeriodo').Value;
end;

procedure TdmCuentasXCobrar.SetFilter;
var
  IdPeriodo: Integer;
begin
  inherited;
  IdPeriodo:= TfrmCuentasXCobrarForm(gGridForm).IdPeriodo;
  SQLWhere:= Format('WHERE IdPeriodo = %d', [IdPeriodo]);
end;
end.
