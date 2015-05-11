inherited frmCuentasXCobrarConceptosEdit: TfrmCuentasXCobrarConceptosEdit
  Caption = 'Concepto Cuentas X Cobrar'
  ClientHeight = 209
  ClientWidth = 711
  ExplicitWidth = 717
  ExplicitHeight = 237
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 711
    Height = 168
    ClientRectBottom = 166
    ClientRectRight = 709
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 58
      ExplicitTop = 156
      ExplicitWidth = 642
      ExplicitHeight = 295
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 64
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 40
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 489
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 80
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 673
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 168
    Width = 711
    inherited btnOk: TButton
      Left = 548
    end
    inherited btnCancel: TButton
      Left = 629
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
