inherited frmTipoDocumento: TfrmTipoDocumento
  Caption = 'Tipo Documento'
  ClientHeight = 204
  ClientWidth = 411
  ExplicitWidth = 417
  ExplicitHeight = 232
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 411
    Height = 163
    ClientRectBottom = 161
    ClientRectRight = 409
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
        Width = 369
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 163
    Width = 411
    inherited btnOk: TButton
      Left = 248
    end
    inherited btnCancel: TButton
      Left = 329
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
