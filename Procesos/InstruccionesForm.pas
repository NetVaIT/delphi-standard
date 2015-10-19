unit InstruccionesForm;

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
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxRibbonPainter,
  dxPSCore, dxPScxCommon, Vcl.StdCtrls, cxCheckBox;

type
  TfrmInstrucciones = class(T_frmGrid)
    tvMasterIdInstruccion: TcxGridDBColumn;
    tvMasterIdInstruccionTipo: TcxGridDBColumn;
    tvMasterIdPersonaSolicita: TcxGridDBColumn;
    tvMasterIdDocumento: TcxGridDBColumn;
    tvMasterConcepto: TcxGridDBColumn;
    tvMasterIntruccionTipo: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    dxbbProcessXLS: TdxBarButton;
    tvMasterNombreArchivo: TcxGridDBColumn;
    tvMasterIdPeriodoTipo: TcxGridDBColumn;
    tvMasterRepetirInicio: TcxGridDBColumn;
    tvMasterRepetir: TcxGridDBColumn;
    tvMasterPeriodoTipo: TcxGridDBColumn;
    tvMasterRepetirDia: TcxGridDBColumn;
    tvMasterRepetirFinaliza: TcxGridDBColumn;
    tvMasterRepetirHasta: TcxGridDBColumn;
    tvMasterRepetirFin: TcxGridDBColumn;
    dxbbCreateMov: TdxBarButton;
    dxbbCreateGroup: TdxBarButton;
    tvMasterIncidenciasGeneradas: TcxGridDBColumn;
    dxbbDeleteIncidencias: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tvMasterStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
  private
    { Private declarations }
    FProcessXLS: TBasicAction;
    FUpdateFile: TBasicAction;
    FCreateMov: TBasicAction;
    FCreateGroup: TBasicAction;
    FDeleteIncidencias: TBasicAction;
    procedure SetProcessXLS(const Value: TBasicAction);
    procedure SetCreateMov(const Value: TBasicAction);
    procedure SetCreateGroup(const Value: TBasicAction);
    procedure SetDeleteIncidencias(const Value: TBasicAction);
  public
    { Public declarations }
    property CreateGroup: TBasicAction read FCreateGroup write SetCreateGroup;
    property CreateMov: TBasicAction read FCreateMov write SetCreateMov;
    property ProcessXLS: TBasicAction read FProcessXLS write SetProcessXLS;
    property DeleteIncidencias: TBasicAction read FDeleteIncidencias write SetDeleteIncidencias;
    property UpdateFile: TBasicAction read FUpdateFile write FUpdateFile;
  end;

implementation

{$R *.dfm}

uses InstruccionesDM, InstruccionesEdit;

procedure TfrmInstrucciones.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmInstruccionesEdit.Create(Self);
end;

procedure TfrmInstrucciones.FormShow(Sender: TObject);
begin
  inherited;
  TfrmInstruccionesEdit(gEditForm).UpdateFile:= UpdateFile;
end;

procedure TfrmInstrucciones.SetCreateGroup(const Value: TBasicAction);
begin
  FCreateGroup := Value;
  dxbbCreateGroup.Action:= Value;
end;

procedure TfrmInstrucciones.SetCreateMov(const Value: TBasicAction);
begin
  FCreateMov := Value;
  dxbbCreateMov.Action:= Value;
end;

procedure TfrmInstrucciones.SetDeleteIncidencias(const Value: TBasicAction);
begin
  FDeleteIncidencias := Value;
  dxbbDeleteIncidencias.Action:= Value;
end;

procedure TfrmInstrucciones.SetProcessXLS(const Value: TBasicAction);
begin
  FProcessXLS := Value;
  dxbbProcessXLS.Action:= Value;
end;

procedure TfrmInstrucciones.tvMasterStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
  if (ARecord <> nil) and (AItem <> nil) then
  begin
    if ARecord.Values[tvMasterIncidenciasGeneradas.Index] = True then
      AStyle := cxsOdd;
  end;
end;

end.
