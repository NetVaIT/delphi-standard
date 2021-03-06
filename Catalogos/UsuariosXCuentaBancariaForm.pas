unit UsuariosXCuentaBancariaForm;

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
  dxSkinsdxBarPainter, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, dxBar, Vcl.ImgList, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxClasses, Vcl.StdActns, Vcl.DBActns, System.Actions, Vcl.ActnList,
  cxGridLevel, cxGridCustomView, cxGrid, Vcl.ExtCtrls, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxRibbonPainter,
  dxPSCore, dxPScxCommon, Vcl.StdCtrls;

type
  TfrmUsuariosXCuentaBancaria = class(T_frmGrid)
    tvMasterIdCuentaBancariaUsuario: TcxGridDBColumn;
    tvMasterIdCuentaBancaria: TcxGridDBColumn;
    tvMasterIdPersonaResponsable: TcxGridDBColumn;
    tvMasterResponsable: TcxGridDBColumn;
    tvMasterLoginBanco: TcxGridDBColumn;
    tvMasterNumeroSerieToken: TcxGridDBColumn;
    tvMasterObservaciones1: TcxGridDBColumn;
    tvMasterObservaciones2: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FCuenta: string;
    { Private declarations }
  public
    { Public declarations }
    property Cuenta: string read FCuenta write FCuenta;
  end;

implementation

{$R *.dfm}

uses CuentasBancariasDM, UsuariosXCuentaBancariaEdit;

procedure TfrmUsuariosXCuentaBancaria.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmUsuariosXCuentaBancariaEdit.Create(Self);
end;

procedure TfrmUsuariosXCuentaBancaria.FormShow(Sender: TObject);
begin
  inherited;
    TfrmUsuariosXCuentaBancariaEdit(gEditForm).Cuenta:= Cuenta;
end;

end.
