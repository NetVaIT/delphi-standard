inherited dmCuentasContables: TdmCuentasContables
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaContable, IdPersona, CuentaContable, Descripcion,' +
      ' Naturaleza, CodigoAgrupaSAT, IdCuentaPadre FROM CuentasContable' +
      's'
    Left = 40
    Top = 32
    object adodsMasterIdCuentaContable: TAutoIncField
      FieldName = 'IdCuentaContable'
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
    object adodsMasterCuentaContable: TStringField
      DisplayLabel = 'Cuenta Contable'
      FieldName = 'CuentaContable'
      Size = 100
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object adodsMasterNaturaleza: TStringField
      FieldName = 'Naturaleza'
      Size = 1
    end
    object adodsMasterCodigoAgrupaSAT: TStringField
      DisplayLabel = 'Codigo Agrupa SAT'
      FieldName = 'CodigoAgrupaSAT'
      Size = 100
    end
    object adodsMasterIdCuentaPadre: TIntegerField
      FieldName = 'IdCuentaPadre'
      Visible = False
    end
    object adodsMasterCuentaPadre: TStringField
      DisplayLabel = 'Cuenta Padre'
      FieldKind = fkLookup
      FieldName = 'CuentaPadre'
      LookupDataSet = adodsCuentaPadre
      LookupKeyFields = 'IdCuentaContable'
      LookupResultField = 'CuentaContable'
      KeyFields = 'IdCuentaContable'
      Size = 100
      Lookup = True
    end
  end
  object adodsPersona: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPersona, RazonSocial FROM Personas'
    Parameters = <>
    Left = 160
    Top = 104
  end
  object adodsCuentaPadre: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaContable, CuentaContable, Descripcion FROM Cuenta' +
      'sContables'
    Parameters = <>
    Left = 160
    Top = 184
  end
end
