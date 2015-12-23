inherited frmExportarPagosDocumentosEdit: TfrmExportarPagosDocumentosEdit
  Caption = 'frmExportarPagosDocumentosEdit'
  ClientHeight = 466
  ClientWidth = 374
  ExplicitWidth = 380
  ExplicitHeight = 495
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 374
    Height = 425
    ExplicitWidth = 412
    ExplicitHeight = 382
    ClientRectBottom = 423
    ClientRectRight = 372
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 30
      ExplicitWidth = 408
      ExplicitHeight = 352
      object Label1: TLabel
        Left = 18
        Top = 189
        Width = 36
        Height = 13
        Caption = 'Estatus'
        FocusControl = DBLookupComboBox1
      end
      object Label2: TLabel
        Left = 18
        Top = 229
        Width = 29
        Height = 13
        Caption = 'Fecha'
        FocusControl = cxDBDateEdit1
      end
      object Label5: TLabel
        Left = 18
        Top = 8
        Width = 36
        Height = 13
        Caption = 'Periodo'
        FocusControl = cxDBTextEdit1
      end
      object Label6: TLabel
        Left = 18
        Top = 48
        Width = 31
        Height = 13
        Caption = 'Emisor'
        FocusControl = cxDBTextEdit2
      end
      object Label7: TLabel
        Left = 18
        Top = 88
        Width = 79
        Height = 13
        Caption = 'Cuenta bancaria'
        FocusControl = cxDBTextEdit3
      end
      object Label8: TLabel
        Left = 18
        Top = 272
        Width = 71
        Height = 13
        Caption = 'Observaciones'
      end
      object Label3: TLabel
        Left = 18
        Top = 128
        Width = 36
        Height = 13
        Caption = 'Archivo'
      end
      object btnUpdateFile: TSpeedButton
        Left = 328
        Top = 139
        Width = 23
        Height = 22
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 18
        Top = 205
        Width = 121
        Height = 21
        DataField = 'Estatus'
        DataSource = DataSource
        TabOrder = 4
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 18
        Top = 245
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 18
        Top = 24
        DataBinding.DataField = 'Periodo'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 0
        Width = 304
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 18
        Top = 64
        DataBinding.DataField = 'Emisor'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 1
        Width = 304
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 18
        Top = 104
        DataBinding.DataField = 'CuentaBancaria'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 2
        Width = 121
      end
      object cxDBMemo1: TcxDBMemo
        Left = 18
        Top = 291
        DataBinding.DataField = 'Observaciones'
        DataBinding.DataSource = DataSource
        TabOrder = 6
        Height = 89
        Width = 304
      end
      object cxDBLabel1: TcxDBLabel
        Left = 18
        Top = 139
        DataBinding.DataField = 'NombreArchivo'
        DataBinding.DataSource = DataSource
        Height = 42
        Width = 304
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 425
    Width = 374
    ExplicitTop = 382
    ExplicitWidth = 412
    inherited btnCancel: TButton
      Left = 292
      ExplicitLeft = 330
    end
    inherited btnOk: TButton
      Left = 211
      ExplicitLeft = 249
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
