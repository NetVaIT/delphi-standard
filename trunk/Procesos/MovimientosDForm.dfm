inherited frmMovimientosD: TfrmMovimientosD
  Caption = 'frmMovimientosD'
  ClientHeight = 462
  ClientWidth = 704
  ExplicitWidth = 704
  ExplicitHeight = 462
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 377
    Width = 704
    ExplicitTop = 377
    ExplicitWidth = 654
  end
  inherited splDetail1: TSplitter
    Top = 289
    Width = 704
    ExplicitTop = 289
    ExplicitWidth = 654
  end
  inherited splDetail2: TSplitter
    Top = 333
    Width = 704
    ExplicitTop = 333
    ExplicitWidth = 654
  end
  inherited pnlMaster: TPanel
    Width = 704
    Height = 258
    ExplicitWidth = 704
    ExplicitHeight = 258
    inherited cxGrid: TcxGrid
      Width = 704
      Height = 258
      ExplicitWidth = 704
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
        object tvMasterPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'Periodo'
          Visible = False
          Width = 231
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
        object tvMasterTipo: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
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
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 380
    Width = 704
    ExplicitTop = 380
    ExplicitWidth = 704
  end
  inherited pnlDetail2: TPanel
    Top = 336
    Width = 704
    ExplicitTop = 336
    ExplicitWidth = 704
  end
  inherited pnlDetail1: TPanel
    Top = 292
    Width = 704
    ExplicitTop = 292
    ExplicitWidth = 704
  end
  inherited pnlClose: TPanel
    Top = 421
    Width = 704
    ExplicitTop = 421
    ExplicitWidth = 704
    inherited btnClose: TButton
      Left = 619
      ExplicitLeft = 619
    end
  end
  inherited cxStyleRepository: TcxStyleRepository [8]
    PixelsPerInch = 96
  end
  inherited ActionList: TActionList [9]
  end
  inherited DataSource: TDataSource [10]
  end
  inherited dxBarManager: TdxBarManager [11]
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
