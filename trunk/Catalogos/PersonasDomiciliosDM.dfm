inherited dmPersonasDomicilios: TdmPersonasDomicilios
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select IdPersonaDomicilio, IdPersona, IdDomicilio, IdDomicilioTi' +
      'po, Predeterminado from PersonasDomicilios'#13#10'where IdPersona = :I' +
      'dPersona'
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    object adodsMasterIdPersonaDomicilio: TIntegerField
      FieldName = 'IdPersonaDomicilio'
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdDomicilio: TIntegerField
      FieldName = 'IdDomicilio'
      Visible = False
    end
    object adodsMasterIdDomicilioTipo: TIntegerField
      FieldName = 'IdDomicilioTipo'
      Visible = False
    end
    object adodsMasterDomicilio: TStringField
      FieldKind = fkLookup
      FieldName = 'Domicilio'
      LookupDataSet = adodsDomicilios
      LookupKeyFields = 'IdDomicilio'
      LookupResultField = 'Domicilio'
      KeyFields = 'IdDomicilio'
      Size = 500
      Lookup = True
    end
    object adodsMasterTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo'
      LookupDataSet = adodsDomiciliosTipos
      LookupKeyFields = 'IdDomicilioTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDomicilioTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterPredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
  end
  object adodsDomiciliosTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdDomicilioTipo, Descripcion from DomiciliosTipos'
    Parameters = <>
    Left = 120
    Top = 96
  end
  object adodsDomicilios: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT Domicilios.IdDomicilio,'#13#10'Domicilios.Calle + '#39' '#39' + Domicil' +
      'ios.NoExterior + '#39' '#39' + Domicilios.NoInterior + CHAR(13)+CHAR(10)' +
      ' +'#13#10'Domicilios.Colonia + '#39', '#39' + Municipios.Descripcion + '#39', '#39' + ' +
      'Poblaciones.Descripcion + '#39', '#39' + Estados.Descripcion + '#39' '#39' + Dom' +
      'icilios.CodigoPostal + CHAR(13)+CHAR(10) +'#13#10'Paises.Descripcion A' +
      'S Domicilio'#13#10'FROM Domicilios '#13#10'INNER JOIN Paises ON Domicilios.I' +
      'dPais = Paises.IdPais'#13#10'INNER JOIN Estados ON Domicilios.IdEstado' +
      ' = Estados.IdEstado'#13#10'INNER JOIN Municipios ON Domicilios.IdMunic' +
      'ipio = Municipios.IdMunicipio'#13#10'INNER JOIN Poblaciones ON Domicil' +
      'ios.IdPoblacion = Poblaciones.IdPoblacion'
    Parameters = <>
    Left = 120
    Top = 48
  end
end
