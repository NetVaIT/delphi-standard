unit InstruccionesEdit;

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
  cxContainer, cxEdit, cxSpinEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.DBCtrls, cxTextEdit, Vcl.Buttons, cxLabel, cxDBLabel,
  cxCheckBox, cxGroupBox, cxRadioGroup;

type
  TfrmInstruccionesEdit = class(T_frmEdit)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label8: TLabel;
    cxDBLabel1: TcxDBLabel;
    btnUpdateFile: TSpeedButton;
    cxDBCheckBox1: TcxDBCheckBox;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    cxDBRadioGroup1: TcxDBRadioGroup;
    Label5: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBRadioGroup2: TcxDBRadioGroup;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBDateEdit3: TcxDBDateEdit;
  private
    FUpdateFile: TBasicAction;
    procedure SetUpdateFile(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property UpdateFile: TBasicAction read FUpdateFile write SetUpdateFile;
  end;

implementation

{$R *.dfm}

uses InstruccionesDM;

{ TfrmInstruccionesEdit }

procedure TfrmInstruccionesEdit.SetUpdateFile(const Value: TBasicAction);
begin
  FUpdateFile := Value;
  btnUpdateFile.Action:= Value;
end;

end.
