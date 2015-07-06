unit MovimientosDForm;

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
  Vcl.ExtCtrls, cxCalendar, cxDBLookupComboBox, cxBarEditItem, Data.Win.ADODB,
  cxTextEdit, cxDropDownEdit, MovimientosDDM;

type
  TfrmMovimientosD = class(T_frmGrid)
    tvMasterIdMovimientoDetalle: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterPersona: TcxGridDBColumn;
    tvMasterPersonaRelacionada: TcxGridDBColumn;
    tvMasterTipo: TcxGridDBColumn;
    tvMasterCategoria: TcxGridDBColumn;
    tvMasterEfecto: TcxGridDBColumn;
    tvMasterImporte: TcxGridDBColumn;
    tvMasterEstatus: TcxGridDBColumn;
    dsPeriodos: TDataSource;
    cxedtPeriodo: TcxBarEditItem;
    cxedtClase: TcxBarEditItem;
    tvMasterRolClase: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
  private
    FDataSetPeriodo: TDataSet;
    { Private declarations }
    function GetIdPeriodo: Integer;
    procedure SetIdPeriodo(const Value: Integer);
    procedure SetDataSetPeriodo(const Value: TDataSet);
    function GetIdClase: TRolClase;
    procedure SetIdClase(const Value: TRolClase);
  public
    { Public declarations }
    property IdPeriodo: Integer read GetIdPeriodo write SetIdPeriodo;
    property IdClase: TRolClase read GetIdClase write SetIdClase;
    property DataSetPeriodo: TDataSet read FDataSetPeriodo write SetDataSetPeriodo;
  end;

implementation

{$R *.dfm}

procedure TfrmMovimientosD.FormShow(Sender: TObject);
begin
  inherited;
  actFullColapseGroup.Execute;
end;

function TfrmMovimientosD.GetIdClase: TRolClase;
begin
  if cxedtClase.EditValue = 'Ambos' then Result:= rcAmbos;
  if cxedtClase.EditValue = 'Real' then Result:= rcReal;
  if cxedtClase.EditValue = 'Virtual' then Result:= rcVirtual;
end;

function TfrmMovimientosD.GetIdPeriodo: Integer;
begin
  if VarIsNull(cxedtPeriodo.EditValue) then
    Result:= 0
  else
    Result:= cxedtPeriodo.EditValue;
end;

procedure TfrmMovimientosD.SetDataSetPeriodo(const Value: TDataSet);
begin
  FDataSetPeriodo := Value;
  dsPeriodos.DataSet:= Value;
end;

procedure TfrmMovimientosD.SetIdClase(const Value: TRolClase);
begin
  case Value of
    rcAmbos: cxedtClase.EditValue := 'Ambos';
    rcReal: cxedtClase.EditValue := 'Real';
    rcVirtual: cxedtClase.EditValue := 'Virtual';
  end;
end;

procedure TfrmMovimientosD.SetIdPeriodo(const Value: Integer);
begin
  cxedtPeriodo.EditValue:= Value;
end;

end.
