inherited frmEsquemaPagos: TfrmEsquemaPagos
  Caption = 'Esquemas de pago'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail1: TSplitter
    Align = alTop
    Visible = True
  end
  inherited pnlMaster: TPanel
    Align = alTop
    ExplicitWidth = 645
    ExplicitHeight = 224
    inherited cxGrid: TcxGrid
      ExplicitWidth = 645
      ExplicitHeight = 224
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdEsquemaPago: TcxGridDBColumn
          DataBinding.FieldName = 'IdEsquemaPago'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
        object tvMasterIdEsquemaPagoEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdEsquemaPagoEstatus'
          Visible = False
        end
        object tvMasterEsquemaPagoEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'EsquemaPagoEstatus'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    ExplicitTop = 346
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    ExplicitTop = 302
    ExplicitWidth = 645
  end
  inherited pnlDetail1: TPanel
    Align = alClient
    Visible = True
    ExplicitTop = 258
    ExplicitWidth = 645
  end
  inherited pnlClose: TPanel
    inherited btnClose: TButton
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
