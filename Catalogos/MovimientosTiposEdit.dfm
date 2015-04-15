inherited frmMovimientosTipoEdit: TfrmMovimientosTipoEdit
  Caption = 'Tipo de Movimiento'
  ClientHeight = 415
  ClientWidth = 542
  ExplicitWidth = 548
  ExplicitHeight = 444
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 542
    Height = 374
    ExplicitWidth = 542
    ExplicitHeight = 374
    ClientRectBottom = 372
    ClientRectRight = 540
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 538
      ExplicitHeight = 344
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 24
        Top = 56
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 24
        Top = 96
        Width = 47
        Height = 13
        Caption = 'Categor'#237'a'
        FocusControl = cxDBLookupComboBox1
      end
      object Label4: TLabel
        Left = 24
        Top = 136
        Width = 31
        Height = 13
        Caption = 'Efecto'
        FocusControl = cxDBLookupComboBox2
      end
      object Label5: TLabel
        Left = 24
        Top = 176
        Width = 62
        Height = 13
        Caption = 'Valor omisi'#243'n'
        FocusControl = cxDBTextEdit3
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 24
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 500
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 24
        Top = 112
        DataBinding.DataField = 'MovimientoTipoCategoria'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 2
        Width = 304
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 24
        Top = 152
        DataBinding.DataField = 'MovimientoTipoEfecto'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 3
        Width = 304
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 24
        Top = 192
        DataBinding.DataField = 'ValorDefault'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 24
        Top = 216
        Caption = 'Produce CXC'
        DataBinding.DataField = 'ProduceCXC'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 24
        Top = 240
        Caption = 'Produce CXP'
        DataBinding.DataField = 'ProduceCXP'
        DataBinding.DataSource = DataSource
        TabOrder = 6
        Width = 121
      end
      object cxDBCheckBox3: TcxDBCheckBox
        Left = 24
        Top = 265
        Caption = 'Agrupar por tipo'
        DataBinding.DataField = 'AgruparTipo'
        DataBinding.DataSource = DataSource
        TabOrder = 7
        Width = 121
      end
      object cxDBCheckBox4: TcxDBCheckBox
        Left = 24
        Top = 290
        Caption = 'Base para c'#225'lculo'
        DataBinding.DataField = 'BaseCalculo'
        DataBinding.DataSource = DataSource
        TabOrder = 8
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 374
    Width = 542
    ExplicitTop = 374
    ExplicitWidth = 542
    inherited btnOk: TButton
      Left = 379
      ExplicitLeft = 379
    end
    inherited btnCancel: TButton
      Left = 460
      ExplicitLeft = 460
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
