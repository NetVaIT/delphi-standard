inherited frmCuentasBancarias: TfrmCuentasBancarias
  Caption = 'Cuentas Bancarias'
  ClientWidth = 856
  OnCreate = FormCreate
  ExplicitWidth = 856
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 856
    ExplicitWidth = 856
  end
  inherited splDetail1: TSplitter
    Top = 195
    Width = 856
    ExplicitWidth = 856
  end
  inherited splDetail2: TSplitter
    Width = 856
    ExplicitWidth = 856
  end
  inherited pnlMaster: TPanel
    Width = 856
    Height = 164
    ExplicitWidth = 856
    ExplicitHeight = 253
    inherited cxGrid: TcxGrid
      Width = 856
      Height = 164
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
    ExplicitTop = 375
    ExplicitWidth = 856
  end
  inherited pnlDetail2: TPanel
    Width = 856
    ExplicitTop = 331
    ExplicitWidth = 856
  end
  inherited pnlDetail1: TPanel
    Top = 198
    Width = 856
    Height = 130
    ExplicitTop = 192
    ExplicitWidth = 856
    ExplicitHeight = 130
  end
  inherited pnlClose: TPanel
    Width = 856
    ExplicitWidth = 856
    inherited btnClose: TButton
      ExplicitLeft = 566
    end
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
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
