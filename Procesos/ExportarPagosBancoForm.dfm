object frmExportarPagosBanco: TfrmExportarPagosBanco
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Descargar Pagos Banco'
  ClientHeight = 403
  ClientWidth = 715
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
  object pnlbase: TPanel
    Left = 0
    Top = 0
    Width = 715
    Height = 403
    Align = alClient
    TabOrder = 0
    object btnGuardar: TSpeedButton
      Left = 398
      Top = 368
      Width = 75
      Height = 25
    end
    object btnAceptar: TButton
      Left = 526
      Top = 368
      Width = 75
      Height = 25
      Caption = '&Aceptar'
      ModalResult = 1
      TabOrder = 0
    end
    object btnCancelar: TButton
      Left = 622
      Top = 368
      Width = 75
      Height = 25
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
    object cxGrid1: TcxGrid
      Left = 16
      Top = 16
      Width = 681
      Height = 337
      TabOrder = 2
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsExportarPagosDocumentos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid1DBTableView1IdExportarPagoDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'IdExportarPagoDocumento'
          Visible = False
        end
        object cxGrid1DBTableView1Fecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object cxGrid1DBTableView1Archivo: TcxGridDBColumn
          DataBinding.FieldName = 'Archivo'
          Width = 304
        end
        object cxGrid1DBTableView1ExportaPagoDocumentoEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'ExportaPagoDocumentoEstatus'
          Width = 100
        end
        object cxGrid1DBTableView1Observaciones: TcxGridDBColumn
          DataBinding.FieldName = 'Observaciones'
          Width = 304
        end
        object cxGrid1DBTableView1IdExportarPagoDocumentoEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdExportarPagoDocumentoEstatus'
          Visible = False
        end
        object cxGrid1DBTableView1IdDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumento'
          Visible = False
        end
        object cxGrid1DBTableView1Hash: TcxGridDBColumn
          DataBinding.FieldName = 'Hash'
          Width = 304
        end
        object cxGrid1DBTableView1IdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object cxGrid1DBTableView1IdPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPeriodo'
          Visible = False
        end
        object cxGrid1DBTableView1IdEsquemaPago: TcxGridDBColumn
          DataBinding.FieldName = 'IdEsquemaPago'
          Visible = False
        end
        object cxGrid1DBTableView1IdBanco: TcxGridDBColumn
          DataBinding.FieldName = 'IdBanco'
          Visible = False
        end
        object cxGrid1DBTableView1IdCuentaBancaria: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaBancaria'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object dsExportarPagosDocumentos: TDataSource
    DataSet = dmExportarPagosBancos.adodsExportarPagosDocumentos
    Left = 66
    Top = 355
  end
  object ActionList: TActionList
    Left = 184
    Top = 355
    object actPost: TAction
      Caption = '&Aceptar'
      Hint = 'Aceptar'
      ImageIndex = 0
    end
    object actCancel: TAction
      Caption = '&Cancelar'
      Hint = 'Cancelar'
      ImageIndex = 1
    end
  end
end
