program RH;

uses
  Vcl.Forms,
  System.SysUtils,
  _MainRibbonForm in 'Standard\_MainRibbonForm.pas' {_frmMainRibbon},
  _AboutForm in 'Standard\_AboutForm.pas' {_frmAbout},
  _ConectionDmod in 'Standard\_ConectionDmod.pas' {_dmConection: TDataModule},
  _LoginForm in 'Standard\_LoginForm.pas' {_frmLogin},
  _MainForm in 'Standard\_MainForm.pas' {_frmMain},
  _ProgressForm in 'Standard\_ProgressForm.pas' {_frmProgress},
  _ProviderDMod in 'Standard\_ProviderDMod.pas' {_dmProvider: TDataModule},
  _GridForm in 'Standard\_GridForm.pas' {_frmGrid},
  _EditForm in 'Standard\_EditForm.pas' {_frmEdit},
  _StandarDMod in 'Standard\_StandarDMod.pas' {_dmStandar: TDataModule},
  _StandarForm in 'Standard\_StandarForm.pas' {_StandarFrm},
  _StandarGridForm in 'Standard\_StandarGridForm.pas' {_frmStandarGrid},
  _SplashForm in 'Standard\_SplashForm.pas' {_frmSplash},
  _Utils in 'Standard\_Utils.pas',
  _DualListDM in 'Standard\_DualListDM.pas' {_dmDualList: TDataModule},
  _DualListForm in 'Standard\_DualListForm.pas' {_frmDualList},
  MainForm in 'MainForm.pas' {frmMain},
  UbicacionesDM in 'Catalogos\UbicacionesDM.pas' {dmUbicaciones: TDataModule},
  PaisesForm in 'Catalogos\PaisesForm.pas' {frmPaises},
  PaisForm in 'Catalogos\PaisForm.pas' {frmPais},
  EstadosForm in 'Catalogos\EstadosForm.pas' {frmEstados},
  EstadoForm in 'Catalogos\EstadoForm.pas' {frmEstado},
  MunicipiosForm in 'Catalogos\MunicipiosForm.pas' {frmMunicipios},
  MunicipioForm in 'Catalogos\MunicipioForm.pas' {frmMunicipio},
  PoblacionesForm in 'Catalogos\PoblacionesForm.pas' {frmPoblaciones},
  PoblacionForm in 'Catalogos\PoblacionForm.pas' {frmPoblacion},
  BancoForm in 'Catalogos\BancoForm.pas' {frmBanco},
  BancosDM in 'Catalogos\BancosDM.pas' {dmBancos: TDataModule},
  BancosForm in 'Catalogos\BancosForm.pas' {frmBancos},
  MonedasDM in 'Catalogos\MonedasDM.pas' {dmMonedas: TDataModule},
  MonedaForm in 'Catalogos\MonedaForm.pas' {frmMoneda},
  MonedasForm in 'Catalogos\MonedasForm.pas' {frmMonedas},
  UnidaddeNegocioForm in 'Catalogos\UnidaddeNegocioForm.pas' {frmUnidaddeNegocio},
  UnidadesdeNegocioForm in 'Catalogos\UnidadesdeNegocioForm.pas' {frmUnidadesdeNegocio},
  PuestosDM in 'Catalogos\PuestosDM.pas' {dmPuestos: TDataModule},
  GerenciaForm in 'Catalogos\GerenciaForm.pas' {frmGerencia},
  GerenciasForm in 'Catalogos\GerenciasForm.pas' {frmGerencias},
  DepartamentoForm in 'Catalogos\DepartamentoForm.pas' {frmDepartamento},
  DepartamentosForm in 'Catalogos\DepartamentosForm.pas' {frmDepartamentos},
  PuestosEdit in 'Catalogos\PuestosEdit.pas' {frmPuestosEdit},
  PuestosForm in 'Catalogos\PuestosForm.pas' {frmPuestos},
  PlazasDM in 'Catalogos\PlazasDM.pas' {dmPlazas: TDataModule},
  PlazasForm in 'Catalogos\PlazasForm.pas' {frmPlazas},
  PlazasEdit in 'Catalogos\PlazasEdit.pas' {frmPlazasEdit},
  PuestosPerfilesDM in 'Catalogos\PuestosPerfilesDM.pas' {dmPuestosPerfiles: TDataModule},
  PuestoPerfilForm in 'Catalogos\PuestoPerfilForm.pas' {frmPuestoPerfil},
  PuestosPerfilesForm in 'Catalogos\PuestosPerfilesForm.pas' {frmPuestosPerfiles},
  CapacitacionDM in 'Catalogos\CapacitacionDM.pas' {dmCapacitacion: TDataModule},
  BateriaCapacitacionForm in 'Catalogos\BateriaCapacitacionForm.pas' {frmBateriaCapacitacion},
  BateriaCapacitacionesForm in 'Catalogos\BateriaCapacitacionesForm.pas' {frmBateriasCapacitacion},
  BateriaCapacitacionCursoForm in 'Catalogos\BateriaCapacitacionCursoForm.pas' {frmBateriaCapacitacionCurso},
  BateriaCapacitacionCursosForm in 'Catalogos\BateriaCapacitacionCursosForm.pas' {frmBateriaCapacitacionCursos},
  BateriaCapacitacionCursoTemaForm in 'Catalogos\BateriaCapacitacionCursoTemaForm.pas' {frmBateriaCapacitacionCursosTema},
  BateriaCapacitacionCursosTemasForm in 'Catalogos\BateriaCapacitacionCursosTemasForm.pas' {frmBateriaCapacitacionCursosTemas},
  PlazasTurnosDM in 'Catalogos\PlazasTurnosDM.pas' {dmPlazasTurnos: TDataModule},
  PlazaTurnoForm in 'Catalogos\PlazaTurnoForm.pas' {frmPlazaTurno},
  PlazasTurnosForm in 'Catalogos\PlazasTurnosForm.pas' {frmPlazasTurnos},
  EsquemaPagosDM in 'Catalogos\EsquemaPagosDM.pas' {dmEsquemaPagos: TDataModule},
  EsquemaPagosEdit in 'Catalogos\EsquemaPagosEdit.pas' {frmEsquemaPagosEdit},
  EsquemaPagosForm in 'Catalogos\EsquemaPagosForm.pas' {frmEsquemaPagos},
  FormulasDM in 'Catalogos\FormulasDM.pas' {dmFormulas: TDataModule},
  FormulaForm in 'Catalogos\FormulaForm.pas' {frmFormula},
  FormulasForm in 'Catalogos\FormulasForm.pas' {frmFormulas},
  ReglasNegocioDM in 'Catalogos\ReglasNegocioDM.pas' {dmReglasNegocio: TDataModule},
  ReglaNegocioForm in 'Catalogos\ReglaNegocioForm.pas' {frmReglaNegocio},
  ReglasNegocioForm in 'Catalogos\ReglasNegocioForm.pas' {frmReglasNegocio},
  DomiciliosDM in 'Catalogos\DomiciliosDM.pas' {dmDomicilios: TDataModule},
  EstablecimientosDM in 'Catalogos\EstablecimientosDM.pas' {dmEstablecimientos: TDataModule},
  EstablecimientoForm in 'Catalogos\EstablecimientoForm.pas' {frmEstablecimiento},
  EstablecimientosForm in 'Catalogos\EstablecimientosForm.pas' {frmEstablecimientos},
  Monedas2DM in 'Catalogos\Monedas2DM.pas' {dmMonedas2: TDataModule},
  Puestos2DM in 'Catalogos\Puestos2DM.pas' {dmPuestos2: TDataModule},
  DomiciliosEdit in 'Catalogos\DomiciliosEdit.pas' {frmDomiciliosEdit},
  DomiciliosForm in 'Catalogos\DomiciliosForm.pas' {frmDomicilios},
  MovimientosTiposDM in 'Catalogos\MovimientosTiposDM.pas' {dmMovimientosTipo: TDataModule},
  MovimientosTiposEdit in 'Catalogos\MovimientosTiposEdit.pas' {frmMovimientosTipoEdit},
  MovimientosTiposForm in 'Catalogos\MovimientosTiposForm.pas' {frmMovimientosTipos},
  PersonasDM in 'Catalogos\PersonasDM.pas' {dmPersona: TDataModule},
  PersonasEdit in 'Catalogos\PersonasEdit.pas' {frmPersonasEdit},
  PersonasForm in 'Catalogos\PersonasForm.pas' {frmPersonas},
  PuestosCapacitacionesDM in 'Catalogos\PuestosCapacitacionesDM.pas' {dmPuestosCapacitaciones: TDataModule},
  PuestosCapacitacionesForm in 'Catalogos\PuestosCapacitacionesForm.pas' {frmPuestosCapacitaciones},
  EsquemaPagosMovimientosTiposDM in 'Catalogos\EsquemaPagosMovimientosTiposDM.pas' {dmEsquemaPagosMovimientosTipos: TDataModule},
  EsquemaPagosMovimientosTiposForm in 'Catalogos\EsquemaPagosMovimientosTiposForm.pas' {frmEsquemaPagosMovimientosTipos};

{$R *.res}

var
  vFrmSplash : T_frmSplash;
  vCheckOK: boolean;

begin
  Application.Initialize;
  vFrmSplash := T_frmSplash.Create(nil);
  try
    vFrmSplash.Show;
    Application.ProcessMessages;
    Sleep(1800);
    vCheckOK := True
  finally
    vFrmSplash.Free;
  end;
  if vCheckOK then
  begin
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TfrmMain, frmMain);
    Application.CreateForm(T_dmConection, _dmConection);
    Application.CreateForm(T_frmProgress, _frmProgress);
    Application.CreateForm(T_frmMainRibbon, _frmMainRibbon);
  Application.Run;
  end;
end.
