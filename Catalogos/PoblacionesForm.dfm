inherited frmPoblaciones: TfrmPoblaciones
  BorderStyle = bsToolWindow
  Caption = 'Poblaciones'
  ClientHeight = 428
  ClientWidth = 645
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 384
    Width = 645
    ExplicitTop = 384
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 296
    Width = 645
    ExplicitTop = 296
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 340
    Width = 645
    ExplicitTop = 340
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 265
    ExplicitWidth = 645
    ExplicitHeight = 265
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 265
      ExplicitWidth = 645
      ExplicitHeight = 265
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPoblacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdPoblacion'
          Visible = False
        end
        object tvMasterIdMunicipio: TcxGridDBColumn
          DataBinding.FieldName = 'IdMunicipio'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 387
    Width = 645
    ExplicitTop = 387
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    Top = 343
    Width = 645
    ExplicitTop = 343
    ExplicitWidth = 645
  end
  inherited pnlDetail1: TPanel
    Top = 299
    Width = 645
    ExplicitTop = 299
    ExplicitWidth = 645
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
end
