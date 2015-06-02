object frmCuentasXCobrarEditConcepto: TfrmCuentasXCobrarEditConcepto
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSizeToolWin
  Caption = 'Cuentas X Cobrar Editar Concepto'
  ClientHeight = 149
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 513
    Height = 149
    Align = alClient
    BevelEdges = []
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 586
    ExplicitHeight = 135
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 280
      Height = 13
      Caption = 'Seleccione un Concepto para Autorizar la Cuenta X Cobrar'
    end
    object pmlMain: TPanel
      Left = 0
      Top = 108
      Width = 513
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitTop = 94
      ExplicitWidth = 586
      DesignSize = (
        513
        41)
      object btnOk: TButton
        Left = 328
        Top = 2
        Width = 75
        Height = 25
        Hint = 'Aceptar'
        Anchors = [akTop, akRight]
        Caption = '&Aceptar'
        Default = True
        ImageIndex = 0
        ModalResult = 1
        TabOrder = 0
        OnClick = btnOkClick
        ExplicitLeft = 401
      end
      object btnCancel: TButton
        Left = 421
        Top = 2
        Width = 75
        Height = 25
        Hint = 'Cancelar'
        Anchors = [akTop, akRight]
        Cancel = True
        Caption = '&Cancelar'
        ImageIndex = 1
        ModalResult = 2
        TabOrder = 1
        OnClick = btnCancelClick
        ExplicitLeft = 494
      end
    end
    object cxCBxConceptos: TcxComboBox
      Left = 16
      Top = 35
      AutoSize = False
      Properties.Alignment.Vert = taTopJustify
      Properties.ItemHeight = 42
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Height = 42
      Width = 480
    end
  end
  object DataSource: TDataSource
    DataSet = dmCuentasXCobrar.adodsCXCConceptos
    Left = 24
    Top = 89
  end
end
