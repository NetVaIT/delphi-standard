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
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterIdPeriodo: TcxGridDBColumn;
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
    dxbtnEliminarCXP: TdxBarButton;
    tvMasterEgresos: TcxGridDBColumn;
    tvMasterSaldoAnterior: TcxGridDBColumn;
    tvMasterSaldoPeriodo: TcxGridDBColumn;
    tvMasterSaldo: TcxGridDBColumn;
    dxbtnCalcularCXC: TdxBarButton;
    dxbtnEliminarCXC: TdxBarButton;
    cxsIntial: TcxStyle;
    cxsRed: TcxStyle;
    cxsGreen: TcxStyle;
    cxsMedGray: TcxStyle;
    cxsSilver: TcxStyle;
    dxbtnMostrarISR: TdxBarButton;
    tvMasterBaseGrupo: TcxGridDBColumn;
    tvMasterCostoGrupo: TcxGridDBColumn;
    tvMasterCargaGrupo: TcxGridDBColumn;
    tvMasterSaldoAnteriorGrupo: TcxGridDBColumn;
    tvMasterSaldoPeriodoGrupo: TcxGridDBColumn;
    tvMasterSaldoGrupo: TcxGridDBColumn;
    tvMasterPersonaTitular: TcxGridDBColumn;
    tvMasterRetencion: TcxGridDBColumn;
    tvMasterSaldoCosto: TcxGridDBColumn;
    tvMasterSaldoCostoGrupo: TcxGridDBColumn;
    dxbtnEliminarDispercion: TdxBarButton;
    dxbtnRolesTitular: TdxBarButton;
    dxbtnMovimientosSolidarios: TdxBarButton;
    procedure tvMasterStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
  private
    { Private declarations }
    FCalcularCXP: TBasicAction;
    FDataSetPeriodo: TDataSet;
    FCalcularMovimientos: TBasicAction;
    FEliminarMovimientos: TBasicAction;
    FEliminarCXC: TBasicAction;
    FCalcularCXC: TBasicAction;
    FEliminarCXP: TBasicAction;
    FMostrarISR: TBasicAction;
    FEliminarDispercion: TBasicAction;
    FRolesTitular: TBasicAction;
    FMovimientosSolidarios: TBasicAction;
    procedure SetCalcularCXP(const Value: TBasicAction);
    function GetIdPeriodo: Integer;
    procedure SetDataSetPeriodo(const Value: TDataSet);
    procedure SetIdPeriodo(const Value: Integer);
    procedure SetCalcularMovimientos(const Value: TBasicAction);
    procedure SetEliminarMovimientos(const Value: TBasicAction);
    procedure SetCalcularCXC(const Value: TBasicAction);
    procedure SetEliminarCXC(const Value: TBasicAction);
    procedure SetEliminarCXP(const Value: TBasicAction);
    procedure SetMostrarISR(const Value: TBasicAction);
    procedure SetEliminarDispercion(const Value: TBasicAction);
    procedure SetRolesTitular(const Value: TBasicAction);
    procedure SetMovimientosSolidarios(const Value: TBasicAction);
  public
    { Public declarations }
    property CalcularMovimientos: TBasicAction read FCalcularMovimientos write SetCalcularMovimientos;
    property EliminarMovimientos: TBasicAction read FEliminarMovimientos write SetEliminarMovimientos;
    property CalcularCXP: TBasicAction read FCalcularCXP write SetCalcularCXP;
    property EliminarCXP: TBasicAction read FEliminarCXP write SetEliminarCXP;
    property CalcularCXC: TBasicAction read FCalcularCXC write SetCalcularCXC;
    property EliminarCXC: TBasicAction read FEliminarCXC write SetEliminarCXC;
    property MostrarISR: TBasicAction read FMostrarISR write SetMostrarISR;
    property IdPeriodo: Integer read GetIdPeriodo write SetIdPeriodo;
    property DataSetPeriodo: TDataSet read FDataSetPeriodo write SetDataSetPeriodo;
    property EliminarDispercion: TBasicAction read FEliminarDispercion write SetEliminarDispercion;
    property RolesTitular: TBasicAction read FRolesTitular write SetRolesTitular;
    property MovimientosSolidarios: TBasicAction read FMovimientosSolidarios write SetMovimientosSolidarios;
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

procedure TfrmMovimientos.SetCalcularCXC(const Value: TBasicAction);
begin
  FCalcularCXC := Value;
  dxbtnCalcularCXC.Action:= Value;
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

procedure TfrmMovimientos.SetEliminarCXC(const Value: TBasicAction);
begin
  FEliminarCXC := Value;
  dxbtnEliminarCXC.Action:= Value;
end;

procedure TfrmMovimientos.SetEliminarCXP(const Value: TBasicAction);
begin
  FEliminarCXP := Value;
  dxbtnEliminarCXP.Action:= Value;
end;

procedure TfrmMovimientos.SetEliminarDispercion(const Value: TBasicAction);
begin
  FEliminarDispercion := Value;
  dxbtnEliminarDispercion.Action:= Value;
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

procedure TfrmMovimientos.SetMostrarISR(const Value: TBasicAction);
begin
  FMostrarISR := Value;
  dxbtnMostrarISR.Action:= Value;
end;

procedure TfrmMovimientos.SetMovimientosSolidarios(const Value: TBasicAction);
begin
  FMovimientosSolidarios := Value;
  dxbtnMovimientosSolidarios.Action:= Value;
end;

procedure TfrmMovimientos.SetRolesTitular(const Value: TBasicAction);
begin
  FRolesTitular := Value;
  dxbtnRolesTitular.Action:= Value;
end;

procedure TfrmMovimientos.tvMasterStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
  if (ARecord <> nil) and (AItem <> nil) then
  begin
    if ARecord.Values[tvMasterSaldoGrupo.Index] = 0 then
      AStyle := cxsGreen;
    if ARecord.Values[tvMasterSaldoGrupo.Index] > 0 then
      AStyle := cxsIntial;
    if ARecord.Values[tvMasterBaseGrupo.Index] < 0 then
      AStyle := cxsRed;
  end;
end;

end.
