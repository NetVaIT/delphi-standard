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
  _StandarDMod in 'Standard\_StandarDMod.pas' {_dmStandar: TDataModule},
  _StandarForm in 'Standard\_StandarForm.pas' {_StandarFrm},
  _StandarGridForm in 'Standard\_StandarGridForm.pas' {_frmStandarGrid},
  _Utils in 'Standard\_Utils.pas',
  MainForm in 'MainForm.pas' {frmMain},
  _SplashForm in 'Standard\_SplashForm.pas' {_frmSplash},
  _GridForm in 'Standard\_GridForm.pas' {_frmGrid},
  UbicacionesDM in 'Catalogos\UbicacionesDM.pas' {dmUbicaciones: TDataModule},
  PaisesForm in 'Catalogos\PaisesForm.pas' {frmPaises},
  _EditForm in 'Standard\_EditForm.pas' {_frmEdit},
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
  RegimenFiscalDM in 'Catalogos\RegimenFiscalDM.pas' {dmRegimenFiscal: TDataModule},
  RegimenFiscalForm in 'Catalogos\RegimenFiscalForm.pas' {frmRegimenFiscal},
  RegimenFiscalesForm in 'Catalogos\RegimenFiscalesForm.pas' {frmRegimenFiscales},
  TiposDocumentosDM in 'Catalogos\TiposDocumentosDM.pas' {dmTiposDocumentos: TDataModule},
  TipoDocumentoForm in 'Catalogos\TipoDocumentoForm.pas' {frmTipoDocumento},
  TipoDocumentosForm in 'Catalogos\TipoDocumentosForm.pas' {frmTipoDocumentos},
  EmailTiposDM in 'Catalogos\EmailTiposDM.pas' {dmEmailTipos: TDataModule},
  EmailTipoForm in 'Catalogos\EmailTipoForm.pas' {frmEmailTipo},
  EmailTiposForm in 'Catalogos\EmailTiposForm.pas' {frmEmailTipos},
  TelefonosTiposDM in 'Catalogos\TelefonosTiposDM.pas' {dmTelefonosTipos: TDataModule},
  TelefonosTipoForm in 'Catalogos\TelefonosTipoForm.pas' {frmTelefonosTipo},
  TelefonosTiposForm in 'Catalogos\TelefonosTiposForm.pas' {frmTelefonosTipos},
  UnidadesdeNegocioDM in 'Catalogos\UnidadesdeNegocioDM.pas' {dmUnidadesdeNegocio: TDataModule},
  UnidaddeNegocioForm in 'Catalogos\UnidaddeNegocioForm.pas' {frmUnidaddeNegocio},
  UnidadesdeNegocioForm in 'Catalogos\UnidadesdeNegocioForm.pas' {frmUnidadesdeNegocio};

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

