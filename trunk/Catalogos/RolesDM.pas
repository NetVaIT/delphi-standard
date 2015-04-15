unit RolesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TdmRoles = class(T_dmStandar)
    adodsMasterIdRol: TAutoIncField;
    adodsMasterIdRolTipo: TIntegerField;
    adodsMasterIdEsquemaPago: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsRolesTipos: TADODataSet;
    adodsEsquemaPagos: TADODataSet;
    adodsMasterRolTipo: TStringField;
    adodsMasterEsquemaPago: TStringField;
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
  gGridForm.DataSet:= adodsMaster;
end;

end.
