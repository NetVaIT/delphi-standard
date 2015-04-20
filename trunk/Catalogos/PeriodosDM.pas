unit PeriodosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, System.DateUtils;

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
    procedure SetAnioP(Const Anio:Integer);
    procedure PeriodoSemanal(FInicio,FFin:TDate);
    procedure CrearPeriodo(Inicio,Fin:TDate;TipoPeriodo:Integer;Describe:String);
    function DescripcionPeriodo(Periodo:String;Inicio,Fin:TDate):String;
  protected
//    property gEditForm: T_frmEdit read FgEditForm write FgEditForm;
  public
    { Public declarations }
    property AnioPeriodo: Integer read FAnioPeriodo write SetAnioP;
    procedure Execute;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PeriodosForm, PeriodosCalculo;

{$R *.dfm}

procedure TdmPeriodos.actCalculaPeriodoExecute(Sender: TObject);
begin
  inherited;
{  dmImportXLS := TdmImportXLS.Create(Self);
  try
    dmImportXLS.IdInstruccion:= adodsMasterIdInstruccion.Value;
    dmImportXLS.Execute;
  finally
    dmImportXLS.Free;
  end;}

end;

procedure TdmPeriodos.CrearPeriodo(Inicio, Fin: TDate; TipoPeriodo: Integer;
  Describe: String);
begin
  dsMaster.DataSet.Insert;
  dsMaster.DataSet.FieldByName('IdPeriodoTipo').Value    := TipoPeriodo;
  dsMaster.DataSet.FieldByName('IdPeriodoEstatus').Value := 3;
  dsMaster.DataSet.FieldByName('FechaInicio').Value      := Inicio;
  dsMaster.DataSet.FieldByName('FechaFin').Value         := Fin;
  dsMaster.DataSet.FieldByName('Descripcion').Value      := Describe;
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
  InicioPeriodo := EncodeDate(FAnioPeriodo,01,01);
  FinPeriodo := EncodeDate(FAnioPeriodo,12,31);
  PeriodoSemanal(InicioPeriodo, FinPeriodo);
end;

procedure TdmPeriodos.PeriodoSemanal(FInicio, FFin: TDate);
var
  ISemana, FSemana : TDateTime;
  Descripcion : String;
begin
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
    CrearPeriodo(ISemana,FSemana,2,Descripcion);
    ISemana := IncDay(FSemana,1);
  until FSemana >= FFin;
end;

procedure TdmPeriodos.SetAnioP(Const Anio: Integer);
begin

end;

end.
