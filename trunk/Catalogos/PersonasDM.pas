unit PersonasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB;

type
  TPRol = (rNone, rDuenoProceso, rOutSourcing, rCliente, rProveedor, rEmpleado);
  TdmPersona = class(T_dmStandar)
    adodsPersonaTipo: TADODataSet;
    adodsSexo: TADODataSet;
    adodsEstadoCivil: TADODataSet;
    adodsPais: TADODataSet;
    adodsClientes: TADODataSet;
    adodsPersonasRoles: TADODataSet;
    dsPais: TDataSource;
    adodsEstado: TADODataSet;
    dsEstado: TDataSource;
    dsMunicipio: TDataSource;
    adodsMunicipio: TADODataSet;
    adodsPoblacion: TADODataSet;
    ADODataSet1: TADODataSet;
    adodsRolesClases: TADODataSet;
    adodsRolesEstatus: TADODataSet;
    adodsProveedores: TADODataSet;
    adodsEmpleados: TADODataSet;
    adodsPersonaRelacionada: TADODataSet;
    dsMaster: TDataSource;
    dsPersonasRoles: TDataSource;
    adodsMasterIdPersona: TAutoIncField;
    adodsMasterRFC: TStringField;
    adodsMasterIdPersonaTipo: TIntegerField;
    adodsMasterIdRazonSocialTipo: TIntegerField;
    adodsMasterIdSexo: TIntegerField;
    adodsMasterIdEstadoCivil: TIntegerField;
    adodsMasterIdPais: TIntegerField;
    adodsMasterIdPoblacion: TIntegerField;
    adodsMasterRazonSocial: TStringField;
    adodsMasterNombre: TStringField;
    adodsMasterApellidoPaterno: TStringField;
    adodsMasterApellidoMaterno: TStringField;
    adodsMasterFechaNacimiento: TDateTimeField;
    adodsPersonasRolesIdPersonaRol: TAutoIncField;
    adodsPersonasRolesIdPersona: TIntegerField;
    adodsPersonasRolesIdPersonaRelacionada: TIntegerField;
    adodsPersonasRolesIdRol: TIntegerField;
    adodsPersonasRolesIdRolEsquemaPago: TIntegerField;
    adodsPersonasRolesIdRolEstatus: TIntegerField;
    adodsPersonasRolesIdRolClase: TIntegerField;
    adodsMasterPersonaTipo: TStringField;
    adodsRazonSocialTipo: TADODataSet;
    adodsMasterRazonSocialTipo: TStringField;
    adodsMasterSexo: TStringField;
    adodsMasterEstadoCivil: TStringField;
    adodsMasterPais: TStringField;
    adodsPersonasRolesPersonaRelacionada: TStringField;
    adodsPersonasRolesRolEstatus: TStringField;
    adodsPersonasRolesRolClase: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FRol: TPRol;
    procedure SetRol(const Value: TPRol);
    { Private declarations }
  public
    { Public declarations }
    property Rol: TPRol read FRol write SetRol;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasForm;

{$R *.dfm}

procedure TdmPersona.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmPersonas.Create(Self);
  gGridForm.DataSet := adodsMaster;
  adodsPersonasRoles.Open;
  if Rol = rEmpleado then adodsEmpleados.Open;
  if Rol = rCliente then adodsClientes.Open;
  if Rol = rProveedor then adodsProveedores.Open;
  adodsPersonasRoles.Parameters.ParamByName('IdRol').Value := rEmpleado;
end;

procedure TdmPersona.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  adodsEmpleados.Close;
  adodsClientes.Close;
  adodsProveedores.Close;
end;

procedure TdmPersona.SetRol(const Value: TPRol);
begin
  FRol := Value;
  TfrmPersonas(gGridForm).Rol := Value;
end;

end.
