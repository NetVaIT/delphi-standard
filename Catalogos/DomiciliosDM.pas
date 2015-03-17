unit DomiciliosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB;

type
  TdmDomicilios = class(T_dmStandar)
    adodsDomicilioTipo: TADODataSet;
    adodsMasterIdDomicilio: TIntegerField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdDomicilioTipo: TIntegerField;
    adodsMasterIdPais: TIntegerField;
    adodsMasterIdEstado: TIntegerField;
    adodsMasterIdMunicipio: TIntegerField;
    adodsMasterIdPoblacion: TIntegerField;
    adodsMasterColonia: TStringField;
    adodsMasterCalle: TStringField;
    adodsMasterNoExterior: TStringField;
    adodsMasterNoInterior: TStringField;
    adodsMasterReferencia: TStringField;
    adodsMasterCodigoPostal: TStringField;
    adodsMasterPredeterminado: TIntegerField;
    adodsPais: TADODataSet;
    adodsEstado: TADODataSet;
    adodsMunicipio: TADODataSet;
    adodsPoblacion: TADODataSet;
    dsPais: TDataSource;
    dsEstado: TDataSource;
    dsMunicipio: TDataSource;
    adodsMasterDomicilioTipo: TStringField;
    adodsMasterPais: TStringField;
    adodsMasterEstado: TStringField;
    adodsMasterMunicipio: TStringField;
    adodsMasterPoblacion: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
