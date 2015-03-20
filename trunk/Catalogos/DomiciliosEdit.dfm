inherited frmDomiciliosEdit: TfrmDomiciliosEdit
  Caption = 'Domicilio'
  ClientHeight = 466
  ClientWidth = 553
  ExplicitWidth = 559
  ExplicitHeight = 494
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 553
    Height = 425
    ExplicitWidth = 553
    ExplicitHeight = 425
    ClientRectBottom = 423
    ClientRectRight = 551
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 549
      ExplicitHeight = 395
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 19
        Height = 13
        Caption = 'Pais'
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 33
        Height = 13
        Caption = 'Estado'
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 43
        Height = 13
        Caption = 'Municipio'
      end
      object Label4: TLabel
        Left = 16
        Top = 136
        Width = 45
        Height = 13
        Caption = 'Poblacion'
      end
      object Label5: TLabel
        Left = 16
        Top = 176
        Width = 35
        Height = 13
        Caption = 'Colonia'
        FocusControl = cxDBTextEdit1
      end
      object Label6: TLabel
        Left = 16
        Top = 216
        Width = 23
        Height = 13
        Caption = 'Calle'
        FocusControl = cxDBTextEdit2
      end
      object Label7: TLabel
        Left = 16
        Top = 256
        Width = 58
        Height = 13
        Caption = 'No. Exterior'
        FocusControl = cxDBTextEdit3
      end
      object Label8: TLabel
        Left = 176
        Top = 256
        Width = 56
        Height = 13
        Caption = 'No. Interior'
        FocusControl = cxDBTextEdit4
      end
      object Label9: TLabel
        Left = 16
        Top = 296
        Width = 52
        Height = 13
        Caption = 'Referencia'
        FocusControl = cxDBTextEdit5
      end
      object Label10: TLabel
        Left = 16
        Top = 336
        Width = 65
        Height = 13
        Caption = 'Codigo Postal'
        FocusControl = cxDBTextEdit6
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 192
        DataBinding.DataField = 'Colonia'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 225
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 232
        DataBinding.DataField = 'Calle'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 353
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 16
        Top = 272
        DataBinding.DataField = 'NoExterior'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 176
        Top = 272
        DataBinding.DataField = 'NoInterior'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 16
        Top = 312
        DataBinding.DataField = 'Referencia'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 505
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 16
        Top = 352
        DataBinding.DataField = 'CodigoPostal'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 16
        Top = 31
        DataBinding.DataField = 'Pais'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 6
        Width = 193
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 16
        Top = 71
        DataBinding.DataField = 'Estado'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 7
        Width = 193
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 16
        Top = 111
        DataBinding.DataField = 'Municipio'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 8
        Width = 225
      end
      object cxDBLookupComboBox4: TcxDBLookupComboBox
        Left = 16
        Top = 151
        DataBinding.DataField = 'Poblacion'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 9
        Width = 225
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 425
    Width = 553
    ExplicitTop = 425
    ExplicitWidth = 553
    inherited btnOk: TButton
      Left = 390
      ExplicitLeft = 390
    end
    inherited btnCancel: TButton
      Left = 471
      ExplicitLeft = 471
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
