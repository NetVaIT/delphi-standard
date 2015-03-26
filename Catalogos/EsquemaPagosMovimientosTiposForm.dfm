inherited frmEsquemaPagosMovimientosTipos: TfrmEsquemaPagosMovimientosTipos
  Caption = 'frmEsquemaPagosMovimientosTipos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    ExplicitWidth = 600
    inherited Splitter: TSplitter
      ExplicitLeft = 311
    end
    inherited pnlAviable: TPanel
      inherited cxGridAviable: TcxGrid
        ExplicitWidth = 277
        inherited tvAviable: TcxGridDBTableView
          object tvAviableIdMovimientoTipo: TcxGridDBColumn
            DataBinding.FieldName = 'IdMovimientoTipo'
            Visible = False
          end
          object tvAviableDescripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
          end
        end
      end
      inherited bcdTool: TdxBarDockControl
        ExplicitLeft = 278
      end
    end
    inherited pnlAssigned: TPanel
      ExplicitLeft = 314
      ExplicitWidth = 285
      inherited cxGridAssigned: TcxGrid
        ExplicitWidth = 283
        inherited tvAssigned: TcxGridDBTableView
          object tvAssignedIdMovimientoTipo: TcxGridDBColumn
            DataBinding.FieldName = 'IdMovimientoTipo'
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
