inherited frmImportXLS: TfrmImportXLS
  Caption = 'Instrucciones obtenidas'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
            Column = tvMasterValor
          end>
        OptionsView.GroupFooters = gfAlwaysVisible
        object tvMasterRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
        end
        object tvMasterIdMovimientoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdMovimientoTipo'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterEncontrada: TcxGridDBColumn
          DataBinding.FieldName = 'Encontrada'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Visible = False
          GroupIndex = 0
          Width = 60
        end
        object tvMasterNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
          Width = 304
        end
        object tvMasterMovimientoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'MovimientoTipo'
          Visible = False
          GroupIndex = 1
        end
        object tvMasterValor: TcxGridDBColumn
          DataBinding.FieldName = 'Valor'
          Width = 104
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmImportXLS.dxmdImportar
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
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
