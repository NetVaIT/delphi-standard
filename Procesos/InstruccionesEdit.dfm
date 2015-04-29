inherited frmInstruccionesEdit: TfrmInstruccionesEdit
  Caption = 'Instrucci'#243'n'
  ClientHeight = 553
  ClientWidth = 541
  ExplicitWidth = 547
  ExplicitHeight = 581
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 541
    Height = 512
    ExplicitWidth = 541
    ExplicitHeight = 512
    ClientRectBottom = 510
    ClientRectRight = 539
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 537
      ExplicitHeight = 482
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 46
        Height = 13
        Caption = 'Concepto'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 24
        Top = 64
        Width = 20
        Height = 13
        Caption = 'Tipo'
        FocusControl = cxDBLookupComboBox1
      end
      object Label3: TLabel
        Left = 24
        Top = 160
        Width = 29
        Height = 13
        Caption = 'Fecha'
        FocusControl = cxDBDateEdit1
      end
      object Label8: TLabel
        Left = 24
        Top = 104
        Width = 36
        Height = 13
        Caption = 'Archivo'
      end
      object btnUpdateFile: TSpeedButton
        Left = 494
        Top = 115
        Width = 23
        Height = 22
      end
      object Label4: TLabel
        Left = 24
        Top = 296
        Width = 69
        Height = 13
        Caption = 'Se repite cada'
        FocusControl = lcbPeriodoTipo
      end
      object Label5: TLabel
        Left = 24
        Top = 229
        Width = 50
        Height = 13
        Caption = 'Empieza el'
        FocusControl = deRepetirInicio
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 40
        DataBinding.DataField = 'Concepto'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 304
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 24
        Top = 176
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxDBLabel1: TcxDBLabel
        Left = 24
        Top = 115
        DataBinding.DataField = 'NombreArchivo'
        DataBinding.DataSource = DataSource
        Height = 42
        Width = 471
      end
      object cbRepetir: TcxDBCheckBox
        Left = 24
        Top = 272
        Caption = 'Repetir'
        DataBinding.DataField = 'Repetir'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        OnClick = cbRepetirClick
        Width = 121
      end
      object deRepetirInicio: TcxDBDateEdit
        Left = 24
        Top = 245
        DataBinding.DataField = 'RepetirInicio'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object rgFinaliza: TcxDBRadioGroup
        Left = 24
        Top = 335
        Caption = 'Finaliza'
        DataBinding.DataField = 'RepetirFinaliza'
        DataBinding.DataSource = DataSource
        Properties.Items = <
          item
            Caption = 'Nunca'
            Value = '0'
          end
          item
            Caption = 'Despues de                       repeticiones'
            Value = '1'
          end
          item
            Caption = 'El dia'
            Value = '2'
          end>
        TabOrder = 7
        OnClick = rgFinalizaClick
        Height = 120
        Width = 500
      end
      object edtRepetirHasta: TcxDBSpinEdit
        Left = 119
        Top = 394
        DataBinding.DataField = 'RepetirHasta'
        DataBinding.DataSource = DataSource
        Properties.MinValue = 1.000000000000000000
        TabOrder = 8
        Width = 50
      end
      object edtRepetirFin: TcxDBDateEdit
        Left = 86
        Top = 425
        DataBinding.DataField = 'RepetirFin'
        DataBinding.DataSource = DataSource
        TabOrder = 9
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 24
        Top = 80
        DataBinding.DataField = 'IntruccionTipo'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 1
        Width = 304
      end
      object lcbPeriodoTipo: TcxDBLookupComboBox
        Left = 24
        Top = 312
        DataBinding.DataField = 'PeriodoTipo'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 6
        OnClick = lcbPeriodoTipoClick
        Width = 200
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 512
    Width = 541
    ExplicitTop = 512
    ExplicitWidth = 541
    inherited btnOk: TButton
      Left = 378
      ExplicitLeft = 378
    end
    inherited btnCancel: TButton
      Left = 459
      ExplicitLeft = 459
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmInstrucciones.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
