inherited frmPaises: TfrmPaises
  Caption = 'frmPaises'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail1: TSplitter
    Top = 125
  end
  inherited pnlMaster: TPanel
    Height = 100
    ExplicitHeight = 300
    inherited cxGrid: TcxGrid
      Height = 100
      ExplicitLeft = 16
      ExplicitTop = 48
      ExplicitHeight = 200
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPais: TcxGridDBColumn
          DataBinding.FieldName = 'IdPais'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
          Width = 66
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
      end
    end
  end
  inherited pnlDetail1: TPanel
    Top = 128
    Height = 241
    ExplicitTop = 128
    ExplicitHeight = 241
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      25
      0)
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
