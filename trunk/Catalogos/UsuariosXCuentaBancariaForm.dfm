inherited frmUsuariosXCuentaBancaria: TfrmUsuariosXCuentaBancaria
  Caption = 'Usuarios por Cuenta Bancaria'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      ExplicitHeight = 253
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdCuentaBancariaUsuario: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaBancariaUsuario'
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
        object tvMasterPersona: TcxGridDBColumn
          DataBinding.FieldName = 'Persona'
          Width = 350
        end
        object tvMasterNumeroSerieToken: TcxGridDBColumn
          DataBinding.FieldName = 'NumeroSerieToken'
        end
        object tvMasterObservaciones1: TcxGridDBColumn
          DataBinding.FieldName = 'Observaciones1'
        end
        object tvMasterObservaciones2: TcxGridDBColumn
          DataBinding.FieldName = 'Observaciones2'
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmCuentasBancarias.adodsUsuariosXCtaBan
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
