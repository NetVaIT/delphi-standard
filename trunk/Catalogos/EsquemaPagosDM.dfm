inherited dmEsquemaPagos: TdmEsquemaPagos
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdEsquemaPago, Identificador, Descripcion, IdEsquemaPagoE' +
      'status FROM EsquemaPagos'
    object adodsMasterIdEsquemaPago: TIntegerField
      FieldName = 'IdEsquemaPago'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object adodsMasterIdEsquemaPagoEstatus: TIntegerField
      FieldName = 'IdEsquemaPagoEstatus'
      Visible = False
    end
    object adodsMasterEsquemaPagoEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'EsquemaPagoEstatus'
      LookupDataSet = adodsEsquemaPagoEstatus
      LookupKeyFields = 'IdEsquemaPagoEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdEsquemaPagoEstatus'
      Size = 50
      Lookup = True
    end
  end
  object adodsEsquemaPagoEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdEsquemaPagoEstatus, Descripcion FROM EsquemaPagosEstatu' +
      's'
    Parameters = <>
    Left = 136
    Top = 16
  end
end
