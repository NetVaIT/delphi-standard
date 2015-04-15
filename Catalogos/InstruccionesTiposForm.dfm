inherited frmInstruccionesTipos: TfrmInstruccionesTipos
  Caption = 'Tipo de instrucciones'
  ClientHeight = 479
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 508
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 394
    ExplicitTop = 377
  end
  inherited splDetail1: TSplitter
    Top = 289
    Align = alTop
    Visible = True
    ExplicitTop = 289
  end
  inherited splDetail2: TSplitter
    Top = 350
    ExplicitTop = 333
  end
  inherited pnlMaster: TPanel
    Height = 258
    Align = alTop
    ExplicitHeight = 258
    inherited cxGrid: TcxGrid
      Height = 258
      ExplicitHeight = 258
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdInstruccionTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdInstruccionTipo'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
        object tvMasterNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
          Width = 304
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 397
    ExplicitTop = 380
  end
  inherited pnlDetail2: TPanel
    Top = 353
    ExplicitTop = 336
  end
  inherited pnlDetail1: TPanel
    Top = 292
    Height = 58
    Align = alClient
    Visible = True
    ExplicitTop = 292
  end
  inherited pnlClose: TPanel
    Top = 438
    ExplicitTop = 421
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
