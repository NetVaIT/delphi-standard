inherited dmMovimientosD: TdmMovimientosD
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT vMovimientosDetalle.IdMovimientoDetalle, vMovimientosDeta' +
      'lle.Fecha, vMovimientosDetalle.Persona, vMovimientosDetalle.Pers' +
      'onaRelacionada, vMovimientosDetalle.Tipo, '#13#10'vMovimientosDetalle.' +
      'Categoria, vMovimientosDetalle.Efecto, (vMovimientosDetalle.Impo' +
      'rte*MovimientosTiposCategorias.Signo) AS Importe, vMovimientosDe' +
      'talle.Estatus'#13#10'FROM vMovimientosDetalle '#13#10'INNER JOIN Movimientos' +
      ' ON vMovimientosDetalle.IdMovimiento = Movimientos.IdMovimiento'#13 +
      #10'INNER JOIN MovimientosTipos ON vMovimientosDetalle.IdMovimiento' +
      'Tipo = MovimientosTipos.IdMovimientoTipo'#13#10'INNER JOIN Movimientos' +
      'TiposCategorias ON MovimientosTipos.IdMovimientoTipoCategoria = ' +
      'MovimientosTiposCategorias.IdMovimientoTipoCategoria'
    object adodsMasterIdMovimientoDetalle: TIntegerField
      FieldName = 'IdMovimientoDetalle'
      Visible = False
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterPersona: TStringField
      FieldName = 'Persona'
      Size = 300
    end
    object adodsMasterPersonaRelacionada: TStringField
      DisplayLabel = 'Persona relacionada'
      FieldName = 'PersonaRelacionada'
      Size = 300
    end
    object adodsMasterTipo: TStringField
      FieldName = 'Tipo'
      Size = 100
    end
    object adodsMasterCategoria: TStringField
      DisplayLabel = 'Categor'#237'a'
      FieldName = 'Categoria'
      Size = 100
    end
    object adodsMasterEfecto: TStringField
      FieldName = 'Efecto'
      Size = 100
    end
    object adodsMasterImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterEstatus: TStringField
      FieldName = 'Estatus'
      Size = 100
    end
  end
  object adodsPeriodo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPeriodo, Descripcion from Periodos'
    Parameters = <>
    Left = 80
    Top = 80
  end
  object adocGetPeriodoActual: TADOCommand
    CommandText = 
      'DECLARE @IdPeriodo int;'#13#10'SELECT @IdPeriodo = IdPeriodo FROM Peri' +
      'odos WHERE IdPeriodoEstatus = 1;'#13#10'SET :IdPeriodo  = @IdPeriodo;'#13 +
      #10
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdPeriodo'
        DataType = ftInteger
        Direction = pdOutput
        Size = -1
        Value = Null
      end>
    Left = 64
    Top = 179
  end
end