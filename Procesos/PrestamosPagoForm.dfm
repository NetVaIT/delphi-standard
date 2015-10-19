inherited frmPrestamosPago: TfrmPrestamosPago
  BorderStyle = bsToolWindow
  Caption = 'Detalle de prestamos'
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
    ExplicitWidth = 645
    ExplicitHeight = 224
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 224
      ExplicitWidth = 645
      ExplicitHeight = 224
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPrestamoPago: TcxGridDBColumn
          DataBinding.FieldName = 'IdPrestamoPago'
          Visible = False
        end
        object tvMasterIdPrestamo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPrestamo'
          Visible = False
        end
        object tvMasterIdMovimiento: TcxGridDBColumn
          DataBinding.FieldName = 'IdMovimiento'
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
        object tvMasterIdMovimientoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdMovimientoTipo'
          Visible = False
        end
        object tvMasterPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'Periodo'
          Visible = False
          Width = 200
        end
        object tvMasterPersona: TcxGridDBColumn
          DataBinding.FieldName = 'Persona'
          Width = 200
        end
        object tvMasterMovimientoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'MovimientoTipo'
          Width = 120
        end
        object tvMasterImporteCalculo: TcxGridDBColumn
          DataBinding.FieldName = 'ImporteCalculo'
        end
        object tvMasterPorcentaje: TcxGridDBColumn
          DataBinding.FieldName = 'Porcentaje'
          Width = 60
        end
        object tvMasterImportePeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'ImportePeriodo'
          Width = 116
        end
        object tvMasterImportePago: TcxGridDBColumn
          DataBinding.FieldName = 'ImportePago'
          Visible = False
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 346
    Width = 645
    ExplicitTop = 346
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    Top = 302
    Width = 645
    ExplicitTop = 302
    ExplicitWidth = 645
  end
  inherited pnlDetail1: TPanel
    Top = 258
    Width = 645
    ExplicitTop = 258
    ExplicitWidth = 645
  end
  inherited pnlClose: TPanel
    Top = 387
    Width = 645
    ExplicitTop = 387
    ExplicitWidth = 645
    inherited btnClose: TButton
      Left = 560
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
