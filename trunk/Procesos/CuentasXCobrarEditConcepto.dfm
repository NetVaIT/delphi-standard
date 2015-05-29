inherited frmCuentasXCobrarConceptoEdit: TfrmCuentasXCobrarConceptoEdit
  Caption = 'Cambiar Concepto'
  ClientHeight = 200
  ClientWidth = 547
  ExplicitWidth = 553
  ExplicitHeight = 228
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 547
    Height = 159
    ClientRectBottom = 157
    ClientRectRight = 545
    inherited tsGeneral: TcxTabSheet
      object Label1: TLabel
        Left = 20
        Top = 44
        Width = 54
        Height = 13
        Caption = 'Descripcion'
      end
      object Label2: TLabel
        Left = 134
        Top = 21
        Width = 280
        Height = 13
        Caption = 'Seleccione un Concepto para Autorizar la Cuenta X Cobrar'
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 20
        Top = 60
        Properties.ListColumns = <>
        TabOrder = 0
        Width = 501
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 159
    Width = 547
    inherited btnOk: TButton
      Left = 384
    end
    inherited btnCancel: TButton
      Left = 465
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
