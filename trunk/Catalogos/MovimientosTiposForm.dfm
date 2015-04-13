inherited frmMovimientosTipos: TfrmMovimientosTipos
  Caption = 'Tipos de movimiento'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    ExplicitWidth = 645
    ExplicitHeight = 224
    inherited cxGrid: TcxGrid
      ExplicitWidth = 645
      ExplicitHeight = 224
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdMovimientoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdMovimientoTipo'
          Visible = False
        end
        object tvMasterIdMovimientoTipoCategoria: TcxGridDBColumn
          DataBinding.FieldName = 'IdMovimientoTipoCategoria'
          Visible = False
        end
        object tvMasterIdMovimientoTipoEfecto: TcxGridDBColumn
          DataBinding.FieldName = 'IdMovimientoTipoEfecto'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
        object tvMasterMovimientoTipoCategoria: TcxGridDBColumn
          DataBinding.FieldName = 'MovimientoTipoCategoria'
          Width = 304
        end
        object tvMasterMovimientoTipoEfecto: TcxGridDBColumn
          DataBinding.FieldName = 'MovimientoTipoEfecto'
          Width = 304
        end
        object tvMasterValorDefault: TcxGridDBColumn
          DataBinding.FieldName = 'ValorDefault'
        end
        object tvMasterProduceCXC: TcxGridDBColumn
          DataBinding.FieldName = 'ProduceCXC'
          Width = 67
        end
        object tvMasterProduceCXP: TcxGridDBColumn
          DataBinding.FieldName = 'ProduceCXP'
          Width = 66
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    ExplicitTop = 346
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    ExplicitTop = 302
    ExplicitWidth = 645
  end
  inherited pnlDetail1: TPanel
    ExplicitTop = 258
    ExplicitWidth = 645
  end
  inherited pnlClose: TPanel
    inherited btnClose: TButton
      ExplicitLeft = 560
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
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
