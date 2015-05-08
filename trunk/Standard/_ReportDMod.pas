unit _ReportDMod;

interface

uses
  System.SysUtils, System.Classes, ppParameter, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, Data.DB, Data.Win.ADODB, ppCache, ppBands,
  ppDesignLayer, ppVar, ppCtrls, ppPrnabl;

type
  T_dmReport = class(TDataModule)
    adodsReport: TADODataSet;
    dsReport: TDataSource;
    dbpReport: TppDBPipeline;
    ppReport: TppReport;
    ppTitleBand1: TppTitleBand;
    pplblTitle: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLineFooter: TppLine;
    pplblPrintDate: TppSystemVariable;
    pplblPageNo: TppSystemVariable;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
  private
    { Private declarations }
    FTitle: string;
    procedure SetTitle(const Value: string);
  public
    { Public declarations }
    procedure Execute; virtual; abstract;
    property Title: string read FTitle write SetTitle;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses _ConectionDmod;

{$R *.dfm}

{ T_dmReport }

procedure T_dmReport.SetTitle(const Value: string);
begin
  FTitle := Value;
  ppReport.PrinterSetup.DocumentName:= Value;
  pplblTitle.Caption:= Value;
end;

end.
