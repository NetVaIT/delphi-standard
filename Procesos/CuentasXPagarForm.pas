unit CuentasXPagarForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _GridForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, dxBar, Vcl.ImgList,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls, cxDBLookupComboBox, cxBarEditItem;

type
  TfrmCuentasXPagar = class(T_frmGrid)
    tvMasterIdCuentaXPagar: TcxGridDBColumn;
    tvMasterIdPersonaRol: TcxGridDBColumn;
    tvMasterIdPeriodo: TcxGridDBColumn;
    tvMasterIdCuentaXPagarEstatus: TcxGridDBColumn;
    tvMasterPersona: TcxGridDBColumn;
    tvMasterPersonaRelacionada: TcxGridDBColumn;
    tvMasterConceptoGenerico: TcxGridDBColumn;
    tvMasterSumaSubtotal: TcxGridDBColumn;
    tvMasterSumaTotal: TcxGridDBColumn;
    tvMasterSumaDescuentos: TcxGridDBColumn;
    tvMasterTotalIVATrasladado: TcxGridDBColumn;
    tvMasterTotalISRTrasladado: TcxGridDBColumn;
    tvMasterTotalIEPSTrasladado: TcxGridDBColumn;
    tvMasterTotalLocalesTrasladado: TcxGridDBColumn;
    tvMasterTotalIVARetenido: TcxGridDBColumn;
    tvMasterTotalISRRetenido: TcxGridDBColumn;
    tvMasterTotalLocalesRetenido: TcxGridDBColumn;
    tvMasterSaldoPendiente: TcxGridDBColumn;
    tvMasterEstatus: TcxGridDBColumn;
    cxedtPeriodo: TcxBarEditItem;
    dsPeriodos: TDataSource;
    tvMasterFlujoEfectivo: TcxGridDBColumn;
    btnAutorizar: TdxBarButton;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterIdPersonaRelacionada: TcxGridDBColumn;
  private
    { Private declarations }
    FDataSetPeriodo: TDataSet;
    FactAutorizar: TBasicAction;
    function GetIdPeriodo: Integer;
    procedure SetDataSetPeriodo(const Value: TDataSet);
    procedure SetIdPeriodo(const Value: Integer);
    procedure SetactAutorizar(const Value: TBasicAction);
  public
    { Public declarations }
    property IdPeriodo: Integer read GetIdPeriodo write SetIdPeriodo;
    property DataSetPeriodo: TDataSet read FDataSetPeriodo write SetDataSetPeriodo;
    property actAutorizar: TBasicAction read FactAutorizar write SetactAutorizar;
  end;

implementation

{$R *.dfm}

uses CuentasXPagarDM;

{ TfrmCuentasXPagar }

function TfrmCuentasXPagar.GetIdPeriodo: Integer;
begin
  if VarIsNull(cxedtPeriodo.EditValue) then
    Result:= 0
  else
    Result:= cxedtPeriodo.EditValue;
end;

procedure TfrmCuentasXPagar.SetactAutorizar(const Value: TBasicAction);
begin
  FactAutorizar := Value;
  btnAutorizar.Action := Value;
end;

procedure TfrmCuentasXPagar.SetDataSetPeriodo(const Value: TDataSet);
begin
  FDataSetPeriodo := Value;
  dsPeriodos.DataSet := Value;
end;

procedure TfrmCuentasXPagar.SetIdPeriodo(const Value: Integer);
begin
  cxedtPeriodo.EditValue := Value;
end;


end.
