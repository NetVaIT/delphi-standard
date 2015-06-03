object frmVerificar: TfrmVerificar
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Verificar'
  ClientHeight = 761
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMaster: TPanel
    Left = 0
    Top = 41
    Width = 634
    Height = 720
    Align = alClient
    TabOrder = 0
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 634
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      634
      41)
    object btnOk: TButton
      Left = 471
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Procesar'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object btnCancel: TButton
      Left = 552
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
    object lblInfo: TcxLabel
      Left = 16
      Top = 9
      Caption = 'lblInfo'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
  end
end
