unit InstruccionesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmInstrucciones = class(T_dmStandar)
    adodsMasterIdInstruccion: TAutoIncField;
    adodsMasterIdInstruccionTipo: TIntegerField;
    adodsMasterIdPersonaSolicita: TIntegerField;
    adodsMasterIdDocumentoAdjunto: TIntegerField;
    adodsMasterIdPeriodicidad: TIntegerField;
    adodsMasterConcepto: TStringField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterContadorDesde: TIntegerField;
    adodsMasterContadorHasta: TIntegerField;
    adodsMasterFechaInicio: TDateTimeField;
    adodsMasterFechaFin: TDateTimeField;
    adodsInstruccionesTipos: TADODataSet;
    adodsMasterIntruccionTipo: TStringField;
    actProcessXLS: TAction;
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure actProcessXLSExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses InstruccionesForm, ImportXLSDM;

{$R *.dfm}

procedure TdmInstrucciones.actProcessXLSExecute(Sender: TObject);
var
  dmImportXLS: TdmImportXLS;
begin
  inherited;
  dmImportXLS := TdmImportXLS.Create(Self);
  try
    dmImportXLS.IdInstruccion:= adodsMasterIdInstruccion.Value;
    dmImportXLS.Execute;
  finally
    dmImportXLS.Free;
  end;
end;

procedure TdmInstrucciones.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsMasterIdPersonaSolicita.Value:= 1;
end;

procedure TdmInstrucciones.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmInstrucciones.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  TfrmInstrucciones(gGridForm).ProcessXLS:= actProcessXLS;
end;

end.
