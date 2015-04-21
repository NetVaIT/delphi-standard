unit PeriodosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, System.DateUtils, PeriodosCalculo;

type
  TdmPeriodos = class(T_dmStandar)
    adodsPeriodoTipo: TADODataSet;
    adodsPeriodoEstatus: TADODataSet;
    adodsMasterPeriodoTipo: TStringField;
    adodsMasterPeriodoEstatus: TStringField;
    actCalculaPeriodo: TAction;
    adodsMasterIdPeriodo: TAutoIncField;
    adodsMasterIdPeriodoTipo: TIntegerField;
    adodsMasterNumero: TIntegerField;
    adodsMasterIdPeriodoEstatus: TIntegerField;
    adodsMasterFechaInicio: TWideStringField;
    adodsMasterFechaFin: TWideStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterAnio: TIntegerField;
    dsMaster: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure actCalculaPeriodoExecute(Sender: TObject);
  private
    { Private declarations }
    FAnioPeriodo : integer;
    FgPCalculoForm: TfrmPeriodosCalculo;
    procedure SetAnioP(Const Anio:Integer);
    procedure PeriodoSemanal(FInicio,FFin:TDate);
    procedure CrearPeriodo(Inicio,Fin:TDate;Orden,TipoPeriodo:Integer;Describe:String);
    function DescripcionPeriodo(Periodo:String;Inicio,Fin:TDate):String;
  protected
    property gEditForm: TfrmPeriodosCalculo read FgPCalculoForm write FgPCalculoForm;
  public
    { Public declarations }
    property AnioPeriodo: Integer read FAnioPeriodo write SetAnioP;
    procedure Execute;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PeriodosForm;

{$R *.dfm}

procedure TdmPeriodos.actCalculaPeriodoExecute(Sender: TObject);
begin
  inherited;
  FgPCalculoForm := TfrmPeriodosCalculo.Create(Self);
  FgPCalculoForm.ShowModal;
  SetAnioP(2015);
  Execute;
end;

procedure TdmPeriodos.CrearPeriodo(Inicio, Fin: TDate; Orden, TipoPeriodo: Integer;
  Describe: String);
begin
  dsMaster.DataSet.Insert;
  dsMaster.DataSet.FieldByName('IdPeriodoTipo').Value    := TipoPeriodo;
  dsMaster.DataSet.FieldByName('Numero').Value           := Orden;
  dsMaster.DataSet.FieldByName('IdPeriodoEstatus').Value := 3;
  dsMaster.DataSet.FieldByName('FechaInicio').AsDateTime := Inicio;
  dsMaster.DataSet.FieldByName('FechaFin').AsDateTime    := Fin;
  dsMaster.DataSet.FieldByName('Descripcion').Value      := Describe;
  dsMaster.DataSet.FieldByName('Anio').Value             := FAnioPeriodo;
  dsMaster.DataSet.Post;
end;

procedure TdmPeriodos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmPeriodos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  TfrmPeriodos(gGridForm).CalcPeriodo := actCalculaPeriodo;
end;

function TdmPeriodos.DescripcionPeriodo(Periodo: String; Inicio,
  Fin: TDate): String;
begin
  Result := 'Periodo ' + Periodo + ' del ' + DateToStr(Inicio) + ' al ' + DateToStr(Fin) ;
end;

procedure TdmPeriodos.Execute;
var
  InicioPeriodo, FinPeriodo : TDate;
begin
  InicioPeriodo := EncodeDate(FAnioPeriodo,01,04);
  FinPeriodo := EncodeDate((FAnioPeriodo + 1),01,02);
  PeriodoSemanal(InicioPeriodo, FinPeriodo);
end;

procedure TdmPeriodos.PeriodoSemanal(FInicio, FFin: TDate);
var
  ISemana, FSemana : TDateTime;
  Descripcion : String;
  CuentaPeriodo : Integer;
begin
  CuentaPeriodo := 1;
  if DayOfWeek(FInicio) = 1 then
  begin
    ISemana := FInicio;
  end
  else
  begin

  end;
  repeat
    FSemana := IncDay(ISemana,6);
    Descripcion := DescripcionPeriodo('Semanal',ISemana,FSemana);
    CrearPeriodo(ISemana,FSemana,CuentaPeriodo,2,Descripcion);
    ISemana := IncDay(FSemana,1);
    CuentaPeriodo := CuentaPeriodo + 1;
  until FSemana >= FFin;
end;

procedure TdmPeriodos.SetAnioP(Const Anio: Integer);
begin
  FAnioPeriodo := Anio;
end;

end.
