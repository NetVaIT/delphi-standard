object frmImportXLSSelect: TfrmImportXLSSelect
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Seleccionar'
  ClientHeight = 309
  ClientWidth = 645
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
    Width = 645
    Height = 268
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 152
    ExplicitTop = 136
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 268
    ExplicitWidth = 438
    DesignSize = (
      645
      41)
    object btnOk: TButton
      Left = 482
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Procesar'
      Default = True
      ModalResult = 1
      TabOrder = 0
      ExplicitLeft = 275
    end
    object btnCancel: TButton
      Left = 563
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
      ExplicitLeft = 356
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
