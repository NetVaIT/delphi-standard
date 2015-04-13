inherited frmEsquemaPagosEdit: TfrmEsquemaPagosEdit
  Caption = 'Esquema de Pago'
  ClientHeight = 226
  ClientWidth = 529
  ExplicitWidth = 535
  ExplicitHeight = 255
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 529
    Height = 185
    ExplicitWidth = 394
    ExplicitHeight = 185
    ClientRectBottom = 183
    ClientRectRight = 527
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 390
      ExplicitHeight = 155
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
        Caption = 'Descripci'#243'n'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 98
        Width = 36
        Height = 13
        Caption = 'Estatus'
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
        Width = 500
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
    Width = 529
    ExplicitTop = 185
    ExplicitWidth = 394
    inherited btnOk: TButton
      Left = 366
      ExplicitLeft = 231
    end
    inherited btnCancel: TButton
      Left = 447
      ExplicitLeft = 312
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
