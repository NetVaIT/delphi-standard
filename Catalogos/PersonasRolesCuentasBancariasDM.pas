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
    adodsMasterCuentaBancaria: TStringField;
    adodsMasterCuentaBancariaPerfil: TStringField;
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
  gGridForm:= TfrmPersonasRolesCuentasBancarias.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  adodsCuentaBancaria.CommandText := 'SELECT IdCuentaBancaria, IdPersona, CuentaBancaria FROM CuentasBancarias';
end;

procedure TdmPersonasRolesCuentasBancarias.SetPersonaCta(const Value: Integer);
begin
  fPersonaCta := Value;
  adodsCuentaBancaria.Filter := 'IdPersona = ' + IntToStr(fPersonaCta);
  adodsCuentaBancaria.Filtered := True;
end;

end.
