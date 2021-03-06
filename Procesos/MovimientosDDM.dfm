inherited dmMovimientosD: TdmMovimientosD
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT vMovimientosDetalle.IdMovimientoDetalle, vMovimientosDeta' +
      'lle.Fecha, vMovimientosDetalle.Persona, vMovimientosDetalle.Pers' +
      'onaRelacionada, vMovimientosDetalle.RolClase, vMovimientosDetall' +
      'e.Tipo, '#13#10'vMovimientosDetalle.AcumalarA, vMovimientosDetalle.Cat' +
      'egoria, vMovimientosDetalle.Efecto, vMovimientosDetalle.Importe ' +
      '* vMovimientosDetalle.Signo AS Importe, vMovimientosDetalle.Esta' +
      'tus'#13#10'FROM vMovimientosDetalle '#13#10'INNER JOIN Movimientos ON vMovim' +
      'ientosDetalle.IdMovimiento = Movimientos.IdMovimiento'#13#10'WHERE vMo' +
      'vimientosDetalle.AplicarCategoria = 1'#13#10'ORDER BY vMovimientosDeta' +
      'lle.Persona, vMovimientosDetalle.OrdenImpresion'
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
    object adodsMasterRolClase: TStringField
      DisplayLabel = 'Clase'
      FieldName = 'RolClase'
      Size = 50
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
    object adodsMasterAcumalarA: TStringField
      FieldName = 'AcumalarA'
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
end
