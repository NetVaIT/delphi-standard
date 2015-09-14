inherited frmMovimientosD: TfrmMovimientosD
  Caption = 'frmMovimientosD'
  ClientHeight = 462
  ClientWidth = 826
  ExplicitWidth = 826
  ExplicitHeight = 462
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 377
    Width = 826
    ExplicitTop = 377
    ExplicitWidth = 654
  end
  inherited splDetail1: TSplitter
    Top = 289
    Width = 826
    ExplicitTop = 289
    ExplicitWidth = 654
  end
  inherited splDetail2: TSplitter
    Top = 333
    Width = 826
    ExplicitTop = 333
    ExplicitWidth = 654
  end
  inherited pnlMaster: TPanel
    Width = 826
    Height = 258
    ExplicitWidth = 826
    ExplicitHeight = 258
    inherited cxGrid: TcxGrid
      Width = 826
      Height = 258
      ExplicitWidth = 826
      ExplicitHeight = 258
      inherited tvMaster: TcxGridDBTableView
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
            Column = tvMasterImporte
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = tvMasterImporte
          end>
        OptionsView.Footer = True
        OptionsView.GroupByBox = True
        OptionsView.GroupFooters = gfAlwaysVisible
        object tvMasterIdMovimientoDetalle: TcxGridDBColumn
          DataBinding.FieldName = 'IdMovimientoDetalle'
          Visible = False
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterPersona: TcxGridDBColumn
          DataBinding.FieldName = 'Persona'
          Width = 304
        end
        object tvMasterPersonaRelacionada: TcxGridDBColumn
          DataBinding.FieldName = 'PersonaRelacionada'
          Visible = False
          GroupIndex = 0
          Width = 304
        end
        object tvMasterRolClase: TcxGridDBColumn
          DataBinding.FieldName = 'RolClase'
          Width = 100
        end
        object tvMasterTipo: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
          Visible = False
          GroupIndex = 3
          Width = 232
        end
        object tvMasterCategoria: TcxGridDBColumn
          DataBinding.FieldName = 'Categoria'
          Visible = False
          GroupIndex = 1
          Width = 63
        end
        object tvMasterEfecto: TcxGridDBColumn
          DataBinding.FieldName = 'Efecto'
          Visible = False
          Width = 250
        end
        object tvMasterImporte: TcxGridDBColumn
          DataBinding.FieldName = 'Importe'
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 52
        end
        object tvMasterAcumalarA: TcxGridDBColumn
          DataBinding.FieldName = 'AcumalarA'
          Visible = False
          GroupIndex = 2
          Width = 304
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 380
    Width = 826
    ExplicitTop = 380
    ExplicitWidth = 826
  end
  inherited pnlDetail2: TPanel
    Top = 336
    Width = 826
    ExplicitTop = 336
    ExplicitWidth = 826
  end
  inherited pnlDetail1: TPanel
    Top = 292
    Width = 826
    ExplicitTop = 292
    ExplicitWidth = 826
  end
  inherited pnlClose: TPanel
    Top = 421
    Width = 826
    ExplicitTop = 421
    ExplicitWidth = 826
    inherited btnClose: TButton
      Left = 741
      ExplicitLeft = 741
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMovimientosD.adodsMaster
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
    inherited dxbFilter: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cxedtPeriodo'
        end
        item
          Visible = True
          ItemName = 'cxedtClase'
        end
        item
          Visible = True
          ItemName = 'dxbtnSearch'
        end>
      Visible = True
    end
    object cxedtPeriodo: TcxBarEditItem
      Caption = 'Periodo'
      Category = 0
      Hint = 'Periodo'
      Visible = ivAlways
      ShowCaption = True
      Width = 303
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.GridMode = True
      Properties.KeyFieldNames = 'IdPeriodo'
      Properties.ListColumns = <
        item
          FieldName = 'Descripcion'
        end>
      Properties.ListSource = dsPeriodos
    end
    object cxedtClase: TcxBarEditItem
      Caption = 'Clase'
      Category = 0
      Hint = 'Clase'
      Visible = ivNever
      ShowCaption = True
      PropertiesClassName = 'TcxComboBoxProperties'
      Properties.Items.Strings = (
        'Ambos'
        'Real'
        'Virtual')
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
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
  object dsPeriodos: TDataSource
    AutoEdit = False
    Left = 296
    Top = 95
  end
end
