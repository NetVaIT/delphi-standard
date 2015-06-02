unit CuentasXCobrarEditConcepto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, cxDBEdit,
  cxListBox, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmCuentasXCobrarEditConcepto = class(TForm)
    Panel1: TPanel;
    DataSource: TDataSource;
    pmlMain: TPanel;
    btnOk: TButton;
    btnCancel: TButton;
    Label1: TLabel;
    cxCBxConceptos: TcxComboBox;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function GetDescripcion: string;
    { Private declarations }
  public
    { Public declarations }
    property Descripcion: string read GetDescripcion;
  end;

implementation

{$R *.dfm}

uses CuentasXCobrarDM;

procedure TfrmCuentasXCobrarEditConcepto.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmCuentasXCobrarEditConcepto.btnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmCuentasXCobrarEditConcepto.FormShow(Sender: TObject);
begin
  cxCBxConceptos.EditText := '';
end;

function TfrmCuentasXCobrarEditConcepto.GetDescripcion: string;
begin
  Result := cxCBxConceptos.EditValue;
end;

end.
