inherited frmInstruccionesEdit: TfrmInstruccionesEdit
  Caption = 'frmInstruccionesEdit'
  ClientHeight = 322
  ExplicitWidth = 444
  ExplicitHeight = 350
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Height = 281
    ExplicitHeight = 281
    ClientRectBottom = 279
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 251
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
        Top = 104
        Width = 29
        Height = 13
        Caption = 'Fecha'
        FocusControl = cxDBDateEdit1
      end
      object Label4: TLabel
        Left = 24
        Top = 144
        Width = 77
        Height = 13
        Caption = 'Contador desde'
        FocusControl = cxDBSpinEdit1
      end
      object Label5: TLabel
        Left = 168
        Top = 144
        Width = 75
        Height = 13
        Caption = 'Contador hasta'
        FocusControl = cxDBSpinEdit2
      end
      object Label6: TLabel
        Left = 24
        Top = 184
        Width = 25
        Height = 13
        Caption = 'Inicio'
        FocusControl = cxDBDateEdit2
      end
      object Label7: TLabel
        Left = 168
        Top = 184
        Width = 14
        Height = 13
        Caption = 'Fin'
        FocusControl = cxDBDateEdit3
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
        Top = 120
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 24
        Top = 160
        DataBinding.DataField = 'ContadorDesde'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxDBSpinEdit2: TcxDBSpinEdit
        Left = 168
        Top = 160
        DataBinding.DataField = 'ContadorHasta'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 24
        Top = 200
        DataBinding.DataField = 'FechaInicio'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
      object cxDBDateEdit3: TcxDBDateEdit
        Left = 168
        Top = 200
        DataBinding.DataField = 'FechaFin'
        DataBinding.DataSource = DataSource
        TabOrder = 6
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 281
    ExplicitTop = 281
  end
  inherited DataSource: TDataSource
    DataSet = dmInstrucciones.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
