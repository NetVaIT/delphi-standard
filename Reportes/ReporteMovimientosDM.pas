unit ReporteMovimientosDM;

interface

uses
  System.SysUtils, System.Classes, _ReportDMod, ppParameter, ppDesignLayer,
  ppVar, ppCtrls, ppBands, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, Data.DB, Data.Win.ADODB, ppStrtch, ppCTMain,
  ReporteMovimientosForm;

type
  TdmReporteMovimientos = class(T_dmReport)
    ppCrossTab1: TppCrossTab;
    adodsReportPersona: TStringField;
    adodsReportCatagoria: TStringField;
    adodsReportTipo: TStringField;
    adodsReportImporte: TFMTBCDField;
    adodsPeriodos: TADODataSet;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    gParametrosForm: TfrmReporteMovimientos;
  public
    { Public declarations }
    procedure Execute;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmReporteMovimientos.DataModuleCreate(Sender: TObject);
begin
  inherited;
//  gGridForm := TfrmReporteMovimientos.Create(Self);
//  gGridForm.DataSet := adodsMaster;
end;

procedure TdmReporteMovimientos.Execute;
begin
  //gParametrosForm := TfrmReporteMovimientos.Create(Self);
//  gParametrosForm.ShowModal;
  adodsReport.Open;
  ppReport.Print;
end;

end.
