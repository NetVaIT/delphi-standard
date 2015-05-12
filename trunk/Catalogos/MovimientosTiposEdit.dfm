inherited frmMovimientosTipoEdit: TfrmMovimientosTipoEdit
  Caption = 'Tipo de Movimiento'
  ClientHeight = 663
  ClientWidth = 542
  ExplicitWidth = 548
  ExplicitHeight = 692
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 542
    Height = 622
    ExplicitWidth = 542
    ExplicitHeight = 520
    ClientRectBottom = 620
    ClientRectRight = 540
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 538
      ExplicitHeight = 490
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
        Top = 300
        Width = 38
        Height = 13
        Caption = 'Variable'
        FocusControl = DBLookupComboBox1
      end
      object Label6: TLabel
        Left = 24
        Top = 364
        Width = 124
        Height = 13
        Caption = 'Persona a la que se aplica'
        FocusControl = DBLookupComboBox2
      end
      object Label7: TLabel
        Left = 24
        Top = 428
        Width = 110
        Height = 13
        Caption = 'Acumular a movimiento'
        FocusControl = DBLookupComboBox3
      end
      object Label8: TLabel
        Left = 24
        Top = 516
        Width = 102
        Height = 13
        Caption = 'Porcentaje de c'#225'lculo'
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
        Properties.KeyFieldNames = 'IdMovimientoTipoEfecto'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        TabOrder = 3
        Width = 304
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 24
        Top = 184
        Caption = 'Descontar al ingreso'
        DataBinding.DataField = 'Descuento'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 200
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 24
        Top = 251
        Caption = 'Produce CXC'
        DataBinding.DataField = 'ProduceCXC'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 200
      end
      object cxDBCheckBox3: TcxDBCheckBox
        Left = 24
        Top = 275
        Caption = 'Produce CXP'
        DataBinding.DataField = 'ProduceCXP'
        DataBinding.DataSource = DataSource
        TabOrder = 6
        Width = 200
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 24
        Top = 316
        Width = 304
        Height = 21
        DataField = 'Variable'
        DataSource = DataSource
        TabOrder = 7
      end
      object cxDBCheckBox4: TcxDBCheckBox
        Left = 24
        Top = 340
        Caption = 'Agrupar por tipo de movimiento'
        DataBinding.DataField = 'AgruparTipo'
        DataBinding.DataSource = DataSource
        TabOrder = 8
        Width = 121
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 24
        Top = 380
        Width = 304
        Height = 21
        DataField = 'PerosnaRol'
        DataSource = DataSource
        TabOrder = 9
      end
      object cxDBCheckBox5: TcxDBCheckBox
        Left = 24
        Top = 404
        Caption = 'Acumular mensualmente'
        DataBinding.DataField = 'AcumularMensualmente'
        DataBinding.DataSource = DataSource
        TabOrder = 10
        Width = 121
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 24
        Top = 444
        Width = 304
        Height = 21
        DataField = 'MovimientoTipo'
        DataSource = DataSource
        TabOrder = 11
      end
      object cxDBCheckBox6: TcxDBCheckBox
        Left = 24
        Top = 468
        Caption = 'Aplicar ISR Mensual'
        DataBinding.DataField = 'AplicarISR'
        DataBinding.DataSource = DataSource
        TabOrder = 12
        Width = 121
      end
      object cxDBCheckBox7: TcxDBCheckBox
        Left = 24
        Top = 492
        Caption = 'Base para c'#225'lculo'
        DataBinding.DataField = 'BaseCalculo'
        DataBinding.DataSource = DataSource
        TabOrder = 13
        Width = 121
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 24
        Top = 532
        DataBinding.DataField = 'PorcentajeCalculo'
        DataBinding.DataSource = DataSource
        TabOrder = 14
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 622
    Width = 542
    ExplicitTop = 520
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
  inherited DataSource: TDataSource
    DataSet = dmMovimientosTipo.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
