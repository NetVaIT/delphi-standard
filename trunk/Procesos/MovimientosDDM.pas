unit MovimientosDDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
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
    adocGetPeriodoActual: TADOCommand;
    procedure DataModuleCreate(Sender: TObject);
  private
    FIdPeriodoActual: Integer;
    { Private declarations }
    function GetPeriodoActual: Integer;
  protected
    procedure SetFilter; override;
  public
    { Public declarations }
    property IdPeriodoActual: Integer read FIdPeriodoActual;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MovimientosDForm;

{$R *.dfm}

procedure TdmMovimientosD.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FIdPeriodoActual := GetPeriodoActual;
  gGridForm:= TfrmMovimientosD.Create(Self);
  gGridForm.ReadOnlyGrid:= True;
  gGridForm.DataSet:= adodsMaster;
  // Filtrado
  SQLSelect:= 'SELECT vMovimientosDetalle.IdMovimientoDetalle, Movimientos.Fecha, vMovimientosDetalle.Persona, vMovimientosDetalle.PersonaRelacionada, vMovimientosDetalle.Tipo, ' +
  'vMovimientosDetalle.Categoria, vMovimientosDetalle.Efecto, (vMovimientosDetalle.Importe*MovimientosTiposCategorias.Signo) AS Importe, vMovimientosDetalle.Estatus ' +
  'FROM vMovimientosDetalle ' +
  'INNER JOIN Movimientos ON vMovimientosDetalle.IdMovimiento = Movimientos.IdMovimiento ' +
  'INNER JOIN MovimientosTipos ON vMovimientosDetalle.IdMovimientoTipo = MovimientosTipos.IdMovimientoTipo ' +
  'INNER JOIN MovimientosTiposCategorias ON MovimientosTipos.IdMovimientoTipoCategoria = MovimientosTiposCategorias.IdMovimientoTipoCategoria ';
  gGridForm.actSearch:= actSearch;
  adodsPeriodo.Open;
  TfrmMovimientosD(gGridForm).DataSetPeriodo:= adodsPeriodo;
  // Ejecuta filtrado
  TfrmMovimientosD(gGridForm).IdPeriodo:= IdPeriodoActual;
  actSearch.Execute;
end;

function TdmMovimientosD.GetPeriodoActual: Integer;
begin
  adocGetPeriodoActual.Execute;
  Result:= adocGetPeriodoActual.Parameters.ParamByName('IdPeriodo').Value;
end;

procedure TdmMovimientosD.SetFilter;
var
  IdPeriodo: Integer;
begin
  inherited;
  IdPeriodo:= TfrmMovimientosD(gGridForm).IdPeriodo;
  SQLWhere:= Format('WHERE Movimientos.IdPeriodo = %d', [IdPeriodo]);
end;

end.
