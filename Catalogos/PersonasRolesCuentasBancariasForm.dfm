inherited frmPersonasRolesCuentasBancarias: TfrmPersonasRolesCuentasBancarias
  Caption = 'frmPersonasRolesCuentasBancarias'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPersonaRolCuentaBancaria: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaRolCuentaBancaria'
          Visible = False
        end
        object tvMasterIdPersonaRol: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaRol'
          Visible = False
        end
        object tvMasterIdCuentaBancaria: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaBancaria'
          Visible = False
        end
        object tvMasterIdCuentaBancariaEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaBancariaEstatus'
          Visible = False
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 77
        end
        object tvMasterCuentaBancaria: TcxGridDBColumn
          DataBinding.FieldName = 'CuentaBancaria'
        end
        object tvMasterIdCuentaBancariaPerfil: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaBancariaPerfil'
          Visible = False
        end
        object tvMasterCuentaBancariaPerfil: TcxGridDBColumn
          DataBinding.FieldName = 'CuentaBancariaPerfil'
          Width = 158
        end
        object tvMasterPorcentaje: TcxGridDBColumn
          DataBinding.FieldName = 'Porcentaje'
        end
        object tvMasterLimiteInferior: TcxGridDBColumn
          DataBinding.FieldName = 'LimiteInferior'
        end
        object tvMasterLimiteSuperior: TcxGridDBColumn
          DataBinding.FieldName = 'LimiteSuperior'
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPersonasRolesCuentasBancarias.adodsMaster
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
