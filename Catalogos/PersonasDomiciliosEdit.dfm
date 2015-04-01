inherited frmPersonasDomiciliosEdit: TfrmPersonasDomiciliosEdit
  Caption = 'Domicilio'
  ClientHeight = 271
  ClientWidth = 545
  ExplicitWidth = 551
  ExplicitHeight = 300
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 545
    Height = 230
    ExplicitWidth = 545
    ExplicitHeight = 230
    ClientRectBottom = 228
    ClientRectRight = 543
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 541
      ExplicitHeight = 200
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 40
        Height = 13
        Caption = 'Domicilio'
      end
      object Label2: TLabel
        Left = 16
        Top = 128
        Width = 20
        Height = 13
        Caption = 'Tipo'
        FocusControl = DBLookupComboBox2
      end
      object btnUpdate: TSpeedButton
        Left = 493
        Top = 43
        Width = 23
        Height = 22
        Action = actUpdate
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 16
        Top = 144
        Width = 300
        Height = 21
        DataField = 'Tipo'
        DataSource = DataSource
        TabOrder = 0
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 16
        Top = 168
        Caption = 'Predeterminado'
        DataBinding.DataField = 'Predeterminado'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object cxDBLabel1: TcxDBLabel
        Left = 16
        Top = 43
        DataBinding.DataField = 'Domicilio'
        DataBinding.DataSource = DataSource
        Height = 79
        Width = 471
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 230
    Width = 545
    ExplicitTop = 230
    ExplicitWidth = 545
    inherited btnOk: TButton
      Left = 382
      ExplicitLeft = 382
    end
    inherited btnCancel: TButton
      Left = 463
      ExplicitLeft = 463
    end
  end
  inherited ActionList: TActionList
    object actUpdate: TAction
      Caption = '...'
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
