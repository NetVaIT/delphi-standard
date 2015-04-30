unit PersonasRolesCuentasBancariasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmPersonasRolesCuentasBancarias = class(T_dmStandar)
    adodsCuentaBancaria: TADODataSet;
    adodsCuentaBancariaPerfil: TADODataSet;
    adodsMasterIdPersonaRolCuentaBancaria: TAutoIncField;
    adodsMasterIdPersonaRol: TIntegerField;
    adodsMasterIdCuentaBancaria: TIntegerField;
    adodsMasterIdCuentaBancariaPerfil: TIntegerField;
    adodsMasterPorcentaje: TBCDField;
    adodsMasterLimiteInferior: TBCDField;
    adodsMasterLimiteSuperior: TBCDField;
    adodsMasterCuentaBancariaPerfil: TStringField;
    adodsMasterCuentaBancaria: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    fPersonaCta: Integer;
    procedure SetPersonaCta(const Value: Integer);
  public
    { Public declarations }
    property PersonaAct:Integer read fPersonaCta write SetPersonaCta;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasRolesCuentasBancariasForm;

{$R *.dfm}

{ TdmRolesCuentasBancarias }

procedure TdmPersonasRolesCuentasBancarias.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmPersonasRolesCuentasBancarias.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

procedure TdmPersonasRolesCuentasBancarias.SetPersonaCta(const Value: Integer);
begin
  fPersonaCta := Value;
  adodsCuentaBancaria.Close;
  adodsCuentaBancaria.Parameters.ParamByName('IdPersona').Value := IntToStr(fPersonaCta);
  adodsCuentaBancaria.OPen;
end;

end.
