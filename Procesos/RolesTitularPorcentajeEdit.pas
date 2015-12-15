unit RolesTitularPorcentajeEdit;

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
  cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, cxCalc, cxCurrencyEdit,
  cxTextEdit, cxDBEdit, System.Math;

type
  TfrmRolesTitularPorcentajeEdit = class(T_frmEdit)
    Label1: TLabel;
    edtBase: TcxCurrencyEdit;
    edtCantidad: TcxCurrencyEdit;
    Label2: TLabel;
    Label3: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    procedure edtCantidadPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    FBase: Currency;
    FPorcentaje: Currency;
    FPorcentajeAcumulado: Currency;
    procedure SetBase(const Value: Currency);
    procedure SetPorcentaje(const Value: Currency);
    procedure SetPorcentajeAcumulado(const Value: Currency);
    property Porcentaje: Currency read FPorcentaje write SetPorcentaje;
  public
    { Public declarations }
    property Base: Currency read FBase write SetBase;
    property PorcentajeAcumulado: Currency read FPorcentajeAcumulado write SetPorcentajeAcumulado;
    function Execute: Boolean;
  end;

implementation

{$R *.dfm}

uses MovimientosDM;

{ TfrmRolesTitularPorcentajeEdit }

procedure TfrmRolesTitularPorcentajeEdit.edtCantidadPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  Porcentaje:= RoundTo((edtCantidad.Value*100)/Base, -2);
end;

function TfrmRolesTitularPorcentajeEdit.Execute: Boolean;
begin
  DataSource.DataSet.Edit;
  Result:= (ShowModal = mrOk);
end;

procedure TfrmRolesTitularPorcentajeEdit.SetBase(const Value: Currency);
begin
  FBase := Value;
  edtBase.Value:= Value;
end;

procedure TfrmRolesTitularPorcentajeEdit.SetPorcentaje(const Value: Currency);
begin
  FPorcentaje := Value;
  if DataSource.DataSet.State in [dsInsert, dsEdit] then
  begin
    DataSource.DataSet.FieldByName('PorcentajeCalculo').AsCurrency:= Value;
    if Value > 0 then
      DataSource.DataSet.FieldByName('Calcular').AsBoolean:= True;
  end;
end;

procedure TfrmRolesTitularPorcentajeEdit.SetPorcentajeAcumulado(
  const Value: Currency);
begin
  FPorcentajeAcumulado := Value;

end;

end.
