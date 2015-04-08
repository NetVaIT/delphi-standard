inherited frmArchivosAdjuntos: TfrmArchivosAdjuntos
  Caption = 'frmArchivosAdjuntos'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdArchivoAdjunto: TcxGridDBColumn
          DataBinding.FieldName = 'IdArchivoAdjunto'
          Visible = False
        end
        object tvMasterIdDocumentoAdjunto: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumentoAdjunto'
          Visible = False
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 400
        end
        object tvMasterIdArchivo: TcxGridDBColumn
          DataBinding.FieldName = 'IdArchivo'
          Visible = False
        end
        object tvMasterArchivo: TcxGridDBColumn
          DataBinding.FieldName = 'Archivo'
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmArchivosAdjuntos.adodsMaster
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
