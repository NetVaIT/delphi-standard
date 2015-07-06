inherited frmMovimientosTipoEdit: TfrmMovimientosTipoEdit
  Caption = 'Tipo de Movimiento'
  ClientHeight = 707
  ClientWidth = 537
  ExplicitWidth = 543
  ExplicitHeight = 736
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 537
    Height = 666
    ExplicitWidth = 537
    ExplicitHeight = 666
    ClientRectBottom = 664
    ClientRectRight = 535
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 30
      ExplicitWidth = 533
      ExplicitHeight = 636
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
        Top = 180
        Width = 38
        Height = 13
        Caption = 'Variable'
        FocusControl = cxDBLookupComboBox3
      end
      object Label7: TLabel
        Left = 24
        Top = 328
        Width = 110
        Height = 13
        Caption = 'Acumular a movimiento'
      end
      object cxGroupBox1: TcxGroupBox
        Left = 22
        Top = 368
        Caption = 'Cuentas por pagar'
        TabOrder = 10
        Height = 134
        Width = 500
        object Label6: TLabel
          Left = 16
          Top = 16
          Width = 118
          Height = 13
          Caption = 'Relacion de pago pago 1'
          FocusControl = lcbCXPPagadora1
        end
        object Label8: TLabel
          Left = 407
          Top = 16
          Width = 88
          Height = 13
          Caption = 'Porcentaje pago 1'
          FocusControl = lcbCXPPorcentaje1
        end
        object Label9: TLabel
          Left = 16
          Top = 56
          Width = 118
          Height = 13
          Caption = 'Relacion de pago pago 2'
          FocusControl = lcbCXPPagadora2
        end
        object Label10: TLabel
          Left = 407
          Top = 56
          Width = 88
          Height = 13
          Caption = 'Porcentaje pago 2'
          FocusControl = lcbCXPPorcentaje2
        end
        object cbAplicaISR: TcxDBCheckBox
          Left = 16
          Top = 99
          Caption = 'Aplicar ISR mensual'
          DataBinding.DataField = 'AplicarISRProvisional'
          DataBinding.DataSource = DataSource
          TabOrder = 4
          Width = 300
        end
        object lcbCXPPorcentaje1: TcxDBTextEdit
          Left = 407
          Top = 32
          DataBinding.DataField = 'PorcentajePagadora1'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 90
        end
        object lcbCXPPorcentaje2: TcxDBTextEdit
          Left = 407
          Top = 72
          DataBinding.DataField = 'PorcentajePagadora2'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          Width = 90
        end
        object lcbCXPPagadora1: TcxDBLookupComboBox
          Left = 16
          Top = 29
          DataBinding.DataField = 'CXPRelacion1'
          DataBinding.DataSource = DataSource
          Properties.ClearKey = 16460
          Properties.DropDownWidth = 600
          Properties.ListColumns = <>
          TabOrder = 0
          Width = 385
        end
        object lcbCXPPagadora2: TcxDBLookupComboBox
          Left = 16
          Top = 72
          DataBinding.DataField = 'CXPRelacion2'
          DataBinding.DataSource = DataSource
          Properties.DropDownWidth = 600
          Properties.ListColumns = <>
          TabOrder = 2
          Width = 385
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 22
        Top = 508
        Caption = 'Cuentas por cobrar'
        TabOrder = 11
        Height = 113
        Width = 500
        object Label11: TLabel
          Left = 16
          Top = 18
          Width = 118
          Height = 13
          Caption = 'Relacion de pago pago 1'
          FocusControl = lcbCXCPagadora1
        end
        object Label12: TLabel
          Left = 407
          Top = 18
          Width = 88
          Height = 13
          Caption = 'Porcentaje pago 1'
          FocusControl = lcbCXCPorcentaje1
        end
        object Label13: TLabel
          Left = 16
          Top = 58
          Width = 118
          Height = 13
          Caption = 'Relacion de pago pago 2'
          FocusControl = lcbCXCPagadora2
        end
        object Label14: TLabel
          Left = 407
          Top = 58
          Width = 88
          Height = 13
          Caption = 'Porcentaje pago 2'
          FocusControl = lcbCXCPorcentaje2
        end
        object lcbCXCPorcentaje1: TcxDBTextEdit
          Left = 407
          Top = 34
          DataBinding.DataField = 'PorcentajePagadora1'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 90
        end
        object lcbCXCPorcentaje2: TcxDBTextEdit
          Left = 407
          Top = 74
          DataBinding.DataField = 'PorcentajePagadora2'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 90
        end
        object lcbCXCPagadora1: TcxDBLookupComboBox
          Left = 16
          Top = 31
          DataBinding.DataField = 'CXCRelacion1'
          DataBinding.DataSource = DataSource
          Properties.ClearKey = 16460
          Properties.DropDownWidth = 600
          Properties.ListColumns = <>
          TabOrder = 2
          Width = 385
        end
        object lcbCXCPagadora2: TcxDBLookupComboBox
          Left = 16
          Top = 74
          DataBinding.DataField = 'CXCRelacion2'
          DataBinding.DataSource = DataSource
          Properties.DropDownWidth = 600
          Properties.ListColumns = <>
          TabOrder = 3
          Width = 385
        end
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
        Properties.ClearKey = 16460
        Properties.KeyFieldNames = 'IdMovimientoTipoCategoria'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        TabOrder = 2
        Width = 304
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 24
        Top = 152
        DataBinding.DataField = 'MovimientoTipoEfecto'
        DataBinding.DataSource = DataSource
        Properties.ClearKey = 16460
        Properties.KeyFieldNames = 'IdMovimientoTipoEfecto'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        TabOrder = 3
        Width = 304
      end
      object cbCXC: TcxDBCheckBox
        Left = 22
        Top = 278
        Caption = 'Produce cuentas por cobrar'
        DataBinding.DataField = 'ProduceCXC'
        DataBinding.DataSource = DataSource
        TabOrder = 7
        OnClick = cbCXPClick
        Width = 300
      end
      object cbCXP: TcxDBCheckBox
        Left = 22
        Top = 253
        Caption = 'Produce cuentas por pagar'
        DataBinding.DataField = 'ProduceCXP'
        DataBinding.DataSource = DataSource
        TabOrder = 6
        OnClick = cbCXPClick
        Width = 300
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 24
        Top = 196
        DataBinding.DataField = 'Variable'
        DataBinding.DataSource = DataSource
        Properties.ClearKey = 16460
        Properties.ListColumns = <>
        TabOrder = 4
        Width = 304
      end
      object cbAgruparTipo: TcxDBCheckBox
        Left = 22
        Top = 303
        Caption = 'Agrupar por tipo de movimiento'
        DataBinding.DataField = 'AgruparTipo'
        DataBinding.DataSource = DataSource
        TabOrder = 8
        OnClick = cbAgruparTipoClick
        Width = 300
      end
      object lcbMovimientoAcumular: TcxDBLookupComboBox
        Left = 24
        Top = 341
        DataBinding.DataField = 'IdMovimientoTipoAcumular'
        DataBinding.DataSource = DataSource
        Properties.ClearKey = 16460
        Properties.KeyFieldNames = 'IdMovimientoTipo'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        Properties.ListSource = dsMovimientosTipo
        TabOrder = 9
        Width = 304
      end
      object cbAplicarUltimoPeriodo: TcxDBCheckBox
        Left = 22
        Top = 228
        Caption = 'Aplicar '#250'ltimo periodo'
        DataBinding.DataField = 'AplicarUltimoPeriodo'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 300
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 666
    Width = 537
    ExplicitTop = 666
    ExplicitWidth = 537
    inherited btnCancel: TButton
      Left = 455
      ExplicitLeft = 455
    end
    inherited btnOk: TButton
      Left = 374
      ExplicitLeft = 374
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMovimientosTipo.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  object dsMovimientosTipo: TDataSource
    Left = 338
    Top = 4
  end
end
