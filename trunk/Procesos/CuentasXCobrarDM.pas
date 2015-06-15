unit CuentasXCobrarDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, CuentasXCobrarEditConcepto, dxmdaset, Dialogs;

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
    adodsCXCConceptos: TADODataSet;
    adodsCXCConceptosDescripcion: TStringField;
    actCambiarConcepto: TAction;
    adocAutorizaCuenta: TADOCommand;
    procedure DataModuleCreate(Sender: TObject);
    procedure actCambiarConceptoExecute(Sender: TObject);
  private
    { Private declarations }
    FIdPeriodoActual: Integer;
//    PConcepto : String;
    gConcepto : TfrmCuentasXCobrarEditConcepto;
    function GetPeriodoActual: Integer;
  protected
    procedure SetFilter; override;
  public
    { Public declarations }
    property IdPeriodoActual: Integer read FIdPeriodoActual;
    procedure CambiarConcepto;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CuentasXCobrarForm, FacturacionDM;

{$R *.dfm}

procedure TdmCuentasXCobrar.actCambiarConceptoExecute(Sender: TObject);
var
  Resultado : integer;
begin
  inherited;
  adodsCXCConceptos.Open;
  Resultado := gConcepto.ShowModal;
//  showmessage(gConcepto.Descripcion);
  if Resultado = 1 then
    CambiarConcepto;
end;

procedure TdmCuentasXCobrar.CambiarConcepto;
begin
  adocAutorizaCuenta.Parameters.ParamByName('IdCuentaXCobrar').Value := adodsMasterIdCuentaXCobrar.Value;
  adocAutorizaCuenta.Parameters.ParamByName('Concepto').Value := gConcepto.Descripcion;
  adocAutorizaCuenta.Execute;
  adodsMaster.Close;
  adodsMaster.Open;
end;

procedure TdmCuentasXCobrar.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FIdPeriodoActual := GetPeriodoActual;
  gGridForm := TfrmCuentasXCobrarForm.Create(Self);
  gGridForm.ReadOnlyGrid := True;
  gGridForm.DataSet := adodsMaster;
  // Filtrado
  SQLSelect:= 'SELECT IdCuentaXCobrar, IdPersonaRol, IdPeriodo, IdCuentaXCobrarEstatus, ' +
              'Persona, PersonaRelacionada, ConceptoGenerico, SumaSubtotal, SumaTotal, SumaDescuentos, ' +
              'TotalIVATrasladado, TotalISRTrasladado, TotalIEPSTrasladado, TotalLocalesTrasladado, ' +
              'TotalIVARetenido, TotalISRRetenido, TotalLocalesRetenido, SaldoPendiente, Estatus FROM vCuentasXCobrar';
  gGridForm.actSearch := actSearch;
  adodsPeriodo.Open;
  TfrmCuentasXCobrarForm(gGridForm).DataSetPeriodo := adodsPeriodo;
  TfrmCuentasXCobrarForm(gGridForm).IdPeriodo := IdPeriodoActual;
  TfrmCuentasXCobrarForm(gGridForm).CambiarConcepto := actCambiarConcepto;
  gConcepto := TfrmCuentasXCobrarEditConcepto.Create(Self);
  adodsCXCConceptos.Open;
  gConcepto.cxCBxConceptos.Properties.Items.Clear;
  while not adodsCXCConceptos.eof do
  begin
    gConcepto.cxCBxConceptos.Properties.Items.Add(adodsCXCConceptosDescripcion.AsString);
    adodsCXCConceptos.Next;
  end;
  adodsCXCConceptos.Close;
  actSearch.Execute;
end;

function TdmCuentasXCobrar.GetPeriodoActual: Integer;
begin
  adocGetPeriodoActual.Execute;
  Result := adocGetPeriodoActual.Parameters.ParamByName('IdPeriodo').Value;
end;

procedure TdmCuentasXCobrar.SetFilter;
var
  IdPeriodo : Integer;
begin
  inherited;
  IdPeriodo := TfrmCuentasXCobrarForm(gGridForm).IdPeriodo;
  SQLWhere := Format('WHERE IdPeriodo = %d', [IdPeriodo]);
end;
end.
