inherited dmRolesEsquemasPagos: TdmRolesEsquemasPagos
  inherited adoqAvailable: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdEsquemaPago'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT IdRol, Descripcion'
      'FROM Roles'
      
        'WHERE (IdRol NOT IN (SELECT IdRol FROM RolesEsquemasPagos WHERE ' +
        'IdEsquemaPago = :IdEsquemaPago))'
      'ORDER BY Descripcion'
      '')
    object adoqAvailableIdRol: TIntegerField
      FieldName = 'IdRol'
      Visible = False
    end
    object adoqAvailableDescripcion: TStringField
      DisplayLabel = 'Roles disponibles'
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  inherited adoqAssigned: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdEsquemaPago'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT IdRol, Descripcion'
      'FROM Roles'
      
        'WHERE (IdRol IN (SELECT IdRol FROM RolesEsquemasPagos WHERE IdEs' +
        'quemaPago = :IdEsquemaPago))'
      'ORDER BY Descripcion'
      '')
    object adoqAssignedIdRol: TIntegerField
      FieldName = 'IdRol'
      Visible = False
    end
    object adoqAssignedDescripcion: TStringField
      DisplayLabel = 'Roles asignados'
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  inherited adocAdd: TADOCommand
    CommandText = 
      'INSERT INTO RolesEsquemasPagos (IdEsquemaPago, IdRol)'#13#10'VALUES (:' +
      'IdEsquemaPago, :IdRol)'#13#10
    Parameters = <
      item
        Name = 'IdEsquemaPago'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdRol'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
  end
  inherited adocDelete: TADOCommand
    CommandText = 
      'DELETE FROM RolesEsquemasPagos'#13#10'WHERE IdEsquemaPago = :IdEsquema' +
      'Pago AND IdRol = :IdRol'#13#10
    Parameters = <
      item
        Name = 'IdEsquemaPago'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdRol'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
  end
end
