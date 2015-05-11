unit RptMovimientosDmod;

interface

uses
  System.SysUtils, System.Classes, _ReportDMod, ppParameter, ppDesignLayer,
  ppVar, ppCtrls, ppBands, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, Data.DB, Data.Win.ADODB, ppStrtch, ppCTMain,
  dxmdaset;

type
  TdmRptMovimientos = class(T_dmReport)
    adodsReportPersona: TStringField;
    adodsReportCatagoria: TStringField;
    adodsReportTipo: TStringField;
    adodsReportImporte: TFMTBCDField;
    adodsPeriodos: TADODataSet;
    ppCrossTab1: TppCrossTab;
    mdParamsIdPeriodo: TIntegerField;
    adodsPeriodosIdPeriodo: TAutoIncField;
    adodsPeriodosDescripcion: TStringField;
    procedure DataModuleCreate(Sender: TObject);
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

procedure TdmRptMovimientos.AssignParam;
begin
  adodsReport.Parameters.ParamByName('IdPeriodo').Value := mdParamsIdPeriodo.Value;
end;

procedure TdmRptMovimientos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gReportForm := TfrmRptMovimientos.Create(Self);
  adodsPeriodos.Open;
  TfrmRptMovimientos(gReportForm).DataSetPeriodo := adodsPeriodos;
end;

end.
