inherited frmProveedores: TfrmProveedores
  Caption = 'frmProveedores'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPersonaRol: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaRol'
          Visible = False
        end
        object tvMasterIdCuentaContable: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaContable'
          Visible = False
        end
        object tvMasterIdCuentaContableNCA: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaContableNCA'
          Visible = False
        end
        object tvMasterIdCuentaContableNCR: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaContableNCR'
          Visible = False
        end
        object tvMasterIdCuentaContableAnticipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaContableAnticipo'
          Visible = False
        end
        object tvMasterCuentaContable: TcxGridDBColumn
          DataBinding.FieldName = 'CuentaContable'
        end
        object tvMasterCuentaContableNCA: TcxGridDBColumn
          DataBinding.FieldName = 'CuentaContableNCA'
        end
        object tvMasterCuentaContableNCR: TcxGridDBColumn
          DataBinding.FieldName = 'CuentaContableNCR'
        end
        object tvMasterCuentaContableAnticipo: TcxGridDBColumn
          DataBinding.FieldName = 'CuentaContableAnticipo'
        end
        object tvMasterTotalFacturado: TcxGridDBColumn
          DataBinding.FieldName = 'TotalFacturado'
        end
        object tvMasterSaldoPendiente: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoPendiente'
        end
        object tvMasterCalificacion: TcxGridDBColumn
          DataBinding.FieldName = 'Calificacion'
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
