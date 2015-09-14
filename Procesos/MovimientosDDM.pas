unit MovimientosDDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

//const
//  RolesClase: array[0..2] of PChar = ('Ambos', 'Real', 'Virtual');

type
  TTipoReporte = (trDispercion, trNomina, trPrestamos);
  TRolClase = (rcAmbos, rcReal, rcVirtual);
  TdmMovimientosD = class(T_dmStandar)
    adodsMasterIdMovimientoDetalle: TIntegerField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterPersona: TStringField;
    adodsMasterPersonaRelacionada: TStringField;
    adodsMasterTipo: TStringField;
    adodsMasterCategoria: TStringField;
    adodsMasterEfecto: TStringField;
    adodsMasterImporte: TFMTBCDField;
    adodsMasterEstatus: TStringField;
    adodsPeriodo: TADODataSet;
    adodsMasterRolClase: TStringField;
    adodsMasterAcumalarA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FIdPeriodoActual: Integer;
    FTipoReporte: TTipoReporte;
    procedure SetTipoReporte(const Value: TTipoReporte);
  protected
    procedure SetFilter; override;
  public
    { Public declarations }
    property IdPeriodoActual: Integer read FIdPeriodoActual;
    property TipoReporte: TTipoReporte read FTipoReporte write SetTipoReporte;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MovimientosDForm, ConfiguracionDM;

{$R *.dfm}

procedure TdmMovimientosD.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FIdPeriodoActual := dmConfiguracion.IdPeridoActual;
  gGridForm:= TfrmMovimientosD.Create(Self);
  gGridForm.ReadOnlyGrid:= True;
  gGridForm.DataSet:= adodsMaster;
  // Filtrado
  SQLSelect:= 'SELECT vMovimientosDetalle.IdMovimientoDetalle, vMovimientosDetalle.Fecha, vMovimientosDetalle.Persona, vMovimientosDetalle.PersonaRelacionada, vMovimientosDetalle.RolClase, vMovimientosDetalle.Tipo, ' +
  'vMovimientosDetalle.AcumalarA, vMovimientosDetalle.Categoria, vMovimientosDetalle.Efecto, vMovimientosDetalle.Importe * vMovimientosDetalle.Signo AS Importe, vMovimientosDetalle.Estatus ' +
  'FROM vMovimientosDetalle INNER JOIN Movimientos ON vMovimientosDetalle.IdMovimiento = Movimientos.IdMovimiento ';
  SQLOrderBy:= 'ORDER BY vMovimientosDetalle.Persona, vMovimientosDetalle.OrdenImpresion';
  gGridForm.actSearch:= actSearch;
  adodsPeriodo.Open;
  TfrmMovimientosD(gGridForm).DataSetPeriodo:= adodsPeriodo;
  TfrmMovimientosD(gGridForm).IdPeriodo:= IdPeriodoActual;
  TfrmMovimientosD(gGridForm).IdClase:= rcAmbos;
end;

procedure TdmMovimientosD.SetFilter;
var
  IdPeriodo: Integer;
  IdClase: Integer;
begin
  inherited;
  IdPeriodo:= TfrmMovimientosD(gGridForm).IdPeriodo;
  IdClase:= Ord(TfrmMovimientosD(gGridForm).IdClase);
  case FTipoReporte of
    trDispercion: SQLWhere:= 'WHERE vMovimientosDetalle.AplicarCategoria = 1 AND vMovimientosDetalle.IdMovimientoTipoCategoria NOT IN (1,2,11) AND Movimientos.IdPeriodo = %d';
    trNomina: SQLWhere:= 'WHERE vMovimientosDetalle.AplicarCategoria = 1 AND vMovimientosDetalle.IdMovimientoTipoCategoria IN (1,2) AND Movimientos.IdPeriodo = %d';
    trPrestamos: SQLWhere:= 'WHERE vMovimientosDetalle.AplicarCategoria = 1 AND vMovimientosDetalle.IdMovimientoTipoCategoria IN (11) AND Movimientos.IdPeriodo = %d';
  else
    SQLWhere:= 'WHERE vMovimientosDetalle.AplicarCategoria = 1 AND Movimientos.IdPeriodo = %d';
  end;
  SQLWhere:= Format(SQLWhere, [IdPeriodo]);
  if (TfrmMovimientosD(gGridForm).IdClase <> rcAmbos) then
    SQLWhere:= SQLWhere + Format(' AND vMovimientosDetalle.IdRolClase = %d', [IdClase]);
end;

procedure TdmMovimientosD.SetTipoReporte(const Value: TTipoReporte);
begin
  FTipoReporte := Value;
end;

end.
