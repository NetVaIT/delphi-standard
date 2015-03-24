unit PersonasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB;

type
  TPRol = (rNone, rDuenoProceso, rOutSourcing, rCliente, rProveedor, rEmpleado);
  TdmPersona = class(T_dmStandar)
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
    adodsPersonaTipo: TADODataSet;
    adodsSexo: TADODataSet;
    adodsEstadoCivil: TADODataSet;
    adodsPais: TADODataSet;
    adodsClientes: TADODataSet;
    adodsPersonasRoles: TADODataSet;
    adodsMasterPersonaTipo: TStringField;
    adodsMasterSexo: TStringField;
    adodsMasterEstadoCivil: TStringField;
    adodsMasterPais: TStringField;
    dsPais: TDataSource;
    adodsEstado: TADODataSet;
    dsEstado: TDataSource;
    dsMunicipio: TDataSource;
    adodsMunicipio: TADODataSet;
    adodsPoblacion: TADODataSet;
    adodsClientesIdCliente: TAutoIncField;
    adodsClientesIdPersonaRol: TIntegerField;
    adodsClientesIdCtaContable: TIntegerField;
    adodsClientesIdCtaContableNCA: TIntegerField;
    adodsClientesIdCtaContableNCR: TIntegerField;
    adodsClientesIdCtaContableAnticipo: TIntegerField;
    adodsClientesTotalFacturado: TFMTBCDField;
    adodsClientesSaldoPendiente: TFMTBCDField;
    adodsClientesCalificacion: TIntegerField;
    ADODataSet1: TADODataSet;
    adodsRoles: TADODataSet;
    adodsRolesClases: TADODataSet;
    adodsRolesEstatus: TADODataSet;
    adodsProveedores: TADODataSet;
    adodsEmpleados: TADODataSet;
    adodsPersonasRolesIdPersonaRol: TIntegerField;
    adodsPersonasRolesIdPersona: TIntegerField;
    adodsPersonasRolesIdPersonaRelacionada: TIntegerField;
    adodsPersonasRolesIdRol: TIntegerField;
    adodsPersonasRolesIdRolEstatus: TIntegerField;
    adodsPersonasRolesIdRolClase: TIntegerField;
    adodsPersonaRelacionada: TADODataSet;
    adodsPersonasDomicilios: TADODataSet;
    adodsPersonasRolesPersonaRelacionada: TStringField;
    adodsPersonasRolesRol: TStringField;
    adodsPersonasRolesRolEstatus: TStringField;
    adodsPersonasRolesRolClase: TStringField;
    dsPersonasRoles: TDataSource;
    dsMaster: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
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
  gGridForm:= TfrmPersonas.Create(Self);
  gGridForm.DataSet := adodsMaster;
  adodsPersonasRoles.Parameters.ParamByName('IdRol').Value:= Rol;
  adodsPersonasRoles.Open;
//  TfrmPersonas(gGridForm).Rol:= rEmpleado;

end;

procedure TdmPersona.SetRol(const Value: TPRol);
begin
  FRol := Value;
end;

end.
