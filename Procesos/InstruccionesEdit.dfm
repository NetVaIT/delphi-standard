inherited frmInstruccionesEdit: TfrmInstruccionesEdit
  Caption = 'Instrucci'#243'n'
  ClientHeight = 607
  ClientWidth = 541
  ExplicitWidth = 547
  ExplicitHeight = 636
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 541
    Height = 566
    ExplicitWidth = 602
    ExplicitHeight = 575
    ClientRectBottom = 564
    ClientRectRight = 539
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 598
      ExplicitHeight = 545
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
        FocusControl = DBLookupComboBox1
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
        Top = 256
        Width = 69
        Height = 13
        Caption = 'Se repite cada'
        FocusControl = DBLookupComboBox2
      end
      object Label5: TLabel
        Left = 24
        Top = 352
        Width = 50
        Height = 13
        Caption = 'Empieza el'
        FocusControl = cxDBDateEdit2
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 40
        DataBinding.DataField = 'Concepto'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 304
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 24
        Top = 80
        Width = 304
        Height = 21
        DataField = 'IntruccionTipo'
        DataSource = DataSource
        TabOrder = 1
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 24
        Top = 176
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = DataSource
        TabOrder = 2
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
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 24
        Top = 232
        Caption = 'Repetir'
        DataBinding.DataField = 'Repetir'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 24
        Top = 272
        Width = 200
        Height = 21
        DataField = 'PeriodoTipo'
        DataSource = DataSource
        TabOrder = 5
      end
      object cxDBRadioGroup1: TcxDBRadioGroup
        Left = 24
        Top = 297
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
        TabOrder = 6
        Height = 49
        Width = 500
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 24
        Top = 368
        DataBinding.DataField = 'RepetirInicio'
        DataBinding.DataSource = DataSource
        TabOrder = 7
        Width = 121
      end
      object cxDBRadioGroup2: TcxDBRadioGroup
        Left = 24
        Top = 395
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
        Height = 117
        Width = 500
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 120
        Top = 448
        DataBinding.DataField = 'RepetirHasta'
        DataBinding.DataSource = DataSource
        TabOrder = 9
        Width = 50
      end
      object cxDBDateEdit3: TcxDBDateEdit
        Left = 88
        Top = 478
        DataBinding.DataField = 'RepetirFin'
        DataBinding.DataSource = DataSource
        TabOrder = 10
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 566
    Width = 541
    ExplicitTop = 575
    ExplicitWidth = 602
    inherited btnOk: TButton
      Left = 378
      ExplicitLeft = 439
    end
    inherited btnCancel: TButton
      Left = 459
      ExplicitLeft = 520
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmInstrucciones.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
