inherited frmMain: TfrmMain
  Caption = 'frmMain'
  ExplicitWidth = 656
  ExplicitHeight = 519
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Height = 159
    ColorSchemeName = 'Valentine'
    ExplicitHeight = 159
    inherited dxRibbon1Tab1: TdxRibbonTab
      Active = False
      Index = 0
    end
    object dxRibbon1Tab2: TdxRibbonTab
      Active = True
      Caption = 'Catalgos'
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
  inherited pnlMain: TPanel
    Top = 159
    Height = 298
    ExplicitTop = 159
    ExplicitHeight = 298
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
      FloatClientWidth = 80
      FloatClientHeight = 54
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
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
  end
end
