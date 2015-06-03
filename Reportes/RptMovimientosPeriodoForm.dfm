inherited frmMovimientosPeriodo: TfrmMovimientosPeriodo
  BorderStyle = bsToolWindow
  Caption = 'Movimientos por Periodo'
  ClientHeight = 433
  ClientWidth = 645
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 348
    Width = 645
    ExplicitTop = 348
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 260
    Width = 645
    ExplicitTop = 260
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 304
    Width = 645
    ExplicitTop = 304
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 229
    ExplicitWidth = 645
    ExplicitHeight = 229
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 229
      ExplicitWidth = 645
      ExplicitHeight = 229
      inherited tvMaster: TcxGridDBTableView
        DataController.DataSource = nil
      end
      object tvBandasGrupo: TcxGridDBBandedTableView [1]
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DataSource
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'General'
          end
          item
            Caption = 'Percepcion'
            Visible = False
          end
          item
            Caption = 'Deduccion'
            Visible = False
          end
          item
            Caption = 'Obligacion'
            Visible = False
          end
          item
            Caption = 'Prestacion'
            Visible = False
          end
          item
            Caption = 'Operacion'
            Visible = False
          end
          item
            Caption = 'Ingresos'
            Visible = False
          end
          item
            Caption = 'Entregas'
            Visible = False
          end
          item
            Caption = 'Descuentos'
            Visible = False
          end
          item
            Caption = 'Impuestos Retenidos'
            Visible = False
          end
          item
            Caption = 'Impuestos Trasladados'
            Visible = False
          end
          item
            Caption = 'Prestamos'
            Visible = False
          end>
      end
      inherited cxGridLevel1: TcxGridLevel
        GridView = tvBandasGrupo
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 351
    Width = 645
    ExplicitTop = 351
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    Top = 307
    Width = 645
    ExplicitTop = 307
    ExplicitWidth = 645
  end
  inherited pnlDetail1: TPanel
    Top = 263
    Width = 645
    ExplicitTop = 263
    ExplicitWidth = 645
  end
  inherited pnlClose: TPanel
    Top = 392
    Width = 645
    ExplicitTop = 392
    ExplicitWidth = 645
    inherited btnClose: TButton
      Left = 560
      ExplicitLeft = 560
    end
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
    object dxbtnReporte: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton8: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
