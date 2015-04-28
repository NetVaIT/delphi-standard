inherited frmPeriodos: TfrmPeriodos
  Caption = 'Periodos'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    ExplicitWidth = 651
    ExplicitHeight = 253
    inherited cxGrid: TcxGrid
      ExplicitWidth = 651
      ExplicitHeight = 253
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPeriodo'
          Visible = False
        end
        object tvMasterIdPeriodoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPeriodoTipo'
          Visible = False
        end
        object tvMasterNumero: TcxGridDBColumn
          DataBinding.FieldName = 'Numero'
        end
        object tvMasterPeriodoTipo: TcxGridDBColumn
          Caption = 'Tipo de Periodo'
          DataBinding.FieldName = 'PeriodoTipo'
        end
        object tvMasterIdPeriodoEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdPeriodoEstatus'
          Visible = False
        end
        object tvMasterPeriodoEstatus: TcxGridDBColumn
          Caption = 'Estatus Periodo'
          DataBinding.FieldName = 'PeriodoEstatus'
        end
        object tvMasterFechaInicio: TcxGridDBColumn
          Caption = 'Fecha Inicio'
          DataBinding.FieldName = 'FechaInicio'
        end
        object tvMasterFechaFin: TcxGridDBColumn
          Caption = 'Fecha Fin'
          DataBinding.FieldName = 'FechaFin'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
        object tvMasterMes: TcxGridDBColumn
          DataBinding.FieldName = 'Mes'
        end
        object tvMasterAnio: TcxGridDBColumn
          Caption = 'A'#241'o'
          DataBinding.FieldName = 'Anio'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    ExplicitTop = 375
    ExplicitWidth = 651
  end
  inherited pnlDetail2: TPanel
    ExplicitTop = 331
    ExplicitWidth = 651
  end
  inherited pnlDetail1: TPanel
    ExplicitTop = 287
    ExplicitWidth = 651
  end
  inherited pnlClose: TPanel
    inherited btnClose: TButton
      ExplicitLeft = 566
    end
  end
  inherited dxBarManager: TdxBarManager
    Categories.Visibles = (
      False)
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
          ItemName = 'dxbbPreview'
        end
        item
          Visible = True
          ItemName = 'dxbbCalculaPeriodo'
        end>
    end
    object dxbbCalculaPeriodo: TdxBarButton
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
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
