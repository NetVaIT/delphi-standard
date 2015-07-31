unit ExportarPagosBancoEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
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
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.StdCtrls, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.Grids, Vcl.DBGrids;

type
  TfrmExportaPagosBancos = class(TForm)
    pnlBase: TPanel;
    GroupBox1: TGroupBox;
    dsPeriodos: TDataSource;
    dsEsquemaPago: TDataSource;
    dbcbxPeriodos: TcxDBLookupComboBox;
    dbcbxPersona: TcxDBLookupComboBox;
    dbcbxCuentaBancaria: TcxDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnAceptar: TButton;
    btnCancelar: TButton;
    dbcbxEsquemaPago: TcxDBLookupComboBox;
    dsParams: TDataSource;
    dsCuentaBancaria: TDataSource;
    dsPersonas: TDataSource;
    procedure btnAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses ExportarPagosBancoDM;

procedure TfrmExportaPagosBancos.btnAceptarClick(Sender: TObject);
begin
  dsParams.DataSet.FieldByName('Empresa').Value := dbcbxPersona.Text;
  dsParams.DataSet.FieldByName('CuentaBanco').Value := dbcbxCuentaBancaria.Text;
  dsParams.DataSet.FieldByName('Esquemapago').Value := dbcbxEsquemaPago.Text;
end;

end.
