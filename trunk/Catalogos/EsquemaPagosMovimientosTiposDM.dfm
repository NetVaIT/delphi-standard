inherited dmEsquemaPagosMovimientosTipos: TdmEsquemaPagosMovimientosTipos
  OldCreateOrder = True
  inherited adoqAvailable: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdMovimientoTipo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT IdEsquemaPago, Descripcion '
      'FROM EsquemaPagos'
      
        'WHERE (IdEsquemaPago NOT IN (SELECT IdEsquemaPago FROM EsquemaPa' +
        'gosMovimientosTipos WHERE IdMovimientoTipo = :IdMovimientoTipo))'
      'ORDER BY Descripcion')
    object adoqAvailableIdEsquemaPago: TIntegerField
      FieldName = 'IdEsquemaPago'
      Visible = False
    end
    object adoqAvailableDescripcion: TStringField
      DisplayLabel = 'Esquema de pagos disponibles'
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  inherited adoqAssigned: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdMovimientoTipo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT IdEsquemaPago, Descripcion '
      'FROM EsquemaPagos'
      
        'WHERE (IdEsquemaPago IN (SELECT IdEsquemaPago FROM EsquemaPagosM' +
        'ovimientosTipos WHERE IdMovimientoTipo = :IdMovimientoTipo))'
      'ORDER BY Descripcion')
    object adoqAssignedIdEsquemaPago: TIntegerField
      FieldName = 'IdEsquemaPago'
      Visible = False
    end
    object adoqAssignedDescripcion: TStringField
      DisplayLabel = 'Esquema de pagos asignados'
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
