unit CuentasXCobrarForm;

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
  Vcl.ExtCtrls, dxBarExtDBItems, cxDBLookupComboBox, cxBarEditItem, FacturacionDM;

type
  TfrmCuentasXCobrarForm = class(T_frmGrid)
    tvMasterIdCuentaXCobrar: TcxGridDBColumn;
    tvMasterIdPersonaRol: TcxGridDBColumn;
    tvMasterIdPeriodo: TcxGridDBColumn;
    tvMasterIdCuentaXCobrarEstatus: TcxGridDBColumn;
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
    dxBarSubItem1: TdxBarSubItem;
    dxBarLookupCombo1: TdxBarLookupCombo;
    dxBarContainerItem1: TdxBarContainerItem;
    cxedtPeriodo: TcxBarEditItem;
    dsPeriodos: TDataSource;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton8: TdxBarButton;
    actListaFacturar: TAction;
    procedure actListaFacturarExecute(Sender: TObject);
    procedure tvMasterCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    FDataSetPeriodo: TDataSet;
    dmFacturacion: TdmFacturacion;
    FCambiaConcepto: TBasicAction;
    { Private declarations }
    function GetIdPeriodo: Integer;
    procedure SetDataSetPeriodo(const Value: TDataSet);
    procedure SetIdPeriodo(const Value: Integer);
    procedure SetAsignaConcepto(const Value: TBasicAction);
  public
    { Public declarations }
    property IdPeriodo: Integer read GetIdPeriodo write SetIdPeriodo;
    property DataSetPeriodo: TDataSet read FDataSetPeriodo write SetDataSetPeriodo;
    property CambiarConcepto: TBasicAction read FCambiaConcepto write SetAsignaConcepto;
  end;

implementation

{$R *.dfm}

uses CuentasXCobrarDM, CuentasXCobrarEditConcepto;

{ TfrmCuentasXCobrarForm }

procedure TfrmCuentasXCobrarForm.actListaFacturarExecute(Sender: TObject);
begin
  inherited;
  dmFacturacion := TdmFacturacion.Create(nil);
  dmFacturacion.actListaFacturar.Execute;
  FreeAndNil(dmFacturacion);
  DataSource.DataSet.Close;
  DataSource.DataSet.Open;
end;

function TfrmCuentasXCobrarForm.GetIdPeriodo: Integer;
begin
  if VarIsNull(cxedtPeriodo.EditValue) then
    Result := 0
  else
    Result := cxedtPeriodo.EditValue;
end;

procedure TfrmCuentasXCobrarForm.SetAsignaConcepto(const Value: TBasicAction);
begin
  FCambiaConcepto := Value;
end;

procedure TfrmCuentasXCobrarForm.SetDataSetPeriodo(const Value: TDataSet);
begin
  FDataSetPeriodo := Value;
  dsPeriodos.DataSet := Value;
end;

procedure TfrmCuentasXCobrarForm.SetIdPeriodo(const Value: Integer);
begin
  cxedtPeriodo.EditValue := Value;
end;

procedure TfrmCuentasXCobrarForm.tvMasterCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  FCambiaConcepto.Execute;
end;

end.
