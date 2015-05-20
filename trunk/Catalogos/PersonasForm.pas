unit PersonasForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _GridForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxSkinsdxBarPainter, dxBar, Vcl.ImgList, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns, System.Actions,
  Vcl.ActnList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, PersonasDM,
  Vcl.StdCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxRibbonPainter,
  dxPSCore, dxPScxCommon;

type
  TfrmPersonas = class(T_frmGrid)
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterRFC: TcxGridDBColumn;
    tvMasterIdPersonaTipo: TcxGridDBColumn;
    tvMasterIdRazonSocialTipo: TcxGridDBColumn;
    tvMasterIdSexo: TcxGridDBColumn;
    tvMasterIdEstadoCivil: TcxGridDBColumn;
    tvMasterIdPais: TcxGridDBColumn;
    tvMasterIdPoblacion: TcxGridDBColumn;
    tvMasterPersonaTipo: TcxGridDBColumn;
    tvMasterRazonSocial: TcxGridDBColumn;
    tvMasterRazonSocialTipo: TcxGridDBColumn;
    tvMasterNombre: TcxGridDBColumn;
    tvMasterApellidoPaterno: TcxGridDBColumn;
    tvMasterApellidoMaterno: TcxGridDBColumn;
    tvMasterFechaNacimiento: TcxGridDBColumn;
    tvMasterSexo: TcxGridDBColumn;
    tvMasterEstadoCivil: TcxGridDBColumn;
    tvMasterPais: TcxGridDBColumn;
    tvMasterCURP: TcxGridDBColumn;
    tvMasterLugarNacimiento: TcxGridDBColumn;
    tvMasterIdPersonaTitular: TcxGridDBColumn;
    tvMasterTitular: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FRol: TPRol;
    procedure SetRol(const Value: TPRol);
  public
    { Public declarations }
    property Rol: TPRol read FRol write SetRol;
  end;

implementation

{$R *.dfm}

uses PersonasEdit;

procedure TfrmPersonas.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmPersonaEdit.Create(Self);
end;

procedure TfrmPersonas.FormShow(Sender: TObject);
begin
  inherited;
  case Rol of
    rNone: begin
      Self.Caption := 'Personas';
      tvMaster.Columns[tvMasterTitular.Index].Visible := true;
    end;
    rDuenoProceso: begin
      Self.Caption := 'Due�os de Proceso';
      tvMaster.Columns[tvMasterTitular.Index].Visible := false;
    end;
    rOutSourcing: begin
      Self.Caption := 'OutSourcing';
      tvMaster.Columns[tvMasterTitular.Index].Visible := false;
    end;
    rCliente: begin
      Self.Caption := 'Clientes';
      tvMaster.Columns[tvMasterTitular.Index].Visible := false;
    end;
    rProveedor: begin
      Self.Caption := 'Proveedores';
      tvMaster.Columns[tvMasterTitular.Index].Visible := false;
    end;
    rEmpleado: begin
      Self.Caption := 'Empleados';
      tvMaster.Columns[tvMasterTitular.Index].Visible := true;
    end;
    rSocio: begin
      Self.Caption := 'Socios';
      tvMaster.Columns[tvMasterTitular.Index].Visible := false;
    end;
    rComisionista: begin
      Self.Caption := 'Comisionistas';
      tvMaster.Columns[tvMasterTitular.Index].Visible := true;
    end;
  end;
end;

procedure TfrmPersonas.SetRol(const Value: TPRol);
begin
  FRol := Value;
  TfrmPersonaEdit(gEditForm).Rol:= Value;
end;

end.
