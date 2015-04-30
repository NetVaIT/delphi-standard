inherited frmPersonasRolesCuentasBancariasEdit: TfrmPersonasRolesCuentasBancariasEdit
  Caption = 'Cuentas Bancarias para este Rol'
  ClientHeight = 298
  ClientWidth = 552
  ExplicitWidth = 558
  ExplicitHeight = 326
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 552
    Height = 257
    ExplicitWidth = 552
    ExplicitHeight = 257
    ClientRectBottom = 255
    ClientRectRight = 550
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 548
      ExplicitHeight = 227
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 79
        Height = 13
        Caption = 'Cuenta Bancaria'
      end
      object Label2: TLabel
        Left = 24
        Top = 56
        Width = 121
        Height = 13
        Caption = 'Perfil de Cuenta Bancaria'
      end
      object Label3: TLabel
        Left = 24
        Top = 96
        Width = 52
        Height = 13
        Caption = 'Porcentaje'
        FocusControl = cxDBCurrencyEdit1
      end
      object Label4: TLabel
        Left = 24
        Top = 136
        Width = 66
        Height = 13
        Caption = 'Limite Inferior'
        FocusControl = cxDBCurrencyEdit2
      end
      object Label5: TLabel
        Left = 24
        Top = 176
        Width = 70
        Height = 13
        Caption = 'Limite Superior'
        FocusControl = cxDBCurrencyEdit3
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 24
        Top = 112
        DataBinding.DataField = 'Porcentaje'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBCurrencyEdit2: TcxDBCurrencyEdit
        Left = 24
        Top = 152
        DataBinding.DataField = 'LimiteInferior'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object cxDBCurrencyEdit3: TcxDBCurrencyEdit
        Left = 24
        Top = 192
        DataBinding.DataField = 'LimiteSuperior'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 23
        Top = 31
        DataBinding.DataField = 'CuentaBancaria'
        DataBinding.DataSource = DataSource
        Properties.HideSelection = False
        Properties.KeyFieldNames = 'CuentaBancaria'
        Properties.ListColumns = <
          item
            Caption = 'Banco'
            FieldName = 'Nombre'
          end
          item
            Caption = 'Moneda'
            FieldName = 'Identificador'
          end
          item
            Caption = 'No. Cuenta'
            FieldName = 'CuentaBancaria'
          end>
        Properties.ListSource = dsCuentaBancaria
        TabOrder = 3
        Width = 506
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 23
        Top = 71
        DataBinding.DataField = 'CuentaBancariaPerfil'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 4
        Width = 258
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 257
    Width = 552
    ExplicitTop = 257
    ExplicitWidth = 552
    inherited btnOk: TButton
      Left = 389
      ExplicitLeft = 389
    end
    inherited btnCancel: TButton
      Left = 470
      ExplicitLeft = 470
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPersonasRolesCuentasBancarias.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  object dsCuentaBancaria: TDataSource
    DataSet = dmPersonasRolesCuentasBancarias.adodsCuentaBancaria
    Left = 490
    Top = 4
  end
end
