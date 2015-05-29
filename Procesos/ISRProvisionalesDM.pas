unit ISRProvisionalesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmISRProvisionales = class(T_dmStandar)
    adodsMasterIdISRProvisional: TAutoIncField;
    adodsMasterIdMovimiento: TIntegerField;
    adodsMasterIdMovimientoTipo: TIntegerField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdPeriodo: TIntegerField;
    adodsMasterDescripcion: TStringField;
    adodsMasterAnio: TIntegerField;
    adodsMasterMes: TIntegerField;
    adodsMasterNumero: TIntegerField;
    adodsMasterBruto: TFMTBCDField;
    adodsMasterBrutoAcumulado: TFMTBCDField;
    adodsMasterISR: TFMTBCDField;
    adodsMasterISRPeriodo: TFMTBCDField;
    adodsMasterISRAcumulado: TFMTBCDField;
    adodsMasterNeto: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
  private
    FIdPersona: Integer;
    procedure SetIdPersona(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property IdPersona: Integer read FIdPersona write SetIdPersona;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ISRProvisionalesForm;

{$R *.dfm}

procedure TdmISRProvisionales.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmISRProvisionales.Create(Self);
  gGridForm.ReadOnlyGrid:= True;
  gGridForm.DataSet:= adodsMaster;
end;

procedure TdmISRProvisionales.SetIdPersona(const Value: Integer);
begin
  FIdPersona := Value;
  adodsMaster.Parameters.ParamByName('IdPersona').Value:= Value;
end;

end.
