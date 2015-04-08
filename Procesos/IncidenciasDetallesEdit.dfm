inherited frmIncidenciaDetallesEdit: TfrmIncidenciaDetallesEdit
  Caption = 'Incidencia Detalle'
  ClientHeight = 228
  ClientWidth = 338
  ExplicitWidth = 344
  ExplicitHeight = 256
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 338
    Height = 187
    ExplicitWidth = 338
    ExplicitHeight = 187
    ClientRectBottom = 185
    ClientRectRight = 336
    inherited tsGeneral: TcxTabSheet
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
        Top = 96
        Width = 102
        Height = 13
        Caption = 'Estatus de Incidencia'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'Importe'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 16
        Top = 32
        DataBinding.DataField = 'MovimientoTipo'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 1
        Width = 300
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 16
        Top = 112
        DataBinding.DataField = 'IncidenciaEstatus'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 2
        Width = 300
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 187
    Width = 338
    ExplicitTop = 187
    ExplicitWidth = 338
    inherited btnOk: TButton
      Left = 175
      ExplicitLeft = 175
    end
    inherited btnCancel: TButton
      Left = 256
      ExplicitLeft = 256
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
