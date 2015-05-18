unit InstruccionesPeriodosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, Vcl.Dialogs, System.UITypes;

resourcestring
  StrSelectInfo = 'Todas estas instruciones se encontraron en el periodo actual ¿Desea procesarlas?';

type
  TdmInstruccionesPeriodos = class(T_dmStandar)
    adodsMasterIdInstruccion: TIntegerField;
    adodsMasterIdPeriodo: TIntegerField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterInstruccion: TStringField;
    adodsMasterArchivo: TStringField;
    adodsMasterPariodo: TStringField;
    adospSetInstruccionesPeriodos: TADOStoredProc;
    adospGenMovimientos: TADOStoredProc;
    adocGetPeriodoActual: TADOCommand;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure SetMovimientos;
    function SetInstruccionesPeriodos: Boolean;
  public
    { Public declarations }
    procedure Execute;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses InstruccionesPeriodosForm, VerificarForm;


{$R *.dfm}

{ TdmInstruccionesPeriodos }

procedure TdmInstruccionesPeriodos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmInstruccionesPeriodos.Create(Self);
  gGridForm.ReadOnlyGrid:= True;
  gGridForm.DataSet:= adodsMaster;
end;

procedure TdmInstruccionesPeriodos.Execute;
var
  frmVerificar: TfrmVerificar;
begin
  if SetInstruccionesPeriodos then
  begin
    frmVerificar := TfrmVerificar.Create(Self);
    try
      frmVerificar.Info:= StrSelectInfo;
      ShowModule(frmVerificar.pnlMaster,'');
      if frmVerificar.ShowModal = mrOk then
        SetMovimientos;
    finally
      frmVerificar.Free;
    end;
  end;
end;

function TdmInstruccionesPeriodos.SetInstruccionesPeriodos: Boolean;
var
  IdPeriodo: Integer;
begin
  Result:= False;
  adocGetPeriodoActual.Execute;
  IdPeriodo:= adocGetPeriodoActual.Parameters.ParamByName('IdPeriodo').Value;
  if IdPeriodo <> 0 then
  begin
    adospSetInstruccionesPeriodos.Parameters.ParamByName('@IdPeriodo').Value:= IdPeriodo;
    adospSetInstruccionesPeriodos.ExecProc;
    Result:= True;
  end;
end;

procedure TdmInstruccionesPeriodos.SetMovimientos;
begin
  adospGenMovimientos.ExecProc;
  MessageDlg('Proceso terminado.', mtInformation, [mbOk], 0);
end;

end.
