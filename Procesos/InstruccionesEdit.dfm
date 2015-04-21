inherited frmInstruccionesEdit: TfrmInstruccionesEdit
  Caption = 'Instrucci'#243'n'
  ClientHeight = 601
  ClientWidth = 541
  ExplicitWidth = 547
  ExplicitHeight = 630
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 541
    Height = 560
    ExplicitWidth = 541
    ExplicitHeight = 560
    ClientRectBottom = 558
    ClientRectRight = 539
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 537
      ExplicitHeight = 530
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
      object Label6: TLabel
        Left = 296
        Top = 264
        Width = 66
        Height = 13
        Caption = 'IdPeriodoTipo'
        FocusControl = cxDBSpinEdit1
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
      object rgRepetirDia: TcxDBRadioGroup
        Left = 24
        Top = 337
        Caption = 'Repetir el '
        DataBinding.DataField = 'RepetirDia'
        DataBinding.DataSource = DataSource
        Properties.Columns = 7
        Properties.Items = <
          item
            Caption = 'Lunes'
            Value = '2'
          end
          item
            Caption = 'Martes'
            Value = '3'
          end
          item
            Caption = 'Miercoles'
            Value = '4'
          end
          item
            Caption = 'Jueves'
            Value = '5'
          end
          item
            Caption = 'Viernes'
            Value = '6'
          end
          item
            Caption = 'S'#225'bado'
            Value = '7'
          end
          item
            Caption = 'Domingo'
            Value = '1'
          end>
        TabOrder = 7
        Visible = False
        Height = 49
        Width = 500
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
        Top = 392
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
        TabOrder = 8
        OnClick = rgFinalizaClick
        Height = 117
        Width = 500
      end
      object edtRepetirHasta: TcxDBSpinEdit
        Left = 120
        Top = 447
        DataBinding.DataField = 'RepetirHasta'
        DataBinding.DataSource = DataSource
        TabOrder = 9
        Width = 50
      end
      object edtRepetirFin: TcxDBDateEdit
        Left = 88
        Top = 476
        DataBinding.DataField = 'RepetirFin'
        DataBinding.DataSource = DataSource
        TabOrder = 10
        Width = 121
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 296
        Top = 280
        DataBinding.DataField = 'IdPeriodoTipo'
        DataBinding.DataSource = DataSource
        TabOrder = 11
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
    Top = 560
    Width = 541
    ExplicitTop = 560
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
