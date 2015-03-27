inherited frmTelefonosEdit: TfrmTelefonosEdit
  Caption = 'Telefono'
  ClientHeight = 236
  ClientWidth = 340
  ExplicitWidth = 346
  ExplicitHeight = 264
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 340
    Height = 195
    ClientRectBottom = 193
    ClientRectRight = 338
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 295
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 80
        Height = 13
        Caption = 'Tipo de Telefono'
      end
      object Label2: TLabel
        Left = 24
        Top = 64
        Width = 23
        Height = 13
        Caption = 'Lada'
      end
      object Label3: TLabel
        Left = 24
        Top = 104
        Width = 42
        Height = 13
        Caption = 'Telefono'
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 192
        Top = 39
        Caption = 'Predeterminado'
        DataBinding.DataField = 'Predeterminado'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 23
        Top = 39
        DataBinding.DataField = 'TelefonoTipo'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 1
        Width = 145
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 23
        Top = 80
        DataBinding.DataField = 'Lada'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 145
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 24
        Top = 120
        DataBinding.DataField = 'Telefono'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 144
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 195
    Width = 340
    inherited btnOk: TButton
      Left = 177
    end
    inherited btnCancel: TButton
      Left = 258
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
