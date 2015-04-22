inherited frmInstruccionesPeriodos: TfrmInstruccionesPeriodos
  Caption = 'frmInstruccionesPeriodos'
  ClientWidth = 630
  ExplicitWidth = 630
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 630
  end
  inherited splDetail1: TSplitter
    Width = 630
  end
  inherited splDetail2: TSplitter
    Width = 630
  end
  inherited pnlMaster: TPanel
    Width = 630
    ExplicitWidth = 651
    ExplicitHeight = 253
    inherited cxGrid: TcxGrid
      Width = 630
      ExplicitWidth = 651
      ExplicitHeight = 253
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdInstruccion: TcxGridDBColumn
          DataBinding.FieldName = 'IdInstruccion'
          Visible = False
        end
        object tvMasterIdPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPeriodo'
          Visible = False
        end
        object tvMasterPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'Periodo'
          Width = 230
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          Width = 80
        end
        object tvMasterInstruccion: TcxGridDBColumn
          DataBinding.FieldName = 'Instruccion'
          Width = 150
        end
        object tvMasterArchivo: TcxGridDBColumn
          DataBinding.FieldName = 'Archivo'
          Width = 150
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 630
    ExplicitTop = 375
    ExplicitWidth = 651
  end
  inherited pnlDetail2: TPanel
    Width = 630
    ExplicitTop = 331
    ExplicitWidth = 651
  end
  inherited pnlDetail1: TPanel
    Width = 630
    ExplicitTop = 287
    ExplicitWidth = 651
  end
  inherited pnlClose: TPanel
    Width = 630
    inherited btnClose: TButton
      Left = 545
      ExplicitLeft = 566
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmInstruccionesPeriodos.adodsMaster
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
