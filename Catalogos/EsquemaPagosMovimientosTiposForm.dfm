inherited frmEsquemaPagosMovimientosTipos: TfrmEsquemaPagosMovimientosTipos
  Caption = 'Tipos de Movimiento'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited Splitter: TSplitter
      ExplicitLeft = 311
    end
    inherited pnlAviable: TPanel
      inherited cxGridAvailable: TcxGrid
        inherited tvAvailable: TcxGridDBTableView
          object tvAviableIdMovimientoTipo: TcxGridDBColumn
            DataBinding.FieldName = 'IdMovimientoTipo'
            Visible = False
          end
          object tvAviableIdentificador: TcxGridDBColumn
            DataBinding.FieldName = 'Identificador'
            Visible = False
          end
          object tvAviableDescripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
          end
          object tvAviableCategoria: TcxGridDBColumn
            DataBinding.FieldName = 'Categoria'
            Visible = False
          end
          object tvAviableEfecto: TcxGridDBColumn
            DataBinding.FieldName = 'Efecto'
            Visible = False
          end
          object tvAviableValorDefault: TcxGridDBColumn
            DataBinding.FieldName = 'ValorDefault'
            Visible = False
          end
          object tvAviableProduceCXC: TcxGridDBColumn
            DataBinding.FieldName = 'ProduceCXC'
            Visible = False
          end
          object tvAviableProduceCXP: TcxGridDBColumn
            DataBinding.FieldName = 'ProduceCXP'
            Visible = False
          end
        end
      end
    end
    inherited pnlAssigned: TPanel
      inherited cxGridAssigned: TcxGrid
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
    inherited pnlClose: TPanel
      ExplicitLeft = 1
      ExplicitTop = 296
      ExplicitWidth = 865
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
