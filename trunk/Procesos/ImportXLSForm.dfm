inherited frmImportXLS: TfrmImportXLS
  Caption = 'Instrucciones obtenidas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
        end
        object tvMasterIdMovimientoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdMovimientoTipo'
          Visible = False
        end
        object tvMasterNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
        end
        object tvMasterEncontrada: TcxGridDBColumn
          DataBinding.FieldName = 'Encontrada'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 60
        end
        object tvMasterValor: TcxGridDBColumn
          DataBinding.FieldName = 'Valor'
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterMovimientoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'MovimientoTipo'
          Visible = False
          GroupIndex = 0
        end
      end
    end
  end
  inherited pnlClose: TPanel
    inherited btnClose: TButton
      ExplicitLeft = 566
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu [8]
  end
  inherited cxImageList: TcxImageList [9]
    FormatVersion = 1
  end
  inherited ActionList: TActionList [10]
  end
  inherited DataSource: TDataSource [11]
    DataSet = dmImportXLS.dxmdImportar
  end
  inherited cxStyleRepository: TcxStyleRepository [12]
    PixelsPerInch = 96
  end
  inherited dxBarManager: TdxBarManager [13]
    DockControlHeights = (
      0
      0
      31
      0)
  end
end
