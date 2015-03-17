inherited frmMain: TfrmMain
  Caption = 'frmMain'
  ClientWidth = 725
  ExplicitWidth = 741
  ExplicitHeight = 518
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Width = 725
    ExplicitWidth = 725
    inherited dxRibbon1Tab1: TdxRibbonTab
      Active = False
      Groups = <
        item
          ToolbarName = 'dxbArchivo'
        end
        item
          ToolbarName = 'dxBarManagerBar1'
        end>
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
    Width = 725
    ExplicitWidth = 725
  end
  inherited pnlMain: TPanel
    Width = 725
    ExplicitWidth = 725
  end
  inherited dxBarManager: TdxBarManager
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
      FloatClientWidth = 51
      FloatClientHeight = 76
      OneOnRow = False
    end
    object dxbEjemplo: TdxBar [2]
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 674
      FloatTop = 8
      FloatClientWidth = 119
      FloatClientHeight = 432
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
          ItemName = 'dxBarLargeButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton14'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManagerBar1: TdxBar [3]
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedLeft = 142
      DockedTop = 0
      FloatLeft = 759
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton15'
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
    object dxBarLargeButton12: TdxBarLargeButton
      Caption = 'Perfil de Puestos'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 9
      OnClick = actCatalogoExecute
    end
    object dxBarLargeButton13: TdxBarLargeButton
      Caption = 'Capacitaciones'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 45
      OnClick = actCatalogoExecute
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actPlazasTurnos
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actEsquemaPagos
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
    object dxBarLargeButton15: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
  end
  inherited cxSmallImages: TcxImageList
    FormatVersion = 1
  end
  inherited cxLargeImages: TcxImageList
    FormatVersion = 1
  end
  inherited ActionList: TActionList
    object actCatalogo: TAction
      Category = 'Catalogos'
      Caption = 'actCatalogo'
      OnExecute = actCatalogoExecute
    end
    object actPlazasTurnos: TAction
      Tag = 4
      Category = 'Catalogos'
      Caption = 'Plaza Turno'
      ImageIndex = 40
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
    object actPuestos: TAction
      Tag = 8
      Category = 'Catalogos'
      Caption = 'Puestos'
      ImageIndex = 38
      OnExecute = actCatalogoExecute
    end
    object actEsquemaPagos: TAction
      Tag = 5
      Category = 'Catalogos'
      Caption = 'Esquema de Pagos'
      ImageIndex = 30
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
    object actEstablecimientos: TAction
      Tag = 9
      Category = 'Catalogos'
      Caption = 'Establecimientos'
      ImageIndex = 23
      OnExecute = actCatalogoExecute
    end
  end
end
