inherited dmPuestosPerfiles: TdmPuestosPerfiles
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPuestoPerfil, IdPuesto, IdPuestoPerfilCategoria, Identi' +
      'ficador, Descripcion, Valor FROM PuestosPerfiles'#13#10'WHERE IdPuesto' +
      ' = :IdPuesto'
    Parameters = <
      item
        Name = 'IdPuesto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    object adodsMasterIdPuestoPerfil: TIntegerField
      FieldName = 'IdPuestoPerfil'
      Visible = False
    end
    object adodsMasterIdPuesto: TIntegerField
      FieldName = 'IdPuesto'
      Visible = False
    end
    object adodsMasterPuesto: TStringField
      FieldKind = fkLookup
      FieldName = 'Puesto'
      LookupDataSet = adodsPuestos
      LookupKeyFields = 'IdPuesto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPuesto'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdPuestoPerfilCategoria: TIntegerField
      FieldName = 'IdPuestoPerfilCategoria'
      Visible = False
    end
    object adodsMasterPerfilCategoria: TStringField
      FieldKind = fkLookup
      FieldName = 'PerfilCategoria'
      LookupDataSet = adodsPuestosPerfilCategorias
      LookupKeyFields = 'IdPuestoPerfilCategoria'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPuestoPerfilCategoria'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object adodsMasterValor: TIntegerField
      FieldName = 'Valor'
    end
  end
  object adodsPuestos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPuesto, Descripcion FROM Puestos'
    Parameters = <>
    Left = 112
    Top = 16
  end
  object adodsPuestosPerfilCategorias: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPuestoPerfilCategoria, Descripcion FROM PuestosPerfiles' +
      'Categorias'
    Parameters = <>
    Left = 112
    Top = 88
  end
end
