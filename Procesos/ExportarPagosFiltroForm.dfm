inherited frmExportarPagosFiltro: TfrmExportarPagosFiltro
  Caption = 'Exportar pagos'
  ClientHeight = 234
  ClientWidth = 448
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 454
  ExplicitHeight = 263
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 448
    Height = 193
    ExplicitWidth = 448
    ExplicitHeight = 193
    ClientRectBottom = 191
    ClientRectRight = 446
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 444
      ExplicitHeight = 163
      object Label1: TLabel
        Left = 24
        Top = 8
        Width = 36
        Height = 13
        Caption = 'Periodo'
      end
      object Label2: TLabel
        Left = 24
        Top = 56
        Width = 31
        Height = 13
        Caption = 'Emisor'
      end
      object Label3: TLabel
        Left = 24
        Top = 99
        Width = 79
        Height = 13
        Caption = 'Cuenta bancaria'
      end
      object lcbPeriodo: TcxDBLookupComboBox
        Left = 24
        Top = 27
        DataBinding.DataField = 'IdPeriodo'
        DataBinding.DataSource = dsParams
        Properties.KeyFieldNames = 'IdPeriodo'
        Properties.ListColumns = <
          item
            FieldName = 'Periodo'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsPeriodo
        TabOrder = 0
        Width = 400
      end
      object dbcbxPersona: TcxDBLookupComboBox
        Left = 24
        Top = 71
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
        Width = 400
      end
      object dbcbxCuentaBancaria: TcxDBLookupComboBox
        Left = 24
        Top = 113
        DataBinding.DataField = 'IdCuentaBancaria'
        DataBinding.DataSource = dsParams
        Properties.KeyFieldNames = 'IdCuentaBancaria'
        Properties.ListColumns = <
          item
            FieldName = 'CuentaBancaria'
          end
          item
            FieldName = 'Banco'
          end
          item
            FieldName = 'Moneda'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsCuentaBancaria
        TabOrder = 2
        Width = 400
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 193
    Width = 448
    ExplicitTop = 193
    ExplicitWidth = 448
    inherited btnOk: TButton
      Left = 285
      ExplicitLeft = 285
    end
    inherited btnCancel: TButton
      Left = 366
      ExplicitLeft = 366
    end
  end
  inherited dsParams: TDataSource
    DataSet = mdParams
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  object dsPeriodo: TDataSource
    DataSet = adoqPeriodos
    Left = 384
    Top = 24
  end
  object dsCuentaBancaria: TDataSource
    DataSet = adoqCuentaBancaria
    Left = 392
    Top = 120
  end
  object dsPersonas: TDataSource
    DataSet = adoqPersonas
    Left = 384
    Top = 72
  end
  object adoqPeriodos: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT IdPeriodo, CAST(Anio AS varchar(4))+'#39'S'#39'+CAST(Numero AS va' +
        'rchar(2)) AS Codigo, Descripcion AS Periodo FROM Periodos')
    Left = 344
    Top = 24
    object adoqPeriodosIdPeriodo: TAutoIncField
      FieldName = 'IdPeriodo'
      ReadOnly = True
    end
    object adoqPeriodosCodigo: TStringField
      FieldName = 'Codigo'
      ReadOnly = True
      Size = 7
    end
    object adoqPeriodosPeriodo: TStringField
      FieldName = 'Periodo'
      Size = 100
    end
  end
  object adoqPersonas: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT PersonasRoles.IdPersona, Personas.RFC, Personas.RazonSoci' +
        'al'
      'FROM PersonasRoles '
      
        'INNER JOIN Personas ON PersonasRoles.IdPersona = Personas.IdPers' +
        'ona'
      
        'WHERE (PersonasRoles.IdRol = 1) AND (PersonasRoles.IdRolEstatus ' +
        '= 1) OR (PersonasRoles.IdRol = 2)')
    Left = 344
    Top = 72
    object adoqPersonasIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adoqPersonasRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object adoqPersonasRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
  end
  object adoqCuentaBancaria: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    DataSource = dsPersonas
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 11
      end>
    SQL.Strings = (
      
        'SELECT CuentasBancarias.IdCuentaBancaria, CuentasBancarias.IdPer' +
        'sona, Bancos.Nombre AS Banco, Monedas.Identificador AS Moneda, C' +
        'uentasBancarias.CuentaBancaria'
      '  FROM Bancos'
      
        'INNER JOIN CuentasBancarias ON Bancos.IdBanco = CuentasBancarias' +
        '.IdBanco'
      
        'INNER JOIN Monedas ON CuentasBancarias.IdMoneda = Monedas.IdMone' +
        'da'
      'WHERE CuentasBancarias.IdPersona = :IdPersona')
    Left = 344
    Top = 120
    object adoqCuentaBancariaIdCuentaBancaria: TAutoIncField
      FieldName = 'IdCuentaBancaria'
      ReadOnly = True
    end
    object adoqCuentaBancariaIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adoqCuentaBancariaBanco: TStringField
      FieldName = 'Banco'
      Size = 50
    end
    object adoqCuentaBancariaMoneda: TStringField
      FieldName = 'Moneda'
      Size = 3
    end
    object adoqCuentaBancariaCuentaBancaria: TStringField
      FieldName = 'CuentaBancaria'
      Size = 50
    end
  end
  object mdParams: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 144
    object mdParamsIdPeriodo: TIntegerField
      FieldName = 'IdPeriodo'
    end
    object mdParamsIdPersona: TWordField
      FieldName = 'IdPersona'
    end
    object mdParamsIdCuentaBancaria: TIntegerField
      FieldName = 'IdCuentaBancaria'
    end
  end
end
