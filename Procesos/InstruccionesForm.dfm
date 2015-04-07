inherited frmInstrucciones: TfrmInstrucciones
  Caption = 'frmInstrucciones'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdInstruccion: TcxGridDBColumn
          DataBinding.FieldName = 'IdInstruccion'
          Visible = False
        end
        object tvMasterIdInstruccionTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdInstruccionTipo'
          Visible = False
        end
        object tvMasterIdPersonaSolicita: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaSolicita'
          Visible = False
        end
        object tvMasterIdDocumentoAdjunto: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumentoAdjunto'
          Visible = False
        end
        object tvMasterIdPeriodicidad: TcxGridDBColumn
          DataBinding.FieldName = 'IdPeriodicidad'
          Visible = False
        end
        object tvMasterConcepto: TcxGridDBColumn
          DataBinding.FieldName = 'Concepto'
          Width = 304
        end
        object tvMasterIntruccionTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IntruccionTipo'
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterContadorDesde: TcxGridDBColumn
          DataBinding.FieldName = 'ContadorDesde'
        end
        object tvMasterContadorHasta: TcxGridDBColumn
          DataBinding.FieldName = 'ContadorHasta'
        end
        object tvMasterFechaInicio: TcxGridDBColumn
          DataBinding.FieldName = 'FechaInicio'
        end
        object tvMasterFechaFin: TcxGridDBColumn
          DataBinding.FieldName = 'FechaFin'
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
    inherited dxbTools: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxbbProcessXLS'
        end>
    end
    object dxbbProcessXLS: TdxBarButton
      Category = 0
      Visible = ivAlways
      ImageIndex = 13
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
