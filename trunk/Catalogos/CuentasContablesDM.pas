unit CuentasContablesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmCuentasContables = class(T_dmStandar)
    adodsPersona: TADODataSet;
    adodsMasterIdCuentaContable: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterCuentaContable: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterNaturaleza: TStringField;
    adodsMasterCodigoAgrupaSAT: TStringField;
    adodsMasterIdCuentaPadre: TIntegerField;
    adodsCuentaPadre: TADODataSet;
    adodsMasterPersona: TStringField;
    adodsMasterCuentaPadre: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CuentasContablesForm;

{$R *.dfm}

procedure TdmCuentasContables.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmCuentasContables.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
