inherited dmCuentasBancarias: TdmCuentasBancarias
  OldCreateOrder = True
  Width = 457
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaBancaria'#13#10'      ,IdPersona'#13#10'      ,IdCuentaBancar' +
      'iaTipo'#13#10'      ,IdBanco'#13#10'      ,CuentaBancaria'#13#10'      ,ClabeInter' +
      'bancaria'#13#10'      ,IdMoneda'#13#10', EstructuraEstadoCuenta'#13#10'      ,Sald' +
      'oCuenta'#13#10'  FROM CuentasBancarias'#13#10
    Left = 32
    object adodsMasterIdCuentaBancaria: TAutoIncField
      FieldName = 'IdCuentaBancaria'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdCuentaBancariaTipo: TIntegerField
      FieldName = 'IdCuentaBancariaTipo'
      Visible = False
    end
    object adodsMasterIdBanco: TIntegerField
      FieldName = 'IdBanco'
      Visible = False
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsMasterCuentaBancaria: TStringField
      FieldName = 'CuentaBancaria'
      Size = 50
    end
    object adodsMasterClabeInterbancaria: TStringField
      FieldName = 'ClabeInterbancaria'
      Size = 18
    end
    object adodsMasterEstructuraEstadoCuenta: TStringField
      FieldName = 'EstructuraEstadoCuenta'
      Size = 500
    end
    object adodsMasterSaldoCuenta: TBCDField
      FieldName = 'SaldoCuenta'
      Precision = 18
      Size = 0
    end
    object adodsMasterBanco: TStringField
      FieldKind = fkLookup
      FieldName = 'Banco'
      LookupDataSet = ADODSBanco
      LookupKeyFields = 'IdBanco'
      LookupResultField = 'Nombre'
      KeyFields = 'IdBanco'
      Size = 50
      Lookup = True
    end
    object adodsMasterTipoCtaBan: TStringField
      FieldKind = fkLookup
      FieldName = 'TipoCtaBan'
      LookupDataSet = ADODSTipoCtaBancaria
      LookupKeyFields = 'IdCuentaBancariaTipo'
      LookupResultField = 'Identificador'
      KeyFields = 'IdCuentaBancariaTipo'
      Lookup = True
    end
    object adodsMasterMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = ADODSMoneda
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Identificador'
      KeyFields = 'IdMoneda'
      Size = 10
      Lookup = True
    end
    object adodsMasterPersona: TStringField
      FieldKind = fkLookup
      FieldName = 'Persona'
      LookupDataSet = ADODSPersona
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersona'
      Size = 500
      Lookup = True
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 392
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 120
    Top = 16
  end
  object adodsUsuariosXCtaBan: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select  IdCuentaBancariaUsuario, IdPersona, IdCuentaBancaria, Nu' +
      'meroSerieToken, Observaciones1, Observaciones2 from CuentasBanca' +
      'riasUsuarios'#13#10'where IdCuentaBancaria =:IdCuentaBancaria'
    DataSource = dsMaster
    MasterFields = 'IdCuentaBancaria'
    Parameters = <
      item
        Name = 'IdCuentaBancaria'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 56
    Top = 256
    object adodsUsuariosXCtaBanIdCuentaBancariaUsuario: TIntegerField
      FieldName = 'IdCuentaBancariaUsuario'
      Visible = False
    end
    object adodsUsuariosXCtaBanIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsUsuariosXCtaBanIdCuentaBancaria: TIntegerField
      FieldName = 'IdCuentaBancaria'
      Visible = False
    end
    object adodsUsuariosXCtaBanNumeroSerieToken: TStringField
      DisplayLabel = 'Token n'#250'mero de serie'
      FieldName = 'NumeroSerieToken'
      Size = 100
    end
    object adodsUsuariosXCtaBanObservaciones1: TStringField
      FieldName = 'Observaciones1'
      Size = 100
    end
    object adodsUsuariosXCtaBanObservaciones2: TStringField
      FieldName = 'Observaciones2'
      Size = 100
    end
    object adodsUsuariosXCtaBanPersona: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'Persona'
      LookupDataSet = ADODSPersonaUsuario
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersona'
      Size = 500
      Lookup = True
    end
  end
  object ADODSPersona: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, RFC, RazonSocial, Nombre, ApellidoPaterno, Ape' +
      'llidoMaterno '#13#10'from Personas'
    Parameters = <>
    Left = 232
    Top = 16
    object ADODSPersonaIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object ADODSPersonaRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object ADODSPersonaRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 200
    end
    object ADODSPersonaNombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object ADODSPersonaApellidoPaterno: TStringField
      FieldName = 'ApellidoPaterno'
      Size = 30
    end
    object ADODSPersonaApellidoMaterno: TStringField
      FieldName = 'ApellidoMaterno'
      Size = 30
    end
  end
  object ADODSTipoCtaBancaria: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCuentaBancariaTipo, Identificador, Descripcion from Cue' +
      'ntasBancariasTipos'
    Parameters = <>
    Left = 232
    Top = 80
  end
  object ADODSBanco: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdBanco, Nombre from Bancos'
    Parameters = <>
    Left = 232
    Top = 136
    object ADODSBancoIdBanco: TAutoIncField
      FieldName = 'IdBanco'
      ReadOnly = True
    end
    object ADODSBancoNombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
  end
  object ADODSMoneda: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, Identificador, Descripcion from Monedas'
    Parameters = <>
    Left = 240
    Top = 192
    object ADODSMonedaIdMoneda: TAutoIncField
      FieldName = 'IdMoneda'
      ReadOnly = True
    end
    object ADODSMonedaIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 3
    end
    object ADODSMonedaDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
  end
  object ADODSPersonaUsuario: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, RFC, RazonSocial, Nombre, ApellidoPaterno, Ape' +
      'llidoMaterno '#13#10'from Personas where IDPersonaTipo=1'
    Parameters = <>
    Left = 168
    Top = 256
    object AutoIncField1: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object StringField1: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object StringField2: TStringField
      FieldName = 'RazonSocial'
      Size = 200
    end
    object StringField3: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object StringField4: TStringField
      FieldName = 'ApellidoPaterno'
      Size = 30
    end
    object StringField5: TStringField
      FieldName = 'ApellidoMaterno'
      Size = 30
    end
    object ADODSPersonaUsuarioNombreCompleto: TStringField
      FieldKind = fkCalculated
      FieldName = 'NombreCompleto'
      Size = 150
      Calculated = True
    end
  end
end
