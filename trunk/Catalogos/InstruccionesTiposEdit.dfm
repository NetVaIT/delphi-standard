inherited frmInstruccionesTiposEdit: TfrmInstruccionesTiposEdit
  Caption = 'Tipo de instrucci'#243'n'
  ClientHeight = 199
  ClientWidth = 367
  ExplicitWidth = 373
  ExplicitHeight = 228
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 367
    Height = 158
    ExplicitWidth = 367
    ExplicitHeight = 200
    ClientRectBottom = 156
    ClientRectRight = 365
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 363
      ExplicitHeight = 170
      object Label1: TLabel
        Left = 32
        Top = 16
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 32
        Top = 56
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
        FocusControl = cxDBTextEdit2
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 32
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 32
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 304
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 158
    Width = 367
    ExplicitTop = 200
    ExplicitWidth = 367
    inherited btnOk: TButton
      Left = 204
      ExplicitLeft = 204
    end
    inherited btnCancel: TButton
      Left = 285
      ExplicitLeft = 285
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
