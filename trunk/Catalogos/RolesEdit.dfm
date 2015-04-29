inherited frmRolesEdit: TfrmRolesEdit
  Caption = 'Rol'
  ClientHeight = 313
  ClientWidth = 505
  ExplicitWidth = 511
  ExplicitHeight = 341
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 505
    Height = 272
    ExplicitWidth = 505
    ExplicitHeight = 272
    ClientRectBottom = 270
    ClientRectRight = 503
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 501
      ExplicitHeight = 242
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 20
        Height = 13
        Caption = 'Tipo'
        FocusControl = cxDBLookupComboBox1
      end
      object Label4: TLabel
        Left = 16
        Top = 136
        Width = 85
        Height = 13
        Caption = 'Esquema de pago'
        FocusControl = cxDBLookupComboBox2
      end
      object Label5: TLabel
        Left = 16
        Top = 175
        Width = 107
        Height = 13
        Caption = 'Contrato - Documento'
      end
      object btnUpdateFile: TSpeedButton
        Left = 464
        Top = 189
        Width = 23
        Height = 22
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 304
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 16
        Top = 112
        DataBinding.DataField = 'RolTipo'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 2
        Width = 304
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 16
        Top = 152
        DataBinding.DataField = 'EsquemaPago'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 3
        Width = 471
      end
      object cxDBLabel1: TcxDBLabel
        Left = 16
        Top = 189
        DataBinding.DataField = 'Documento'
        DataBinding.DataSource = DataSource
        Height = 41
        Width = 446
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 272
    Width = 505
    ExplicitTop = 272
    ExplicitWidth = 505
    inherited btnOk: TButton
      Left = 342
      ExplicitLeft = 342
    end
    inherited btnCancel: TButton
      Left = 423
      ExplicitLeft = 423
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmRoles.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
