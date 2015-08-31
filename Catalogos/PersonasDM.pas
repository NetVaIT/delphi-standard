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
    adodsEstado: TADODataSet;
    adodsMunicipio: TADODataSet;
    dsPais: TDataSource;
    dsEstado: TDataSource;
    dsMunicipio: TDataSource;
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
    adodsRolEsquemaPago: TADODataSet;
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
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsPersonaRolesNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    FRol: TPRol;
    procedure SetRol(const Value: TPRol);
    procedure AsignarConsulta;
  public
    { Public declarations }
    property Rol: TPRol read FRol write SetRol;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasForm, PersonasRolesForm;

{$R *.dfm}

procedure TdmPersona.adodsPersonaRolesNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsPersonaRolesCalcular.Value:= False;
end;

procedure TdmPersona.AsignarConsulta;
var
  ConsultaP, ConsultaPR : String;
begin
  ConsultaPR := 'SELECT Personas.IdPersona, Personas.RazonSocial, ' + #10#13 +
                'PersonasRoles.IdRol, PersonasRoles.IdPersona ' + #10#13 +
                'FROM Personas ' + #10#13 +
                'LEFT JOIN PersonasRoles ON Personas.IdPersona = PersonasRoles.IdPersona ';
  case Rol of
    rNone:
    begin
      ConsultaPR := 'SELECT Personas.IdPersona, Personas.RazonSocial, ' + #10#13 +
                    'PersonasRoles.IdRol, PersonasRoles.IdPersona ' + #10#13 +
                    'FROM Personas ' + #10#13 +
                    'LEFT JOIN PersonasRoles ON Personas.IdPersona = PersonasRoles.IdPersona ';
    end;
    rDuenoProceso:
    begin
      ConsultaP := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 1)))';
    end;
    rOutSourcing:
    begin
      ConsultaP := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 2)))';
    end;
    rCliente:
    begin
      ConsultaP := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 3)))';
    end;
    rProveedor:
    begin
      ConsultaP := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 4)))';
    end;
    rEmpleado:
    begin
      ConsultaP := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 5)))';
    end;
    rSocio:
    begin
      ConsultaP := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 6)))';
    end;
    rComisionista:
    begin
      ConsultaP := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 8)))';
    end;
  end;
  adodsMaster.CommandText := adodsMaster.CommandText + ConsultaP;
  adodsPersonaRelacionada.CommandText := ConsultaPR;
end;

procedure TdmPersona.DataModuleCreate(Sender: TObject);
begin
//  inherited;
  gGridForm := TfrmPersonas.Create(Self);
  gGridForm.DataSet := adodsMaster;
  gFormDeatil1 := TfrmPersonasRoles.Create(Self);
  gFormDeatil1.DataSet := adodsPersonaRoles;
end;

procedure TdmPersona.SetRol(const Value: TPRol);
begin
  FRol := Value;
  TfrmPersonas(gGridForm).Rol := Value;
  TfrmPersonasRoles(gFormDeatil1).Rol := Value;
  AsignarConsulta;
  adodsMaster.Open;
  adodsPersonaRoles.Open;
end;

end.
