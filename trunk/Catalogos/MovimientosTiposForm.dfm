inherited frmMovimientosTipos: TfrmMovimientosTipos
  BorderStyle = bsToolWindow
  Caption = 'Tipos de Movimiento'
  ClientHeight = 433
  ClientWidth = 1513
  OnCreate = FormCreate
  ExplicitWidth = 1519
  ExplicitHeight = 462
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 348
    Width = 1513
    ExplicitTop = 348
    ExplicitWidth = 1519
  end
  inherited splDetail1: TSplitter
    Top = 260
    Width = 1513
    ExplicitTop = 260
    ExplicitWidth = 1519
  end
  inherited splDetail2: TSplitter
    Top = 304
    Width = 1513
    ExplicitTop = 304
    ExplicitWidth = 1519
  end
  inherited pnlMaster: TPanel
    Width = 1513
    Height = 229
    ExplicitWidth = 1513
    ExplicitHeight = 229
    inherited cxGrid: TcxGrid
      Width = 1513
      Height = 229
      ExplicitWidth = 1513
      ExplicitHeight = 229
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
        object tvMasterIdVariable: TcxGridDBColumn
          DataBinding.FieldName = 'IdVariable'
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
        object tvMasterProduceCXC: TcxGridDBColumn
          DataBinding.FieldName = 'ProduceCXC'
          Width = 67
        end
        object tvMasterProduceCXP: TcxGridDBColumn
          DataBinding.FieldName = 'ProduceCXP'
          Width = 66
        end
        object tvMasterVariable: TcxGridDBColumn
          DataBinding.FieldName = 'Variable'
        end
        object tvMasterAgruparTipo: TcxGridDBColumn
          DataBinding.FieldName = 'AgruparTipo'
          Width = 167
        end
        object tvMasterPerosnaRol: TcxGridDBColumn
          DataBinding.FieldName = 'PerosnaRol'
          Width = 304
        end
        object tvMasterAcumularMensualmente: TcxGridDBColumn
          DataBinding.FieldName = 'AcumularMensualmente'
          Width = 121
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
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 351
    Width = 1513
    ExplicitTop = 351
    ExplicitWidth = 1513
  end
  inherited pnlDetail2: TPanel
    Top = 307
    Width = 1513
    ExplicitTop = 307
    ExplicitWidth = 1513
  end
  inherited pnlDetail1: TPanel
    Top = 263
    Width = 1513
    ExplicitTop = 263
    ExplicitWidth = 1513
  end
  inherited pnlClose: TPanel
    Top = 392
    Width = 1513
    ExplicitTop = 392
    ExplicitWidth = 1513
    inherited btnClose: TButton
      Left = 1428
      ExplicitLeft = 1428
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
