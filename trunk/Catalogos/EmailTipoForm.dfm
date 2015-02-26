inherited frmEmailTipo: TfrmEmailTipo
  Caption = 'Email Tipo'
  ClientHeight = 196
  ClientWidth = 377
  ExplicitWidth = 383
  ExplicitHeight = 224
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 377
    Height = 155
    ClientRectBottom = 153
    ClientRectRight = 375
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 295
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
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 61
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 332
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 155
    Width = 377
    inherited btnOk: TButton
      Left = 214
    end
    inherited btnCancel: TButton
      Left = 295
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
