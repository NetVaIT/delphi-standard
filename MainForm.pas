unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _MainRibbonForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxRibbonPainter, cxContainer, cxEdit, dxSkinsdxBarPainter,
  Vcl.StdActns, System.Actions, Vcl.ActnList, Vcl.ImgList, dxSkinsForm, dxBar,
  Vcl.ExtCtrls, dxStatusBar, dxRibbonStatusBar, cxLabel, dxGallery,
  dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView,
  cxClasses, dxRibbon, dxScreenTip, _Utils, _StandarDMod, _ReportDMod,
  UsuariosDM;

type
  TfrmMain = class(T_frmMainRibbon)
    actCatalogo: TAction;
    dxRibbon1Tab2: TdxRibbonTab;
    dxbEjemplo: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    actUbicaciones: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    actBancos: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    actMonedas: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    actPuestos: TAction;
    dxBarLargeButton11: TdxBarLargeButton;
    actPlazasTurnos: TAction;
    actEsquemasPago: TAction;
    actFormulas: TAction;
    dxBarLargeButton9: TdxBarLargeButton;
    actReglasNegocio: TAction;
    dxBarLargeButton10: TdxBarLargeButton;
    actEstablecimientos: TAction;
    dxbOrganizacion: TdxBar;
    actCapacitaciones: TAction;
    dxbPresonas: TdxBar;
    dxBarLargeButton12: TdxBarLargeButton;
    actEmpleados: TAction;
    actClientes: TAction;
    actProveedores: TAction;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton16: TdxBarLargeButton;
    actMovimientosTipo: TAction;
    dxbEsquemas: TdxBar;
    actRoles: TAction;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarLargeButton5: TdxBarLargeButton;
    actPersonas: TAction;
    actDuenoProceso: TAction;
    actOutsourcing: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxRibbon1Tab3: TdxRibbonTab;
    dxbPagos: TdxBar;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    actInstrucciones: TAction;
    actIncidencias: TAction;
    actMovimientos: TAction;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarLargeButton20: TdxBarLargeButton;
    actComisionistas: TAction;
    actSocios: TAction;
    dxBarButton8: TdxBarButton;
    actInstruccionesTipos: TAction;
    actPeriodos: TAction;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarLargeButton22: TdxBarLargeButton;
    actUsuarios: TAction;
    dxBarManagerBar1: TdxBar;
    dxBarLargeButton23: TdxBarLargeButton;
    dxBarLargeButton24: TdxBarLargeButton;
    actCuentasContables: TAction;
    actCuentasInternas: TAction;
    dxRibbon1Tab5: TdxRibbonTab;
    dxBarManagerBar2: TdxBar;
    dxBarLargeButton25: TdxBarLargeButton;
    dxBarButton9: TdxBarButton;
    actCuentasXPagar: TAction;
    actDetalleMovimientosPersona: TAction;
    dxBarLargeButton26: TdxBarLargeButton;
    actCXCConceptos: TAction;
    dxBarLargeButton27: TdxBarLargeButton;
    actDispersion: TAction;
    actCuentasContablesNaturaleza: TAction;
    dxBarLargeButton28: TdxBarLargeButton;
    dxBarLargeButton29: TdxBarLargeButton;
    actMovimientosPeriodo: TAction;
    dxBarManagerBar3: TdxBar;
    dxBarLargeButton30: TdxBarLargeButton;
    actIntervaCXP: TAction;
    dxBarButton10: TdxBarButton;
    dxBarLargeButton31: TdxBarLargeButton;
    actCuentasXCobrar: TAction;
    dxtshConfiguracion: TdxRibbonBackstageViewTabSheet;
    dxtshUsuarios: TdxRibbonBackstageViewTabSheet;
    actNomina: TAction;
    dxBarLargeButton32: TdxBarLargeButton;
    procedure actCatalogoExecute(Sender: TObject);
    procedure actIntervaCXPExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  protected
    gModulo: T_dmStandar;
    gReport: T_dmReport;
    dmUsuarios: TdmUsuarios;
    procedure CreateModule(pModulo: Integer; pCaption: String); override;
    procedure ConfigControls; override;
    procedure DestroyModule; override;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses UbicacionesDM, BancosDM, MonedasDM, PuestosDM, PlazasTurnosDM,
  EsquemaPagosDM, FormulasDM, ReglasNegocioDM, EstablecimientosDM,
  CapacitacionDM, PersonasDM, MovimientosTiposDM, RolesDM, InstruccionesDM,
  IncidenciasDM, InstruccionesTiposDM, PeriodosDM, MovimientosDM,
  CuentasContablesDM, CuentasInternasDM, CuentasXPagarDM,
  CuentasXCobrarConceptosDM, MovimientosDDM, CuentasContablesNaturalezaDM,
  CuentasXCobrarDM, RptDetalleMovimientosPersonaDmod, RptMovimientosPeriodoDM;

procedure TfrmMain.actCatalogoExecute(Sender: TObject);
begin
  inherited;
  CreateModule(TAction(Sender).Tag, TAction(Sender).Caption);
end;

procedure TfrmMain.CreateModule(pModulo: Integer; pCaption: String);
begin
  inherited;
  DestroyModule;
  case pModulo of
    //Catalogos
    1: gModulo := TdmUbicaciones.Create(Self);
    2: gModulo := TdmBancos.Create(Self);
    3: gModulo := TdmMonedas.Create(Self);
    4: gModulo := TdmPlazasTurnos.Create(Self);
    5: gModulo := TdmPeriodos.Create(Self);
    6: gModulo := TdmFormulas.Create(Self);
    7: gModulo := TdmReglasNegocio.Create(Self);
    8: gModulo := TdmPuestos.Create(Self);
    9: gModulo := TdmEstablecimientos.Create(Self);
   10: gModulo := TdmCapacitacion.Create(Self);
   11: gModulo := TdmRoles.Create(Self);
   12: gModulo := TdmEsquemaPagos.Create(Self);
   13: gModulo := TdmMovimientosTipo.Create(Self);
   14: gModulo := TdmInstruccionesTipos.Create(Self);
   15: gModulo := TdmCuentasContables.Create(Self);
   16: gModulo := TdmCuentasInternas.Create(Self);
   17: gModulo := TdmCuentasXCobrarConceptos.Create(Self);
   18: gModulo := TdmCuentasContablesNaturaleza.Create(Self);
   20: begin
        gModulo := TdmPersona.Create(Self);
        TdmPersona(gModulo).Rol := rNone;
       end;
   21: begin
        gModulo := TdmPersona.Create(Self);
        TdmPersona(gModulo).Rol := rEmpleado;
       end;
   22: begin
        gModulo := TdmPersona.Create(Self);
        TdmPersona(gModulo).Rol := rCliente;
       end;
   23: begin
        gModulo := TdmPersona.Create(Self);
        TdmPersona(gModulo).Rol := rProveedor;
       end;
   24: begin
        gModulo := TdmPersona.Create(Self);
        TdmPersona(gModulo).Rol := rDuenoProceso;
       end;
   25: begin
        gModulo := TdmPersona.Create(Self);
        TdmPersona(gModulo).Rol := rOutSourcing;
       end;
   26: begin
        gModulo := TdmPersona.Create(Self);
        TdmPersona(gModulo).Rol := rComisionista;
       end;
   27: begin
        gModulo := TdmPersona.Create(Self);
        TdmPersona(gModulo).Rol := rSocio;
       end;
   30: gModulo := TdmInstrucciones.Create(Self);
   31: gModulo := TdmIncidencias.Create(Self);
   32: gModulo := TdmMovimientos.Create(Self);
   33: gModulo := TdmCuentasXPagar.Create(Self);
   34: gModulo := TdmCuentasXCobrar.Create(Self);
   40: gModulo := TdmUsuarios.Create(Self);
   51: begin
         gReport := TdmDetalleMovimientosPersona.Create(Self);
         gReport.Title := pCaption;
         gReport.Execute;
       end;
   52: begin
         gModulo := TdmMovimientosPeriodorpt.Create(Self);
         TdmMovimientosPeriodorpt(gModulo).Execute;
       end;
   53: begin
         gModulo := TdmMovimientosD.Create(Self);
         TdmMovimientosD(gModulo).TipoReporte:= trDispercion;
         TdmMovimientosD(gModulo).actSearch.Execute;
       end;
   54: begin
         gModulo := TdmMovimientosD.Create(Self);
         TdmMovimientosD(gModulo).TipoReporte:= trNomina;
         TdmMovimientosD(gModulo).actSearch.Execute;
       end;
  end;
  if Assigned(gModulo) then
  begin
    gModulo.ShowModule(pnlMain, pCaption);
    Caption := pCaption + strSeparador + strProductName + strSeparador + strFileDescription;
  end;
end;

procedure TfrmMain.actIntervaCXPExecute(Sender: TObject);
begin
  inherited;
  ExecuteUntilFinish('IntervaCXP.exe');
end;

procedure TfrmMain.ConfigControls;
begin
  inherited;
//  actCFDI.Enabled:= Conected and _dmConection.EnabledAction(actCFDI.Tag);
  actUbicaciones.Enabled        := Conected;
  actBancos.Enabled             := Conected;
  actMonedas.Enabled            := Conected;
  actPuestos.Enabled            := Conected;
  actCapacitaciones.Enabled     := Conected;
  actPlazasTurnos.Enabled       := Conected;
  actPeriodos.Enabled           := Conected;
  actFormulas.Enabled           := Conected;
  actReglasNegocio.Enabled      := Conected;
  actEstablecimientos.Enabled   := Conected;
  actRoles.Enabled              := Conected;
  actEsquemasPago.Enabled       := Conected;
  actMovimientosTipo.Enabled    := Conected;
  actPersonas.Enabled           := Conected;
  actEmpleados.Enabled          := Conected;
  actClientes.Enabled           := Conected;
  actProveedores.Enabled        := Conected;
  actDuenoProceso.Enabled       := Conected;
  actOutsourcing.Enabled        := Conected;
  actComisionistas.Enabled      := Conected;
  actSocios.Enabled             := Conected;
  actInstrucciones.Enabled      := Conected;
  actIncidencias.Enabled        := Conected;
  actInstruccionesTipos.Enabled := Conected;
  actMovimientos.Enabled        := Conected;
  actUsuarios.Enabled           := Conected;
  actCuentasContables.Enabled   := Conected;
  actCuentasInternas.Enabled    := Conected;
  actCXCConceptos.Enabled       := Conected;
  actMovimientosPeriodo.Enabled := Conected;
  actDispersion.Enabled := Conected;
  actNomina.Enabled := Conected;
  actDetalleMovimientosPersona.Enabled := Conected;
  actCuentasContablesNaturaleza.Enabled := Conected;
  actCuentasXPagar.Enabled     := Conected;
  actCuentasXCobrar.Enabled     := Conected;
end;

procedure TfrmMain.DestroyModule;
begin
  if Assigned(gModulo) then FreeAndNil(gModulo);
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  inherited;
  dmUsuarios:= TdmUsuarios.Create(nil);
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmUsuarios);
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  inherited;
  dmUsuarios.ShowModule(dxtshUsuarios, '');
end;

end.
