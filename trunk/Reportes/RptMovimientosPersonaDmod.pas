unit RptMovimientosPersonaDmod;

interface

uses
  System.SysUtils, System.Classes, _ReportDMod, ppParameter, ppDesignLayer,
  ppVar, ppCtrls, ppBands, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, Data.DB, Data.Win.ADODB, dxmdaset, ppModule,
  raCodMod;

type
  TdmMovimientosrpt = class(T_dmReport)
    adodsReportPersona: TStringField;
    adodsReportCatagoria: TStringField;
    adodsReportTipo: TStringField;
    adodsReportImporte: TFMTBCDField;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
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
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AssignParam; override;
  end;

var
  dmMovimientosrpt: TdmMovimientosrpt;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses RptMovimientosForm;

{$R *.dfm}

procedure TdmMovimientosrpt.AssignParam;
begin
  inherited;
  adodsReport.Parameters.ParamByName('IdPeriodo').Value:= mdParamsIdPeriodo.Value;
end;

procedure TdmMovimientosrpt.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gReportForm := TfrmRptMovimientos.Create(Self);
  adodsPeriodos.Open;
  TfrmRptMovimientos(gReportForm).DataSetPeriodo:= adodsPeriodos;
end;

end.
