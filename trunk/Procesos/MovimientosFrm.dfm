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
  end
  inherited splDetail1: TSplitter
    Top = 255
    Width = 645
    Align = alTop
    Visible = True
  end
  inherited splDetail2: TSplitter
    Top = 299
    Width = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 224
    Align = alTop
    ExplicitWidth = 651
    ExplicitHeight = 253
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 224
      ExplicitWidth = 651
      ExplicitHeight = 253
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
        object tvMasterIdPersonaRelacionada: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaRelacionada'
          Visible = False
        end
        object tvMasterIdPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPeriodo'
          Visible = False
        end
        object tvMasterPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'Periodo'
          Width = 300
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterConcepto: TcxGridDBColumn
          DataBinding.FieldName = 'Concepto'
          Width = 300
        end
        object tvMasterPersona: TcxGridDBColumn
          DataBinding.FieldName = 'Persona'
          Width = 300
        end
        object tvMasterPersonaRelacionada: TcxGridDBColumn
          DataBinding.FieldName = 'PersonaRelacionada'
          Width = 300
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 346
    Width = 645
    ExplicitTop = 375
    ExplicitWidth = 651
  end
  inherited pnlDetail2: TPanel
    Top = 302
    Width = 645
    ExplicitTop = 331
    ExplicitWidth = 651
  end
  inherited pnlDetail1: TPanel
    Top = 258
    Width = 645
    Align = alClient
    Visible = True
    ExplicitTop = 287
    ExplicitWidth = 651
  end
  inherited pnlClose: TPanel
    Top = 387
    Width = 645
    inherited btnClose: TButton
      Left = 560
      ExplicitLeft = 566
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
