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
    ExplicitWidth = 645
    ExplicitHeight = 224
    inherited cxGrid: TcxGrid
      Width = 1085
      Height = 224
      ExplicitWidth = 645
      ExplicitHeight = 224
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdMovimiento: TcxGridDBColumn
          DataBinding.FieldName = 'IdMovimiento'
          Visible = False
        end
        object tvMasterIdInstruccion: TcxGridDBColumn
          DataBinding.FieldName = 'IdInstruccion'
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
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          Width = 70
        end
        object tvMasterPersona: TcxGridDBColumn
          DataBinding.FieldName = 'Persona'
          Width = 259
        end
        object tvMasterIngresos: TcxGridDBColumn
          DataBinding.FieldName = 'Ingresos'
          Width = 104
        end
        object tvMasterDescuentos: TcxGridDBColumn
          DataBinding.FieldName = 'Descuentos'
          Width = 104
        end
        object tvMasterBase: TcxGridDBColumn
          DataBinding.FieldName = 'Base'
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
        object tvMasterCosto: TcxGridDBColumn
          DataBinding.FieldName = 'Costo'
          Width = 104
        end
        object tvMasterCarga: TcxGridDBColumn
          DataBinding.FieldName = 'Carga'
          Width = 104
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 346
    Width = 1085
    ExplicitTop = 346
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    Top = 302
    Width = 1085
    ExplicitTop = 302
    ExplicitWidth = 645
  end
  inherited pnlDetail1: TPanel
    Top = 258
    Width = 1085
    Align = alClient
    Visible = True
    ExplicitTop = 258
    ExplicitWidth = 645
  end
  inherited pnlClose: TPanel
    Top = 387
    Width = 1085
    ExplicitTop = 387
    ExplicitWidth = 645
    inherited btnClose: TButton
      Left = 1000
      ExplicitLeft = 560
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
          ItemName = 'dxbbCalcular'
        end
        item
          Visible = True
          ItemName = 'dxbbCalcularCXP'
        end>
    end
    inherited dxbFilter: TdxBar
      DockedLeft = 434
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
    object dxbbCalcular: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxbbCalcularCXP: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object cxedtPeriodo: TcxBarEditItem
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
    Left = 296
    Top = 95
  end
end
