inherited dmMovimientosTipo: TdmMovimientosTipo
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdMovimientoTipo, IdMovimientoTipoCategoria, IdMovimiento' +
      'TipoEfecto, Identificador, Descripcion, ValorDefault, ProduceCXC' +
      ', ProduceCXP FROM MovimientosTipos'
    Left = 48
    object adodsMasterIdMovimientoTipo: TAutoIncField
      FieldName = 'IdMovimientoTipo'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdMovimientoTipoCategoria: TIntegerField
      FieldName = 'IdMovimientoTipoCategoria'
      Visible = False
    end
    object adodsMasterIdMovimientoTipoEfecto: TIntegerField
      FieldName = 'IdMovimientoTipoEfecto'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object adodsMasterValorDefault: TFMTBCDField
      FieldName = 'ValorDefault'
      Precision = 18
      Size = 6
    end
    object adodsMasterProduceCXC: TBooleanField
      FieldName = 'ProduceCXC'
    end
    object adodsMasterProduceCXP: TBooleanField
      FieldName = 'ProduceCXP'
    end
    object adodsMasterMovimientoTipoCategoria: TStringField
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoCategoria'
      LookupDataSet = adodsMovimientoTipoCategoria
      LookupKeyFields = 'IdMovimientoTipoCategoria'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoCategoria'
      Size = 50
      Lookup = True
    end
    object adodsMasterMovimientoTipoEfecto: TStringField
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoEfecto'
      LookupDataSet = adodsMovimientoTipoEfecto
      LookupKeyFields = 'IdMovimientoTipoEfecto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoEfecto'
      Size = 50
      Lookup = True
    end
  end
  object adodsMovimientoTipoCategoria: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdMovimientoTipoCategoria, Descripcion FROM MovimientosTi' +
      'posCategorias'
    Parameters = <>
    Left = 192
    Top = 24
  end
  object adodsMovimientoTipoEfecto: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdMovimientoTipoEfecto, Descripcion FROM MovimientosTipos' +
      'Efectos'
    Parameters = <>
    Left = 192
    Top = 128
  end
end
