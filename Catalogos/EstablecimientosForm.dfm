inherited frmEstablecimientos: TfrmEstablecimientos
  Caption = 'Establecimientos'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 365
  end
  inherited splDetail1: TSplitter
    Top = 77
    ExplicitTop = 191
  end
  inherited splDetail2: TSplitter
    Top = 309
    ExplicitTop = 264
  end
  inherited pnlMaster: TPanel
    Height = 46
    ExplicitWidth = 651
    ExplicitHeight = 160
    inherited cxGrid: TcxGrid
      Height = 46
      ExplicitWidth = 651
      ExplicitHeight = 160
      inherited tvMaster: TcxGridDBTableView
        Preview.Column = tvMasterDomicilio
        Preview.Visible = True
        object tvMasterIdEstablecimiento: TcxGridDBColumn
          DataBinding.FieldName = 'IdEstablecimiento'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
        object tvMasterIdDomicilio: TcxGridDBColumn
          DataBinding.FieldName = 'IdDomicilio'
          Visible = False
        end
        object tvMasterDomicilio: TcxGridDBColumn
          DataBinding.FieldName = 'Domicilio'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 368
    Height = 48
    ExplicitTop = 368
    ExplicitWidth = 651
    ExplicitHeight = 48
  end
  inherited pnlDetail2: TPanel
    Top = 312
    Height = 53
    ExplicitTop = 312
    ExplicitWidth = 651
    ExplicitHeight = 53
  end
  inherited pnlDetail1: TPanel
    Top = 80
    Height = 229
    ExplicitTop = 80
    ExplicitWidth = 651
    ExplicitHeight = 229
  end
  inherited pnlClose: TPanel
    inherited btnClose: TButton
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
