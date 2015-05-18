inherited frmIncidenciaDetallesEdit: TfrmIncidenciaDetallesEdit
  Caption = 'Incidencia Detalle'
  ClientHeight = 265
  ClientWidth = 528
  ExplicitWidth = 534
  ExplicitHeight = 294
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 528
    Height = 224
    ExplicitWidth = 528
    ExplicitHeight = 224
    ClientRectBottom = 222
    ClientRectRight = 526
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 524
      ExplicitHeight = 194
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 92
        Height = 13
        Caption = 'Tipo de Movimiento'
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 38
        Height = 13
        Caption = 'Importe'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 16
        Top = 135
        Width = 36
        Height = 13
        Caption = 'Estatus'
        Visible = False
      end
      object Label4: TLabel
        Left = 16
        Top = 96
        Width = 38
        Height = 13
        Caption = 'Moneda'
        FocusControl = cxDBLookupComboBox3
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'Importe'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 16
        Top = 32
        DataBinding.DataField = 'MovimientoTipo'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 0
        Width = 500
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 16
        Top = 151
        DataBinding.DataField = 'IncidenciaEstatus'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 3
        Visible = False
        Width = 300
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 16
        Top = 112
        DataBinding.DataField = 'Moneda'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 2
        Width = 300
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 224
    Width = 528
    ExplicitTop = 224
    ExplicitWidth = 528
    inherited btnOk: TButton
      Left = 365
      ExplicitLeft = 365
    end
    inherited btnCancel: TButton
      Left = 446
      ExplicitLeft = 446
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
