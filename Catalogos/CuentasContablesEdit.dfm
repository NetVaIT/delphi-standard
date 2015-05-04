inherited frmCuentasContablesEdit: TfrmCuentasContablesEdit
  Caption = 'Cuenta Contable'
  ClientHeight = 339
  ClientWidth = 556
  ExplicitWidth = 562
  ExplicitHeight = 367
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 556
    Height = 298
    ExplicitWidth = 556
    ExplicitHeight = 298
    ClientRectBottom = 296
    ClientRectRight = 554
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 552
      ExplicitHeight = 268
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 39
        Height = 13
        Caption = 'Persona'
      end
      object Label2: TLabel
        Left = 16
        Top = 48
        Width = 81
        Height = 13
        Caption = 'Cuenta Contable'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 16
        Top = 88
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object Label4: TLabel
        Left = 16
        Top = 128
        Width = 52
        Height = 13
        Caption = 'Naturaleza'
        FocusControl = cxDBTextEdit3
      end
      object Label5: TLabel
        Left = 16
        Top = 168
        Width = 93
        Height = 13
        Caption = 'Codigo Agrupa SAT'
        FocusControl = cxDBTextEdit4
      end
      object Label6: TLabel
        Left = 16
        Top = 208
        Width = 66
        Height = 13
        Caption = 'Cuenta Padre'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 64
        DataBinding.DataField = 'CuentaContable'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 177
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 104
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 521
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 16
        Top = 144
        DataBinding.DataField = 'Naturaleza'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 289
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 16
        Top = 184
        DataBinding.DataField = 'CodigoAgrupaSAT'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 177
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 15
        Top = 23
        DataBinding.DataField = 'Persona'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 4
        Width = 522
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 15
        Top = 223
        DataBinding.DataField = 'CuentaPadre'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 5
        Width = 522
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 298
    Width = 556
    ExplicitTop = 298
    ExplicitWidth = 556
    inherited btnOk: TButton
      Left = 393
      ExplicitLeft = 393
    end
    inherited btnCancel: TButton
      Left = 474
      ExplicitLeft = 474
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
