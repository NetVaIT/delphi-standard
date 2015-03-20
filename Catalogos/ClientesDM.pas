unit ClientesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB;

type
  TdmClientes = class(T_dmStandar)
    adodsMasterIdCliente: TAutoIncField;
    adodsMasterIdPersonaRol: TIntegerField;
    adodsMasterIdCtaContable: TIntegerField;
    adodsMasterIdCtaContableNCA: TIntegerField;
    adodsMasterIdCtaContableNCR: TIntegerField;
    adodsMasterIdCtaContableAnticipo: TIntegerField;
    adodsMasterTotalFacturado: TFMTBCDField;
    adodsMasterSaldoPendiente: TFMTBCDField;
    adodsMasterCalificacion: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasDM;

{$R *.dfm}

end.
