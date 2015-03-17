inherited dmPlazas: TdmPlazas
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPlaza, IdPuesto, IdPersonaEmpleado, SalarioBase, FechaC' +
      'reacionPlaza, IdPlazaTurno, IdUbicacion, IdPlazaTemporalidadTipo' +
      ', Identificador, Descripcion FROM Plazas'
    object adodsMasterIdPlaza: TIntegerField
      FieldName = 'IdPlaza'
      Visible = False
    end
    object adodsMasterIdPuesto: TIntegerField
      FieldName = 'IdPuesto'
      Visible = False
    end
    object adodsMasterIdPersonaEmpleado: TIntegerField
      FieldName = 'IdPersonaEmpleado'
      Visible = False
    end
    object adodsMasterSalarioBase: TBCDField
      FieldName = 'SalarioBase'
      Precision = 18
      Size = 0
    end
    object adodsMasterFechaCreacionPlaza: TWideStringField
      FieldName = 'FechaCreacionPlaza'
      Size = 10
    end
    object adodsMasterIdPlazaTurno: TIntegerField
      FieldName = 'IdPlazaTurno'
      Visible = False
    end
    object adodsMasterPlazaTurno: TStringField
      FieldKind = fkLookup
      FieldName = 'PlazaTurno'
      LookupDataSet = adodsPlazaTurnos
      LookupKeyFields = 'IdPlazaTurno'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPlazaTurno'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdUbicacion: TIntegerField
      FieldName = 'IdUbicacion'
      Visible = False
    end
    object adodsMasterUbicacion: TStringField
      FieldKind = fkLookup
      FieldName = 'Ubicacion'
      LookupDataSet = adodsUbicacion
      LookupKeyFields = 'IdUbicacion'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdUbicacion'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdPlazaTemporalidadTipo: TIntegerField
      FieldName = 'IdPlazaTemporalidadTipo'
      Visible = False
    end
    object adodsMasterPlazaTemporalidadTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'PlazaTemporalidadTipo'
      LookupDataSet = adodsPlazaTemporalidadTipos
      LookupKeyFields = 'IdPlazaTemporalidadTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPlazaTemporalidadTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
  end
  object ADODataSet1: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Left = 200
    Top = 24
  end
  object adodsPlazaTemporalidadTipos: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPlazaTemporalidadTipo, Descripcion FROM PlazasTemporali' +
      'dadTipos'
    Parameters = <>
    Left = 152
    Top = 280
  end
  object adodsUbicacion: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdUbicacion, Descripcion FROM Ubicaciones'
    Parameters = <>
    Left = 152
    Top = 216
  end
  object adodsPlazaTurnos: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPlazaTurno, Descripcion FROM PlazasTurnos'
    Parameters = <>
    Left = 152
    Top = 160
  end
end
