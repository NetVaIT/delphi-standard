inherited frmMovimientosTipos: TfrmMovimientosTipos
  Caption = 'Tipos de movimiento'
  ClientWidth = 1519
  OnCreate = FormCreate
  ExplicitWidth = 1519
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 1519
  end
  inherited splDetail1: TSplitter
    Width = 1519
  end
  inherited splDetail2: TSplitter
    Width = 1519
  end
  inherited pnlMaster: TPanel
    Width = 1519
    ExplicitWidth = 651
    ExplicitHeight = 253
    inherited cxGrid: TcxGrid
      Width = 1519
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
        object tvMasterIdMovimientoTipoAcumular: TcxGridDBColumn
          DataBinding.FieldName = 'IdMovimientoTipoAcumular'
          Visible = False
        end
        object tvMasterIdPersonaRol: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaRol'
          Visible = False
        end
        object tvMasterIdImpuesto: TcxGridDBColumn
          DataBinding.FieldName = 'IdImpuesto'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
          Width = 77
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 482
        end
        object tvMasterMovimientoTipoCategoria: TcxGridDBColumn
          DataBinding.FieldName = 'MovimientoTipoCategoria'
          Width = 63
        end
        object tvMasterMovimientoTipoEfecto: TcxGridDBColumn
          DataBinding.FieldName = 'MovimientoTipoEfecto'
          Width = 277
        end
        object tvMasterDescuento: TcxGridDBColumn
          DataBinding.FieldName = 'Descuento'
          Width = 56
        end
        object tvMasterValorDefault: TcxGridDBColumn
          DataBinding.FieldName = 'ValorDefault'
          Width = 67
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
        object tvMasterMovimientoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'MovimientoTipo'
          Width = 304
        end
        object tvMasterAplicarISR: TcxGridDBColumn
          DataBinding.FieldName = 'AplicarISR'
          Width = 99
        end
        object tvMasterBaseCalculo: TcxGridDBColumn
          DataBinding.FieldName = 'BaseCalculo'
          Width = 88
        end
        object tvMasterPorcentajeCalculo: TcxGridDBColumn
          DataBinding.FieldName = 'PorcentajeCalculo'
        end
        object tvMasterAcumularMensualmente: TcxGridDBColumn
          DataBinding.FieldName = 'AcumularMensualmente'
          Width = 132
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 1519
    ExplicitTop = 375
    ExplicitWidth = 651
  end
  inherited pnlDetail2: TPanel
    Width = 1519
    ExplicitTop = 331
    ExplicitWidth = 651
  end
  inherited pnlDetail1: TPanel
    Width = 1519
    ExplicitTop = 287
    ExplicitWidth = 651
  end
  inherited pnlClose: TPanel
    Width = 1519
    inherited btnClose: TButton
      Left = 1434
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
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
