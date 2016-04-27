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
        object tvMasterIdCuentaXPagarEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXPagarEstatus'
          Visible = False
        end
        object tvMasterIdPersonaRol: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaRol'
          Visible = False
        end
        object tvMasterIDMetodoPago: TcxGridDBColumn
          DataBinding.FieldName = 'IDMetodoPago'
          Visible = False
        end
        object tvMasterIdUsuarioPrograma: TcxGridDBColumn
          DataBinding.FieldName = 'IdUsuarioPrograma'
          Visible = False
        end
        object tvMasterIdUsuarioAutoriza: TcxGridDBColumn
          DataBinding.FieldName = 'IdUsuarioAutoriza'
          Visible = False
        end
        object tvMasterIdUsuarioPago: TcxGridDBColumn
          DataBinding.FieldName = 'IdUsuarioPago'
          Visible = False
        end
        object tvMasterIdUsuarioConcilia: TcxGridDBColumn
          DataBinding.FieldName = 'IdUsuarioConcilia'
          Visible = False
        end
        object tvMasterIdCuentaBancariaPagador: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaBancariaPagador'
          Visible = False
        end
        object tvMasterIdCuentaBancariaCobrador: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaBancariaCobrador'
          Visible = False
        end
        object tvMasterIdMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'IdMoneda'
          Visible = False
        end
        object tvMasterIdMonedaExtranjera: TcxGridDBColumn
          DataBinding.FieldName = 'IdMonedaExtranjera'
          Visible = False
        end
        object tvMasterIdEstadoCuenta: TcxGridDBColumn
          DataBinding.FieldName = 'IdEstadoCuenta'
          Visible = False
        end
        object tvMasterEstatusCXP: TcxGridDBColumn
          DataBinding.FieldName = 'EstatusCXP'
          Width = 100
        end
        object tvMasterCuentaBanPagador: TcxGridDBColumn
          DataBinding.FieldName = 'CuentaBanPagador'
        end
        object tvMasterCuentaBanCobrador: TcxGridDBColumn
          DataBinding.FieldName = 'CuentaBanCobrador'
          Visible = False
        end
        object tvMasterCuentaBanCompleta2: TcxGridDBColumn
          DataBinding.FieldName = 'CuentaBanCobrador2'
        end
        object tvMasterUsuarioPrograma: TcxGridDBColumn
          DataBinding.FieldName = 'UsuarioPrograma'
        end
        object tvMasterFechaProgramacion: TcxGridDBColumn
          DataBinding.FieldName = 'FechaProgramacion'
          Visible = False
        end
        object tvMasterFechaProgramada: TcxGridDBColumn
          DataBinding.FieldName = 'FechaProgramada'
        end
        object tvMasterMontoProgramado: TcxGridDBColumn
          DataBinding.FieldName = 'MontoProgramado'
        end
        object tvMasterUsuarioAutoriza: TcxGridDBColumn
          DataBinding.FieldName = 'UsuarioAutoriza'
        end
        object tvMasterFechaAutorizacion: TcxGridDBColumn
          DataBinding.FieldName = 'FechaAutorizacion'
          Visible = False
        end
        object tvMasterFechaAutorizaPago: TcxGridDBColumn
          DataBinding.FieldName = 'FechaAutorizaPago'
        end
        object tvMasterMontoAutorizado: TcxGridDBColumn
          DataBinding.FieldName = 'MontoAutorizado'
        end
        object tvMasterFechaPago: TcxGridDBColumn
          DataBinding.FieldName = 'FechaPago'
        end
        object tvMasterUsuarioPaga: TcxGridDBColumn
          DataBinding.FieldName = 'UsuarioPaga'
        end
        object tvMasterMontoPagado: TcxGridDBColumn
          DataBinding.FieldName = 'MontoPagado'
        end
        object tvMasterFechaConcilia: TcxGridDBColumn
          DataBinding.FieldName = 'FechaConcilia'
          Visible = False
        end
        object tvMasterUsuarioConcilia: TcxGridDBColumn
          DataBinding.FieldName = 'UsuarioConcilia'
          Visible = False
        end
        object tvMasterTipoCambio: TcxGridDBColumn
          DataBinding.FieldName = 'TipoCambio'
          Visible = False
        end
        object tvMasterTotalMonedaExtranjera: TcxGridDBColumn
          DataBinding.FieldName = 'TotalMonedaExtranjera'
          Visible = False
        end
        object tvMasterTotalMonedaNacional: TcxGridDBColumn
          DataBinding.FieldName = 'TotalMonedaNacional'
          Visible = False
        end
        object tvMasterMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'Moneda'
          Visible = False
        end
        object tvMasterMonedaExt: TcxGridDBColumn
          DataBinding.FieldName = 'MonedaExt'
          Visible = False
        end
        object tvMasterMetodoPago: TcxGridDBColumn
          DataBinding.FieldName = 'MetodoPago'
          Visible = False
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
  inherited DataSource: TDataSource
    OnDataChange = DataSourceDataChange
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
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Grid = nil
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
      ReportDocument.CreationDate = 42487.440430486110000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
