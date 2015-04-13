inherited frmDocumentosAdjuntos: TfrmDocumentosAdjuntos
  Caption = 'frmArchivosAdjuntos'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    ExplicitHeight = 253
    inherited cxGrid: TcxGrid
      ExplicitHeight = 253
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdDocumentoAdjunto: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumentoAdjunto'
          Visible = False
        end
        object tvMasterIdDocumentoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumentoTipo'
          Visible = False
        end
        object tvMasterIdDocumentoClase: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumentoClase'
          Visible = False
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 400
        end
        object tvMasterNombreArchivo: TcxGridDBColumn
          DataBinding.FieldName = 'NombreArchivo'
          Width = 300
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
  inherited pnlDetail3: TPanel
    ExplicitTop = 375
  end
  inherited pnlDetail2: TPanel
    ExplicitTop = 331
  end
  inherited pnlDetail1: TPanel
    ExplicitTop = 287
  end
  inherited pnlClose: TPanel
    inherited btnClose: TButton
      ExplicitLeft = 566
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmDocumentosAdjuntos.adodsMaster
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
