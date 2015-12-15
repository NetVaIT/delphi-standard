inherited frmRolesTitularPorcentajeEdit: TfrmRolesTitularPorcentajeEdit
  Caption = 'Porcentajes'
  ClientHeight = 272
  ClientWidth = 228
  ExplicitWidth = 234
  ExplicitHeight = 301
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 228
    Height = 231
    ExplicitWidth = 228
    ExplicitHeight = 231
    ClientRectBottom = 229
    ClientRectRight = 226
    inherited tsGeneral: TcxTabSheet
      Caption = 'Cantidad'
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 224
      ExplicitHeight = 201
      object Label1: TLabel
        Left = 48
        Top = 120
        Width = 52
        Height = 13
        Caption = 'Porcentaje'
        FocusControl = cxDBCalcEdit1
      end
      object Label2: TLabel
        Left = 48
        Top = 21
        Width = 23
        Height = 13
        Caption = 'Base'
        FocusControl = edtBase
      end
      object Label3: TLabel
        Left = 48
        Top = 67
        Width = 43
        Height = 13
        Caption = 'Cantidad'
        FocusControl = edtCantidad
      end
      object edtBase: TcxCurrencyEdit
        Left = 48
        Top = 40
        Enabled = False
        TabOrder = 0
        Width = 121
      end
      object edtCantidad: TcxCurrencyEdit
        Left = 48
        Top = 86
        Properties.OnEditValueChanged = edtCantidadPropertiesEditValueChanged
        TabOrder = 1
        Width = 121
      end
      object cxDBCalcEdit1: TcxDBCalcEdit
        Left = 48
        Top = 139
        DataBinding.DataField = 'PorcentajeCalculo'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 231
    Width = 228
    ExplicitTop = 231
    ExplicitWidth = 228
    inherited btnCancel: TButton
      Left = 146
      ExplicitLeft = 146
    end
    inherited btnOk: TButton
      Left = 65
      ExplicitLeft = 65
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMovimientos.adodsRolesTitular
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
