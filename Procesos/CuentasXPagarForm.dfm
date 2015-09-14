inherited frmCuentasXPagar: TfrmCuentasXPagar
  BorderStyle = bsToolWindow
  Caption = 'Cuentas por pagar'
  ClientHeight = 634
  ClientWidth = 755
  ExplicitWidth = 761
  ExplicitHeight = 663
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 549
    Width = 755
    ExplicitTop = 343
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 255
    Width = 755
    Align = alTop
    Visible = True
    ExplicitTop = 255
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 483
    Width = 755
    Align = alTop
    Visible = True
    ExplicitTop = 299
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 755
    Height = 224
    Align = alTop
    ExplicitWidth = 755
    ExplicitHeight = 224
    inherited cxGrid: TcxGrid
      Width = 755
      Height = 224
      ExplicitWidth = 755
      ExplicitHeight = 224
      inherited tvMaster: TcxGridDBTableView
        DataController.KeyFieldNames = 'IdCuentaXPagar'
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
                Column = tvMasterPersonaRelacionada
              end>
            SummaryItems = <
              item
                Kind = skSum
                FieldName = 'SaldoPendiente'
                Column = tvMasterPersonaRelacionada
                DisplayText = 'Debe'
              end>
          end>
        object tvMasterIdCuentaXPagar: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXPagar'
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
        object tvMasterIdCuentaXPagarEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXPagarEstatus'
          Visible = False
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 104
        end
        object tvMasterPersona: TcxGridDBColumn
          DataBinding.FieldName = 'Persona'
          SortIndex = 0
          SortOrder = soAscending
          Width = 304
        end
        object tvMasterPersonaRelacionada: TcxGridDBColumn
          DataBinding.FieldName = 'PersonaRelacionada'
          Width = 304
        end
        object tvMasterConceptoGenerico: TcxGridDBColumn
          DataBinding.FieldName = 'ConceptoGenerico'
          Width = 304
        end
        object tvMasterSaldoPendiente: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoPendiente'
        end
        object tvMasterFlujoEfectivo: TcxGridDBColumn
          DataBinding.FieldName = 'FlujoEfectivo'
        end
        object tvMasterSumaSubtotal: TcxGridDBColumn
          DataBinding.FieldName = 'SumaSubtotal'
        end
        object tvMasterSumaTotal: TcxGridDBColumn
          DataBinding.FieldName = 'SumaTotal'
        end
        object tvMasterSumaDescuentos: TcxGridDBColumn
          DataBinding.FieldName = 'SumaDescuentos'
          Visible = False
        end
        object tvMasterTotalIVATrasladado: TcxGridDBColumn
          DataBinding.FieldName = 'TotalIVATrasladado'
        end
        object tvMasterTotalISRTrasladado: TcxGridDBColumn
          DataBinding.FieldName = 'TotalISRTrasladado'
          Visible = False
        end
        object tvMasterTotalIEPSTrasladado: TcxGridDBColumn
          DataBinding.FieldName = 'TotalIEPSTrasladado'
          Visible = False
        end
        object tvMasterTotalLocalesTrasladado: TcxGridDBColumn
          DataBinding.FieldName = 'TotalLocalesTrasladado'
          Visible = False
        end
        object tvMasterTotalIVARetenido: TcxGridDBColumn
          DataBinding.FieldName = 'TotalIVARetenido'
        end
        object tvMasterTotalISRRetenido: TcxGridDBColumn
          DataBinding.FieldName = 'TotalISRRetenido'
        end
        object tvMasterTotalLocalesRetenido: TcxGridDBColumn
          DataBinding.FieldName = 'TotalLocalesRetenido'
          Visible = False
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 552
    Width = 755
    ExplicitTop = 552
    ExplicitWidth = 755
  end
  inherited pnlDetail2: TPanel
    Top = 486
    Width = 755
    Height = 63
    Align = alClient
    ExplicitTop = 486
    ExplicitWidth = 755
    ExplicitHeight = 63
  end
  inherited pnlDetail1: TPanel
    Top = 258
    Width = 755
    Height = 225
    Align = alTop
    ExplicitTop = 258
    ExplicitWidth = 755
    ExplicitHeight = 225
  end
  inherited pnlClose: TPanel
    Top = 593
    Width = 755
    ExplicitTop = 593
    ExplicitWidth = 755
    inherited btnClose: TButton
      Left = 670
      ExplicitLeft = 670
    end
  end
  inherited ActionList: TActionList
    object actExportarPagos: TAction
      Hint = 'Exportar Pagos'
      ImageIndex = 13
      OnExecute = actExportarPagosExecute
    end
    object actBajarPagos: TAction
      Hint = 'Descargar Pagos'
      ImageIndex = 13
      OnExecute = actBajarPagosExecute
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmCuentasXPagar.adodsMaster
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
          ItemName = 'dxbbCalcularCXP'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end>
    end
    inherited dxbFilter: TdxBar
      DockedLeft = 361
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
    object dxbbCalcularCXP: TdxBarButton
      Category = 0
      Visible = ivAlways
      ImageIndex = 13
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
    object dxBarButton8: TdxBarButton
      Action = actExportarPagos
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = actBajarPagos
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
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
  object dsPeriodos: TDataSource
    AutoEdit = False
    DataSet = dmCuentasXPagar.adodsPeriodo
    Left = 296
    Top = 95
  end
end
