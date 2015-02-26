unit EmailTiposDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB;

type
  TdmEmailTipos = class(T_dmStandar)
    adodsMasterIdEmailTipo: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmEmailTipos: TdmEmailTipos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses EmailTiposForm;

{$R *.dfm}

procedure TdmEmailTipos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmEmailTipos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
