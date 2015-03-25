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
  Vcl.DBCtrls, cxTextEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  PersonasDM;

type
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
    cxTabSheet1: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    dsPersonaRol: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
    procedure pcMainChange(Sender: TObject);
  private
    FRol: TPRol;
    procedure SetRol(const Value: TPRol);
    procedure CrearRegistroPersonaRol();
    { Private declarations }
  public
    { Public declarations }
    property Rol: TPRol read FRol write SetRol;
  end;

implementation

{$R *.dfm}

procedure TfrmPersonasEdit.actPostExecute(Sender: TObject);
begin
  if Rol = rEmpleado {and DataSource.DataSet.state in [dsInsert, dsEdit]} then
    DataSource.DataSet.FieldByName('RazonSocial').Value := cxDBTextEdit3.Text + ' ' + cxDBTextEdit4.Text + ' ' + cxDBTextEdit5.Text;
  inherited;
  CrearRegistroPersonaRol;
end;

procedure TfrmPersonasEdit.CrearRegistroPersonaRol;
begin
  dsPersonaRol.DataSet.FieldByName('IdPersona').Value := DataSource.DataSet.FieldByName('IdPersona').Value;
  dsPersonaRol.DataSet.FieldByName('IdRol').Value := Rol;
  dsPersonaRol.DataSet.FieldByName('IdRolEsquemaPago').Value := 0;
  dsPersonaRol.DataSet.Post;
end;

procedure TfrmPersonasEdit.FormShow(Sender: TObject);
begin
  inherited;
  if DataSource.DataSet.state in [dsInsert] then
    dsPersonaRol.DataSet.Insert;
  if DataSource.DataSet.state in [dsEdit] then
    dsPersonaRol.DataSet.Edit;
  if Rol = rEmpleado then
  begin
    Self.Caption := 'Empleado';
    pnlPersonaMoral.Visible := False;
    cxDBLookupComboBox1.Enabled := False;
    if dsPersonaRol.DataSet.State in [dsInsert] then
      cxDBLookupComboBox1.EditValue := 1;
  end;
{  if Rol = rCliente then
  begin

  end;
  if Rol = rProveedor then
  begin

  end;}
end;

procedure TfrmPersonasEdit.pcMainChange(Sender: TObject);
begin
  inherited;
  CrearRegistroPersonaRol();
end;

procedure TfrmPersonasEdit.SetRol(const Value: TPRol);
begin
  FRol := Value;
end;

end.
