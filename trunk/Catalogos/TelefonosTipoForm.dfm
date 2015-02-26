inherited frmTelefonosTipo: TfrmTelefonosTipo
  Caption = 'Telefonos Tipo'
  ClientHeight = 197
  ClientWidth = 387
  ExplicitWidth = 393
  ExplicitHeight = 225
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 387
    Height = 156
    ClientRectBottom = 154
    ClientRectRight = 385
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
        Width = 345
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 156
    Width = 387
    inherited btnOk: TButton
      Left = 224
    end
    inherited btnCancel: TButton
      Left = 305
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
