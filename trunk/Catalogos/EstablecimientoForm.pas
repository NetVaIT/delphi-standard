unit EstablecimientoForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _EditForm, dxSkinsCore, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, cxPC,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxMaskEdit, cxSpinEdit, Vcl.DBCtrls;

type
  TfrmEstablecimiento = class(T_frmEdit)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    gbDomicilio: TGroupBox;
    dsDomicilio: TDataSource;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label6: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label7: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label8: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label11: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label12: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label13: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label14: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses EstablecimientosDM, DomiciliosDM;

end.
