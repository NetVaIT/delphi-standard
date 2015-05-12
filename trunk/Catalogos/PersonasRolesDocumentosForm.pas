unit PersonasRolesDocumentosForm;

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
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmPersonasRolesDocumentos = class(T_frmGrid)
    tvMasterIdRolDocumento: TcxGridDBColumn;
    tvMasterIdPersonaRol: TcxGridDBColumn;
    tvMasterIdDocumento: TcxGridDBColumn;
    tvMasterDocumento: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tvMasterCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure DatasetInsertExecute(Sender: TObject);
    procedure DatasetEditExecute(Sender: TObject);
  private
    { Private declarations }
    FUpdateFile: TBasicAction;
    procedure SetUpdateFile(const Value: TBasicAction);
  public
    { Public declarations }
    property UpdateFile: TBasicAction read FUpdateFile write FUpdateFile;
  end;

implementation

{$R *.dfm}

uses PersonasRolesDocumentosDM{, PersonasRolesDocumentosEdit};

procedure TfrmPersonasRolesDocumentos.DatasetEditExecute(Sender: TObject);
begin
//  inherited;
  DataSource.DataSet.Edit;
  FUpdateFile.Execute;
//  if DataSource.DataSet.State in [dsEdit, dsInsert] then
//    DataSource.DataSet.Post;
end;

procedure TfrmPersonasRolesDocumentos.DatasetInsertExecute(Sender: TObject);
begin
//  inherited;
  DataSource.DataSet.Insert;
  FUpdateFile.Execute;
//  if DataSource.DataSet.State in [dsEdit, dsInsert] then
//    DataSource.DataSet.Post;
end;

procedure TfrmPersonasRolesDocumentos.FormCreate(Sender: TObject);
begin
  inherited;
//  gEditForm := TfrmPersonasRolesDocumentosEdit.Create(Self);
end;

procedure TfrmPersonasRolesDocumentos.FormShow(Sender: TObject);
begin
  inherited;
//  TfrmPersonasRolesDocumentosEdit(gEditForm).UpdateFile := UpdateFile;
end;

procedure TfrmPersonasRolesDocumentos.SetUpdateFile(const Value: TBasicAction);
begin
  FUpdateFile := Value;
end;

procedure TfrmPersonasRolesDocumentos.tvMasterCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
//  inherited;
  DataSource.DataSet.Edit;
  FUpdateFile.Execute;
//  if DataSource.DataSet.State in [dsEdit, dsInsert] then
//    DataSource.DataSet.Post;
end;

end.