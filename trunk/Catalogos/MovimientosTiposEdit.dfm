inherited frmMovimientosTipoEdit: TfrmMovimientosTipoEdit
  Caption = 'Tipos de Movimientos'
  ClientHeight = 347
  ClientWidth = 484
  ExplicitWidth = 490
  ExplicitHeight = 375
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 484
    Height = 306
    ClientRectBottom = 304
    ClientRectRight = 482
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 295
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
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 62
        Height = 13
        Caption = 'Valor Default'
        FocusControl = cxDBTextEdit3
      end
      object Label4: TLabel
        Left = 16
        Top = 226
        Width = 165
        Height = 13
        Caption = 'Efecto de este Tipo de Movimiento'
      end
      object Label5: TLabel
        Left = 16
        Top = 186
        Width = 181
        Height = 13
        Caption = 'Categoria de este Tipo de Movimiento'
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
        Width = 353
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 16
        Top = 112
        DataBinding.DataField = 'ValorDefault'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 16
        Top = 136
        Caption = 'Produce CXC'
        DataBinding.DataField = 'ProduceCXC'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 16
        Top = 160
        Caption = 'Produce CXP'
        DataBinding.DataField = 'ProduceCXP'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 16
        Top = 201
        DataBinding.DataField = 'MovimientoTipoCategoria'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 5
        Width = 257
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 16
        Top = 241
        DataBinding.DataField = 'MovimientoTipoEfecto'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 6
        Width = 257
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 306
    Width = 484
    inherited btnOk: TButton
      Left = 321
    end
    inherited btnCancel: TButton
      Left = 402
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMovimientosTipo.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
