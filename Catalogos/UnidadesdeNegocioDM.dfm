inherited dmUnidadesdeNegocio: TdmUnidadesdeNegocio
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdUnidadNegocio, Identificador, Descripcion FROM Unidades' +
      'DeNegocio'
    object adodsMasterIdUnidadNegocio: TIntegerField
      FieldName = 'IdUnidadNegocio'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
  end
end
