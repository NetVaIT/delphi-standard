unit ExportarPagosDocumentosForm;

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
  Vcl.ExtCtrls;

type
  TfrmExportarPagosDocumentos = class(T_frmGrid)
    tvMasterIdExportarPagoDocumento: TcxGridDBColumn;
    tvMasterIdExportarPagoDocumentoEstatus: TcxGridDBColumn;
    tvMasterIdDocumento: TcxGridDBColumn;
    tvMasterIdPeriodo: TcxGridDBColumn;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterIdCuentaBancaria: TcxGridDBColumn;
    tvMasterEstatus: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterNumero: TcxGridDBColumn;
    tvMasterAnio: TcxGridDBColumn;
    tvMasterPeriodo: TcxGridDBColumn;
    tvMasterEmisor: TcxGridDBColumn;
    tvMasterCuentaBancaria: TcxGridDBColumn;
    tvMasterObservaciones: TcxGridDBColumn;
    tvMasterNombreArchivo: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FUpdateFile: TBasicAction;
    FactExpotarBanorte: TBasicAction;
    procedure SetactExpotarBanorte(const Value: TBasicAction);
  public
    { Public declarations }
    property UpdateFile: TBasicAction read FUpdateFile write FUpdateFile;
    property actExpotarBanorte: TBasicAction read FactExpotarBanorte write SetactExpotarBanorte;
  end;

 implementation

{$R *.dfm}

uses ExportarPagosDocumentosDM, ExportarPagosDocumentosEdit;

procedure TfrmExportarPagosDocumentos.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmExportarPagosDocumentosEdit.Create(Self);
end;

procedure TfrmExportarPagosDocumentos.FormShow(Sender: TObject);
begin
  inherited;
  TfrmExportarPagosDocumentosEdit(gEditForm).UpdateFile:= UpdateFile;
end;

procedure TfrmExportarPagosDocumentos.SetactExpotarBanorte(
  const Value: TBasicAction);
begin
  FactExpotarBanorte := Value;
  Insert1.Action:= Value;
end;

end.
