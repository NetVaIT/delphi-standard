unit ExportarPagosBancoForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  System.Actions, Vcl.ActnList, Vcl.Buttons;

type
  TfrmExportarPagosBanco = class(TForm)
    pnlbase: TPanel;
    btnAceptar: TButton;
    btnCancelar: TButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsExportarPagosDocumentos: TDataSource;
    cxGrid1DBTableView1IdExportarPagoDocumento: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1IdExportarPagoDocumentoEstatus: TcxGridDBColumn;
    cxGrid1DBTableView1IdDocumento: TcxGridDBColumn;
    cxGrid1DBTableView1Hash: TcxGridDBColumn;
    cxGrid1DBTableView1IdPersona: TcxGridDBColumn;
    cxGrid1DBTableView1IdPeriodo: TcxGridDBColumn;
    cxGrid1DBTableView1IdEsquemaPago: TcxGridDBColumn;
    cxGrid1DBTableView1IdBanco: TcxGridDBColumn;
    cxGrid1DBTableView1IdCuentaBancaria: TcxGridDBColumn;
    cxGrid1DBTableView1Observaciones: TcxGridDBColumn;
    cxGrid1DBTableView1Archivo: TcxGridDBColumn;
    cxGrid1DBTableView1ExportaPagoDocumentoEstatus: TcxGridDBColumn;
    ActionList: TActionList;
    actPost: TAction;
    actCancel: TAction;
    btnGuardar: TSpeedButton;
  private
    FDescargarFile: TBasicAction;
    procedure SetDescargarFile(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property DescargarFile: TBasicAction read FDescargarFile write SetDescargarFile;
  end;

implementation

{$R *.dfm}

uses ExportarPagosBancoDM;

{ TfrmExportarPagosBanco }

procedure TfrmExportarPagosBanco.SetDescargarFile(const Value: TBasicAction);
begin
  FDescargarFile := Value;
  btnGuardar.Action := Value;
end;

end.
