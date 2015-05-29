inherited frmISRProvisionales: TfrmISRProvisionales
  Caption = 'ISR provisionales'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdISRProvisional: TcxGridDBColumn
          DataBinding.FieldName = 'IdISRProvisional'
          Visible = False
        end
        object tvMasterIdMovimiento: TcxGridDBColumn
          DataBinding.FieldName = 'IdMovimiento'
          Visible = False
        end
        object tvMasterIdMovimientoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdMovimientoTipo'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPeriodo'
          Visible = False
        end
        object tvMasterAnio: TcxGridDBColumn
          DataBinding.FieldName = 'Anio'
        end
        object tvMasterMes: TcxGridDBColumn
          DataBinding.FieldName = 'Mes'
        end
        object tvMasterNumero: TcxGridDBColumn
          DataBinding.FieldName = 'Numero'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 304
        end
        object tvMasterISRPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'ISRPeriodo'
        end
        object tvMasterBruto: TcxGridDBColumn
          DataBinding.FieldName = 'Bruto'
        end
        object tvMasterBrutoAcumulado: TcxGridDBColumn
          DataBinding.FieldName = 'BrutoAcumulado'
        end
        object tvMasterISR: TcxGridDBColumn
          DataBinding.FieldName = 'ISR'
        end
        object tvMasterISRAcumulado: TcxGridDBColumn
          DataBinding.FieldName = 'ISRAcumulado'
        end
        object tvMasterNeto: TcxGridDBColumn
          DataBinding.FieldName = 'Neto'
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmISRProvisionales.adodsMaster
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
