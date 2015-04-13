inherited frmDocumentosAdjuntosEdit: TfrmDocumentosAdjuntosEdit
  Caption = 'frmDocumentosAdjuntosEdit'
  ClientHeight = 284
  ClientWidth = 439
  ExplicitWidth = 445
  ExplicitHeight = 312
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 439
    Height = 243
    ExplicitWidth = 439
    ExplicitHeight = 179
    ClientRectBottom = 241
    ClientRectRight = 437
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 30
      ExplicitWidth = 435
      ExplicitHeight = 229
      object Label1: TLabel
        Left = 16
        Top = 104
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 192
        Top = 147
        Width = 36
        Height = 13
        Caption = 'Archivo'
      end
      object Label3: TLabel
        Left = 16
        Top = 24
        Width = 92
        Height = 13
        Caption = 'Tipo de Documento'
      end
      object Label4: TLabel
        Left = 16
        Top = 64
        Width = 98
        Height = 13
        Caption = 'Clase de Documento'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 120
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 401
      end
      object Button1: TButton
        Left = 128
        Top = 166
        Width = 75
        Height = 25
        Caption = 'Cargar'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 216
        Top = 166
        Width = 75
        Height = 25
        Caption = 'Bajar'
        TabOrder = 2
        OnClick = Button2Click
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 16
        Top = 39
        DataBinding.DataField = 'DocumentoTipo'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 3
        Width = 267
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 16
        Top = 79
        DataBinding.DataField = 'DocumentoClase'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 4
        Width = 179
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 243
    Width = 439
    ExplicitTop = 179
    ExplicitWidth = 439
    inherited btnOk: TButton
      Left = 276
      ExplicitLeft = 276
    end
    inherited btnCancel: TButton
      Left = 357
      ExplicitLeft = 357
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmDocumentosAdjuntos.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  object odlgCargar: TOpenDialog
    Left = 66
    Top = 188
  end
  object sdlgBajar: TSaveDialog
    Left = 330
    Top = 188
  end
end
