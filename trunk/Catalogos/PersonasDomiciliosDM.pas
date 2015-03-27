unit PersonasDomiciliosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB;

type
  TdmPersonasDomicilios = class(T_dmStandar)
    adodsDomiciliosTipos: TADODataSet;
    adodsMasterIdPersonaDomicilio: TIntegerField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdDomicilio: TIntegerField;
    adodsMasterIdDomicilioTipo: TIntegerField;
    adodsMasterPredeterminado: TBooleanField;
    adodsDomicilios: TADODataSet;
    adodsMasterDomicilio: TStringField;
    adodsMasterTipo: TStringField;
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasDomiciliosForm;

{$R *.dfm}

procedure TdmPersonasDomicilios.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsMasterPredeterminado.Value:= False;
//  adodsMasterIdPersona.Value:= 29;
end;

procedure TdmPersonasDomicilios.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmPersonasDomicilios.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
