inherited frmMovimientos: TfrmMovimientos
  BorderStyle = bsToolWindow
  Caption = 'Movimientos'
  ClientHeight = 428
  ClientWidth = 645
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 343
    Width = 645
    ExplicitTop = 343
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 255
    Width = 645
    Align = alTop
    Visible = True
    ExplicitTop = 255
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 299
    Width = 645
    ExplicitTop = 299
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 224
    Align = alTop
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 224
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdMovimiento: TcxGridDBColumn
          DataBinding.FieldName = 'IdMovimiento'
          Visible = False
        end
        object tvMasterIdInstruccion: TcxGridDBColumn
          DataBinding.FieldName = 'IdInstruccion'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPeriodo'
          Visible = False
        end
        object tvMasterPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'Periodo'
          Visible = False
          Width = 300
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterPersona: TcxGridDBColumn
          DataBinding.FieldName = 'Persona'
          Width = 300
        end
        object tvMasterIngresos: TcxGridDBColumn
          DataBinding.FieldName = 'Ingresos'
        end
        object tvMasterDescuentos: TcxGridDBColumn
          DataBinding.FieldName = 'Descuentos'
        end
        object tvMasterNeto: TcxGridDBColumn
          DataBinding.FieldName = 'Neto'
        end
        object tvMasterPercepciones: TcxGridDBColumn
          DataBinding.FieldName = 'Percepciones'
        end
        object tvMasterDeducciones: TcxGridDBColumn
          DataBinding.FieldName = 'Deducciones'
        end
        object tvMasterPrestaciones: TcxGridDBColumn
          DataBinding.FieldName = 'Prestaciones'
        end
        object tvMasterObligaciones: TcxGridDBColumn
          DataBinding.FieldName = 'Obligaciones'
        end
        object tvMasterOperaciones: TcxGridDBColumn
          DataBinding.FieldName = 'Operaciones'
        end
        object tvMasterCosto: TcxGridDBColumn
          DataBinding.FieldName = 'Costo'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 346
    Width = 645
  end
  inherited pnlDetail2: TPanel
    Top = 302
    Width = 645
  end
  inherited pnlDetail1: TPanel
    Top = 258
    Width = 645
    Align = alClient
    Visible = True
  end
  inherited pnlClose: TPanel
    Top = 387
    Width = 645
    ExplicitTop = 387
    ExplicitWidth = 645
    inherited btnClose: TButton
      Left = 560
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMovimientos.adodsMaster
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
    inherited dxbTools: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxbbPreview'
        end
        item
          Visible = True
          ItemName = 'dxbbCalcular'
        end
        item
          Visible = True
          ItemName = 'dxbbCalcularCXP'
        end>
    end
    object dxbbCalcular: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxbbCalcularCXP: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
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
