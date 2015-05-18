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
    adodsMovimientoTipo: TADODataSet;
    adodsInstruccion: TADODataSet;
    adodsPersona: TADODataSet;
    adodsMasterInstruccion: TStringField;
    adodsMasterPersona: TStringField;
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
    adodsIncidenciaDetalleIdIncidenciaTipo: TIntegerField;
    adodsIncidenciaDetalleIdUsuarioRegistro: TIntegerField;
    adodsIncidenciaDetalleFechaRegistro: TDateTimeField;
    adodsIncidenciasTipo: TADODataSet;
    adodsIncidenciaDetalleIncidenciaTipo: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsIncidenciaDetalleNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses IncidenciasForm, IncidenciasDetallesForm;

{$R *.dfm}

procedure TdmIncidencias.adodsIncidenciaDetalleNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsIncidenciaDetalleIdIncidenciaTipo.Value:= 2;
  adodsIncidenciaDetalleIdMoneda.Value:= 106;
end;

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
