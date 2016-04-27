unit CuentasXPagarPagosForm;

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
  dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, dxBar, Vcl.ImgList,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls;

type
  TfrmCuentasXPagarPagos = class(T_frmGrid)
    dxbbEstatus: TdxBarButton;
    tvMasterIdCuentaXPagarPago: TcxGridDBColumn;
    tvMasterIdCuentaXPagar: TcxGridDBColumn;
    tvMasterIdCuentaXPagarEstatus: TcxGridDBColumn;
    tvMasterIdPersonaRol: TcxGridDBColumn;
    tvMasterIDMetodoPago: TcxGridDBColumn;
    tvMasterIdUsuarioPrograma: TcxGridDBColumn;
    tvMasterIdUsuarioAutoriza: TcxGridDBColumn;
    tvMasterIdUsuarioPago: TcxGridDBColumn;
    tvMasterIdUsuarioConcilia: TcxGridDBColumn;
    tvMasterIdCuentaBancariaPagador: TcxGridDBColumn;
    tvMasterIdCuentaBancariaCobrador: TcxGridDBColumn;
    tvMasterIdMoneda: TcxGridDBColumn;
    tvMasterIdMonedaExtranjera: TcxGridDBColumn;
    tvMasterIdEstadoCuenta: TcxGridDBColumn;
    tvMasterEstatusCXP: TcxGridDBColumn;
    tvMasterCuentaBanPagador: TcxGridDBColumn;
    tvMasterCuentaBanCobrador: TcxGridDBColumn;
    tvMasterCuentaBanCompleta2: TcxGridDBColumn;
    tvMasterUsuarioPrograma: TcxGridDBColumn;
    tvMasterFechaProgramacion: TcxGridDBColumn;
    tvMasterFechaProgramada: TcxGridDBColumn;
    tvMasterMontoProgramado: TcxGridDBColumn;
    tvMasterUsuarioAutoriza: TcxGridDBColumn;
    tvMasterFechaAutorizacion: TcxGridDBColumn;
    tvMasterFechaAutorizaPago: TcxGridDBColumn;
    tvMasterMontoAutorizado: TcxGridDBColumn;
    tvMasterFechaPago: TcxGridDBColumn;
    tvMasterUsuarioPaga: TcxGridDBColumn;
    tvMasterMontoPagado: TcxGridDBColumn;
    tvMasterFechaConcilia: TcxGridDBColumn;
    tvMasterUsuarioConcilia: TcxGridDBColumn;
    tvMasterTipoCambio: TcxGridDBColumn;
    tvMasterTotalMonedaExtranjera: TcxGridDBColumn;
    tvMasterTotalMonedaNacional: TcxGridDBColumn;
    tvMasterMoneda: TcxGridDBColumn;
    tvMasterMonedaExt: TcxGridDBColumn;
    tvMasterMetodoPago: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
  private
    FCambiarEstatus: TBasicAction;
    procedure SetCambiarEstatus(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property CambiarEstatus: TBasicAction read FCambiarEstatus write SetCambiarEstatus;
  end;

implementation

{$R *.dfm}

uses CuentasXPagarDM, CuentasXPagarPagosEdit;

{ TfrmCuentasXPagarPagos }

procedure TfrmCuentasXPagarPagos.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if assigned(gEditForm) then
  begin
    TfrmCuentasXPagarEdit(gEditForm).HabilitarOpciones;
  end;
end;

procedure TfrmCuentasXPagarPagos.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmCuentasXPagarEdit.Create(Self);
end;

procedure TfrmCuentasXPagarPagos.SetCambiarEstatus(const Value: TBasicAction);
begin
  FCambiarEstatus := Value;
  dxbbEstatus.Action:= Value;
end;

end.
