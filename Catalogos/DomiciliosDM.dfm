inherited dmDomicilios: TdmDomicilios
  OldCreateOrder = True
  Height = 455
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdDomicilio, IdPersona, IdDomicilioTipo, IdPais, IdEstado' +
      ', IdMunicipio, IdPoblacion, Colonia, Calle, NoExterior, NoInteri' +
      'or, Referencia, CodigoPostal, Predeterminado FROM Domicilios WHE' +
      'RE IdDomicilio = :IdDomicilio'
    Parameters = <
      item
        Name = 'IdDomicilio'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 48
    Top = 32
    object adodsMasterIdDomicilio: TIntegerField
      FieldName = 'IdDomicilio'
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdDomicilioTipo: TIntegerField
      FieldName = 'IdDomicilioTipo'
      Visible = False
    end
    object adodsMasterDomicilioTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'DomicilioTipo'
      LookupDataSet = adodsDomicilioTipo
      LookupKeyFields = 'IdDomicilioTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDomicilioTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdPais: TIntegerField
      FieldName = 'IdPais'
      Visible = False
    end
    object adodsMasterPais: TStringField
      FieldKind = fkLookup
      FieldName = 'Pais'
      LookupDataSet = adodsPais
      LookupKeyFields = 'IdPais'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPais'
      Size = 100
      Lookup = True
    end
    object adodsMasterIdEstado: TIntegerField
      FieldName = 'IdEstado'
      Visible = False
    end
    object adodsMasterEstado: TStringField
      FieldKind = fkLookup
      FieldName = 'Estado'
      LookupDataSet = adodsEstado
      LookupKeyFields = 'IdEstado'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdEstado'
      Size = 40
      Lookup = True
    end
    object adodsMasterIdMunicipio: TIntegerField
      FieldName = 'IdMunicipio'
      Visible = False
    end
    object adodsMasterMunicipio: TStringField
      FieldKind = fkLookup
      FieldName = 'Municipio'
      LookupDataSet = adodsMunicipio
      LookupKeyFields = 'IdMunicipio'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMunicipio'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdPoblacion: TIntegerField
      FieldName = 'IdPoblacion'
      Visible = False
    end
    object adodsMasterPoblacion: TStringField
      FieldKind = fkLookup
      FieldName = 'Poblacion'
      LookupDataSet = adodsPoblacion
      LookupKeyFields = 'IdPoblacion'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPoblacion'
      Size = 150
      Lookup = True
    end
    object adodsMasterColonia: TStringField
      FieldName = 'Colonia'
      Size = 50
    end
    object adodsMasterCalle: TStringField
      FieldName = 'Calle'
      Size = 30
    end
    object adodsMasterNoExterior: TStringField
      FieldName = 'NoExterior'
      Size = 10
    end
    object adodsMasterNoInterior: TStringField
      FieldName = 'NoInterior'
      Size = 10
    end
    object adodsMasterReferencia: TStringField
      FieldName = 'Referencia'
      Size = 200
    end
    object adodsMasterCodigoPostal: TStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object adodsMasterPredeterminado: TIntegerField
      FieldName = 'Predeterminado'
    end
  end
  object adodsDomicilioTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdDomicilioTipo, Descripcion FROM DomiciliosTipos'
    Parameters = <>
    Left = 104
    Top = 136
  end
  object adodsPais: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPais, Descripcion FROM Paises'
    Parameters = <>
    Left = 104
    Top = 200
  end
  object adodsEstado: TADODataSet
    Connection = _dmConection.ADOConnection
    CommandText = 
      'SELECT IdEstado, IdPais, Descripcion FROM Estados IdPais = :IdPa' +
      'is'
    DataSource = dsPais
    Parameters = <
      item
        Name = 'IdPais'
        Size = -1
        Value = Null
      end>
    Left = 104
    Top = 264
  end
  object adodsMunicipio: TADODataSet
    Connection = _dmConection.ADOConnection
    CommandText = 
      'SELECT IdMunicipio, IdEstado, Descripcion FROM Municipios WHERE ' +
      'IdEstado = :IdEstado'
    DataSource = dsEstado
    Parameters = <
      item
        Name = 'IdEstado'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 104
    Top = 328
  end
  object adodsPoblacion: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPoblacion, IdMunicipio, Descripcion FROM Poblaciones WH' +
      'ERE IdMunicipio = :IdMunicipio'
    DataSource = dsMunicipio
    Parameters = <
      item
        Name = 'IdMunicipio'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 104
    Top = 392
  end
  object dsPais: TDataSource
    DataSet = adodsPais
    Left = 192
    Top = 200
  end
  object dsEstado: TDataSource
    DataSet = adodsEstado
    Left = 192
    Top = 264
  end
  object dsMunicipio: TDataSource
    DataSet = adodsMunicipio
    Left = 192
    Top = 328
  end
end
