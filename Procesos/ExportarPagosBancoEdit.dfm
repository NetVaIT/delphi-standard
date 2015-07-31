object frmExportaPagosBancos: TfrmExportaPagosBancos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Exportar Pagos Bancos'
  ClientHeight = 304
  ClientWidth = 572
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
  object pnlBase: TPanel
    Left = 0
    Top = 0
    Width = 572
    Height = 304
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 569
    object GroupBox1: TGroupBox
      Left = 16
      Top = 16
      Width = 537
      Height = 233
      Caption = 'Filtrado para exportar pagos al banco'
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 21
        Width = 41
        Height = 13
        Caption = 'Periodos'
      end
      object Label2: TLabel
        Left = 24
        Top = 72
        Width = 41
        Height = 13
        Caption = 'Empresa'
      end
      object Label3: TLabel
        Left = 24
        Top = 123
        Width = 79
        Height = 13
        Caption = 'Cuenta Bancaria'
      end
      object Label4: TLabel
        Left = 24
        Top = 175
        Width = 85
        Height = 13
        Caption = 'Esquema de Pago'
        Visible = False
      end
      object dbcbxPeriodos: TcxDBLookupComboBox
        Left = 24
        Top = 35
        DataBinding.DataField = 'IdPeriodo'
        DataBinding.DataSource = dsParams
        Properties.KeyFieldNames = 'IdPeriodo'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        Properties.ListSource = dsPeriodos
        TabOrder = 0
        Width = 321
      end
      object dbcbxPersona: TcxDBLookupComboBox
        Left = 24
        Top = 87
        DataBinding.DataField = 'IdPersona'
        DataBinding.DataSource = dsParams
        Properties.KeyFieldNames = 'IdPersona'
        Properties.ListColumns = <
          item
            FieldName = 'RazonSocial'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsPersonas
        TabOrder = 1
        Width = 321
      end
      object dbcbxCuentaBancaria: TcxDBLookupComboBox
        Left = 24
        Top = 137
        DataBinding.DataField = 'IdCuentaBancaria'
        DataBinding.DataSource = dsParams
        Properties.KeyFieldNames = 'IdCuentaBancaria'
        Properties.ListColumns = <
          item
            FieldName = 'CuentaBancaria'
          end
          item
            FieldName = 'Nombre'
          end
          item
            FieldName = 'Identificador'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsCuentaBancaria
        TabOrder = 2
        Width = 401
      end
      object dbcbxEsquemaPago: TcxDBLookupComboBox
        Left = 24
        Top = 189
        DataBinding.DataField = 'IdEsquemaPago'
        DataBinding.DataSource = dsParams
        Properties.KeyFieldNames = 'IdEsquemaPago'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        Properties.ListSource = dsEsquemaPago
        TabOrder = 3
        Visible = False
        Width = 489
      end
    end
    object btnAceptar: TButton
      Left = 392
      Top = 264
      Width = 75
      Height = 25
      Caption = '&Aceptar'
      ModalResult = 1
      TabOrder = 1
      OnClick = btnAceptarClick
    end
    object btnCancelar: TButton
      Left = 478
      Top = 264
      Width = 75
      Height = 25
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 2
    end
  end
  object dsPeriodos: TDataSource
    Left = 16
    Top = 256
  end
  object dsEsquemaPago: TDataSource
    AutoEdit = False
    Left = 256
    Top = 256
  end
  object dsParams: TDataSource
    Left = 336
    Top = 256
  end
  object dsCuentaBancaria: TDataSource
    Left = 168
    Top = 256
  end
  object dsPersonas: TDataSource
    Left = 80
    Top = 256
  end
end
