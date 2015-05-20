unit PersonasRolesEdit;

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
  Vcl.DBCtrls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, PersonasDM,
  CuentasContablesPersonasRolesDM, cxCheckBox, cxDBEdit, ArchivosGenerarFacturasDM,
  PersonasRolesCuentasBancariasDM, PersonasRolesDocumentosDM, cxCalendar;

type
  TfrmPersonaRolesEdit = class(T_frmEdit)
    tsKardex: TcxTabSheet;
    tsCuentas: TcxTabSheet;
    tsEsquemaPago: TcxTabSheet;
    tsArchivosFacturar: TcxTabSheet;
    pnlRol: TPanel;
    pnlProveedor: TPanel;
    pnlEmpleado: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    Label5: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label6: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    dbchkFacturar: TcxDBCheckBox;
    Label7: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label8: TLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    tsCuentasBancarias: TcxTabSheet;
    tsExpedienteDigital: TcxTabSheet;
    cxDBCheckBox1: TcxDBCheckBox;
    Label9: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    pnlOutsourcing: TPanel;
    Label10: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    procedure actPostExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FRol: TPRol;
    dmCtasCtablesPersonasRoles: TdmCuentasContablesPersonasRoles;
    dmArchivosGenerarFacturas: TdmArchivosGenerarFacturas;
    dmPersonasRolesCuentasBancarias: TdmPersonasRolesCuentasBancarias;
    dmPersonasRolesDocumentos: TdmPersonasRolesDocumentos;
    procedure SetRol(const Value: TPRol);
  public
    { Public declarations }
    property Rol: TPRol read FRol write SetRol;
  end;

implementation

{$R *.dfm}

procedure TfrmPersonaRolesEdit.actPostExecute(Sender: TObject);
begin
  DataSet.FieldByName('IdRolEsquemaPago').Value := 0;
  inherited;
end;

procedure TfrmPersonaRolesEdit.FormCreate(Sender: TObject);
begin
  inherited;
  dmCtasCtablesPersonasRoles := TdmCuentasContablesPersonasRoles.Create(nil);
  dmArchivosGenerarFacturas := TdmArchivosGenerarFacturas.Create(nil);
  dmPersonasRolesCuentasBancarias := TdmPersonasRolesCuentasBancarias.Create(nil);
  dmPersonasRolesDocumentos := TdmPersonasRolesDocumentos.Create(nil);
end;

procedure TfrmPersonaRolesEdit.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmCtasCtablesPersonasRoles);
  FreeAndNil(dmArchivosGenerarFacturas);
  FreeAndNil(dmPersonasRolesCuentasBancarias);
  FreeAndNil(dmPersonasRolesDocumentos);
end;

procedure TfrmPersonaRolesEdit.FormShow(Sender: TObject);
begin
  inherited;
  if DataSource.DataSet.State in [dsInsert] then
    cxDBLookupComboBox1.EditValue := Rol;
    pnlProveedor.Visible := False;
    pnlOutsourcing.Visible := False;
    tsArchivosFacturar.TabVisible := False;
    pnlEmpleado.Visible := False;
  case DataSource.DataSet.FieldByName('IdRol').AsInteger of
    1: begin

       end;
    2: begin
        pnlProveedor.Visible   := True;
        pnlOutsourcing.Visible := True;
        tsCuentas.TabVisible   := False;
       end;
    3: begin
        tsCuentas.TabVisible          := True;
        tsEsquemaPago.TabVisible      := False;
        dmCtasCtablesPersonasRoles.MasterSource    := DataSource;
        dmCtasCtablesPersonasRoles.MasterFields    := 'IdPersonaRol';
        dmCtasCtablesPersonasRoles.ShowModule(tsCuentas,'');
       end;
    4: begin
        tsCuentas.TabVisible          := True;
        tsEsquemaPago.TabVisible      := False;
        dmCtasCtablesPersonasRoles.MasterSource    := DataSource;
        dmCtasCtablesPersonasRoles.MasterFields    := 'IdPersonaRol';
        dmCtasCtablesPersonasRoles.ShowModule(tsCuentas,'');
        pnlProveedor.Visible          := True;
        tsArchivosFacturar.TabVisible := True;
       end;
    5: begin
        pnlEmpleado.Visible           := True;
        tsEsquemaPago.TabVisible      := False; //TMP
        tsCuentas.TabVisible          := False;
       end;
    6: begin
        tsCuentas.TabVisible     := True;
        tsEsquemaPago.TabVisible := False;
       end;
    7: begin
        tsCuentas.TabVisible     := True;
        tsEsquemaPago.TabVisible := False;
       end;
    8: begin
        tsCuentas.TabVisible     := True;
        tsEsquemaPago.TabVisible := False;
       end;
    9: begin
        tsCuentas.TabVisible     := True;
        tsEsquemaPago.TabVisible := False;
       end;
  end;
  dmPersonasRolesCuentasBancarias.MasterSource := DataSource;
  dmPersonasRolesCuentasBancarias.MasterFields := 'IdPersonaRol';
  dmPersonasRolesCuentasBancarias.PersonaAct := DataSet.FieldByName('IdPersona').Value;
  dmPersonasRolesCuentasBancarias.ShowModule(tsCuentasBancarias,'');
  dmPersonasRolesDocumentos.MasterSource := DataSource;
  dmPersonasRolesDocumentos.MasterFields := 'IdPersonaRol';
  dmPersonasRolesDocumentos.ShowModule(tsExpedienteDigital,'');
  tsCuentasBancarias.TabVisible := True;
  tsExpedienteDigital.TabVisible := True;
  if tsArchivosFacturar.TabVisible = True then
  begin
    dmArchivosGenerarFacturas.MasterSource := DataSource;
    dmArchivosGenerarFacturas.MasterFields := 'IdPersonaRol';
    dmArchivosGenerarFacturas.ShowModule(tsArchivosFacturar,'');
  end;
end;

procedure TfrmPersonaRolesEdit.SetRol(const Value: TPRol);
begin
  FRol := Value;
end;

end.
