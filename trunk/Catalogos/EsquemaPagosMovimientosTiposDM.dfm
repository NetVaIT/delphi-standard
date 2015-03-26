inherited dmEsquemaPagosMovimientosTipos: TdmEsquemaPagosMovimientosTipos
  OldCreateOrder = True
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
      'SELECT IdMovimientoTipo, Descripcion '
      'FROM MovimientosTipos'
      
        'WHERE (IdMovimientoTipo NOT IN (SELECT IdMovimientoTipo FROM Esq' +
        'uemaPagosMovimientosTipos WHERE IdEsquemaPago = :IdEsquemaPago))'
      'ORDER BY Descripcion')
    object adoqAvailableIdMovimientoTipo: TAutoIncField
      FieldName = 'IdMovimientoTipo'
      ReadOnly = True
      Visible = False
    end
    object adoqAvailableDescripcion: TStringField
      DisplayLabel = 'Tipos de movimiento disponibles'
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
      'SELECT IdMovimientoTipo, Descripcion '
      'FROM MovimientosTipos'
      
        'WHERE (IdMovimientoTipo IN (SELECT IdMovimientoTipo FROM Esquema' +
        'PagosMovimientosTipos WHERE IdEsquemaPago = :IdEsquemaPago))'
      'ORDER BY Descripcion')
    object adoqAssignedIdMovimientoTipo: TAutoIncField
      FieldName = 'IdMovimientoTipo'
      ReadOnly = True
      Visible = False
    end
    object adoqAssignedDescripcion: TStringField
      DisplayLabel = 'Tipos de movimiento asignados'
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  inherited adocAdd: TADOCommand
    CommandText = 
      'INSERT INTO EsquemaPagosMovimientosTipos (IdMovimientoTipo, IdEs' +
      'quemaPago)'#13#10'VALUES (:IdMovimientoTipo, :IdEsquemaPago)'#13#10
    Parameters = <
      item
        Name = 'IdMovimientoTipo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdEsquemaPago'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
  end
  inherited adocDelete: TADOCommand
    CommandText = 
      'DELETE FROM EsquemaPagosMovimientosTipos'#13#10'WHERE IdMovimientoTipo' +
      ' = :IdMovimientoTipo AND IdEsquemaPago = :IdEsquemaPago'#13#10
    Parameters = <
      item
        Name = 'IdMovimientoTipo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdEsquemaPago'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
  end
end
