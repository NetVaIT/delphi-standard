unit ExportarPagosFiltroForm;

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
  cxEdit, Data.DB, dxmdaset, Data.Win.ADODB, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.StdCtrls, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.ExtCtrls, cxPC;

type
  TfrmExportarPagosFiltro = class(T_frmReport)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lcbPeriodo: TcxDBLookupComboBox;
    dbcbxPersona: TcxDBLookupComboBox;
    dbcbxCuentaBancaria: TcxDBLookupComboBox;
    dsPeriodo: TDataSource;
    dsCuentaBancaria: TDataSource;
    dsPersonas: TDataSource;
    adoqPeriodos: TADOQuery;
    adoqPersonas: TADOQuery;
    adoqCuentaBancaria: TADOQuery;
    mdParams: TdxMemData;
    mdParamsIdPeriodo: TIntegerField;
    mdParamsIdPersona: TWordField;
    mdParamsIdCuentaBancaria: TIntegerField;
    adoqPeriodosIdPeriodo: TAutoIncField;
    adoqPeriodosCodigo: TStringField;
    adoqPeriodosPeriodo: TStringField;
    adoqPersonasIdPersona: TIntegerField;
    adoqPersonasRFC: TStringField;
    adoqPersonasRazonSocial: TStringField;
    adoqCuentaBancariaIdCuentaBancaria: TAutoIncField;
    adoqCuentaBancariaIdPersona: TIntegerField;
    adoqCuentaBancariaBanco: TStringField;
    adoqCuentaBancariaMoneda: TStringField;
    adoqCuentaBancariaCuentaBancaria: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    function GetIdPeriodo: Integer;
    procedure SetIdPeriodo(const Value: Integer);
    function GetIdCuentaBancaria: Integer;
    function GetIdPersona: Integer;
    procedure SetIdCuentaBancaria(const Value: Integer);
    procedure SetIdPersona(const Value: Integer);
    function GetCodigo: String;
  public
    { Public declarations }
    property IdPeriodo: Integer read GetIdPeriodo write SetIdPeriodo;
    property IdPersona: Integer read GetIdPersona write SetIdPersona;
    property IdCuentaBancaria: Integer read GetIdCuentaBancaria write SetIdCuentaBancaria;
    property Codigo: String read GetCodigo;
    function Execute: Boolean;
  end;

implementation

{$R *.dfm}

uses ExportarPagosDocumentosDM;

{ TfrmExportarPagosFiltro }

function TfrmExportarPagosFiltro.Execute: Boolean;
begin
  Result:= (ShowModal = mrOk);
end;

procedure TfrmExportarPagosFiltro.FormCreate(Sender: TObject);
begin
  inherited;
  mdParams.Open;
  mdParams.Insert;
  adoqPeriodos.Open;
  adoqPersonas.Open;
  adoqCuentaBancaria.Open;
end;

procedure TfrmExportarPagosFiltro.FormDestroy(Sender: TObject);
begin
  inherited;
  adoqPeriodos.Close;
  adoqPersonas.Close;
  adoqCuentaBancaria.Close;
end;

function TfrmExportarPagosFiltro.GetCodigo: String;
begin
  Result:= adoqPeriodosCodigo.AsString + adoqPersonasRFC.AsString + adoqCuentaBancariaCuentaBancaria.AsString;
end;

function TfrmExportarPagosFiltro.GetIdCuentaBancaria: Integer;
begin
  Result:= mdParamsIdCuentaBancaria.Value;
end;

function TfrmExportarPagosFiltro.GetIdPeriodo: Integer;
begin
  Result:= mdParamsIdPeriodo.Value;
end;

function TfrmExportarPagosFiltro.GetIdPersona: Integer;
begin
  Result:= mdParamsIdPersona.Value
end;

procedure TfrmExportarPagosFiltro.SetIdCuentaBancaria(const Value: Integer);
begin
  mdParamsIdCuentaBancaria.Value:= Value;
end;

procedure TfrmExportarPagosFiltro.SetIdPeriodo(const Value: Integer);
begin
  mdParamsIdPeriodo.Value:= Value;
end;

procedure TfrmExportarPagosFiltro.SetIdPersona(const Value: Integer);
begin
  mdParamsIdPersona.Value:= Value;
end;

end.
