inherited dmEmailTipos: TdmEmailTipos
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 'SELECT IdEmailTipo, Identificador, Descripcion FROM EmailTipos'
    object adodsMasterIdEmailTipo: TIntegerField
      FieldName = 'IdEmailTipo'
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
