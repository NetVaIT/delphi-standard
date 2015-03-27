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
  PersonasDM, TelefonosDM, EmailsDM, PersonasDomiciliosDM;

type
  TfrmPersonaEdit = class(T_frmEdit)
    pnlPersona: TPanel;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cmbTipoPersona: TcxDBLookupComboBox;
    pnlPersonaMoral: TPanel;
    pnlPersonaFisica: TPanel;
    Label3: TLabel;
    edtRazonSocial: TcxDBTextEdit;
    Label4: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    Label5: TLabel;
    edtNombre: TcxDBTextEdit;
    Label6: TLabel;
    edtAPaterno: TcxDBTextEdit;
    Label7: TLabel;
    edtAMaterno: TcxDBTextEdit;
    Label8: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label9: TLabel;
    Label10: TLabel;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    pnlOrigen: TPanel;
    Label12: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    tsDomicilio: TcxTabSheet;
    tsTelefono: TcxTabSheet;
    tsCorreo: TcxTabSheet;
    Label11: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtNombreEditing(Sender: TObject; var CanEdit: Boolean);
  private
    { Private declarations }
    FRol: TPRol;
    dmTelefonos: TdmTelefonos;
    dmEmails: TdmEmails;
    dmDomicilios: TdmPersonasDomicilios;
    procedure MostrarPanel();
    procedure SetRol(const Value: TPRol);
  public
    { Public declarations }
    property Rol: TPRol read FRol write SetRol;
  end;

implementation

{$R *.dfm}


procedure TfrmPersonaEdit.cxDBLookupComboBox1PropertiesChange(Sender: TObject);
begin
  inherited;
  MostrarPanel;
end;

procedure TfrmPersonaEdit.edtNombreEditing(Sender: TObject;
  var CanEdit: Boolean);
begin
  inherited;
  edtRazonSocial.Text := edtNombre.Text + ' ' + edtAPaterno.Text + ' ' + edtAMaterno.Text;
end;

procedure TfrmPersonaEdit.FormCreate(Sender: TObject);
begin
  inherited;
  dmTelefonos := TdmTelefonos.Create(nil);
  dmEmails := TdmEmails.Create(nil);
  dmDomicilios := TdmPersonasDomicilios.Create(nil);
end;

procedure TfrmPersonaEdit.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmTelefonos);
  FreeAndNil(dmEmails);
  FreeAndNil(dmDomicilios);
end;

procedure TfrmPersonaEdit.FormShow(Sender: TObject);
begin
  inherited;
  pnlPersonaMoral.Visible := False;
  pnlPersonaFisica.Visible := False;
  pnlOrigen.Visible := False;
  MostrarPanel;
  dmDomicilios.MasterSource := DataSource;
  dmDomicilios.MasterFields:= 'IdPersona';
  dmDomicilios.ShowModule(tsDomicilio,'');
  dmTelefonos.MasterSource := DataSource;
  dmTelefonos.MasterFields:= 'IdPersona';
  dmTelefonos.ShowModule(tsTelefono,'');
  dmEmails.MasterSource := DataSource;
  dmEmails.MasterFields:= 'IdPersona';
  dmEmails.ShowModule(tsCorreo,'');
  case Rol of
    rNone: Self.Caption := 'Persona';
    rDuenoProceso: Self.Caption := 'Dueño de Proceso';
    rOutSourcing: Self.Caption := 'Outsourcing';
    rCliente: Self.Caption := 'Cliente';
    rProveedor: Self.Caption := 'Proveedor';
    rEmpleado: Self.Caption := 'Empleado';
  end;
end;

procedure TfrmPersonaEdit.MostrarPanel;
begin
  if DataSource.DataSet.State in [dsEdit] then
  begin
    if DataSource.DataSet.FieldByName('IdPersonaTipo').AsInteger = 1 then
    begin
      pnlPersonaMoral.Visible := False;
      pnlPersonaFisica.Visible := True;
    end
    else
    begin
      pnlPersonaMoral.Visible := True;
      pnlPersonaFisica.Visible := False;
    end;
    pnlOrigen.Visible := True;
  end;
  if DataSource.DataSet.State in [dsInsert] then
  begin
    if cmbTipoPersona.EditValue = 1 then
    begin
      pnlPersonaMoral.Visible := False;
      pnlPersonaFisica.Visible := True;
      pnlOrigen.Visible := True;
    end;
    if cmbTipoPersona.EditValue = 2 then
    begin
      pnlPersonaMoral.Visible := True;
      pnlPersonaFisica.Visible := False;
      pnlOrigen.Visible := True;
    end;
  end;
end;

procedure TfrmPersonaEdit.SetRol(const Value: TPRol);
begin
  FRol := Value;
end;

end.
