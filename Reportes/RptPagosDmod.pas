unit RptPagosDmod;

interface

uses
  System.SysUtils, System.Classes, _ReportDMod, dxmdaset, ppParameter,
  ppDesignLayer, ppVar, ppCtrls, ppBands, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, Data.DB, Data.Win.ADODB,
  System.UITypes;

type
  TRptPagosDM = class(T_dmReport)
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel4: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLine7: TppLine;
    adodsPeriodos: TADODataSet;
    adodsPersonas: TADODataSet;
    adodsPersonasIdPersona: TIntegerField;
    adodsPersonasIdRol: TIntegerField;
    adodsPersonasRazonSocial: TStringField;
    dsPersonas: TDataSource;
    adodsCuentaBancaria: TADODataSet;
    adodsCuentaBancariaIdCuentaBancaria: TAutoIncField;
    adodsCuentaBancariaIdPersona: TIntegerField;
    adodsCuentaBancariaNombre: TStringField;
    adodsCuentaBancariaIdentificador: TStringField;
    adodsCuentaBancariaCuentaBancaria: TStringField;
    mdParamsIdPeriodo: TIntegerField;
    mdParamsIdPersona: TWordField;
    mdParamsIdCuentaBancaria: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AssignParam; override;
    procedure Execute; override;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses RptPagosForm, ConfiguracionDM;

{$R *.dfm}

{ TRptPagosDM }

procedure TRptPagosDM.AssignParam;
begin
  inherited;
  adodsReport.Parameters.ParamByName('IdPeriodo').Value := mdParamsIdPeriodo.Value;
//  adodsReport.Parameters.ParamByName('IdPersona').Value := mdParamsIdPersona.Value;
//  adodsReport.Parameters.ParamByName('IdCuentaBancaria').Value := mdParamsIdCuentaBancaria.Value;

end;

procedure TRptPagosDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gReportForm := TfrmRptPagos.Create(Self);
  adodsPeriodos.Open;
  adodsPersonas.Open;
  adodsCuentaBancaria.Open;
  TfrmRptPagos(gReportForm).DataSetPeriodo := adodsPeriodos;
  TfrmRptPagos(gReportForm).DataSetPersona := adodsPersonas;
  TfrmRptPagos(gReportForm).DataSetCuentaBancaria := adodsCuentaBancaria;
end;

procedure TRptPagosDM.Execute;
var
  ShowReport: Boolean;
begin
  mdParams.Open;
  mdParams.Insert;
  mdParamsIdPeriodo.Value:= dmConfiguracion.IdPeridoActual;

  if Assigned(gReportForm) then
  begin
    gReportForm.DataSetParams:= mdParams;
    ShowReport:= (gReportForm.ShowModal = mrOk);
  end
  else
    ShowReport:= True;
  if ShowReport then
  begin
    adodsReport.Close;
    AssignParam;
    adodsReport.Open;
    try
      ppReport.Print;
    finally
      adodsReport.Close;
    end;
  end;
end;

end.
