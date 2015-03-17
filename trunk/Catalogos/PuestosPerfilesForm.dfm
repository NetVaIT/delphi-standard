inherited frmPuestosPerfiles: TfrmPuestosPerfiles
  Caption = 'Perfiles de Puestos'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPuestoPerfil: TcxGridDBColumn
          DataBinding.FieldName = 'IdPuestoPerfil'
          Visible = False
        end
        object tvMasterIdPuesto: TcxGridDBColumn
          DataBinding.FieldName = 'IdPuesto'
          Visible = False
        end
        object tvMasterPuesto: TcxGridDBColumn
          DataBinding.FieldName = 'Puesto'
        end
        object tvMasterIdPuestoPerfilCategoria: TcxGridDBColumn
          DataBinding.FieldName = 'IdPuestoPerfilCategoria'
          Visible = False
        end
        object tvMasterPerfilCategoria: TcxGridDBColumn
          DataBinding.FieldName = 'PerfilCategoria'
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
        object tvMasterValor: TcxGridDBColumn
          DataBinding.FieldName = 'Valor'
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
