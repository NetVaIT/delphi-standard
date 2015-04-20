unit CuentasBancariasEdit;

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
  Vcl.DBCtrls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxCurrencyEdit,
  Vcl.ExtDlgs, Vcl.Buttons;

type
  TfrmCuentasBancariasEdit = class(T_frmEdit)
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTxtEdtArchConf: TcxDBTextEdit;
    Label4: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label5: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label6: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label7: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label8: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    SpdBtnArchiConf: TSpeedButton;
    OpnTxtFlDlgCarga: TOpenTextFileDialog;
    procedure SpdBtnArchiConfClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses CuentasBancariasDM;

procedure TfrmCuentasBancariasEdit.SpdBtnArchiConfClick(Sender: TObject);
begin
  inherited;
  OpnTxtFlDlgCarga.FilterIndex:=0;
  if cxDBTxtEdtArchConf.Text<>'' then
    OpnTxtFlDlgCarga.InitialDir:= extractFilePath(cxDBTxtEdtArchConf.Text);
  if OpnTxtFlDlgCarga.Execute then
    datasource.dataset.FieldByName('EstructuraEstadoCuenta').AsString:=OpnTxtFlDlgCarga.FileName;
end;

end.
