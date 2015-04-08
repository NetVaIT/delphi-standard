inherited frmIncidenciasDetalles: TfrmIncidenciasDetalles
  Caption = 'Incidencias Detalles'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdIncidenciaDetalle: TcxGridDBColumn
          DataBinding.FieldName = 'IdIncidenciaDetalle'
          Visible = False
        end
        object tvMasterIdIncidencia: TcxGridDBColumn
          DataBinding.FieldName = 'IdIncidencia'
          Visible = False
        end
        object tvMasterIdMovimientoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdMovimientoTipo'
          Visible = False
        end
        object tvMasterIdIncidenciaEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdIncidenciaEstatus'
          Visible = False
        end
        object tvMasterMovimientoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'MovimientoTipo'
        end
        object tvMasterImporte: TcxGridDBColumn
          DataBinding.FieldName = 'Importe'
        end
        object tvMasterIncidenciaEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IncidenciaEstatus'
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
end
