inherited frmPersonasDomiciliosEdit: TfrmPersonasDomiciliosEdit
  Caption = 'frmPersonasDomiciliosEdit'
  ClientHeight = 323
  ClientWidth = 564
  ExplicitWidth = 570
  ExplicitHeight = 352
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 564
    Height = 282
    ExplicitWidth = 564
    ExplicitHeight = 282
    ClientRectBottom = 280
    ClientRectRight = 562
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 560
      ExplicitHeight = 252
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 40
        Height = 13
        Caption = 'Domicilio'
        FocusControl = DBLookupComboBox1
      end
      object Label2: TLabel
        Left = 16
        Top = 128
        Width = 20
        Height = 13
        Caption = 'Tipo'
        FocusControl = DBLookupComboBox2
      end
      object SpeedButton1: TSpeedButton
        Left = 504
        Top = 80
        Width = 23
        Height = 22
        OnClick = SpeedButton1Click
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 40
        Width = 500
        Height = 21
        DataField = 'Domicilio'
        DataSource = DataSource
        TabOrder = 0
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 16
        Top = 144
        Width = 300
        Height = 21
        DataField = 'Tipo'
        DataSource = DataSource
        TabOrder = 1
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 16
        Top = 168
        Caption = 'Predeterminado'
        DataBinding.DataField = 'Predeterminado'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBLabel1: TcxDBLabel
        Left = 16
        Top = 72
        DataBinding.DataField = 'Domicilio'
        DataBinding.DataSource = DataSource
        Height = 50
        Width = 481
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 282
    Width = 564
    ExplicitTop = 282
    ExplicitWidth = 564
    inherited btnOk: TButton
      Left = 401
      ExplicitLeft = 401
    end
    inherited btnCancel: TButton
      Left = 482
      ExplicitLeft = 482
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
