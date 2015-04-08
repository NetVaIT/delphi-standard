inherited frmEstablecimientos: TfrmEstablecimientos
  Caption = 'Establecimientos'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        Preview.Column = tvMasterDomicilio
        Preview.Visible = True
        object tvMasterIdEstablecimiento: TcxGridDBColumn
          DataBinding.FieldName = 'IdEstablecimiento'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
        object tvMasterIdDomicilio: TcxGridDBColumn
          DataBinding.FieldName = 'IdDomicilio'
          Visible = False
        end
        object tvMasterDomicilio: TcxGridDBColumn
          DataBinding.FieldName = 'Domicilio'
        end
      end
    end
  end
  inherited pnlClose: TPanel
    ExplicitTop = 432
  end
  inherited dxBarManager: TdxBarManager [8]
    DockControlHeights = (
      0
      0
      31
      0)
  end
  inherited cxStyleRepository: TcxStyleRepository [9]
    PixelsPerInch = 96
  end
  inherited DataSource: TDataSource [10]
  end
  inherited ActionList: TActionList [11]
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
