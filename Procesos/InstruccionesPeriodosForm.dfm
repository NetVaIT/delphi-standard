inherited frmInstruccionesPeriodos: TfrmInstruccionesPeriodos
  Caption = 'frmInstruccionesPeriodos'
  ClientWidth = 630
  ExplicitWidth = 630
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 630
    ExplicitWidth = 630
  end
  inherited splDetail1: TSplitter
    Width = 630
    ExplicitWidth = 630
  end
  inherited splDetail2: TSplitter
    Width = 630
    ExplicitWidth = 630
  end
  inherited pnlMaster: TPanel
    Width = 630
    ExplicitWidth = 630
    inherited cxGrid: TcxGrid
      Width = 630
      ExplicitWidth = 630
      inherited tvMaster: TcxGridDBTableView
        Styles.OnGetContentStyle = tvMasterStylesGetContentStyle
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
        object tvMasterIncidenciasGeneradas: TcxGridDBColumn
          DataBinding.FieldName = 'IncidenciasGeneradas'
          Visible = False
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 630
    ExplicitWidth = 630
  end
  inherited pnlDetail2: TPanel
    Width = 630
    ExplicitWidth = 630
  end
  inherited pnlDetail1: TPanel
    Width = 630
    ExplicitWidth = 630
  end
  inherited pnlClose: TPanel
    Width = 630
    ExplicitWidth = 630
    inherited btnClose: TButton
      Left = 545
      ExplicitLeft = 545
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
