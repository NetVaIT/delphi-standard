inherited frmRptPagos: TfrmRptPagos
  Caption = 'Detalle de pagos'
  ClientHeight = 290
  ExplicitWidth = 444
  ExplicitHeight = 319
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Height = 249
    ExplicitHeight = 249
    ClientRectBottom = 247
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 219
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 36
        Height = 13
        Caption = 'Periodo'
      end
      object Label2: TLabel
        Left = 24
        Top = 72
        Width = 41
        Height = 13
        Caption = 'Empresa'
        Visible = False
      end
      object Label3: TLabel
        Left = 24
        Top = 123
        Width = 79
        Height = 13
        Caption = 'Cuenta Bancaria'
        Visible = False
      end
      object lcbPeriodo: TcxDBLookupComboBox
        Left = 24
        Top = 43
        DataBinding.DataField = 'IdPeriodo'
        DataBinding.DataSource = dsParams
        Properties.KeyFieldNames = 'IdPeriodo'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        Properties.ListSource = dsPeriodo
        TabOrder = 0
        Width = 304
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
        Visible = False
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
        Visible = False
        Width = 401
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 249
    ExplicitTop = 249
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  object dsPeriodo: TDataSource
    Left = 304
  end
  object dsPersonas: TDataSource
    Left = 384
    Top = 104
  end
  object dsCuentaBancaria: TDataSource
    Left = 384
    Top = 40
  end
end
