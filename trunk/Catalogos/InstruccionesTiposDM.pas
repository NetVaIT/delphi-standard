unit InstruccionesTiposDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmInstruccionesTipos = class(T_dmStandar)
    adodsMasterIdInstruccionTipo: TAutoIncField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    dtMaster: TDataSource;
    adodsInstruccionesTiposDetalle: TADODataSet;
    adodsInstruccionesTiposDetalleIdInstruccionTipoDetalle: TAutoIncField;
    adodsInstruccionesTiposDetalleIdInstruccionTipo: TIntegerField;
    adodsInstruccionesTiposDetalleIdMovimientoTipo: TIntegerField;
    adodsInstruccionesTiposDetalleValor: TStringField;
    adodsMovimientosTipos: TADODataSet;
    adodsInstruccionesTiposDetalleMovimientoTipo: TStringField;
    adodsMoneda: TADODataSet;
    adodsInstruccionesTiposDetalleIdMoneda: TIntegerField;
    adodsInstruccionesTiposDetalleMoneda: TStringField;
    adodsInstruccionesTiposDetalleNombre: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses InstruccionesTiposForm, InstruccionesTiposDetalleForm;

{$R *.dfm}

procedure TdmInstruccionesTipos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  if adodsInstruccionesTiposDetalle.CommandText <> EmptyStr then adodsInstruccionesTiposDetalle.Open;
  gGridForm:= TfrmInstruccionesTipos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gFormDeatil1:= TfrmInstruccionesTiposDetalle.Create(Self);
  gFormDeatil1.DataSet:= adodsInstruccionesTiposDetalle;
end;

end.
