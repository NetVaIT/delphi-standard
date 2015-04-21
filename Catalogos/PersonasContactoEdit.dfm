inherited frmPersonasContactoEdit: TfrmPersonasContactoEdit
  Caption = 'Contacto'
  ClientHeight = 201
  ClientWidth = 421
  ExplicitWidth = 427
  ExplicitHeight = 229
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 421
    Height = 160
    ClientRectBottom = 158
    ClientRectRight = 419
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 295
      object Label1: TLabel
        Left = 8
        Top = 32
        Width = 44
        Height = 13
        Caption = 'Contacto'
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 8
        Top = 75
        Caption = 'Principal'
        DataBinding.DataField = 'Principal'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 7
        Top = 47
        DataBinding.DataField = 'Contacto'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 1
        Width = 402
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 160
    Width = 421
    inherited btnOk: TButton
      Left = 258
    end
    inherited btnCancel: TButton
      Left = 339
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
