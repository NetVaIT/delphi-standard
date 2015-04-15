inherited frmRolesEdit: TfrmRolesEdit
  Caption = 'Rol'
  ClientHeight = 277
  ClientWidth = 560
  ExplicitWidth = 566
  ExplicitHeight = 306
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 560
    Height = 236
    ExplicitWidth = 560
    ExplicitHeight = 236
    ClientRectBottom = 234
    ClientRectRight = 558
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 556
      ExplicitHeight = 206
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 20
        Height = 13
        Caption = 'Tipo'
        FocusControl = cxDBLookupComboBox1
      end
      object Label4: TLabel
        Left = 16
        Top = 136
        Width = 85
        Height = 13
        Caption = 'Esquema de pago'
        FocusControl = cxDBLookupComboBox2
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 304
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 16
        Top = 112
        DataBinding.DataField = 'RolTipo'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 2
        Width = 304
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 16
        Top = 152
        DataBinding.DataField = 'EsquemaPago'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 3
        Width = 500
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 236
    Width = 560
    ExplicitTop = 236
    ExplicitWidth = 560
    inherited btnOk: TButton
      Left = 397
      ExplicitLeft = 397
    end
    inherited btnCancel: TButton
      Left = 478
      ExplicitLeft = 478
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
