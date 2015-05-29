inherited frmMovimientosTipos: TfrmMovimientosTipos
  BorderStyle = bsToolWindow
  Caption = 'Tipos de Movimiento'
  ClientHeight = 433
  ClientWidth = 782
  OnCreate = FormCreate
  ExplicitWidth = 788
  ExplicitHeight = 462
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 348
    Width = 782
    ExplicitTop = 348
    ExplicitWidth = 1519
  end
  inherited splDetail1: TSplitter
    Top = 260
    Width = 782
    ExplicitTop = 260
    ExplicitWidth = 1519
  end
  inherited splDetail2: TSplitter
    Top = 304
    Width = 782
    ExplicitTop = 304
    ExplicitWidth = 1519
  end
  inherited pnlMaster: TPanel
    Width = 782
    Height = 229
    ExplicitWidth = 1513
    ExplicitHeight = 229
    inherited cxGrid: TcxGrid
      Width = 782
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
        object tvMasterIdPersonaRolPagadora1: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaRolPagadora1'
          Visible = False
        end
        object tvMasterIdpersonaRolPagadora2: TcxGridDBColumn
          DataBinding.FieldName = 'IdpersonaRolPagadora2'
          Visible = False
        end
        object tvMasterVariable: TcxGridDBColumn
          DataBinding.FieldName = 'Variable'
        end
        object tvMasterAplicarISRProvisional: TcxGridDBColumn
          DataBinding.FieldName = 'AplicarISRProvisional'
          Width = 99
        end
        object tvMasterAgruparTipo: TcxGridDBColumn
          DataBinding.FieldName = 'AgruparTipo'
          Width = 167
        end
        object tvMasterMovimientoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'MovimientoTipo'
          Width = 304
        end
        object tvMasterPagadora1: TcxGridDBColumn
          DataBinding.FieldName = 'Pagadora1'
          Width = 304
        end
        object tvMasterPorcentajePagadora1: TcxGridDBColumn
          DataBinding.FieldName = 'PorcentajePagadora1'
        end
        object tvMasterPagadora2: TcxGridDBColumn
          DataBinding.FieldName = 'Pagadora2'
          Width = 304
        end
        object tvMasterPorcentajePagadora2: TcxGridDBColumn
          DataBinding.FieldName = 'PorcentajePagadora2'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 351
    Width = 782
    ExplicitTop = 351
    ExplicitWidth = 1513
  end
  inherited pnlDetail2: TPanel
    Top = 307
    Width = 782
    ExplicitTop = 307
    ExplicitWidth = 1513
  end
  inherited pnlDetail1: TPanel
    Top = 263
    Width = 782
    ExplicitTop = 263
    ExplicitWidth = 1513
  end
  inherited pnlClose: TPanel
    Top = 392
    Width = 782
    ExplicitTop = 392
    ExplicitWidth = 1513
    inherited btnClose: TButton
      Left = 697
      ExplicitLeft = 1428
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
      BuiltInReportLink = True
    end
  end
end
