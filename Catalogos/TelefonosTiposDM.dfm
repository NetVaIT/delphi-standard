inherited dmTelefonosTipos: TdmTelefonosTipos
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdTelefonoTipo, Identificador, Descripcion FROM Telefonos' +
      'Tipos'
    object adodsMasterIdTelefonoTipo: TIntegerField
      FieldName = 'IdTelefonoTipo'
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
  end
end
