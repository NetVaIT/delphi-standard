unit CuentasXPagarDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmCuentasXPagar = class(T_dmStandar)
    adodsMasterIdCuentaXPagar: TIntegerField;
    adodsMasterIdPersonaRol: TIntegerField;
    adodsMasterIdPeriodo: TIntegerField;
    adodsMasterIdCuentaXPagarEstatus: TIntegerField;
    adodsMasterPersona: TStringField;
    adodsMasterPersonaRelacionada: TStringField;
    adodsMasterConceptoGenerico: TStringField;
    adodsMasterSumaSubtotal: TFMTBCDField;
    adodsMasterSumaTotal: TFMTBCDField;
    adodsMasterSumaDescuentos: TFMTBCDField;
    adodsMasterTotalIVATrasladado: TFMTBCDField;
    adodsMasterTotalISRTrasladado: TFMTBCDField;
    adodsMasterTotalIEPSTrasladado: TFMTBCDField;
    adodsMasterTotalLocalesTrasladado: TFMTBCDField;
    adodsMasterTotalIVARetenido: TFMTBCDField;
    adodsMasterTotalISRRetenido: TFMTBCDField;
    adodsMasterTotalLocalesRetenido: TFMTBCDField;
    adodsMasterSaldoPendiente: TFMTBCDField;
    adodsMasterEstatus: TStringField;
    dsMaster: TDataSource;
    adodsMovimientosDetalle: TADODataSet;
    adodsMovimientosDetalleIdMovimientoDetalle: TIntegerField;
    adodsMovimientosDetalleIdCuentaXPagar: TIntegerField;
    adodsMovimientosDetalleIdPersonaRol: TIntegerField;
    adodsMovimientosDetalleIdMovimientoTipo: TIntegerField;
    adodsMovimientosDetalleIdMovimientoEstatus: TIntegerField;
    adodsMovimientosDetallePersonaRelacionada: TStringField;
    adodsMovimientosDetalleTipo: TStringField;
    adodsMovimientosDetalleCategoria: TStringField;
    adodsMovimientosDetalleEfecto: TStringField;
    adodsMovimientosDetalleImporte: TFMTBCDField;
    adodsMovimientosDetalleEstatus: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CuentasXPagarForm, MovimientosDetalleFrm;

{$R *.dfm}

procedure TdmCuentasXPagar.DataModuleCreate(Sender: TObject);
begin
  inherited;
  adodsMovimientosDetalle.Open;
  gGridForm:= TfrmCuentasXPagar.Create(Self);
  gGridForm.ReadOnlyGrid:= True;
  gGridForm.DataSet:= adodsMaster;
//  TfrmCuentasXPagar(gGridForm).DataSetDetail:= adodsMovimientosDetalle;
  gFormDeatil1:= TfrmMovimientosDetalle.Create(Self);
  gFormDeatil1.ReadOnlyGrid:= True;
  gFormDeatil1.DataSet:= adodsMovimientosDetalle;
end;

end.
