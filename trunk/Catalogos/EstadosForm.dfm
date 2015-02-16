inherited frmEstados: TfrmEstados
  Caption = 'frmEstados'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    ExplicitHeight = 300
    inherited cxGrid: TcxGrid
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitHeight = 300
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdEstado: TcxGridDBColumn
          DataBinding.FieldName = 'IdEstado'
          Visible = False
        end
        object tvMasterIdPais: TcxGridDBColumn
          DataBinding.FieldName = 'IdPais'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 300
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    ExplicitLeft = 0
    ExplicitTop = 416
  end
  inherited pnlDetail2: TPanel
    ExplicitTop = 372
  end
  inherited pnlDetail1: TPanel
    ExplicitTop = 328
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
