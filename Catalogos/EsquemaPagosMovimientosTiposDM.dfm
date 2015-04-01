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
      
        'SELECT        MovimientosTipos.IdMovimientoTipo, MovimientosTipo' +
        's.Identificador, MovimientosTipos.Descripcion, MovimientosTiposC' +
        'ategorias.Descripcion AS Categoria, MovimientosTiposEfectos.Desc' +
        'ripcion AS Efecto,'
      
        '                         MovimientosTipos.ValorDefault, Movimien' +
        'tosTipos.ProduceCXC, MovimientosTipos.ProduceCXP'
      'FROM            MovimientosTipos INNER JOIN'
      
        '                         MovimientosTiposCategorias ON Movimient' +
        'osTipos.IdMovimientoTipoCategoria = MovimientosTiposCategorias.I' +
        'dMovimientoTipoCategoria INNER JOIN'
      
        '                         MovimientosTiposEfectos ON MovimientosT' +
        'ipos.IdMovimientoTipoEfecto = MovimientosTiposEfectos.IdMovimien' +
        'toTipoEfecto'
      
        'WHERE (MovimientosTipos.IdMovimientoTipo NOT IN (SELECT IdMovimi' +
        'entoTipo FROM EsquemaPagosMovimientosTipos WHERE IdEsquemaPago =' +
        ' :IdEsquemaPago))'
      'ORDER BY MovimientosTipos.Descripcion')
    object adoqAvailableIdMovimientoTipo: TAutoIncField
      FieldName = 'IdMovimientoTipo'
      ReadOnly = True
      Visible = False
    end
    object adoqAvailableIdentificador: TStringField
      FieldName = 'Identificador'
      Visible = False
    end
    object adoqAvailableDescripcion: TStringField
      DisplayLabel = 'Tipos de movimiento disponibles'
      FieldName = 'Descripcion'
      Size = 50
    end
    object adoqAvailableCategoria: TStringField
      FieldName = 'Categoria'
      Visible = False
      Size = 100
    end
    object adoqAvailableEfecto: TStringField
      FieldName = 'Efecto'
      Visible = False
      Size = 100
    end
    object adoqAvailableValorDefault: TFMTBCDField
      FieldName = 'ValorDefault'
      Visible = False
      Precision = 18
      Size = 6
    end
    object adoqAvailableProduceCXC: TBooleanField
      FieldName = 'ProduceCXC'
      Visible = False
    end
    object adoqAvailableProduceCXP: TBooleanField
      FieldName = 'ProduceCXP'
      Visible = False
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
  inherited ActionList: TActionList
    inherited actViewAviable: TAction
      Visible = True
      OnExecute = actViewAviableExecute
    end
    inherited actViewAssigned: TAction
      Visible = True
      OnExecute = actViewAssignedExecute
    end
  end
end
