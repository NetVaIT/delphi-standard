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
  ClientesDM, ProveedoresDM, cxCheckBox, cxDBEdit, ArchivosGenerarFacturasDM,
  EmpleadosDM, PersonasRolesCuentasBancariasDM, PersonasRolesDocumentosDM, cxCalendar;

type
  TfrmPersonaRolesEdit = class(T_frmEdit)
    tsKardex: TcxTabSheet;
    tsCuentas: TcxTabSheet;
    tsEsquemaPago: TcxTabSheet;
    tsArchivosFacturar: TcxTabSheet;
    tsEmpleado: TcxTabSheet;
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
    procedure actPostExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FRol: TPRol;
    dmClientes: TdmClientes;
    dmProveedores: TdmProveedores;
    dmEmpleados: TdmEmpleados;
    dmArchivosGenerarFacturas: TdmArchivosGenerarFacturas;
    dmRolesCuentasBancarias: TdmPersonasRolesCuentasBancarias;
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
  dmClientes := TdmClientes.Create(nil);
  dmProveedores := TdmProveedores.Create(nil);
  dmEmpleados := TdmEmpleados.Create(nil);
  dmArchivosGenerarFacturas := TdmArchivosGenerarFacturas.Create(nil);
  dmRolesCuentasBancarias := TdmPersonasRolesCuentasBancarias.Create(nil);
  dmPersonasRolesDocumentos := TdmPersonasRolesDocumentos.Create(nil);
end;

procedure TfrmPersonaRolesEdit.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmClientes);
  FreeAndNil(dmProveedores);
  FreeAndNil(dmEmpleados);
  FreeAndNil(dmArchivosGenerarFacturas);
  FreeAndNil(dmRolesCuentasBancarias);
  FreeAndNil(dmPersonasRolesDocumentos);
end;

procedure TfrmPersonaRolesEdit.FormShow(Sender: TObject);
begin
  inherited;
  if DataSource.DataSet.State in [dsInsert] then
    cxDBLookupComboBox1.EditValue := Rol;
    pnlProveedor.Visible := False;
    tsArchivosFacturar.TabVisible := False;
    pnlEmpleado.Visible := False;
  case DataSource.DataSet.FieldByName('IdRol').AsInteger of
    1: begin

       end;
    2: begin
        pnlProveedor.Visible := True;

       end;
    3: begin
        tsCuentas.TabVisible          := True;
//        tsEmpleado.TabVisible         := False;
        tsEsquemaPago.TabVisible      := False;

        dmClientes.MasterSource       := DataSource;
        dmClientes.MasterFields       := 'IdPersonaRol';
        dmClientes.ShowModule(tsCuentas,'');
       end;
    4: begin
        tsCuentas.TabVisible          := True;
//        tsEmpleado.TabVisible         := False;
        tsEsquemaPago.TabVisible      := False;

        dmProveedores.MasterSource    := DataSource;
        dmProveedores.MasterFields    := 'IdPersonaRol';
        dmProveedores.ShowModule(tsCuentas,'');
        pnlProveedor.Visible          := True;
        tsArchivosFacturar.TabVisible := True;
       end;
    5: begin
        pnlEmpleado.Visible           := True;
//        tsEmpleado.TabVisible         := True;
        tsEsquemaPago.TabVisible      := False; //TMP
        tsCuentas.TabVisible          := False;

       end;
    6: begin
        tsCuentas.TabVisible     := True;
//        tsEmpleado.TabVisible    := False;
        tsEsquemaPago.TabVisible := False;
       end;
    7: begin
        tsCuentas.TabVisible     := True;
//        tsEmpleado.TabVisible    := False;
        tsEsquemaPago.TabVisible := False;
       end;
    8: begin
        tsCuentas.TabVisible     := True;
//        tsEmpleado.TabVisible    := False;
        tsEsquemaPago.TabVisible := False;
       end;
    9: begin
        tsCuentas.TabVisible     := True;
//        tsEmpleado.TabVisible    := False;
        tsEsquemaPago.TabVisible := False;
       end;
  end;
//  dmEmpleados.MasterSource := DataSource;
//  dmEmpleados.MasterFields := 'IdPersonaRol';
//  dmEmpleados.ShowModule(tsEmpleado,'');
  dmRolesCuentasBancarias.MasterSource := DataSource;
  dmRolesCuentasBancarias.MasterFields := 'IdPersonaRol';
  dmRolesCuentasBancarias.PersonaAct := DataSet.FieldByName('IdPersona').Value;
  dmRolesCuentasBancarias.ShowModule(tsCuentasBancarias,'');
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
