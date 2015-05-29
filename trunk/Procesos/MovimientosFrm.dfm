inherited frmMovimientos: TfrmMovimientos
  BorderStyle = bsToolWindow
  Caption = 'Movimientos'
  ClientHeight = 428
  ClientWidth = 1085
  ExplicitWidth = 1091
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 343
    Width = 1085
    ExplicitTop = 343
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 255
    Width = 1085
    Align = alTop
    Visible = True
    ExplicitTop = 255
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 299
    Width = 1085
    ExplicitTop = 299
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 1085
    Height = 224
    Align = alTop
    ExplicitWidth = 1085
    ExplicitHeight = 224
    inherited cxGrid: TcxGrid
      Width = 1085
      Height = 224
      ExplicitWidth = 1085
      ExplicitHeight = 224
      inherited tvMaster: TcxGridDBTableView
        Styles.OnGetContentStyle = tvMasterStylesGetContentStyle
        object tvMasterIdMovimiento: TcxGridDBColumn
          DataBinding.FieldName = 'IdMovimiento'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPeriodo'
          Visible = False
        end
        object tvMasterPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'Periodo'
          Visible = False
          Width = 300
        end
        object tvMasterPersona: TcxGridDBColumn
          DataBinding.FieldName = 'Persona'
          SortIndex = 0
          SortOrder = soAscending
          Width = 259
        end
        object tvMasterSaldoAnterior: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoAnterior'
          Width = 104
        end
        object tvMasterIngresos: TcxGridDBColumn
          DataBinding.FieldName = 'Ingresos'
          Width = 104
        end
        object tvMasterEgresos: TcxGridDBColumn
          DataBinding.FieldName = 'Egresos'
          Width = 104
        end
        object tvMasterCosto: TcxGridDBColumn
          DataBinding.FieldName = 'Costo'
          Width = 104
        end
        object tvMasterCarga: TcxGridDBColumn
          DataBinding.FieldName = 'Carga'
          Width = 104
        end
        object tvMasterSaldoPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoPeriodo'
          Width = 104
        end
        object tvMasterSaldo: TcxGridDBColumn
          DataBinding.FieldName = 'Saldo'
          Styles.Content = cxsGray
          Width = 104
        end
        object tvMasterDescuentos: TcxGridDBColumn
          DataBinding.FieldName = 'Descuentos'
          Width = 104
        end
        object tvMasterBase: TcxGridDBColumn
          DataBinding.FieldName = 'Base'
          Styles.Content = cxsSilver
          Width = 104
        end
        object tvMasterEntregas: TcxGridDBColumn
          DataBinding.FieldName = 'Entregas'
          Width = 104
        end
        object tvMasterPercepciones: TcxGridDBColumn
          DataBinding.FieldName = 'Percepciones'
          Width = 104
        end
        object tvMasterDeducciones: TcxGridDBColumn
          DataBinding.FieldName = 'Deducciones'
          Width = 104
        end
        object tvMasterPrestaciones: TcxGridDBColumn
          DataBinding.FieldName = 'Prestaciones'
          Width = 104
        end
        object tvMasterObligaciones: TcxGridDBColumn
          DataBinding.FieldName = 'Obligaciones'
          Width = 104
        end
        object tvMasterOperaciones: TcxGridDBColumn
          DataBinding.FieldName = 'Operaciones'
          Width = 104
        end
        object tvMasterImpuestoTrasladado: TcxGridDBColumn
          DataBinding.FieldName = 'ImpuestoTrasladado'
          Width = 104
        end
        object tvMasterImpuestoRetenido: TcxGridDBColumn
          DataBinding.FieldName = 'ImpuestoRetenido'
          Width = 104
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 346
    Width = 1085
    ExplicitTop = 346
    ExplicitWidth = 1085
  end
  inherited pnlDetail2: TPanel
    Top = 302
    Width = 1085
    ExplicitTop = 302
    ExplicitWidth = 1085
  end
  inherited pnlDetail1: TPanel
    Top = 258
    Width = 1085
    Align = alClient
    Visible = True
    ExplicitTop = 258
    ExplicitWidth = 1085
  end
  inherited pnlClose: TPanel
    Top = 387
    Width = 1085
    ExplicitTop = 387
    ExplicitWidth = 1085
    inherited btnClose: TButton
      Left = 1000
      ExplicitLeft = 1000
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMovimientos.adodsMaster
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
    inherited dxbTools: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxbbPreview'
        end
        item
          Visible = True
          ItemName = 'dxbtnCalcularMovimientos'
        end
        item
          Visible = True
          ItemName = 'dxbtnEliminarMovimientos'
        end
        item
          Visible = True
          ItemName = 'dxbtnCalcularCXP'
        end
        item
          Visible = True
          ItemName = 'dxbtnEliminarCXP'
        end
        item
          Visible = True
          ItemName = 'dxbtnCalcularCXC'
        end
        item
          Visible = True
          ItemName = 'dxbtnEliminarCXC'
        end
        item
          Visible = True
          ItemName = 'dxbtnMostrarISR'
        end>
    end
    inherited dxbFilter: TdxBar
      DockedLeft = 453
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cxedtPeriodo'
        end
        item
          Visible = True
          ItemName = 'dxbtnSearch'
        end>
      Visible = True
    end
    object dxbtnCalcularMovimientos: TdxBarButton [16]
      Caption = 'Generar movimientos'
      Category = 0
      Hint = 'Genera movimientos del periodo actual'
      Visible = ivAlways
      ImageIndex = 10
    end
    object dxbtnCalcularCXP: TdxBarButton [17]
      Caption = 'Generar cuentas por pagar'
      Category = 0
      Hint = 'Genera cuentas por pagar del periodo'
      Visible = ivAlways
      ImageIndex = 10
    end
    object dxbtnEliminarMovimientos: TdxBarButton [18]
      Caption = 'Eliminar movimientos calulados'
      Category = 0
      Hint = 'Elimina movimientos calculados del periodo actual'
      Visible = ivAlways
      ImageIndex = 12
    end
    object dxbtnEliminarCXP: TdxBarButton [19]
      Caption = 'Eliminar cuentas por pagar'
      Category = 0
      Hint = 'Eliminar cuentas por pagar del periodo'
      Visible = ivAlways
      ImageIndex = 12
    end
    object cxedtPeriodo: TcxBarEditItem [20]
      Caption = 'Periodo'
      Category = 0
      Hint = 'Periodo'
      Visible = ivAlways
      ShowCaption = True
      Width = 304
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.KeyFieldNames = 'IdPeriodo'
      Properties.ListColumns = <
        item
          FieldName = 'Descripcion'
        end>
      Properties.ListSource = dsPeriodos
    end
    object dxbtnCalcularCXC: TdxBarButton
      Caption = 'Generar cuentas por cobrar'
      Category = 0
      Hint = 'Genera cuentas por cobrar del periodo'
      Visible = ivAlways
      ImageIndex = 10
    end
    object dxbtnEliminarCXC: TdxBarButton
      Caption = 'Eliminar cuentas por cobrar'
      Category = 0
      Hint = 'Eliminar cuentas por cobrar del periodo'
      Visible = ivAlways
      ImageIndex = 12
    end
    object dxbtnMostrarISR: TdxBarButton
      Caption = 'Mostrar ISR'
      Category = 0
      Visible = ivAlways
      ImageIndex = 11
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
    object cxsIntial: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
    object cxsRed: TcxStyle
      AssignedValues = [svColor]
      Color = 8421631
    end
    object cxsGreen: TcxStyle
      AssignedValues = [svColor]
      Color = clMoneyGreen
    end
    object cxsGray: TcxStyle
      AssignedValues = [svColor]
      Color = clGray
    end
    object cxsSilver: TcxStyle
      AssignedValues = [svColor]
      Color = clMedGray
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
  object dsPeriodos: TDataSource
    AutoEdit = False
    Left = 296
    Top = 95
  end
end
