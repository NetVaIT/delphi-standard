unit CuentasGastosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmCuentasGastos = class(T_dmStandar)
    adodsPersona: TADODataSet;
    adodsCuentaGastoPadre: TADODataSet;
    adodsMasterIdCuentaGasto: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterCuentaGasto: TStringField;
    adodsMasterDescripcionGasto: TStringField;
    adodsMasterIdCuentaGastoPadre: TIntegerField;
    adodsMasterPersona: TStringField;
    adodsMasterCuentaGastoPadre: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CuentasGastosForm;

{$R *.dfm}

procedure TdmCuentasGastos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmCuentasGastos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
