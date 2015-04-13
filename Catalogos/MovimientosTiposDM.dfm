inherited dmMovimientosTipo: TdmMovimientosTipo
  OldCreateOrder = True
  Height = 229
  Width = 553
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
      Size = 100
    end
    object adodsMasterMovimientoTipoCategoria: TStringField
      DisplayLabel = 'Categor'#237'a'
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
      DisplayLabel = 'Valor omisi'#243'n'
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
  inherited adodsUpdate: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdMovimientoTipo, IdMovimientoTipoCategoria, IdMovimiento' +
      'TipoEfecto, Identificador, Descripcion, ValorDefault, ProduceCXC' +
      ', ProduceCXP FROM MovimientosTipos'#13#10'WHERE IdMovimientoTipo = :Id' +
      'MovimientoTipo'
    Parameters = <
      item
        Name = 'IdMovimientoTipo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    object adodsUpdateIdMovimientoTipo: TAutoIncField
      FieldName = 'IdMovimientoTipo'
      ReadOnly = True
    end
    object adodsUpdateIdMovimientoTipoCategoria: TIntegerField
      FieldName = 'IdMovimientoTipoCategoria'
    end
    object adodsUpdateIdMovimientoTipoEfecto: TIntegerField
      FieldName = 'IdMovimientoTipoEfecto'
    end
    object adodsUpdateIdentificador: TStringField
      FieldName = 'Identificador'
    end
    object adodsUpdateDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object adodsUpdateValorDefault: TFMTBCDField
      FieldName = 'ValorDefault'
      Precision = 18
      Size = 6
    end
    object adodsUpdateProduceCXC: TBooleanField
      FieldName = 'ProduceCXC'
    end
    object adodsUpdateProduceCXP: TBooleanField
      FieldName = 'ProduceCXP'
    end
    object adodsUpdateMovimientoTipoCategoria: TStringField
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoCategoria'
      LookupDataSet = adodsMovimientoTipoCategoria
      LookupKeyFields = 'IdMovimientoTipoCategoria'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoCategoria'
      Size = 100
      Lookup = True
    end
    object adodsUpdateMovimientoTipoEfecto: TStringField
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoEfecto'
      LookupDataSet = adodsMovimientoTipoEfecto
      LookupKeyFields = 'IdMovimientoTipoEfecto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoEfecto'
      Size = 100
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
