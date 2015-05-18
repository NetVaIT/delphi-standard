unit MovimientosFrm;

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
  TfrmMovimientos = class(T_frmGrid)
    tvMasterIdMovimiento: TcxGridDBColumn;
    tvMasterIdInstruccion: TcxGridDBColumn;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterIdPeriodo: TcxGridDBColumn;
    tvMasterPeriodo: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterPersona: TcxGridDBColumn;
    dxbtnCalcularMovimientos: TdxBarButton;
    dxbtnCalcularCXP: TdxBarButton;
    dsPeriodos: TDataSource;
    cxedtPeriodo: TcxBarEditItem;
    tvMasterIngresos: TcxGridDBColumn;
    tvMasterDescuentos: TcxGridDBColumn;
    tvMasterBase: TcxGridDBColumn;
    tvMasterEntregas: TcxGridDBColumn;
    tvMasterPercepciones: TcxGridDBColumn;
    tvMasterDeducciones: TcxGridDBColumn;
    tvMasterPrestaciones: TcxGridDBColumn;
    tvMasterObligaciones: TcxGridDBColumn;
    tvMasterOperaciones: TcxGridDBColumn;
    tvMasterImpuestoTrasladado: TcxGridDBColumn;
    tvMasterImpuestoRetenido: TcxGridDBColumn;
    tvMasterCosto: TcxGridDBColumn;
    tvMasterCarga: TcxGridDBColumn;
    dxbtnEliminarMovimientos: TdxBarButton;
    dxbtnEliminarCuentasXPagar: TdxBarButton;
    tvMasterEgresos: TcxGridDBColumn;
    tvMasterSaldoAnterior: TcxGridDBColumn;
    tvMasterSaldoPeriodo: TcxGridDBColumn;
    tvMasterSaldo: TcxGridDBColumn;
  private
    FCalcularCXP: TBasicAction;
    FDataSetPeriodo: TDataSet;
    FCalcularMovimientos: TBasicAction;
    FEliminarCuentasXPagar: TBasicAction;
    FEliminarMovimientos: TBasicAction;
    procedure SetCalcularCXP(const Value: TBasicAction);
    function GetIdPeriodo: Integer;
    procedure SetDataSetPeriodo(const Value: TDataSet);
    procedure SetIdPeriodo(const Value: Integer);
    procedure SetCalcularMovimientos(const Value: TBasicAction);
    procedure SetEliminarCuentasXPagar(const Value: TBasicAction);
    procedure SetEliminarMovimientos(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property CalcularMovimientos: TBasicAction read FCalcularMovimientos write SetCalcularMovimientos;
    property CalcularCXP: TBasicAction read FCalcularCXP write SetCalcularCXP;
    property EliminarMovimientos: TBasicAction read FEliminarMovimientos write SetEliminarMovimientos;
    property EliminarCuentasXPagar: TBasicAction read FEliminarCuentasXPagar write SetEliminarCuentasXPagar;
    property IdPeriodo: Integer read GetIdPeriodo write SetIdPeriodo;
    property DataSetPeriodo: TDataSet read FDataSetPeriodo write SetDataSetPeriodo;
  end;

implementation

{$R *.dfm}

uses MovimientosDM;

{ TfrmMovimientos }

function TfrmMovimientos.GetIdPeriodo: Integer;
begin
  if VarIsNull(cxedtPeriodo.EditValue) then
    Result:= 0
  else
    Result:= cxedtPeriodo.EditValue;
end;

procedure TfrmMovimientos.SetCalcularCXP(const Value: TBasicAction);
begin
  FCalcularCXP := Value;
  dxbtnCalcularCXP.Action:= Value;
end;

procedure TfrmMovimientos.SetCalcularMovimientos(const Value: TBasicAction);
begin
  FCalcularMovimientos := Value;
  dxbtnCalcularMovimientos.Action:= Value;
end;

procedure TfrmMovimientos.SetDataSetPeriodo(const Value: TDataSet);
begin
  FDataSetPeriodo := Value;
  dsPeriodos.DataSet:= Value;
end;

procedure TfrmMovimientos.SetEliminarCuentasXPagar(const Value: TBasicAction);
begin
  FEliminarCuentasXPagar := Value;
  dxbtnEliminarCuentasXPagar.Action:= Value;
end;

procedure TfrmMovimientos.SetEliminarMovimientos(const Value: TBasicAction);
begin
  FEliminarMovimientos := Value;
  dxbtnEliminarMovimientos.Action:= Value;
end;

procedure TfrmMovimientos.SetIdPeriodo(const Value: Integer);
begin
  cxedtPeriodo.EditValue:= Value;
end;

end.
