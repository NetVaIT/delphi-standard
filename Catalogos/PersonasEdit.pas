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
  PersonasDM, TelefonosDM, EmailsDM, PersonasDomiciliosDM, PersonasContactoDM,
  CuentasBancariasDM, ShellApi;

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
    tsDomicilio: TcxTabSheet;
    tsTelefono: TcxTabSheet;
    tsCorreo: TcxTabSheet;
    Label11: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    btnNext: TButton;
    lblCURP: TLabel;
    cxDBEditCURP: TcxDBMaskEdit;
    btnWeb: TButton;
    tsContacto: TcxTabSheet;
    Label12: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    tsCuentasBancarias: TcxTabSheet;
    procedure FormShow(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtNombreEditing(Sender: TObject; var CanEdit: Boolean);
    procedure btnNextClick(Sender: TObject);
    procedure btnWebClick(Sender: TObject);
  private
    { Private declarations }
    FRol: TPRol;
    dmTelefonos: TdmTelefonos;
    dmEmails: TdmEmails;
    dmDomicilios: TdmPersonasDomicilios;
    dmPersonasContacto: TdmPersonasContacto;
    dmCuentasBancarias: TdmCuentasBancarias;
    procedure MostrarPanel();
    procedure SetRol(const Value: TPRol);
  public
    { Public declarations }
    property Rol: TPRol read FRol write SetRol;
  end;

implementation

{$R *.dfm}


procedure TfrmPersonaEdit.btnNextClick(Sender: TObject);
begin
  pcMain.SelectNextPage(True);
  if pcMain.ActivePage = tsCuentasBancarias then
  begin
    btnOk.Visible := True;
    btnNext.Visible := False;
  end;
end;

procedure TfrmPersonaEdit.btnWebClick(Sender: TObject);
begin
  inherited;
  ShellExecute(Self.Handle,nil,PChar('https://rfc.siat.sat.gob.mx/PTSC/RFC/menu/index.jsp?opcion=2'),'','',SW_SHOWNORMAL);
end;

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
  dmPersonasContacto := TdmPersonasContacto.Create(nil);
  dmCuentasBancarias := TdmCuentasBancarias.Create(nil);
end;

procedure TfrmPersonaEdit.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmTelefonos);
  FreeAndNil(dmEmails);
  FreeAndNil(dmDomicilios);
  FreeAndNil(dmPersonasContacto);
  FreeAndNil(dmCuentasBancarias);
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
  dmPersonasContacto.MasterSource := DataSource;
  dmPersonasContacto.MasterFields := 'IdPersona';
  dmPersonasContacto.ShowModule(tsContacto,'');
  dmCuentasBancarias.MasterSource := DataSource;
  dmCuentasBancarias.MasterFields := 'IdPersona';
  dmCuentasBancarias.ShowModule(tsCuentasBancarias,'');
  case Rol of
    rNone:         Self.Caption := 'Persona';
    rDuenoProceso: Self.Caption := 'Due�o de Proceso';
    rOutSourcing:  Self.Caption := 'Outsourcing';
    rCliente:      Self.Caption := 'Cliente';
    rProveedor:    Self.Caption := 'Proveedor';
    rEmpleado:     Self.Caption := 'Empleado';
    rSocio:        Self.Caption := 'Socio';
    rComisionista: Self.Caption := 'Comisionista';
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
      lblCURP.Visible := True;
      cxDBEditCURP.Visible := True;
      btnWeb.Visible := True;
    end
    else
    begin
      pnlPersonaMoral.Visible := True;
      pnlPersonaFisica.Visible := False;
      lblCURP.Visible := False;
      cxDBEditCURP.Visible := False;
      btnWeb.Visible := False;
    end;
    pnlOrigen.Visible := True;
    cmbTipoPersona.Enabled := False;
  end;
  if DataSource.DataSet.State in [dsInsert] then
  begin
    if (Rol = rEmpleado) or (Rol = rComisionista) or
       (Rol = rSocio) then
    begin
      cmbTipoPersona.Enabled := False;
      cmbTipoPersona.EditValue := 1;
    end;
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
    cmbTipoPersona.Enabled := True;
    btnNext.Left := btnOk.Left;
    btnOk.Visible := False;
    btnNext.Visible := True;
  end;
end;

procedure TfrmPersonaEdit.SetRol(const Value: TPRol);
begin
  FRol := Value;
end;

end.
