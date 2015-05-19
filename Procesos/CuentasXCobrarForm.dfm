inherited frmCuentasXCobrarForm: TfrmCuentasXCobrarForm
  BorderStyle = bsToolWindow
  Caption = 'Cuentas X Cobrar'
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
  inherited DataSource: TDataSource
    DataSet = dmCuentasXCobrar.adodsMaster
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
