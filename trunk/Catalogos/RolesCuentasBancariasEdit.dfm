inherited frmRolesCuentasBancariasEdit: TfrmRolesCuentasBancariasEdit
  Caption = 'Cuentas Bancarias para este Rol'
  ClientHeight = 226
  ClientWidth = 324
  ExplicitWidth = 330
  ExplicitHeight = 254
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 324
    Height = 185
    ClientRectBottom = 183
    ClientRectRight = 322
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = -38
      ExplicitTop = 30
      ExplicitWidth = 434
      ExplicitHeight = 295
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 79
        Height = 13
        Caption = 'Cuenta Bancaria'
      end
      object Label2: TLabel
        Left = 16
        Top = 64
        Width = 52
        Height = 13
        Caption = 'Porcentaje'
        FocusControl = cxDBCurrencyEdit1
      end
      object Label3: TLabel
        Left = 16
        Top = 104
        Width = 66
        Height = 13
        Caption = 'Limite Inferior'
        FocusControl = cxDBCurrencyEdit2
      end
      object Label4: TLabel
        Left = 184
        Top = 104
        Width = 70
        Height = 13
        Caption = 'Limite Superior'
        FocusControl = cxDBCurrencyEdit3
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 16
        Top = 80
        DataBinding.DataField = 'Porcentaje'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 66
      end
      object cxDBCurrencyEdit2: TcxDBCurrencyEdit
        Left = 16
        Top = 120
        DataBinding.DataField = 'LimiteInferior'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object cxDBCurrencyEdit3: TcxDBCurrencyEdit
        Left = 184
        Top = 120
        DataBinding.DataField = 'LimiteSuperior'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 15
        Top = 39
        DataBinding.DataField = 'CuentaBancaria'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 3
        Width = 290
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 185
    Width = 324
    inherited btnOk: TButton
      Left = 161
    end
    inherited btnCancel: TButton
      Left = 242
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
