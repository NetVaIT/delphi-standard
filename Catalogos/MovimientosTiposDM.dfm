inherited dmMovimientosTipo: TdmMovimientosTipo
  OldCreateOrder = True
  Height = 229
  Width = 272
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
      Required = True
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Required = True
      Size = 50
    end
    object adodsMasterMovimientoTipoCategoria: TStringField
      DisplayLabel = 'Categoria'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoCategoria'
      LookupDataSet = adodsMovimientoTipoCategoria
      LookupKeyFields = 'IdMovimientoTipoCategoria'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoCategoria'
      Required = True
      Size = 100
      Lookup = True
    end
    object adodsMasterMovimientoTipoEfecto: TStringField
      DisplayLabel = 'Efecto'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoEfecto'
      LookupDataSet = adodsMovimientoTipoEfecto
      LookupKeyFields = 'IdMovimientoTipoEfecto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoEfecto'
      Required = True
      Size = 100
      Lookup = True
    end
    object adodsMasterValorDefault: TFMTBCDField
      DisplayLabel = 'Valor omision'
      FieldName = 'ValorDefault'
      Precision = 18
      Size = 6
    end
    object adodsMasterProduceCXC: TBooleanField
      DisplayLabel = 'Produce CXC'
      FieldName = 'ProduceCXC'
    end
    object adodsMasterProduceCXP: TBooleanField
      DisplayLabel = 'Produce CXP'
      FieldName = 'ProduceCXP'
    end
  end
  object adodsMovimientoTipoCategoria: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdMovimientoTipoCategoria, Descripcion FROM MovimientosTi' +
      'posCategorias'
    Parameters = <>
    Left = 120
    Top = 72
  end
  object adodsMovimientoTipoEfecto: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdMovimientoTipoEfecto, Descripcion FROM MovimientosTipos' +
      'Efectos'
    Parameters = <>
    Left = 120
    Top = 128
  end
end
