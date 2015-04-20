object frmImportXLSSelect: TfrmImportXLSSelect
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Seleccionar'
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
    ExplicitWidth = 645
    ExplicitHeight = 268
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 634
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 645
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
      ExplicitLeft = 482
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
      ExplicitLeft = 563
    end
    object cxLabel1: TcxLabel
      Left = 16
      Top = 9
      Caption = 
        'Las personas no encontradas no podran generar incidencias, '#191'Desa' +
        ' continuar?'
    end
  end
end
