inherited frmIncidencias: TfrmIncidencias
  BorderStyle = bsToolWindow
  Caption = 'Incidencias'
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
    Align = alTop
    inherited cxGrid: TcxGrid
      Width = 645
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdIncidencia: TcxGridDBColumn
          DataBinding.FieldName = 'IdIncidencia'
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
        object tvMasterInstruccion: TcxGridDBColumn
          DataBinding.FieldName = 'Instruccion'
          Width = 304
        end
        object tvMasterPersona: TcxGridDBColumn
          DataBinding.FieldName = 'Persona'
          Width = 304
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
    Width = 645
    Height = 12
    Align = alClient
    Visible = True
  end
  inherited pnlClose: TPanel
    Top = 387
    Width = 645
    inherited btnClose: TButton
      Left = 560
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
