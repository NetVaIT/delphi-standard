inherited frmMovimientosTipos: TfrmMovimientosTipos
  Caption = 'Tipos de movimiento'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    ExplicitWidth = 651
    ExplicitHeight = 253
    inherited cxGrid: TcxGrid
      ExplicitWidth = 651
      ExplicitHeight = 253
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
        object tvMasterIdPeriodoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPeriodoTipo'
          Visible = False
        end
        object tvMasterIdMovimientoTipoAcumular: TcxGridDBColumn
          DataBinding.FieldName = 'IdMovimientoTipoAcumular'
          Visible = False
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
        object tvMasterPorcentajeCalculo: TcxGridDBColumn
          DataBinding.FieldName = 'PorcentajeCalculo'
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
        object tvMasterAgruparTipo: TcxGridDBColumn
          DataBinding.FieldName = 'AgruparTipo'
          Width = 84
        end
        object tvMasterBaseCalculo: TcxGridDBColumn
          DataBinding.FieldName = 'BaseCalculo'
          Width = 88
        end
        object tvMasterPeriodoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'PeriodoTipo'
          Width = 104
        end
        object tvMasterMovimientoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'MovimientoTipo'
          Width = 304
        end
        object tvMasterAplicarISR: TcxGridDBColumn
          DataBinding.FieldName = 'AplicarISR'
          Width = 68
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    ExplicitTop = 375
    ExplicitWidth = 651
  end
  inherited pnlDetail2: TPanel
    ExplicitTop = 331
    ExplicitWidth = 651
  end
  inherited pnlDetail1: TPanel
    ExplicitTop = 287
    ExplicitWidth = 651
  end
  inherited pnlClose: TPanel
    inherited btnClose: TButton
      ExplicitLeft = 566
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMovimientosTipo.adodsMaster
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
      BuiltInReportLink = True
    end
  end
end
