inherited dmPersonasRolesCuentasBancarias: TdmPersonasRolesCuentasBancarias
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersonaRolCuentaBancaria, IdPersonaRol, IdCuentaBancari' +
      'a, IdCuentaBancariaPerfil, Porcentaje, LimiteInferior, LimiteSup' +
      'erior FROM PersonasRolesCuentasBancarias'
    Left = 40
    Top = 24
    object adodsMasterIdPersonaRolCuentaBancaria: TAutoIncField
      FieldName = 'IdPersonaRolCuentaBancaria'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersonaRol: TIntegerField
      FieldName = 'IdPersonaRol'
      Visible = False
    end
    object adodsMasterIdCuentaBancaria: TIntegerField
      FieldName = 'IdCuentaBancaria'
      Visible = False
    end
    object adodsMasterCuentaBancaria: TStringField
      DisplayLabel = 'Cuenta Bancaria'
      FieldKind = fkLookup
      FieldName = 'CuentaBancaria'
      LookupDataSet = adodsCuentaBancaria
      LookupKeyFields = 'IdCuentaBancaria'
      LookupResultField = 'CuentaBancaria'
      KeyFields = 'IdCuentaBancaria'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdCuentaBancariaPerfil: TIntegerField
      FieldName = 'IdCuentaBancariaPerfil'
      Visible = False
    end
    object adodsMasterCuentaBancariaPerfil: TStringField
      DisplayLabel = 'Perfil de Cuenta Bancaria'
      FieldKind = fkLookup
      FieldName = 'CuentaBancariaPerfil'
      LookupDataSet = adodsCuentaBancariaPerfil
      LookupKeyFields = 'IdCuentaBancariaPerfil'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCuentaBancariaPerfil'
      Size = 50
      Lookup = True
    end
    object adodsMasterPorcentaje: TBCDField
      FieldName = 'Porcentaje'
      Precision = 18
      Size = 2
    end
    object adodsMasterLimiteInferior: TBCDField
      DisplayLabel = 'Limite Inferior'
      FieldName = 'LimiteInferior'
      Precision = 18
      Size = 2
    end
    object adodsMasterLimiteSuperior: TBCDField
      DisplayLabel = 'Limite Superior'
      FieldName = 'LimiteSuperior'
      Precision = 18
      Size = 2
    end
  end
  object adodsCuentaBancaria: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT CuentasBancarias.IdBanco, CuentasBancarias.IdMoneda, Cuen' +
      'tasBancarias.IdCuentaBancaria, Bancos.Nombre, Monedas.Identifica' +
      'dor, CuentasBancarias.CuentaBancaria'#13#10'  FROM Bancos'#13#10'INNER JOIN ' +
      'CuentasBancarias ON Bancos.IdBanco = CuentasBancarias.IdBanco'#13#10'I' +
      'NNER JOIN Monedas ON CuentasBancarias.IdMoneda = Monedas.IdMoned' +
      'a'
    Parameters = <>
    Left = 152
    Top = 104
  end
  object adodsCuentaBancariaPerfil: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaBancariaPerfil, Descripcion FROM CuentasBancarias' +
      'Perfiles'
    Parameters = <>
    Left = 152
    Top = 184
  end
end
