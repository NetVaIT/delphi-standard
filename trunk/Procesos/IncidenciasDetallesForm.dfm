inherited frmIncidenciasDetalles: TfrmIncidenciasDetalles
  BorderStyle = bsToolWindow
  Caption = 'Detalles'
  ClientHeight = 428
  ClientWidth = 645
  OnCreate = FormCreate
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
        object tvMasterIdIncidenciaDetalle: TcxGridDBColumn
          DataBinding.FieldName = 'IdIncidenciaDetalle'
          Visible = False
        end
        object tvMasterIdIncidencia: TcxGridDBColumn
          DataBinding.FieldName = 'IdIncidencia'
          Visible = False
        end
        object tvMasterIdIncidenciaTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdIncidenciaTipo'
          Visible = False
        end
        object tvMasterIdMovimientoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdMovimientoTipo'
          Visible = False
        end
        object tvMasterIdMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'IdMoneda'
          Visible = False
        end
        object tvMasterIdIncidenciaEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdIncidenciaEstatus'
          Visible = False
        end
        object tvMasterIdUsuarioRegistro: TcxGridDBColumn
          DataBinding.FieldName = 'IdUsuarioRegistro'
          Visible = False
        end
        object tvMasterMovimientoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'MovimientoTipo'
        end
        object tvMasterImporte: TcxGridDBColumn
          DataBinding.FieldName = 'Importe'
        end
        object tvMasterMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'Moneda'
          Width = 150
        end
        object tvMasterIncidenciaTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IncidenciaTipo'
          Width = 150
        end
        object tvMasterIncidenciaEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IncidenciaEstatus'
          Width = 150
        end
        object tvMasterFechaRegistro: TcxGridDBColumn
          Caption = 'Fecha de registro'
          DataBinding.FieldName = 'FechaRegistro'
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
      BuiltInReportLink = True
    end
  end
end
