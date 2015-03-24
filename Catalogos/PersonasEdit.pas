unit PersonasEdit;

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
  cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  Vcl.DBCtrls, cxTextEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TPRol = (rNone, rDuenoProceso, rOutSourcing, rCliente, rProveedor, rEmpleado);
  TfrmPersonasEdit = class(T_frmEdit)
    pnlPersona: TPanel;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    pnlPersonaMoral: TPanel;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label10: TLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    pnlPersonaFisica: TPanel;
    Label7: TLabel;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label8: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label9: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    tsDomicilio: TcxTabSheet;
    tsTelefonos: TcxTabSheet;
    tsEmail: TcxTabSheet;
    pnlRoles: TPanel;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    tsKardex: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    procedure FormShow(Sender: TObject);
  private
    FRol: TPRol;
    procedure SetRol(const Value: TPRol);
    { Private declarations }
  public
    { Public declarations }
    property Rol: TPRol read FRol write SetRol;
  end;

implementation

{$R *.dfm}

uses PersonasDM;

procedure TfrmPersonasEdit.FormShow(Sender: TObject);
begin
  inherited;
  if Self.Tag = 1 then
  begin
    Self.Caption := 'Empleado';
    pnlPersonaMoral.Visible := False;
    cxDBLookupComboBox1.Enabled := False;
    cxDBLookupComboBox1.SelectedItem := 1;
  end;
end;

procedure TfrmPersonasEdit.SetRol(const Value: TPRol);
begin
  FRol := Value;
end;

end.
