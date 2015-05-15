inherited dmMovimientosD: TdmMovimientosD
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT vMovimientosDetalle.IdMovimientoDetalle, Movimientos.Fech' +
      'a, vMovimientosDetalle.Persona, vMovimientosDetalle.PersonaRelac' +
      'ionada, vMovimientosDetalle.Tipo, '#13#10'vMovimientosDetalle.Categori' +
      'a, vMovimientosDetalle.Efecto, (vMovimientosDetalle.Importe*Movi' +
      'mientosTiposCategorias.Signo) AS Importe, vMovimientosDetalle.Es' +
      'tatus'#13#10'FROM vMovimientosDetalle '#13#10'INNER JOIN Movimientos ON vMov' +
      'imientosDetalle.IdMovimiento = Movimientos.IdMovimiento'#13#10'INNER J' +
      'OIN MovimientosTipos ON vMovimientosDetalle.IdMovimientoTipo = M' +
      'ovimientosTipos.IdMovimientoTipo'#13#10'INNER JOIN MovimientosTiposCat' +
      'egorias ON MovimientosTipos.IdMovimientoTipoCategoria = Movimien' +
      'tosTiposCategorias.IdMovimientoTipoCategoria'
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
