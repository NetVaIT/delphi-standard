inherited frmCuentasXPagarPagos: TfrmCuentasXPagarPagos
  BorderStyle = bsToolWindow
  Caption = 'Pagos'
  ClientHeight = 428
  ClientWidth = 645
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 343
    Width = 645
    ExplicitTop = 343
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 255
    Width = 645
    ExplicitTop = 255
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 299
    Width = 645
    ExplicitTop = 299
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 224
    ExplicitWidth = 645
    ExplicitHeight = 224
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 224
      ExplicitWidth = 645
      ExplicitHeight = 224
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdCuentaXPagarPago: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXPagarPago'
          Visible = False
        end
        object tvMasterIdCuentaXPagar: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXPagar'
          Visible = False
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 104
        end
        object tvMasterReceptora: TcxGridDBColumn
          DataBinding.FieldName = 'Receptora'
          Width = 304
        end
        object tvMasterPagadora: TcxGridDBColumn
          Caption = 'Emisora'
          DataBinding.FieldName = 'Pagadora'
          Width = 304
        end
        object tvMasterFechaProgramada: TcxGridDBColumn
          DataBinding.FieldName = 'FechaProgramada'
        end
        object tvMasterMontoProgramado: TcxGridDBColumn
          DataBinding.FieldName = 'MontoProgramado'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 346
    Width = 645
    ExplicitTop = 346
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    Top = 302
    Width = 645
    ExplicitTop = 302
    ExplicitWidth = 645
  end
  inherited pnlDetail1: TPanel
    Top = 258
    Width = 645
    ExplicitTop = 258
    ExplicitWidth = 645
  end
  inherited pnlClose: TPanel
    Top = 387
    Width = 645
    ExplicitTop = 387
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
    inherited dxbNavigator: TdxBar
      DockedLeft = 128
    end
    inherited dxbEdit: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'Insert1'
        end
        item
          Visible = True
          ItemName = 'Edit1'
        end
        item
          Visible = True
          ItemName = 'Delete1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxbbEstatus'
        end>
    end
    inherited dxbTools: TdxBar
      DockedLeft = 256
    end
    object dxbbEstatus: TdxBarButton
      Action = dmCuentasXPagar.actCambiarEstatus
      Category = 0
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited PopupMenu: TdxBarPopupMenu
    ItemLinks = <
      item
        Visible = True
        ItemName = 'Insert1'
      end
      item
        Visible = True
        ItemName = 'Edit1'
      end
      item
        Visible = True
        ItemName = 'Delete1'
      end
      item
        Visible = True
        ItemName = 'dxbbEstatus'
      end
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarSeparator1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end>
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
