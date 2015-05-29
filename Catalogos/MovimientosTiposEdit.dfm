inherited frmMovimientosTipoEdit: TfrmMovimientosTipoEdit
  Caption = 'Tipo de Movimiento'
  ClientHeight = 566
  ClientWidth = 626
  ExplicitWidth = 632
  ExplicitHeight = 595
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 626
    Height = 525
    ExplicitWidth = 626
    ExplicitHeight = 525
    ClientRectBottom = 523
    ClientRectRight = 624
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 622
      ExplicitHeight = 495
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
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 24
        Top = 235
        Caption = 'Produce CXC'
        DataBinding.DataField = 'ProduceCXC'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 300
      end
      object GroupBox1: TGroupBox
        Left = 24
        Top = 277
        Width = 500
        Height = 196
        TabOrder = 7
        object Label7: TLabel
          Left = 16
          Top = 64
          Width = 110
          Height = 13
          Caption = 'Acumular a movimiento'
          FocusControl = cxDBLookupComboBox4
        end
        object Label6: TLabel
          Left = 16
          Top = 104
          Width = 162
          Height = 13
          Caption = 'Persona a la que se aplica el pago'
          FocusControl = cxDBLookupComboBox5
        end
        object Label8: TLabel
          Left = 326
          Top = 104
          Width = 79
          Height = 13
          Caption = 'Porcentaje pago'
          FocusControl = cxDBTextEdit3
        end
        object Label9: TLabel
          Left = 16
          Top = 144
          Width = 162
          Height = 13
          Caption = 'Persona a la que se aplica el pago'
          FocusControl = cxDBLookupComboBox6
        end
        object Label10: TLabel
          Left = 326
          Top = 144
          Width = 79
          Height = 13
          Caption = 'Porcentaje pago'
          FocusControl = cxDBTextEdit4
        end
        object cxDBCheckBox4: TcxDBCheckBox
          Left = 16
          Top = 40
          Caption = 'Agrupar por tipo de movimiento'
          DataBinding.DataField = 'AgruparTipo'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 300
        end
        object cxDBCheckBox6: TcxDBCheckBox
          Left = 16
          Top = 15
          Caption = 'Aplicar ISR Mensual'
          DataBinding.DataField = 'AplicarISRProvisional'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 300
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 16
          Top = 77
          DataBinding.DataField = 'IdMovimientoTipoAcumular'
          DataBinding.DataSource = DataSource
          Properties.ClearKey = 16460
          Properties.KeyFieldNames = 'IdMovimientoTipo'
          Properties.ListColumns = <
            item
              FieldName = 'Descripcion'
            end>
          Properties.ListSource = dsMovimientosTipo
          TabOrder = 2
          Width = 304
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 326
          Top = 120
          DataBinding.DataField = 'PorcentajePagadora1'
          DataBinding.DataSource = DataSource
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 326
          Top = 160
          DataBinding.DataField = 'PorcentajePagadora2'
          DataBinding.DataSource = DataSource
          TabOrder = 6
          Width = 121
        end
        object cxDBLookupComboBox5: TcxDBLookupComboBox
          Left = 16
          Top = 120
          DataBinding.DataField = 'Pagadora1'
          DataBinding.DataSource = DataSource
          Properties.ClearKey = 16460
          Properties.DropDownWidth = 600
          Properties.ListColumns = <
            item
              FieldName = 'Pagadora'
            end
            item
              FieldName = 'Receptora'
            end>
          TabOrder = 3
          Width = 304
        end
        object cxDBLookupComboBox6: TcxDBLookupComboBox
          Left = 16
          Top = 160
          DataBinding.DataField = 'Pagadora2'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          TabOrder = 5
          Width = 304
        end
      end
      object cxDBCheckBox3: TcxDBCheckBox
        Left = 24
        Top = 260
        Caption = 'Produce CXP'
        DataBinding.DataField = 'ProduceCXP'
        DataBinding.DataSource = DataSource
        TabOrder = 6
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
    end
  end
  inherited pmlMain: TPanel
    Top = 525
    Width = 626
    ExplicitTop = 525
    ExplicitWidth = 626
    inherited btnCancel: TButton
      Left = 544
      ExplicitLeft = 544
    end
    inherited btnOk: TButton
      Left = 463
      ExplicitLeft = 463
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  object dsMovimientosTipo: TDataSource
    Left = 338
    Top = 4
  end
end
