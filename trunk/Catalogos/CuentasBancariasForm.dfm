inherited frmCuentasBancarias: TfrmCuentasBancarias
  Caption = 'Cuentas Bancarias'
  ClientWidth = 856
  OnCreate = FormCreate
  ExplicitWidth = 856
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 856
    ExplicitWidth = 856
  end
  inherited splDetail1: TSplitter
    Width = 856
    ExplicitWidth = 856
  end
  inherited splDetail2: TSplitter
    Width = 856
    ExplicitWidth = 856
  end
  inherited pnlMaster: TPanel
    Width = 856
    ExplicitWidth = 856
    inherited cxGrid: TcxGrid
      Width = 856
      ExplicitWidth = 856
      ExplicitHeight = 253
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdCuentaBancaria: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaBancaria'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdCuentaBancariaTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaBancariaTipo'
          Visible = False
        end
        object tvMasterIdBanco: TcxGridDBColumn
          DataBinding.FieldName = 'IdBanco'
          Visible = False
        end
        object tvMasterIdMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'IdMoneda'
          Visible = False
        end
        object tvMasterCuentaBancaria: TcxGridDBColumn
          DataBinding.FieldName = 'CuentaBancaria'
        end
        object tvMasterClabeInterbancaria: TcxGridDBColumn
          DataBinding.FieldName = 'ClabeInterbancaria'
        end
        object tvMasterEstructuraEstadoCuenta: TcxGridDBColumn
          DataBinding.FieldName = 'EstructuraEstadoCuenta'
          Width = 300
        end
        object tvMasterSaldoCuenta: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoCuenta'
        end
        object tvMasterBanco: TcxGridDBColumn
          DataBinding.FieldName = 'Banco'
        end
        object tvMasterTipoCtaBan: TcxGridDBColumn
          DataBinding.FieldName = 'TipoCtaBan'
        end
        object tvMasterMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'Moneda'
        end
        object tvMasterPersona: TcxGridDBColumn
          DataBinding.FieldName = 'Persona'
          Width = 300
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 856
    ExplicitWidth = 856
  end
  inherited pnlDetail2: TPanel
    Width = 856
    ExplicitWidth = 856
  end
  inherited pnlDetail1: TPanel
    Width = 856
    ExplicitWidth = 856
  end
  inherited pnlClose: TPanel
    Width = 856
    ExplicitWidth = 856
  end
  inherited DataSource: TDataSource
    DataSet = dmCuentasBancarias.adodsMaster
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
