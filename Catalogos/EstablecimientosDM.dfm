inherited dmEstablecimientos: TdmEstablecimientos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdEstablecimiento, Identificador, Descripcion, IdDomicili' +
      'o FROM Establecimientos'
    object adodsMasterIdEstablecimiento: TIntegerField
      FieldName = 'IdEstablecimiento'
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
    object adodsMasterIdDomicilio: TIntegerField
      FieldName = 'IdDomicilio'
      Visible = False
    end
  end
end
