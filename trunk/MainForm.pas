unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _MainRibbonForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxRibbonPainter, cxContainer, cxEdit, dxSkinsdxBarPainter,
  Vcl.StdActns, System.Actions, Vcl.ActnList, Vcl.ImgList, dxSkinsForm, dxBar,
  Vcl.ExtCtrls, dxStatusBar, dxRibbonStatusBar, cxLabel, dxGallery,
  dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView,
  cxClasses, dxRibbon, dxScreenTip, _Utils,
  _StandarDMod, Data.DB;

type
  TfrmMain = class(T_frmMainRibbon)
    actCatalogo: TAction;
    dxRibbon1Tab2: TdxRibbonTab;
    dxbEjemplo: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    actUbicaciones: TAction;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    actBancos: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    actMonedas: TAction;
    actRegimenFiscal: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    actTipoDocumento: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    actEmailTipo: TAction;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    actTelefonoTipo: TAction;
    actUnidadNegocio: TAction;
    dxBarLargeButton11: TdxBarLargeButton;
    procedure actCatalogoExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    gModulo: T_dmStandar;
    procedure CreateModule(pModulo: Integer; pCaption: String); override;
    procedure ConfigControls; override;
    procedure DestroyModule; override;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses UbicacionesDM, BancosDM, MonedasDM, RegimenFiscalDM, TiposDocumentosDM,
  EmailTiposDM, TelefonosTiposDM, UnidadesdeNegocioDM;

procedure TfrmMain.actCatalogoExecute(Sender: TObject);
begin
  inherited;
  CreateModule(TAction(Sender).Tag, TAction(Sender).Caption);
end;

procedure TfrmMain.CreateModule(pModulo: Integer; pCaption: String);
begin
  inherited;
  DestroyModule;
  case pModulo of
    //Catalogos
    1: gModulo := TdmUbicaciones.Create(Self);
    2: gModulo := TdmBancos.Create(Self);
    3: gModulo := TdmMonedas.Create(Self);
    4: gModulo := TdmRegimenFiscal.Create(Self);
    5: gModulo := TdmTiposDocumentos.Create(Self);
    6: gModulo := TdmEmailTipos.Create(Self);
    7: gModulo := TdmTelefonosTipos.Create(Self);
    8: gModulo := TdmUnidadesdeNegocio.Create(Self);
  end;
  gModulo.ShowModule(pnlMain, pCaption);
  Caption := pCaption + strSeparador + strProductName + strSeparador + strFileDescription;
end;

procedure TfrmMain.ConfigControls;
begin
  inherited;
//  actCFDI.Enabled:= Conected and _dmConection.EnabledAction(actCFDI.Tag);
  actUbicaciones.Enabled   := Conected;
  actBancos.Enabled        := Conected;
  actMonedas.Enabled       := Conected;
  actRegimenFiscal.Enabled := Conected;
  actTipoDocumento.Enabled := Conected;
  actEmailTipo.Enabled     := Conected;
  actTelefonoTipo.Enabled  := Conected;
  actUnidadNegocio.Enabled := Conected;
end;

procedure TfrmMain.DestroyModule;
begin
  if Assigned(gModulo) then FreeAndNil(gModulo);
end;


end.
