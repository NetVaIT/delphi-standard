unit IncidenciasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmIncidencias = class(T_dmStandar)
    adodsMasterIdIncidencia: TAutoIncField;
    adodsMasterIdInstruccion: TIntegerField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdPersonaRelacionada: TIntegerField;
    adodsMovimientoTipo: TADODataSet;
    adodsInstruccion: TADODataSet;
    adodsPersona: TADODataSet;
    adodsPersonaRelacionada: TADODataSet;
    adodsMasterInstruccion: TStringField;
    adodsMasterPersona: TStringField;
    adodsMasterPersonaRelacionada: TStringField;
    adodsIncidenciaDetalle: TADODataSet;
    adodsIncidenciaDetalleIdIncidenciaDetalle: TAutoIncField;
    adodsIncidenciaDetalleIdIncidencia: TIntegerField;
    adodsIncidenciaDetalleIdMovimientoTipo: TIntegerField;
    adodsIncidenciaDetalleImporte: TFMTBCDField;
    adodsIncidenciaDetalleIdIncidenciaEstatus: TIntegerField;
    adodsIncidenciaEstatus: TADODataSet;
    dsMaster: TDataSource;
    adodsIncidenciaDetalleMovimientoTipo: TStringField;
    adodsIncidenciaDetalleIncidenciaEstatus: TStringField;
    adodsIncidenciaDetalleIdMoneda: TIntegerField;
    adodsMoneda: TADODataSet;
    adodsIncidenciaDetalleMoneda: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses IncidenciasForm, IncidenciasDetallesForm;

{$R *.dfm}

procedure TdmIncidencias.DataModuleCreate(Sender: TObject);
begin
  inherited;
  adodsIncidenciaDetalle.Open;
  gGridForm:= TfrmIncidencias.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gFormDeatil1:= TfrmIncidenciasDetalles.Create(Self);
  gFormDeatil1.DataSet:= adodsIncidenciaDetalle;
end;

end.
