inherited frmEsquemaPago: TfrmEsquemaPago
  Caption = 'Esquema de Pago'
  ClientHeight = 226
  ClientWidth = 380
  ExplicitWidth = 386
  ExplicitHeight = 254
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 380
    Height = 185
    ClientRectBottom = 183
    ClientRectRight = 378
    inherited tsGeneral: TcxTabSheet
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
        Top = 98
        Width = 124
        Height = 13
        Caption = 'Estatus Esquema de Pago'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 73
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 345
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 16
        Top = 113
        DataBinding.DataField = 'EsquemaPagoEstatus'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 2
        Width = 193
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 185
    Width = 380
    inherited btnOk: TButton
      Left = 217
    end
    inherited btnCancel: TButton
      Left = 298
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
