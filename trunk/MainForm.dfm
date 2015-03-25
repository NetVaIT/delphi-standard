inherited frmMain: TfrmMain
  Caption = 'frmMain'
  ClientWidth = 1004
  ExplicitWidth = 1020
  ExplicitHeight = 518
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Width = 1004
    ExplicitWidth = 1004
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
          ToolbarName = 'dxBarManagerBar1'
        end
        item
        end
        item
        end
        item
          ToolbarName = 'dxBarManagerBar2'
        end
        item
          ToolbarName = 'dxBarManagerBar3'
        end>
      Index = 1
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
    Width = 1004
    ExplicitWidth = 1004
  end
  inherited pnlMain: TPanel
    Width = 1004
    ExplicitWidth = 1004
  end
  inherited cxLargeImages: TcxImageList [4]
    FormatVersion = 1
  end
  inherited cxSmallImages: TcxImageList [5]
    FormatVersion = 1
  end
  inherited dxBarManager: TdxBarManager [6]
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
      FloatClientWidth = 119
      FloatClientHeight = 216
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
    object dxBarManagerBar1: TdxBar [3]
      Caption = 'Organizacion'
      CaptionButtons = <>
      DockedLeft = 338
      DockedTop = 0
      FloatLeft = 759
      FloatTop = 8
      FloatClientWidth = 105
      FloatClientHeight = 216
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton14'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManagerBar2: TdxBar [4]
      Caption = 'Personas'
      CaptionButtons = <>
      DockedLeft = 652
      DockedTop = 0
      FloatLeft = 764
      FloatTop = 8
      FloatClientWidth = 81
      FloatClientHeight = 162
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
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManagerBar3: TdxBar [5]
      Caption = 'Pagos'
      CaptionButtons = <>
      DockedLeft = 752
      DockedTop = 0
      FloatLeft = 1038
      FloatTop = 8
      FloatClientWidth = 129
      FloatClientHeight = 108
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton17'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actUbicaciones
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Bancos'
      Category = 0
      Hint = 'Bancos'
      Visible = ivAlways
      LargeImageIndex = 37
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
    object dxBarLargeButton7: TdxBarLargeButton
      Caption = 'Tipo Obligacion'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 15
      OnClick = actCatalogoExecute
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Caption = 'Tipo Percepcion'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 33
      OnClick = actCatalogoExecute
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Action = actPuestos
      Category = 0
    end
    object dxBarLargeButton13: TdxBarLargeButton
      Action = actCapacitaciones
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actPlazasTurnos
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actEsquemasPago
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
    object dxBarLargeButton14: TdxBarLargeButton
      Action = actEstablecimientos
      Category = 0
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Action = actEmpleados
      Category = 0
    end
    object dxBarLargeButton15: TdxBarLargeButton
      Action = actClientes
      Category = 0
    end
    object dxBarLargeButton16: TdxBarLargeButton
      Action = actProveedores
      Category = 0
    end
    object dxBarLargeButton17: TdxBarLargeButton
      Action = actMovimientosTipo
      Category = 0
    end
  end
  inherited dxSkinController: TdxSkinController [7]
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
      Caption = 'Plaza Turno'
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
    object actEsquemasPago: TAction
      Tag = 5
      Category = 'Catalogos'
      Caption = 'Esquemas de Pago'
      ImageIndex = 30
      OnExecute = actCatalogoExecute
    end
    object actMovimientosTipo: TAction
      Tag = 11
      Category = 'Catalogos'
      Caption = 'Tipo de movimientos'
      ImageIndex = 7
      OnExecute = actCatalogoExecute
    end
    object actEmpleados: TAction
      Tag = 20
      Category = 'Catalogos'
      Caption = 'Empleados'
      ImageIndex = 20
      OnExecute = actCatalogoExecute
    end
    object actClientes: TAction
      Tag = 21
      Category = 'Catalogos'
      Caption = 'Clientes'
      ImageIndex = 15
      OnExecute = actCatalogoExecute
    end
    object actProveedores: TAction
      Tag = 22
      Category = 'Catalogos'
      Caption = 'Proveedores'
      ImageIndex = 21
      OnExecute = actCatalogoExecute
    end
  end
end
