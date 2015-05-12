inherited frmMovimientosD: TfrmMovimientosD
  Caption = 'frmMovimientosD'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
            Column = tvMasterImporte
          end>
        OptionsView.GroupFooters = gfAlwaysVisible
        object tvMasterIdMovimientoDetalle: TcxGridDBColumn
          DataBinding.FieldName = 'IdMovimientoDetalle'
          Visible = False
        end
        object tvMasterPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'Periodo'
          Visible = False
          GroupIndex = 0
          Width = 231
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterPersona: TcxGridDBColumn
          DataBinding.FieldName = 'Persona'
          Width = 304
        end
        object tvMasterPersonaRelacionada: TcxGridDBColumn
          DataBinding.FieldName = 'PersonaRelacionada'
          Visible = False
          GroupIndex = 1
          Width = 304
        end
        object tvMasterTipo: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
          Visible = False
          Width = 232
        end
        object tvMasterCategoria: TcxGridDBColumn
          DataBinding.FieldName = 'Categoria'
          Width = 63
        end
        object tvMasterEfecto: TcxGridDBColumn
          DataBinding.FieldName = 'Efecto'
          Visible = False
          GroupIndex = 2
          Width = 250
        end
        object tvMasterImporte: TcxGridDBColumn
          DataBinding.FieldName = 'Importe'
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 52
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMovimientosD.adodsMaster
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
