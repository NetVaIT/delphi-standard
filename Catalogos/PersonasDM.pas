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
    procedure DataModuleCreate(Sender: TObject);
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

procedure TdmPersona.AsignarConsulta;
var
  ConsultaP, ConsultaPR : String;
begin
  ConsultaP := 'SELECT Personas.IdPersona, Personas.RFC, Personas.CURP, Personas.IdPersonaTipo, ' +  #10#13 +
               'Personas.IdRazonSocialTipo, Personas.IdSexo, Personas.IdEstadoCivil, ' +  #10#13 +
               'Personas.IdPais, Personas.IdPoblacion, Personas.RazonSocial, ' +  #10#13 +
               'Personas.Nombre, Personas.ApellidoPaterno, Personas.ApellidoMaterno, ' +  #10#13 +
               'Personas.FechaNacimiento, Personas.LugarNacimiento, PersonasRoles.IdRol, PersonasRoles.IdPersona ' +  #10#13 +
               'FROM Personas ' +  #10#13 +
               'INNER JOIN PersonasRoles ON Personas.IdPersona = PersonasRoles.IdPersona ' + #10#13 +
               'INNER JOIN Roles ON PersonasRoles.IdRol = Roles.IdRol ';
  ConsultaPR := 'SELECT Personas.IdPersona, Personas.RazonSocial, ' + #10#13 +
                'PersonasRoles.IdRol, PersonasRoles.IdPersona ' + #10#13 +
                'FROM Personas ' + #10#13 +
                'INNER JOIN PersonasRoles ON Personas.IdPersona = PersonasRoles.IdPersona ';
  case Rol of
    rNone: begin
             ConsultaP := 'SELECT Personas.IdPersona, Personas.RFC, Personas.CURP, Personas.IdPersonaTipo, ' + #10#13 +
                         'Personas.IdRazonSocialTipo, Personas.IdSexo, Personas.IdEstadoCivil, ' + #10#13 +
                         'Personas.IdPais, Personas.IdPoblacion, Personas.RazonSocial, ' + #10#13 +
                         'Personas.Nombre, Personas.ApellidoPaterno, Personas.ApellidoMaterno, ' + #10#13 +
                         'Personas.FechaNacimiento, Personas.LugarNacimiento FROM Personas';
             ConsultaPR := 'SELECT Personas.IdPersona, Personas.RazonSocial, ' + #10#13 +
                          'PersonasRoles.IdRol, PersonasRoles.IdPersona ' + #10#13 +
                          'FROM Personas ' + #10#13 +
                          'INNER JOIN PersonasRoles ON Personas.IdPersona = PersonasRoles.IdPersona ';
           end;
    rDuenoProceso: begin
                     ConsultaP := ConsultaP + #10#13 + 'WHERE (Roles.IdRolTipo = 1)';
                     ConsultaPR := ConsultaPR + #10#13 + 'WHERE (PersonasRoles.IdRol = 0)';
                   end;
    rOutSourcing: begin
                    ConsultaP := ConsultaP + #10#13 + 'WHERE (Roles.IdRolTipo = 2)';
                    ConsultaPR := ConsultaPR + #10#13 + 'WHERE (PersonasRoles.IdRol = 1)';
                  end;
    rCliente: begin
                ConsultaP := ConsultaP + #10#13 + 'WHERE (Roles.IdRolTipo = 3)';
                ConsultaPR := ConsultaPR + #10#13 + 'WHERE (PersonasRoles.IdRol = 2)';//(PersonasRoles.IdRol <> 5 AND PersonasRoles.IdRol <> 0)'
              end;
    rProveedor: begin
                  ConsultaP := ConsultaP + #10#13 + 'WHERE (Roles.IdRolTipo = 4)';
                  ConsultaPR := ConsultaPR + #10#13 + 'WHERE (PersonasRoles.IdRol = 2)';
                end;
    rEmpleado: begin
                 ConsultaP := ConsultaP + #10#13 + 'WHERE (Roles.IdRolTipo = 5)';
                 ConsultaPR := ConsultaPR + #10#13 + 'WHERE (PersonasRoles.IdRol = 2)';
               end;
    rSocio: begin
              ConsultaP := ConsultaP + #10#13 + 'WHERE (Roles.IdRolTipo = 6)';
              ConsultaPR := ConsultaPR + #10#13 + 'WHERE (PersonasRoles.IdRol = 2)';
            end;
    rComisionista: begin
                     ConsultaP := ConsultaP + #10#13 + 'WHERE (Roles.IdRolTipo = 8)';
                     ConsultaPR := ConsultaPR + #10#13 + 'WHERE (PersonasRoles.IdRol = 2)';
                   end;
  end;
  adodsMaster.CommandText := ConsultaP;
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
