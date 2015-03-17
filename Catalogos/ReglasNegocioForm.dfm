inherited frmReglasNegocio: TfrmReglasNegocio
  Caption = 'Reglas de Negocio'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdReglaNegocio: TcxGridDBColumn
          DataBinding.FieldName = 'IdReglaNegocio'
          Visible = False
        end
        object tvMasterIdOutSourcingPersonal: TcxGridDBColumn
          DataBinding.FieldName = 'IdOutSourcingPersonal'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
        object tvMasterIdReglaNegocioTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdReglaNegocioTipo'
          Visible = False
        end
        object tvMasterReglaNegocioTipo: TcxGridDBColumn
          DataBinding.FieldName = 'ReglaNegocioTipo'
        end
      end
    end
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
end
