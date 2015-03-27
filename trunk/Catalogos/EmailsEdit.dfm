inherited frmEmailsEdit: TfrmEmailsEdit
  Caption = 'e-Mail'
  ClientHeight = 205
  ClientWidth = 415
  ExplicitWidth = 421
  ExplicitHeight = 233
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 415
    Height = 164
    ClientRectBottom = 162
    ClientRectRight = 413
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 295
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 28
        Height = 13
        Caption = 'e-Mail'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 66
        Height = 13
        Caption = 'Tipo de e-Mail'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'Email'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 15
        Top = 71
        DataBinding.DataField = 'EmailTipo'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 1
        Width = 250
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 164
    Width = 415
    inherited btnOk: TButton
      Left = 252
    end
    inherited btnCancel: TButton
      Left = 333
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
