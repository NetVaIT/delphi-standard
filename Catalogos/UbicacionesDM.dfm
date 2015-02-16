inherited dmUbicaciones: TdmUbicaciones
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    Active = True
    CursorType = ctStatic
    CommandText = 'select IdPais, Identificador, Descripcion from Paises'
    object adodsMasterIdPais: TAutoIncField
      FieldName = 'IdPais'
      ReadOnly = True
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Required = True
      Size = 3
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Required = True
      Size = 100
    end
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 104
    Top = 16
  end
  object adodsEstados: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdEstado, IdPais, Identificador, Descripcion from Estados' +
      #13#10'where IdPais = :IdPais'
    DataSource = dsMaster
    MasterFields = 'IdPais'
    Parameters = <
      item
        Name = 'IdPais'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 24
    Top = 80
    object adodsEstadosIdEstado: TAutoIncField
      FieldName = 'IdEstado'
      ReadOnly = True
    end
    object adodsEstadosIdPais: TIntegerField
      FieldName = 'IdPais'
    end
    object adodsEstadosIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 5
    end
    object adodsEstadosDescripcion: TStringField
      FieldName = 'Descripcion'
    end
  end
end
