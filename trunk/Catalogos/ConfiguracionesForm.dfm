inherited frmConfiguraciones: TfrmConfiguraciones
  Caption = 'frmConfiguraciones'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPais: TcxGridDBColumn
          DataBinding.FieldName = 'IdPais'
          Visible = False
        end
        object tvMasterIdMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'IdMoneda'
          Visible = False
        end
        object tvMasterIdMovimientoTipoNomina: TcxGridDBColumn
          DataBinding.FieldName = 'IdMovimientoTipoNomina'
          Visible = False
        end
        object tvMasterIdMovimientoTipoRetencion: TcxGridDBColumn
          DataBinding.FieldName = 'IdMovimientoTipoRetencion'
          Visible = False
        end
        object tvMasterIdMovimientoTipoPrestamo: TcxGridDBColumn
          DataBinding.FieldName = 'IdMovimientoTipoPrestamo'
          Visible = False
        end
        object tvMasterIdMetodoPagoCuentasXPagar: TcxGridDBColumn
          DataBinding.FieldName = 'IdMetodoPagoCuentasXPagar'
          Visible = False
        end
        object tvMasterIdMetodoPagoFactura: TcxGridDBColumn
          DataBinding.FieldName = 'IdMetodoPagoFactura'
          Visible = False
        end
        object tvMasterPais: TcxGridDBColumn
          DataBinding.FieldName = 'Pais'
          Width = 250
        end
        object tvMasterMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'Moneda'
          Width = 250
        end
        object tvMasterMovimientoTipoNomina: TcxGridDBColumn
          DataBinding.FieldName = 'MovimientoTipoNomina'
          Width = 250
        end
        object tvMasterMovimientoTipoRetencion: TcxGridDBColumn
          DataBinding.FieldName = 'MovimientoTipoRetencion'
          Width = 250
        end
        object tvMasterMovimientoTipoPrestamo: TcxGridDBColumn
          DataBinding.FieldName = 'MovimientoTipoPrestamo'
          Width = 250
        end
        object tvMasterMetodoPagoCuentasXPagar: TcxGridDBColumn
          DataBinding.FieldName = 'MetodoPagoCuentasXPagar'
          Width = 250
        end
        object tvMasterMetodoPagoFactura: TcxGridDBColumn
          DataBinding.FieldName = 'MetodoPagoFactura'
          Width = 250
        end
        object tvMasterRutaBaseFacturas: TcxGridDBColumn
          Caption = 'Ruta Base para Facturas'
          DataBinding.FieldName = 'RutaBaseFacturas'
        end
      end
    end
  end
  inherited ActionList: TActionList
    inherited DatasetInsert: TDataSetInsert
      Visible = False
    end
    inherited DatasetDelete: TDataSetDelete
      Visible = False
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
