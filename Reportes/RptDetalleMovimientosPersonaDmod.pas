unit RptDetalleMovimientosPersonaDmod;

interface

uses
  System.SysUtils, System.Classes, _ReportDMod, ppParameter, ppDesignLayer,
  ppVar, ppCtrls, ppBands, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, Data.DB, Data.Win.ADODB, dxmdaset, ppModule,
  raCodMod;

type
  TdmDetalleMovimientosPersona = class(T_dmReport)
    adodsReportPersona: TStringField;
    adodsReportCatagoria: TStringField;
    adodsReportTipo: TStringField;
    adodsReportImporte: TFMTBCDField;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    adodsPeriodos: TADODataSet;
    adodsPeriodosIdPeriodo: TAutoIncField;
    adodsPeriodosDescripcion: TStringField;
    mdParamsIdPeriodo: TIntegerField;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppVariable1: TppVariable;
    raCodeModule1: TraCodeModule;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLine2: TppLine;
    pplblEncabezado: TppLabel;
    ppLine3: TppLine;
    procedure DataModuleCreate(Sender: TObject);
    procedure ppReportStartPage(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AssignParam; override;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses RptMovimientosForm;

{$R *.dfm}

procedure TdmDetalleMovimientosPersona.AssignParam;
begin
  inherited;
  adodsReport.Parameters.ParamByName('IdPeriodo').Value:= mdParamsIdPeriodo.Value;
end;

procedure TdmDetalleMovimientosPersona.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gReportForm := TfrmRptMovimientos.Create(Self);
  adodsPeriodos.Open;
  TfrmRptMovimientos(gReportForm).DataSetPeriodo:= adodsPeriodos;
end;

procedure TdmDetalleMovimientosPersona.ppReportStartPage(Sender: TObject);
begin
  inherited;
  pplblEncabezado.Caption := pplblTitle.Caption;
end;

end.