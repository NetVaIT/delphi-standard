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
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, PersonasDM, CuentasBancariasDM,
  ClientesDM, ProveedoresDM, cxCheckBox, cxDBEdit, ArchivosGenerarFacturasDM,
  EmpleadosDM;

type
  TfrmPersonaRolesEdit = class(T_frmEdit)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    tsKardex: TcxTabSheet;
    tsCuentas: TcxTabSheet;
    tsEsquemaPago: TcxTabSheet;
    tsCuentasBancarias: TcxTabSheet;
    dbchkFacturar: TcxDBCheckBox;
    tsArchivosFacturar: TcxTabSheet;
    tsEmpleado: TcxTabSheet;
    procedure actPostExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FRol: TPRol;
    dmCuentasBancarias: TdmCuentasBancarias;
    dmClientes: TdmClientes;
    dmProveedores: TdmProveedores;
    dmEmpleados: TdmEmpleados;
    dmArchivosGenerarFacturas : TdmArchivosGenerarFacturas;
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
  dmCuentasBancarias := TdmCuentasBancarias.Create(nil);
  dmClientes := TdmClientes.Create(nil);
  dmProveedores := TdmProveedores.Create(nil);
  dmEmpleados := TdmEmpleados.Create(nil);
  dmArchivosGenerarFacturas := TdmArchivosGenerarFacturas.Create(nil);
end;

procedure TfrmPersonaRolesEdit.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmCuentasBancarias);
  FreeAndNil(dmClientes);
  FreeAndNil(dmProveedores);
  FreeAndNil(dmEmpleados);
  FreeAndNil(dmArchivosGenerarFacturas);
end;

procedure TfrmPersonaRolesEdit.FormShow(Sender: TObject);
begin
  inherited;
  if DataSource.DataSet.State in [dsInsert] then
    cxDBLookupComboBox1.EditValue := Rol;
    dbchkFacturar.Visible := False;
    tsArchivosFacturar.TabVisible := False;
  case DataSource.DataSet.FieldByName('IdRol').AsInteger of
    2: begin
        dbchkFacturar.Visible := True;
       end;
    3: begin
        tsCuentas.TabVisible          := True;
        tsEmpleado.TabVisible           := False;
        tsEsquemaPago.TabVisible      := False;
        tsCuentasBancarias.TabVisible := True;
        dmClientes.MasterSource       := DataSource;
        dmClientes.MasterFields       := 'IdPersonaRol';
        dmClientes.ShowModule(tsCuentas,'');
       end;
    4: begin
        tsCuentas.TabVisible          := True;
        tsEmpleado.TabVisible           := False;
        tsEsquemaPago.TabVisible      := False;
        tsCuentasBancarias.TabVisible := True;
        dmProveedores.MasterSource    := DataSource;
        dmProveedores.MasterFields    := 'IdPersonaRol';
        dmProveedores.ShowModule(tsCuentas,'');
        dbchkFacturar.Visible         := True;
        tsArchivosFacturar.TabVisible := True;
       end;
    5: begin
        tsEmpleado.TabVisible         := True;
        tsEsquemaPago.TabVisible      := True;
        tsCuentas.TabVisible          := False;
        tsCuentasBancarias.TabVisible := True;
       end;
    6: begin
        tsCuentas.TabVisible     := True;
        tsEmpleado.TabVisible      := False;
        tsEsquemaPago.TabVisible := False;
       end;
    7: begin
        tsCuentas.TabVisible     := True;
        tsEmpleado.TabVisible      := False;
        tsEsquemaPago.TabVisible := False;
       end;
    8: begin
        tsCuentas.TabVisible     := True;
        tsEmpleado.TabVisible      := False;
        tsEsquemaPago.TabVisible := False;
       end;
    9: begin
        tsCuentas.TabVisible     := True;
        tsEmpleado.TabVisible      := False;
        tsEsquemaPago.TabVisible := False;
       end;
  end;
  dmCuentasBancarias.MasterSource := DataSource;
  dmCuentasBancarias.MasterFields := 'IdPersona';
  dmCuentasBancarias.ShowModule(tsCuentasBancarias,'');
  dmEmpleados.MasterSource := DataSource;
  dmEmpleados.MasterFields := 'IdPersonaRol';
  dmEmpleados.ShowModule(tsEmpleado,'');
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
