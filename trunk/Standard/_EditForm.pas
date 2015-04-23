unit _EditForm;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, cxPC,
  Vcl.DBActns;

type
  T_frmEdit = class(TForm)
    pcMain: TcxPageControl;
    tsGeneral: TcxTabSheet;
    pmlMain: TPanel;
    btnOk: TButton;
    btnCancel: TButton;
    DataSource: TDataSource;
    ActionList: TActionList;
    cxImageList: TcxImageList;
    actPost: TAction;
    actCancel: TAction;
    procedure FormShow(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure pcMainChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FDataSet: TDataSet;
    procedure SetDataSet(const Value: TDataSet);
    { Private declarations }
  public
    { Public declarations }
    property DataSet: TDataSet read FDataSet write SetDataSet;
  end;

implementation

{$R *.dfm}

procedure T_frmEdit.actCancelExecute(Sender: TObject);
begin
  if DataSource.DataSet.State in [dsInsert, dsEdit] then
    DataSource.DataSet.Cancel;
  ModalResult:= mrCancel;
end;

procedure T_frmEdit.actPostExecute(Sender: TObject);
begin
  if DataSource.DataSet.State in [dsInsert, dsEdit] then
    DataSource.DataSet.Post;
  ModalResult:= mrOk;
end;

procedure T_frmEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DataSource.DataSet.State in [dsInsert, dsEdit] then
    DataSource.DataSet.Cancel;
end;

procedure T_frmEdit.FormShow(Sender: TObject);
begin
  pcMain.ActivePage := tsGeneral;
end;

procedure T_frmEdit.pcMainChange(Sender: TObject);
begin
  if (pcMain.ActivePage <> tsGeneral) and (DataSource.DataSet.State in [dsInsert]) then
    try
      DataSource.DataSet.Post;
    except
      pcMain.ActivePage := tsGeneral;
      raise;
    end;
end;

procedure T_frmEdit.SetDataSet(const Value: TDataSet);
begin
  FDataSet := Value;
  DataSource.DataSet:= Value;
end;

end.