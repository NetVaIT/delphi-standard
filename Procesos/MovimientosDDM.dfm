inherited dmMovimientosD: TdmMovimientosD
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT        vMovimientosDetalle.IdMovimientoDetalle, Periodos.' +
      'Descripcion AS Periodo, Movimientos.Fecha, vMovimientosDetalle.P' +
      'ersona, vMovimientosDetalle.PersonaRelacionada, vMovimientosDeta' +
      'lle.Tipo, '#13#10'                         vMovimientosDetalle.Categor' +
      'ia, vMovimientosDetalle.Efecto, vMovimientosDetalle.Importe, vMo' +
      'vimientosDetalle.Estatus'#13#10'FROM            vMovimientosDetalle IN' +
      'NER JOIN'#13#10'                         Movimientos ON vMovimientosDe' +
      'talle.IdMovimiento = Movimientos.IdMovimiento INNER JOIN'#13#10'      ' +
      '                   Periodos ON Movimientos.IdPeriodo = Periodos.' +
      'IdPeriodo'
    object adodsMasterIdMovimientoDetalle: TIntegerField
      FieldName = 'IdMovimientoDetalle'
      Visible = False
    end
    object adodsMasterPeriodo: TStringField
      FieldName = 'Periodo'
      Size = 100
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
end
