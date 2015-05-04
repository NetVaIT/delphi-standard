inherited dmCuentasGastos: TdmCuentasGastos
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaGasto, IdPersona, CuentaGasto, DescripcionGasto, ' +
      'IdCuentaGastoPadre FROM CuentasGastos'
    Left = 32
    Top = 24
    object adodsMasterIdCuentaGasto: TAutoIncField
      FieldName = 'IdCuentaGasto'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterPersona: TStringField
      FieldKind = fkLookup
      FieldName = 'Persona'
      LookupDataSet = adodsPersona
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersona'
      Size = 200
      Lookup = True
    end
    object adodsMasterCuentaGasto: TStringField
      DisplayLabel = 'Cuenta Gasto'
      FieldName = 'CuentaGasto'
      Size = 50
    end
    object adodsMasterDescripcionGasto: TStringField
      DisplayLabel = 'Descripcion Gasto'
      FieldName = 'DescripcionGasto'
      Size = 200
    end
    object adodsMasterIdCuentaGastoPadre: TIntegerField
      FieldName = 'IdCuentaGastoPadre'
      Visible = False
    end
    object adodsMasterCuentaGastoPadre: TStringField
      DisplayLabel = 'Cuenta Gasto Padre'
      FieldKind = fkLookup
      FieldName = 'CuentaGastoPadre'
      LookupDataSet = adodsCuentaGastoPadre
      LookupKeyFields = 'IdCuentaGasto'
      LookupResultField = 'CuentaGasto'
      KeyFields = 'IdCuentaGastoPadre'
      Size = 100
      Lookup = True
    end
  end
  object adodsPersona: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPersona, RazonSocial FROM Personas'
    Parameters = <>
    Left = 152
    Top = 88
  end
  object adodsCuentaGastoPadre: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaGasto, CuentaGasto, DescripcionGasto FROM Cuentas' +
      'Gastos'
    Parameters = <>
    Left = 152
    Top = 160
  end
end
