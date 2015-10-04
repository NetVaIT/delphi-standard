unit PersonasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TPRol = (rNone, rDuenoProceso, rOutSourcing, rCliente, rProveedor, rEmpleado,
           rSocio, rAutoridad, rComisionista);
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
    adodsRazonSocialTipo: TADODataSet;
    adodsSexo: TADODataSet;
    adodsEstadoCivil: TADODataSet;
    adodsPais: TADODataSet;
    adodsMasterPersonaTipo: TStringField;
    adodsMasterRazonSocialTipo: TStringField;
    adodsMasterSexo: TStringField;
    adodsMasterEstadoCivil: TStringField;
    adodsMasterPais: TStringField;
    adodsPersonaRoles: TADODataSet;
    adodsPersonaRolesIdPersonaRol: TAutoIncField;
    adodsPersonaRolesIdPersona: TIntegerField;
    adodsPersonaRolesIdPersonaRelacionada: TIntegerField;
    adodsPersonaRolesIdRol: TIntegerField;
    adodsPersonaRolesIdRolEsquemaPago: TIntegerField;
    adodsPersonaRolesIdRolEstatus: TIntegerField;
    adodsPersonaRolesIdRolClase: TIntegerField;
    adodsPersonaRelacionada: TADODataSet;
    adodsRol: TADODataSet;
    adodsRolEstatus: TADODataSet;
    adodsRolClase: TADODataSet;
    adodsPersonaRolesPersonaRelacionada: TStringField;
    adodsPersonaRolesRol: TStringField;
    adodsPersonaRolesRolEstatus: TStringField;
    adodsPersonaRolesRolClase: TStringField;
    dsMaster: TDataSource;
    adodsMasterCURP: TStringField;
    adodsPersonaRolesFacturar: TBooleanField;
    adodsMasterLugarNacimiento: TStringField;
    adodsPersonaRolesFechaIngreso: TDateTimeField;
    adodsPersonaRolesFechaBaja: TDateTimeField;
    adodsPersonaRolesNSS: TStringField;
    adodsPersonaRolesFechaAltaIMSS: TDateTimeField;
    adodsPersonaRolesCalcular: TBooleanField;
    adodsPersonaRolesPorcentajeCalculo: TFMTBCDField;
    adodsPersonaRolesRegistroPatronalIMSS: TStringField;
    adodsPersonaTitular: TADODataSet;
    adodsMasterIdPersonaTitular: TIntegerField;
    adodsMasterTitular: TStringField;
    adodsMasterVigenciaFM34: TDateTimeField;
    adodsPersonaRolesIdRolTipo: TIntegerField;
    actSelecionarRol: TAction;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsPersonaRolesNewRecord(DataSet: TDataSet);
    procedure actSelecionarRolExecute(Sender: TObject);
  private
    { Private declarations }
    FRol: TPRol;
    procedure SetRol(const Value: TPRol);
  protected
    procedure SetFilter; override;
  public
    { Public declarations }
    constructor CreateWRol(AOwner: TComponent; Rol: TPRol); virtual;
    property Rol: TPRol read FRol write SetRol;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasForm, PersonasRolesForm, PersonasSeleccionRolDmod;

{$R *.dfm}

procedure TdmPersona.actSelecionarRolExecute(Sender: TObject);
var
  dmPersonasSeleccionRol: TdmPersonasSeleccionRol;
begin
  inherited;
  dmPersonasSeleccionRol := TdmPersonasSeleccionRol.Create(Self);
  try
    dmPersonasSeleccionRol.ShowModule(nil, '');
  finally
    dmPersonasSeleccionRol.Free;
  end;
end;

procedure TdmPersona.adodsPersonaRolesNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsPersonaRolesCalcular.Value:= False;
end;

constructor TdmPersona.CreateWRol(AOwner: TComponent; Rol: TPRol);
begin
  FRol:= Rol;
  inherited Create(AOwner);
end;

procedure TdmPersona.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmPersonas.Create(Self);
  gGridForm.DataSet := adodsMaster;
  TfrmPersonas(gGridForm).actSeleccionarRol:= actSelecionarRol;
  TfrmPersonas(gGridForm).Rol := Rol;
  adodsPersonaRoles.Open;
  gFormDeatil1 := TfrmPersonasRoles.Create(Self);
  gFormDeatil1.DataSet := adodsPersonaRoles;
  TfrmPersonasRoles(gFormDeatil1).Rol := Rol;
  // Busqueda
  SQLSelect:= 'SELECT IdPersona, RFC, CURP, IdPersonaTipo, IdRazonSocialTipo, IdSexo, IdEstadoCivil, IdPais, IdPoblacion, ' +
  'RazonSocial, Nombre, ApellidoPaterno, ApellidoMaterno, FechaNacimiento, LugarNacimiento, IdPersonaTitular, VigenciaFM34 ' +
  'FROM Personas ';
  actSearch.Execute;
end;

procedure TdmPersona.SetFilter;
begin
  inherited;
  case Rol of
    rNone:
      SQLWhere := EmptyStr;
    rDuenoProceso:
      SQLWhere := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 1)))';
    rOutSourcing:
      SQLWhere := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 2)))';
    rCliente:
      SQLWhere := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 3)))';
    rProveedor:
      SQLWhere := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 4)))';
    rEmpleado:
      SQLWhere := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 5)))';
    rSocio:
      SQLWhere := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 6)))';
    rComisionista:
      SQLWhere := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 8)))';
  end;
end;

procedure TdmPersona.SetRol(const Value: TPRol);
begin
  FRol := Value;
end;

end.
