(******************************************************************************
 Proyecto Delphi Standard

 Copyright (C) 2008-2015 - Jesus Huante Caballero

 ******************************************************************************)
unit _GridForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxPC, dxDockControl, dxDockPanel, dxSkinsForm,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.ImgList, dxBar, Vcl.ExtCtrls, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.Menus,
  cxGridExportLink, _EditForm;

type
  T_frmGrid = class(TForm)
    dxBarManager: TdxBarManager;
    pnlMaster: TPanel;
    splDetail3: TSplitter;
    pnlDetail3: TPanel;
    dxbNavigator: TdxBar;
    ActionList: TActionList;
    DataSource: TDataSource;
    cxStyleRepository: TcxStyleRepository;
    cxsEven: TcxStyle;
    cxsOdd: TcxStyle;
    cxsInactive: TcxStyle;
    cxsDelete: TcxStyle;
    cxsActive: TcxStyle;
    cxGridPopupMenu: TcxGridPopupMenu;
    cxImageList: TcxImageList;
    DatasetFirst: TDataSetFirst;
    DatasetPrior: TDataSetPrior;
    DatasetNext: TDataSetNext;
    DatasetLast: TDataSetLast;
    DatasetInsert: TDataSetInsert;
    DatasetDelete: TDataSetDelete;
    DatasetEdit: TDataSetEdit;
    DatasetPost: TDataSetPost;
    DatasetCancel: TDataSetCancel;
    DatasetRefresh: TDataSetRefresh;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    FileSaveAs1: TFileSaveAs;
    PopupMenu: TdxBarPopupMenu;
    Insert1: TdxBarButton;
    Edit1: TdxBarButton;
    Delete1: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarButton6: TdxBarButton;
    dxbEdit: TdxBar;
    dxbTools: TdxBar;
    cxGrid: TcxGrid;
    tvMaster: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    pnlDetail2: TPanel;
    splDetail1: TSplitter;
    pnlDetail1: TPanel;
    splDetail2: TSplitter;
    procedure FormShow(Sender: TObject);
    procedure FileSaveAs1Accept(Sender: TObject);
    procedure DatasetInsertExecute(Sender: TObject);
    procedure DatasetEditExecute(Sender: TObject);
    procedure tvMasterDblClick(Sender: TObject);
  private
    { Private declarations }
    FReadOnlyGrid: Boolean;
    FDataSet: TDataSet;
    procedure SetReadOnlyGrid(const Value: Boolean);
    procedure SetDataSet(const Value: TDataSet);
  protected
    tvStatus: TcxGridDBColumn;
    gEditForm: T_frmEdit;
  public
    { Public declarations }
    property DataSet: TDataSet read FDataSet write SetDataSet;
    property ReadOnlyGrid: Boolean read FReadOnlyGrid write SetReadOnlyGrid default False;
  end;

implementation

{$R *.dfm}

procedure T_frmGrid.DatasetEditExecute(Sender: TObject);
begin
  DataSource.DataSet.Edit;
  if Assigned(gEditForm) then
  begin
    if gEditForm.ShowModal = mrOk then
      DataSource.DataSet.Post
    else
      DataSource.DataSet.Cancel;
  end;
end;

procedure T_frmGrid.DatasetInsertExecute(Sender: TObject);
begin
  DataSource.DataSet.Insert;
  if Assigned(gEditForm) then
  begin
    if gEditForm.ShowModal = mrOk then
      DataSource.DataSet.Post
    else
      DataSource.DataSet.Cancel;
  end;
end;

procedure T_frmGrid.FileSaveAs1Accept(Sender: TObject);
begin
  case FileSaveAs1.Dialog.FilterIndex of
    1: ExportGridToExcel(FileSaveAs1.Dialog.FileName, cxGrid);
    2: ExportGridToHTML(FileSaveAs1.Dialog.FileName, cxGrid);
    3: ExportGridToText(FileSaveAs1.Dialog.FileName, cxGrid);
    4: ExportGridToXML(FileSaveAs1.Dialog.FileName, cxGrid);
  end;
end;

procedure T_frmGrid.FormShow(Sender: TObject);
begin
  if Assigned(gEditForm) then
    gEditForm.DataSet:= DataSet;
  cxGrid.SetFocus;
  tvMaster.ViewData.Expand(True);
end;

procedure T_frmGrid.SetDataSet(const Value: TDataSet);
begin
  FDataSet := Value;
  DataSource.DataSet:= Value;
end;

procedure T_frmGrid.SetReadOnlyGrid(const Value: Boolean);
begin
  FReadOnlyGrid := Value;
  DataSetInsert.Visible:= not Value;
  DataSetDelete.Visible:= not Value;
end;

procedure T_frmGrid.tvMasterDblClick(Sender: TObject);
begin
  DatasetEdit.Execute;
end;

end.
