(******************************************************************************
 Proyecto Delphi Standard

 Copyright (C) 2008-2015 - Jesus Huante Caballero

 ******************************************************************************)
unit _DualListForm;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxPC,
  dxDockControl, dxDockPanel, Vcl.ExtCtrls, cxClasses, dxBar, Vcl.ImgList,
  cxGraphics, System.Actions, Vcl.ActnList, cxStyles, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  T_frmDualList = class(TForm)
    pnlMaster: TPanel;
    cxStyleRepository: TcxStyleRepository;
    cxsEven: TcxStyle;
    cxsOdd: TcxStyle;
    cxsInactive: TcxStyle;
    cxsDelete: TcxStyle;
    cxsActive: TcxStyle;
    ActionList: TActionList;
    cxImageList: TcxImageList;
    dxBarManager: TdxBarManager;
    pnlAviable: TPanel;
    pnlAssigned: TPanel;
    cxGridAviable: TcxGrid;
    tvAviable: TcxGridDBTableView;
    cxGridAviableLevel1: TcxGridLevel;
    cxGridAssigned: TcxGrid;
    tvAssigned: TcxGridDBTableView;
    cxGridAssignedLevel1: TcxGridLevel;
    dxBarManagerBar1: TdxBar;
    actAdd: TAction;
    actDelete: TAction;
    btnAdd: TdxBarButton;
    btnDelete: TdxBarButton;
    dsAviable: TDataSource;
    dsAssigned: TDataSource;
    bcdTool: TdxBarDockControl;
    Splitter: TSplitter;
    procedure tvAviableCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvAssignedCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    FDataSetAssigned: TDataSet;
    FDataSetAviable: TDataSet;
    FDeleteItem: TBasicAction;
    FAddItem: TBasicAction;
    FParentWith: Integer;
    procedure SetDataSetAssigned(const Value: TDataSet);
    procedure SetDataSetAviable(const Value: TDataSet);
    procedure SetAddItem(const Value: TBasicAction);
    procedure SetDeleteItem(const Value: TBasicAction);
    procedure SetParentWith(const Value: Integer);
  public
    { Public declarations }
    property DataSetAviable: TDataSet read FDataSetAviable write SetDataSetAviable;
    property DataSetAssigned: TDataSet read FDataSetAssigned write SetDataSetAssigned;
    property AddItem: TBasicAction read FAddItem write SetAddItem;
    property DeleteItem: TBasicAction read FDeleteItem write SetDeleteItem;
    property ParentWith: Integer read FParentWith write SetParentWith default 0;
  end;

implementation

{$R *.dfm}

{ T_frmDualList }

procedure T_frmDualList.SetAddItem(const Value: TBasicAction);
begin
  FAddItem := Value;
  btnAdd.Action:= Value;
end;

procedure T_frmDualList.SetDataSetAssigned(const Value: TDataSet);
begin
  FDataSetAssigned := Value;
  dsAssigned.DataSet:= Value;
end;

procedure T_frmDualList.SetDataSetAviable(const Value: TDataSet);
begin
  FDataSetAviable := Value;
  dsAviable.DataSet:= Value;
end;

procedure T_frmDualList.SetDeleteItem(const Value: TBasicAction);
begin
  FDeleteItem := Value;
  btnDelete.Action:= Value;
end;

procedure T_frmDualList.SetParentWith(const Value: Integer);
begin
  FParentWith := Value;
  if Value > 0 then
  begin
    Width:= Value;
    pnlAviable.Width:= Trunc(Value/2);
  end;
end;

procedure T_frmDualList.tvAssignedCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  Deleteitem.Execute;
end;

procedure T_frmDualList.tvAviableCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  AddItem.Execute;
end;

end.
