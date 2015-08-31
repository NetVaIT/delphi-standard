unit RptPagosForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _ReportForm, dxSkinsCore, dxSkinBlack,
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
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.StdCtrls, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Data.DB, Vcl.ExtCtrls, cxPC;

type
  TfrmRptPagos = class(T_frmReport)
    dsPeriodo: TDataSource;
    Label1: TLabel;
    lcbPeriodo: TcxDBLookupComboBox;
    dsPersonas: TDataSource;
    dsCuentaBancaria: TDataSource;
    Label2: TLabel;
    dbcbxPersona: TcxDBLookupComboBox;
    Label3: TLabel;
    dbcbxCuentaBancaria: TcxDBLookupComboBox;
  private
    FDataSetPeriodo: TDataSet;
    FDataSetCuentaBancaria: TDataSet;
    FDataSetPersona: TDataSet;
    procedure SetDataSetPeriodo(const Value: TDataSet);
    procedure SetDataSetCuentaBancaria(const Value: TDataSet);
    procedure SetDataSetPersona(const Value: TDataSet);
    { Private declarations }
  public
    { Public declarations }
    property DataSetPeriodo: TDataSet read FDataSetPeriodo write SetDataSetPeriodo;
    property DataSetPersona: TDataSet read FDataSetPersona write SetDataSetPersona;
    property DataSetCuentaBancaria: TDataSet read FDataSetCuentaBancaria write SetDataSetCuentaBancaria;
  end;

implementation

{$R *.dfm}

{ TfrmRptPagos }

procedure TfrmRptPagos.SetDataSetCuentaBancaria(const Value: TDataSet);
begin
  FDataSetCuentaBancaria := Value;
  dsCuentaBancaria.DataSet:= Value;
end;

procedure TfrmRptPagos.SetDataSetPeriodo(const Value: TDataSet);
begin
  FDataSetPeriodo := Value;
  dsPeriodo.DataSet := Value;
end;

procedure TfrmRptPagos.SetDataSetPersona(const Value: TDataSet);
begin
  FDataSetPersona := Value;
  dsPersonas.DataSet:= Value;
end;

end.
