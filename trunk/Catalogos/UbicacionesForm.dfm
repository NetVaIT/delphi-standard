inherited frmUbicaciones: TfrmUbicaciones
  Caption = 'frmUbicaciones'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdUbicacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdUbicacion'
          Visible = False
        end
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
        object tvMasterIdUbicacionSuperior: TcxGridDBColumn
          DataBinding.FieldName = 'IdUbicacionSuperior'
          Visible = False
        end
        object tvMasterUbicacionSuperior: TcxGridDBColumn
          Caption = 'Ubicacion Superior'
          DataBinding.FieldName = 'UbicacionSuperior'
        end
      end
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
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
