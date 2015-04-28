inherited dmRolesCuentasBancarias: TdmRolesCuentasBancarias
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdRolCuentaBancaria, IdPersonaRol, IdCuentaBancaria, Porc' +
      'entaje, LimiteInferior, LimiteSuperior FROM RolesCuentasBancaria' +
      's'
    Left = 40
    Top = 24
    object adodsMasterIdRolCuentaBancaria: TAutoIncField
      FieldName = 'IdRolCuentaBancaria'
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
      FieldKind = fkLookup
      FieldName = 'CuentaBancaria'
      LookupDataSet = adodsCuentaBancaria
      LookupKeyFields = 'IdCuentaBancaria'
      LookupResultField = 'CuentaBancaria'
      KeyFields = 'IdCuentaBancaria'
      Size = 50
      Lookup = True
    end
    object adodsMasterPorcentaje: TBCDField
      FieldName = 'Porcentaje'
      Precision = 18
      Size = 2
    end
    object adodsMasterLimiteInferior: TBCDField
      FieldName = 'LimiteInferior'
      Precision = 18
      Size = 2
    end
    object adodsMasterLimiteSuperior: TBCDField
      FieldName = 'LimiteSuperior'
      Precision = 18
      Size = 2
    end
  end
  object adodsCuentaBancaria: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Left = 152
    Top = 104
  end
end
