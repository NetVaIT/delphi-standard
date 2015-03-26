inherited frmRolesEsquemasPagos: TfrmRolesEsquemasPagos
  Caption = 'frmRolesEsquemasPagos'
  ExplicitWidth = 800
  ExplicitHeight = 338
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited pnlAviable: TPanel
      inherited cxGridAviable: TcxGrid
        ExplicitWidth = 380
        inherited tvAviable: TcxGridDBTableView
          object tvAviableIdEsquemaPago: TcxGridDBColumn
            DataBinding.FieldName = 'IdEsquemaPago'
            Visible = False
          end
          object tvAviableDescripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
          end
        end
      end
    end
    inherited pnlAssigned: TPanel
      ExplicitLeft = 417
      ExplicitWidth = 382
      inherited cxGridAssigned: TcxGrid
        ExplicitWidth = 380
        inherited tvAssigned: TcxGridDBTableView
          object tvAssignedIdEsquemaPago: TcxGridDBColumn
            DataBinding.FieldName = 'IdEsquemaPago'
            Visible = False
          end
          object tvAssignedDescripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
          end
        end
      end
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
  end
end
