unit TelefonosTiposDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB;

type
  TdmTelefonosTipos = class(T_dmStandar)
    adodsMasterIdTelefonoTipo: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses TelefonosTiposForm;

{$R *.dfm}

procedure TdmTelefonosTipos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmTelefonosTipos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
