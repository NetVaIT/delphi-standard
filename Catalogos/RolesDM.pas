unit RolesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB;

type
  TdmRoles = class(T_dmStandar)
    adodsMasterIdRol: TIntegerField;
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

uses RolesForm;

{$R *.dfm}

procedure TdmRoles.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmRoles.Create(Self);
  gGridForm.ReadOnlyGrid:= True;
  gGridForm.DataSet:= adodsMaster;
end;

end.
