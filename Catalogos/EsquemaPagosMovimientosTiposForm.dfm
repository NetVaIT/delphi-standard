inherited frmEsquemaPagosMovimientosTipos: TfrmEsquemaPagosMovimientosTipos
  Caption = 'frmEsquemaPagosMovimientosTipos'
  ClientWidth = 600
  ExplicitWidth = 600
  ExplicitHeight = 338
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    Width = 600
    inherited Splitter: TSplitter
      Left = 311
    end
    inherited pnlAviable: TPanel
      Width = 310
      ExplicitWidth = 310
      inherited cxGridAviable: TcxGrid
        Width = 277
        ExplicitWidth = 300
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
      inherited bcdTool: TdxBarDockControl
        Left = 278
      end
    end
    inherited pnlAssigned: TPanel
      Left = 314
      Width = 285
      ExplicitLeft = 417
      ExplicitWidth = 382
      inherited cxGridAssigned: TcxGrid
        Width = 283
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
