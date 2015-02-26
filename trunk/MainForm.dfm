inherited frmMain: TfrmMain
  Caption = 'frmMain'
  ExplicitWidth = 656
  ExplicitHeight = 518
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
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
      FloatClientWidth = 132
      FloatClientHeight = 378
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
          ItemName = 'dxBarLargeButton11'
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
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actRegimenFiscal
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actTipoDocumento
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
    object dxBarLargeButton9: TdxBarLargeButton
      Action = actEmailTipo
      Category = 0
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Action = actTelefonoTipo
      Category = 0
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Action = actUnidadNegocio
      Category = 0
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
    object actRegimenFiscal: TAction
      Tag = 4
      Category = 'Catalogos'
      Caption = 'Regimen Fiscal'
      ImageIndex = 18
      OnExecute = actCatalogoExecute
    end
    object actTipoDocumento: TAction
      Tag = 5
      Category = 'Catalogos'
      Caption = 'Tipos de Documentos'
      ImageIndex = 41
      OnExecute = actCatalogoExecute
    end
    object actEmailTipo: TAction
      Tag = 6
      Category = 'Catalogos'
      Caption = 'Email Tipo'
      ImageIndex = 22
      OnExecute = actCatalogoExecute
    end
    object actTelefonoTipo: TAction
      Tag = 7
      Category = 'Catalogos'
      Caption = 'Telefono Tipo'
      ImageIndex = 36
      OnExecute = actCatalogoExecute
    end
    object actUnidadNegocio: TAction
      Tag = 8
      Category = 'Catalogos'
      Caption = 'Unidad de Negocio'
      ImageIndex = 38
      OnExecute = actCatalogoExecute
    end
  end
end
