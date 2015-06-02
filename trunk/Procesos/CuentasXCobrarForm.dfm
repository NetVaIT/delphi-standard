inherited frmCuentasXCobrarForm: TfrmCuentasXCobrarForm
  BorderStyle = bsToolWindow
  Caption = 'Cuentas por cobrar'
  ClientHeight = 474
  ClientWidth = 713
  ExplicitWidth = 719
  ExplicitHeight = 498
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 389
    Width = 713
    ExplicitTop = 348
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 301
    Width = 713
    ExplicitTop = 260
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 345
    Width = 713
    ExplicitTop = 304
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 713
    Height = 270
    ExplicitWidth = 713
    ExplicitHeight = 270
    inherited cxGrid: TcxGrid
      Width = 713
      Height = 270
      ExplicitWidth = 713
      ExplicitHeight = 270
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdCuentaXCobrar: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXCobrar'
          Visible = False
        end
        object tvMasterIdPersonaRol: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaRol'
          Visible = False
        end
        object tvMasterIdPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPeriodo'
          Visible = False
        end
        object tvMasterIdCuentaXCobrarEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXCobrarEstatus'
          Visible = False
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 100
        end
        object tvMasterPersona: TcxGridDBColumn
          DataBinding.FieldName = 'Persona'
          Width = 300
        end
        object tvMasterPersonaRelacionada: TcxGridDBColumn
          DataBinding.FieldName = 'PersonaRelacionada'
          Width = 300
        end
        object tvMasterConceptoGenerico: TcxGridDBColumn
          DataBinding.FieldName = 'ConceptoGenerico'
          Width = 300
        end
        object tvMasterSaldoPendiente: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoPendiente'
          Width = 120
        end
        object tvMasterSumaSubtotal: TcxGridDBColumn
          DataBinding.FieldName = 'SumaSubtotal'
          Width = 120
        end
        object tvMasterSumaTotal: TcxGridDBColumn
          DataBinding.FieldName = 'SumaTotal'
          Width = 120
        end
        object tvMasterSumaDescuentos: TcxGridDBColumn
          DataBinding.FieldName = 'SumaDescuentos'
          Width = 120
        end
        object tvMasterTotalIVATrasladado: TcxGridDBColumn
          DataBinding.FieldName = 'TotalIVATrasladado'
          Width = 120
        end
        object tvMasterTotalISRTrasladado: TcxGridDBColumn
          DataBinding.FieldName = 'TotalISRTrasladado'
          Width = 120
        end
        object tvMasterTotalIEPSTrasladado: TcxGridDBColumn
          DataBinding.FieldName = 'TotalIEPSTrasladado'
          Width = 120
        end
        object tvMasterTotalLocalesTrasladado: TcxGridDBColumn
          DataBinding.FieldName = 'TotalLocalesTrasladado'
          Width = 120
        end
        object tvMasterTotalIVARetenido: TcxGridDBColumn
          DataBinding.FieldName = 'TotalIVARetenido'
          Width = 120
        end
        object tvMasterTotalISRRetenido: TcxGridDBColumn
          DataBinding.FieldName = 'TotalISRRetenido'
          Width = 120
        end
        object tvMasterTotalLocalesRetenido: TcxGridDBColumn
          DataBinding.FieldName = 'TotalLocalesRetenido'
          Width = 120
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 392
    Width = 713
    ExplicitTop = 392
    ExplicitWidth = 713
  end
  inherited pnlDetail2: TPanel
    Top = 348
    Width = 713
    ExplicitTop = 348
    ExplicitWidth = 713
  end
  inherited pnlDetail1: TPanel
    Top = 304
    Width = 713
    ExplicitTop = 304
    ExplicitWidth = 713
  end
  inherited pnlClose: TPanel
    Top = 433
    Width = 713
    ExplicitTop = 433
    ExplicitWidth = 713
    inherited btnClose: TButton
      Left = 628
      ExplicitLeft = 628
    end
  end
  inherited ActionList: TActionList
    object actListaFacturar: TAction
      Category = 'File'
      Caption = 'actListaFacturar'
      Hint = 'Facturar'
      ImageIndex = 13
      OnExecute = actListaFacturarExecute
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmCuentasXCobrar.adodsMaster
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
          ItemName = 'dxBarButton8'
        end>
    end
    inherited dxbFilter: TdxBar
      DockedLeft = 315
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 298
          Visible = True
          ItemName = 'cxedtPeriodo'
        end
        item
          Visible = True
          ItemName = 'dxbtnSearch'
        end>
      Visible = True
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarLookupCombo1: TdxBarLookupCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDD000000000000000D0FFFF0FFFFFFFF0D0F77F0F777777F0D0CCCC0CCCCCC
        CC0D0C77C0C777777C0D0CCCC0CCCCCCCC0D0F77F0F777777F0D0FFFF0FFFFFF
        FF0D0F77F0F777777F0D0FFFF0FFFFFFFF0D000000000000000D0FFFCCCCFFF0
        DDDD0F777777FFF0DDDD0FFFCCCCFFF0DDDD000000000000DDDD}
      RowCount = 7
    end
    object dxBarContainerItem1: TdxBarContainerItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object cxedtPeriodo: TcxBarEditItem
      Caption = 'Periodo'
      Category = 0
      Hint = 'Periodo'
      Visible = ivAlways
      ShowCaption = True
      Width = 304
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ClearKey = 16460
      Properties.KeyFieldNames = 'IdPeriodo'
      Properties.ListColumns = <
        item
          FieldName = 'Descripcion'
        end>
      Properties.ListSource = dsPeriodos
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton8: TdxBarButton
      Action = actListaFacturar
      Category = 0
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
  object dsPeriodos: TDataSource
    AutoEdit = False
    DataSet = dmCuentasXCobrar.adodsPeriodo
    Left = 288
    Top = 87
  end
end
