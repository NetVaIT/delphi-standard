inherited frmCuentasGastosEdit: TfrmCuentasGastosEdit
  Caption = 'Cuenta Gasto'
  ClientHeight = 268
  ClientWidth = 524
  ExplicitWidth = 530
  ExplicitHeight = 296
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 524
    Height = 227
    ClientRectBottom = 225
    ClientRectRight = 522
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = -22
      ExplicitTop = 30
      ExplicitWidth = 539
      ExplicitHeight = 295
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 39
        Height = 13
        Caption = 'Persona'
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 66
        Height = 13
        Caption = 'Cuenta Gasto'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 85
        Height = 13
        Caption = 'Descripcion Gasto'
        FocusControl = cxDBTextEdit2
      end
      object Label4: TLabel
        Left = 16
        Top = 136
        Width = 97
        Height = 13
        Caption = 'Cuenta Gasto Padre'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'CuentaGasto'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 193
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 112
        DataBinding.DataField = 'DescripcionGasto'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 489
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 15
        Top = 31
        DataBinding.DataField = 'Persona'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 2
        Width = 490
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 16
        Top = 151
        DataBinding.DataField = 'CuentaGastoPadre'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 3
        Width = 489
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 227
    Width = 524
    inherited btnOk: TButton
      Left = 361
    end
    inherited btnCancel: TButton
      Left = 442
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
