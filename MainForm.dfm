inherited frmMain: TfrmMain
  Caption = 'frmMain'
  ClientWidth = 1099
  ExplicitWidth = 1115
  ExplicitHeight = 519
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Width = 1099
    ExplicitWidth = 1099
    inherited dxRibbon1Tab1: TdxRibbonTab
      Active = False
      Index = 0
    end
    object dxRibbon1Tab2: TdxRibbonTab
      Active = True
      Caption = 'Catalogos'
      Groups = <
        item
          ToolbarName = 'dxbEjemplo'
        end
        item
          ToolbarName = 'dxbOrganizacion'
        end
        item
          ToolbarName = 'dxbEsquemas'
        end
        item
          ToolbarName = 'dxbPresonas'
        end>
      Index = 1
    end
    object dxRibbon1Tab3: TdxRibbonTab
      Caption = 'Procesos'
      Groups = <
        item
          ToolbarName = 'dxbPagos'
        end>
      Index = 2
    end
  end
  inherited dxRibbonBackstageView1: TdxRibbonBackstageView
    inherited dxRibbonBackstageViewTabSheet1: TdxRibbonBackstageViewTabSheet
      inherited cxLabel1: TcxLabel
        Style.IsFontAssigned = True
      end
    end
  end
  inherited dxRibbonStatusBar1: TdxRibbonStatusBar
    Width = 1099
    ExplicitWidth = 1099
  end
  inherited pnlMain: TPanel
    Width = 1099
    ExplicitWidth = 1099
  end
  inherited dxBarManager: TdxBarManager
    Left = 576
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManager1Bar1: TdxBar
      FloatClientWidth = 51
      FloatClientHeight = 22
    end
    inherited dxbArchivo: TdxBar
      DockedDockControl = nil
      DockedDockingStyle = dsNone
      FloatClientWidth = 51
      FloatClientHeight = 76
    end
    object dxbEjemplo: TdxBar [2]
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 674
      FloatTop = 8
      FloatClientWidth = 134
      FloatClientHeight = 162
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbOrganizacion: TdxBar [3]
      Caption = 'Organizacion'
      CaptionButtons = <>
      DockedLeft = 267
      DockedTop = 0
      FloatLeft = 759
      FloatTop = 8
      FloatClientWidth = 103
      FloatClientHeight = 76
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbPresonas: TdxBar [4]
      Caption = 'Personas'
      CaptionButtons = <>
      DockedLeft = 640
      DockedTop = 0
      FloatLeft = 764
      FloatTop = 8
      FloatClientWidth = 112
      FloatClientHeight = 540
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton15'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton16'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton17'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton18'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton19'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton20'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbEsquemas: TdxBar [5]
      Caption = 'Esquemas'
      CaptionButtons = <>
      DockedLeft = 448
      DockedTop = 0
      FloatLeft = 1038
      FloatTop = 8
      FloatClientWidth = 90
      FloatClientHeight = 54
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbPagos: TdxBar [6]
      Caption = 'Pagos'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1133
      FloatTop = 8
      FloatClientWidth = 86
      FloatClientHeight = 76
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actUbicaciones
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actBancos
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actMonedas
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Caption = 'Tipo Deduccion'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 19
      OnClick = actCatalogoExecute
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Action = actPuestos
      Category = 0
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Action = actFormulas
      Category = 0
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Action = actReglasNegocio
      Category = 0
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Action = actPersonas
      Category = 0
    end
    object dxBarLargeButton15: TdxBarLargeButton
      Action = actEmpleados
      Category = 0
    end
    object dxBarLargeButton16: TdxBarLargeButton
      Action = actClientes
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = actCapacitaciones
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actPlazasTurnos
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actEstablecimientos
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actRoles
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actEsquemasPago
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = actMovimientosTipo
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actProveedores
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = actOutsourcing
      Category = 0
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = actDuenoProceso
      Category = 0
    end
    object dxBarLargeButton13: TdxBarLargeButton
      Action = actInstrucciones
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = actIncidencias
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actMovimientos
      Category = 0
    end
    object dxBarLargeButton14: TdxBarLargeButton
      Caption = 'Documentos Adjuntos'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 33
      OnClick = actCatalogoExecute
    end
    object dxBarLargeButton17: TdxBarLargeButton
      Action = actEjecutivos
      Category = 0
    end
    object dxBarLargeButton18: TdxBarLargeButton
      Action = actSocios
      Category = 0
    end
    object dxBarLargeButton19: TdxBarLargeButton
      Action = actAsociados
      Category = 0
    end
    object dxBarLargeButton20: TdxBarLargeButton
      Action = actAccionistas
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = actIntruccionesTipos
      Category = 0
    end
  end
  inherited cxSmallImages: TcxImageList
    FormatVersion = 1
    DesignInfo = 11534924
  end
  inherited cxLargeImages: TcxImageList
    FormatVersion = 1
    DesignInfo = 12059116
  end
  inherited ActionList: TActionList
    object actCatalogo: TAction
      Category = 'Catalogos'
      Caption = 'actCatalogo'
      OnExecute = actCatalogoExecute
    end
    object actUbicaciones: TAction
      Tag = 1
      Category = 'Catalogos'
      Caption = 'Ubicaciones'
      ImageIndex = 16
      OnExecute = actCatalogoExecute
    end
    object actBancos: TAction
      Tag = 2
      Category = 'Catalogos'
      Caption = 'Bancos'
      ImageIndex = 37
      OnExecute = actCatalogoExecute
    end
    object actMonedas: TAction
      Tag = 3
      Category = 'Catalogos'
      Caption = 'Monedas'
      ImageIndex = 44
      OnExecute = actCatalogoExecute
    end
    object actFormulas: TAction
      Tag = 6
      Category = 'Catalogos'
      Caption = 'Formulas'
      ImageIndex = 36
      OnExecute = actCatalogoExecute
    end
    object actReglasNegocio: TAction
      Tag = 7
      Category = 'Catalogos'
      Caption = 'Reglas de Negocio'
      ImageIndex = 27
      OnExecute = actCatalogoExecute
    end
    object actPuestos: TAction
      Tag = 8
      Category = 'Catalogos'
      Caption = 'Puestos'
      ImageIndex = 38
      OnExecute = actCatalogoExecute
    end
    object actCapacitaciones: TAction
      Tag = 10
      Category = 'Catalogos'
      Caption = 'Capacitaciones'
      ImageIndex = 45
      OnExecute = actCatalogoExecute
    end
    object actPlazasTurnos: TAction
      Tag = 4
      Category = 'Catalogos'
      Caption = 'Turnos'
      ImageIndex = 40
      OnExecute = actCatalogoExecute
    end
    object actEstablecimientos: TAction
      Tag = 9
      Category = 'Catalogos'
      Caption = 'Establecimientos'
      ImageIndex = 23
      OnExecute = actCatalogoExecute
    end
    object actRoles: TAction
      Tag = 11
      Category = 'Catalogos'
      Caption = 'Roles'
      ImageIndex = 37
      OnExecute = actCatalogoExecute
    end
    object actEsquemasPago: TAction
      Tag = 12
      Category = 'Catalogos'
      Caption = 'Esquemas de Pago'
      ImageIndex = 30
      OnExecute = actCatalogoExecute
    end
    object actMovimientosTipo: TAction
      Tag = 13
      Category = 'Catalogos'
      Caption = 'Tipo de movimientos'
      ImageIndex = 7
      OnExecute = actCatalogoExecute
    end
    object actIntruccionesTipos: TAction
      Tag = 14
      Category = 'Catalogos'
      Caption = 'Tipo de intrucciones'
      ImageIndex = 5
      OnExecute = actCatalogoExecute
    end
    object actEmpleados: TAction
      Tag = 21
      Category = 'Catalogos'
      Caption = 'Empleados'
      ImageIndex = 20
      OnExecute = actCatalogoExecute
    end
    object actClientes: TAction
      Tag = 22
      Category = 'Catalogos'
      Caption = 'Clientes'
      ImageIndex = 15
      OnExecute = actCatalogoExecute
    end
    object actProveedores: TAction
      Tag = 23
      Category = 'Catalogos'
      Caption = 'Proveedores'
      ImageIndex = 21
      OnExecute = actCatalogoExecute
    end
    object actPersonas: TAction
      Tag = 20
      Category = 'Catalogos'
      Caption = 'Personas'
      ImageIndex = 32
      OnExecute = actCatalogoExecute
    end
    object actDuenoProceso: TAction
      Tag = 24
      Category = 'Catalogos'
      Caption = 'Due'#241'o de Proceso'
      ImageIndex = 12
      OnExecute = actCatalogoExecute
    end
    object actOutsourcing: TAction
      Tag = 25
      Category = 'Catalogos'
      Caption = 'Outsourcing'
      ImageIndex = 14
      OnExecute = actCatalogoExecute
    end
    object actInstrucciones: TAction
      Tag = 30
      Category = 'Procesos'
      Caption = 'Instrucciones'
      ImageIndex = 5
      OnExecute = actCatalogoExecute
    end
    object actIncidencias: TAction
      Tag = 31
      Category = 'Procesos'
      Caption = 'Incidencias'
      ImageIndex = 45
      OnExecute = actCatalogoExecute
    end
    object actMovimientos: TAction
      Tag = 32
      Category = 'Procesos'
      Caption = 'Movimientos'
      ImageIndex = 9
      OnExecute = actCatalogoExecute
    end
    object actEjecutivos: TAction
      Tag = 26
      Category = 'Catalogos'
      Caption = 'Ejecutivos'
      ImageIndex = 43
      OnExecute = actCatalogoExecute
    end
    object actSocios: TAction
      Tag = 27
      Category = 'Catalogos'
      Caption = 'Socios'
      ImageIndex = 33
      OnExecute = actCatalogoExecute
    end
    object actAsociados: TAction
      Tag = 28
      Category = 'Catalogos'
      Caption = 'Asociados'
      ImageIndex = 18
      OnExecute = actCatalogoExecute
    end
    object actAccionistas: TAction
      Tag = 29
      Category = 'Catalogos'
      Caption = 'Accionistas'
      ImageIndex = 34
      OnExecute = actCatalogoExecute
    end
  end
end
