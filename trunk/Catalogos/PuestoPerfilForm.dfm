inherited frmPuestoPerfil: TfrmPuestoPerfil
  Caption = 'Puesto Perfil'
  ClientHeight = 311
  ClientWidth = 369
  ExplicitWidth = 375
  ExplicitHeight = 339
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 369
    Height = 270
    ExplicitWidth = 369
    ExplicitHeight = 270
    ClientRectBottom = 268
    ClientRectRight = 367
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 365
      ExplicitHeight = 240
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 33
        Height = 13
        Caption = 'Puesto'
      end
      object Label2: TLabel
        Left = 24
        Top = 56
        Width = 91
        Height = 13
        Caption = 'Categoria del Perfil'
      end
      object Label3: TLabel
        Left = 24
        Top = 96
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label4: TLabel
        Left = 24
        Top = 136
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object Label5: TLabel
        Left = 24
        Top = 176
        Width = 24
        Height = 13
        Caption = 'Valor'
        FocusControl = cxDBSpinEdit1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 112
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 24
        Top = 152
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 313
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 24
        Top = 192
        DataBinding.DataField = 'Valor'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 24
        Top = 31
        DataBinding.DataField = 'Puesto'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 3
        Width = 313
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 24
        Top = 71
        DataBinding.DataField = 'PerfilCategoria'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 4
        Width = 313
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 270
    Width = 369
    ExplicitTop = 270
    ExplicitWidth = 369
    inherited btnOk: TButton
      Left = 206
      ExplicitLeft = 206
    end
    inherited btnCancel: TButton
      Left = 287
      ExplicitLeft = 287
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
