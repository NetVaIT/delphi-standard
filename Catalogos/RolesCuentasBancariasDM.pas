unit RolesCuentasBancariasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmRolesCuentasBancarias = class(T_dmStandar)
    adodsMasterIdRolCuentaBancaria: TAutoIncField;
    adodsMasterIdPersonaRol: TIntegerField;
    adodsMasterIdCuentaBancaria: TIntegerField;
    adodsMasterPorcentaje: TBCDField;
    adodsMasterLimiteInferior: TBCDField;
    adodsMasterLimiteSuperior: TBCDField;
    adodsCuentaBancaria: TADODataSet;
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

uses RolesCuentasBancariasForm;

{$R *.dfm}

{ TdmRolesCuentasBancarias }

procedure TdmRolesCuentasBancarias.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmRolesCuentasBancarias.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  adodsCuentaBancaria.CommandText := 'SELECT IdCuentaBancaria, IdPersona, CuentaBancaria FROM CuentasBancarias';
end;

procedure TdmRolesCuentasBancarias.SetPersonaCta(const Value: Integer);
begin
  fPersonaCta := Value;
  adodsCuentaBancaria.Filter := 'IdPersona = ' + IntToStr(fPersonaCta);
  adodsCuentaBancaria.Filtered := True;
end;

end.
