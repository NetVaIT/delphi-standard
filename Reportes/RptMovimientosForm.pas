unit RptMovimientosForm;

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
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, cxPC,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxListBox,
  cxDBEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmRptMovimientos = class(T_frmReport)
    Label1: TLabel;
    lcbPeriodo: TcxDBLookupComboBox;
    dsPeriodo: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FDataSetPeriodo: TDataSet;
//    FIdPeriodoActual: Integer;
    procedure SetDataSetPeriodo(const Value: TDataSet);
//    procedure SetIdPeriodoActual(const Value: Integer);
  public
    { Public declarations }
    property DataSetPeriodo: TDataSet read FDataSetPeriodo write SetDataSetPeriodo;
//    property IdPeriodoActual : Integer read FIdPeriodoActual write SetIdPeriodoActual;
  end;

implementation

{$R *.dfm}

uses RptDetalleMovimientosPersonaDmod, ConfiguracionDM;

{ TfrmRptMovimientos }

procedure TfrmRptMovimientos.FormShow(Sender: TObject);
begin
  inherited;
//  FIdPeriodoActual := dmConfiguracion.IdPeridoActual;
//  lcbPeriodo.EditValue := IdPeriodoActual;
//  lcbPeriodo.SetValidatableEditValue(IdPeriodoActual);
//  RptDetalleMovimientosPersonaDmod.TdmDetalleMovimientosPersona(Sender).mdParamsIdPeriodo.Value := IdPeriodoActual;
//  dsParams.DataSet.DataSetField.Fields.FieldByName('IdPeriodo').Value := IdPeriodoActual;
end;

procedure TfrmRptMovimientos.SetDataSetPeriodo(const Value: TDataSet);
begin
  FDataSetPeriodo := Value;
  dsPeriodo.DataSet := Value;
end;

//procedure TfrmRptMovimientos.SetIdPeriodoActual(const Value: Integer);
//begin
//  FIdPeriodoActual := Value;
//end;

end.
