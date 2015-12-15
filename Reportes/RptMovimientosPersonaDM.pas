unit RptMovimientosPersonaDM;

interface

uses
  System.SysUtils, System.Classes, _ReportDMod, ppDB, ppCtrls, ppBands, ppClass,
  dxmdaset, ppParameter, ppDesignLayer, ppVar, ppPrnabl, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe, Data.DB, Data.Win.ADODB;

type
  TdmRptMovimientosPersona = class(T_dmReport)
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppShape2: TppShape;
    ppDBText5: TppDBText;
    ppLine6: TppLine;
    ppDBText6: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine7: TppLine;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    mdParamsIdPeriodo: TIntegerField;
    adodsPeriodos: TADODataSet;
    adodsPeriodosIdPeriodo: TAutoIncField;
    adodsPeriodosDescripcion: TStringField;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AssignParam; override;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses RptMovimientosForm, ConfiguracionDM;

{$R *.dfm}

{ TdmRptMovimientosPersona }

procedure TdmRptMovimientosPersona.AssignParam;
begin
  inherited;
  adodsReport.Parameters.ParamByName('IdPeriodo').Value := mdParamsIdPeriodo.Value;
end;

procedure TdmRptMovimientosPersona.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gReportForm := TfrmRptMovimientos.Create(Self);
  adodsPeriodos.Open;
  TfrmRptMovimientos(gReportForm).DataSetPeriodo := adodsPeriodos;
  mdParamsIdPeriodo.Value:= dmConfiguracion.IdPeridoActual;
end;

end.
