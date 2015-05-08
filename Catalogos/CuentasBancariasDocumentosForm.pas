unit CuentasBancariasDocumentosForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _GridForm, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
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
  TfrmCuentasBancariasDocumentos = class(T_frmGrid)
    tvMasterIdCuentaBancariaDocumento: TcxGridDBColumn;
    tvMasterIdCuentaBancaria: TcxGridDBColumn;
    tvMasterIdDocumento: TcxGridDBColumn;
    tvMasterDocumento: TcxGridDBColumn;
  private
    { Private declarations }
    FUpdateFile: TBasicAction;
    FNuevoFile : TBasicAction;
    FEditaFile : TBasicAction;
    procedure SetUpdateFile(const Value: TBasicAction);
    procedure SetNuevoFile(const Value: TBasicAction);
    procedure SetEditaFile(const Value: TBasicAction);
  public
    { Public declarations }
    property UpdateFile: TBasicAction read FUpdateFile write FUpdateFile;
    property NuevoFile : TBasicAction read FNuevoFile write FNuevoFile;
    property EditaFile : TBasicAction read FEditaFile write FEditaFile;
  end;

implementation

{$R *.dfm}

uses CuentasBancariasDocumentosDM;

{ TfrmCuentasBancariasDocumentos }

procedure TfrmCuentasBancariasDocumentos.SetEditaFile(
  const Value: TBasicAction);
begin
  FEditaFile := Value;
  Edit1.Action := FEditaFile;
end;

procedure TfrmCuentasBancariasDocumentos.SetNuevoFile(
  const Value: TBasicAction);
begin
  FNuevoFile := Value;
  Insert1.Action := FNuevoFile;
end;

procedure TfrmCuentasBancariasDocumentos.SetUpdateFile(
  const Value: TBasicAction);
begin
  FUpdateFile := Value;
end;

end.
