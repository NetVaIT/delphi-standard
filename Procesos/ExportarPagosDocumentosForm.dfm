inherited frmExportarPagosDocumentos: TfrmExportarPagosDocumentos
  Caption = 'frmExportarPagosDocumentos'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdExportarPagoDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'IdExportarPagoDocumento'
          Visible = False
        end
        object tvMasterIdExportarPagoDocumentoEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdExportarPagoDocumentoEstatus'
          Visible = False
        end
        object tvMasterIdDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumento'
          Visible = False
        end
        object tvMasterIdPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPeriodo'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdCuentaBancaria: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaBancaria'
          Visible = False
        end
        object tvMasterNumero: TcxGridDBColumn
          DataBinding.FieldName = 'Numero'
          Visible = False
        end
        object tvMasterAnio: TcxGridDBColumn
          DataBinding.FieldName = 'Anio'
          Visible = False
        end
        object tvMasterPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'Periodo'
          Width = 304
        end
        object tvMasterEmisor: TcxGridDBColumn
          DataBinding.FieldName = 'Emisor'
          Width = 304
        end
        object tvMasterCuentaBancaria: TcxGridDBColumn
          DataBinding.FieldName = 'CuentaBancaria'
        end
        object tvMasterNombreArchivo: TcxGridDBColumn
          DataBinding.FieldName = 'NombreArchivo'
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 112
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterObservaciones: TcxGridDBColumn
          DataBinding.FieldName = 'Observaciones'
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmExportarPagosDocumentos.adodsMaster
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
