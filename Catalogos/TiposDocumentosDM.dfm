inherited dmTiposDocumentos: TdmTiposDocumentos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdTipoDocumento, Identificador, Descripcion FROM TiposDoc' +
      'umentos'
    object adodsMasterIdTipoDocumento: TIntegerField
      FieldName = 'IdTipoDocumento'
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
