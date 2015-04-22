inherited dmMovimientos: TdmMovimientos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdMovimiento, IdInstruccion, IdPersona, IdPersonaRelacion' +
      'ada, IdPeriodo, Fecha, Concepto from Movimientos'
    object adodsMasterIdMovimiento: TAutoIncField
      FieldName = 'IdMovimiento'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdInstruccion: TIntegerField
      FieldName = 'IdInstruccion'
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdPersonaRelacionada: TIntegerField
      FieldName = 'IdPersonaRelacionada'
      Visible = False
    end
    object adodsMasterIdPeriodo: TIntegerField
      FieldName = 'IdPeriodo'
      Visible = False
    end
    object adodsMasterPariodo: TStringField
      FieldKind = fkLookup
      FieldName = 'Periodo'
      LookupDataSet = adodsPeriodo
      LookupKeyFields = 'IdPeriodo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPeriodo'
      Size = 100
      Lookup = True
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterConcepto: TStringField
      FieldName = 'Concepto'
      Size = 200
    end
    object adodsMasterPersona: TStringField
      FieldKind = fkLookup
      FieldName = 'Persona'
      LookupDataSet = adodsPersona
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersona'
      Size = 500
      Lookup = True
    end
    object adodsMasterPersonaRelacionada: TStringField
      DisplayLabel = 'Persona relacionada'
      FieldKind = fkLookup
      FieldName = 'PersonaRelacionada'
      LookupDataSet = adodsPersonaR
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaRelacionada'
      Size = 500
      Lookup = True
    end
  end
  object adodsPersona: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPersona, RazonSocial from Personas'
    Parameters = <>
    Left = 200
    Top = 64
  end
  object adodsPersonaR: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPersona, RazonSocial from Personas'
    Parameters = <>
    Left = 200
    Top = 120
  end
  object adodsPeriodo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPeriodo, Descripcion from Periodos'
    Parameters = <>
    Left = 200
    Top = 176
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 96
    Top = 16
  end
  object adodsMovimientosDet: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT MovimientosDetalle.IdMovimientoDetalle, MovimientosDetall' +
      'e.IdMovimiento, MovimientosDetalle.IdMovimientoTipo, Movimientos' +
      'Detalle.Importe, MovimientosDetalle.IdMovimientoEstatus, '#13#10'Movim' +
      'ientosTipos.Descripcion AS Tipo, MovimientosTiposCategorias.Desc' +
      'ripcion AS Categoria, MovimientosTiposEfectos.Descripcion AS Efe' +
      'cto, MovimientosEstatus.Descripcion AS Estatus'#13#10'FROM Movimientos' +
      'Detalle INNER JOIN'#13#10'MovimientosTipos ON MovimientosDetalle.IdMov' +
      'imientoTipo = MovimientosTipos.IdMovimientoTipo INNER JOIN'#13#10'Movi' +
      'mientosTiposCategorias ON MovimientosTipos.IdMovimientoTipoCateg' +
      'oria = MovimientosTiposCategorias.IdMovimientoTipoCategoria INNE' +
      'R JOIN'#13#10'MovimientosTiposEfectos ON MovimientosTipos.IdMovimiento' +
      'TipoEfecto = MovimientosTiposEfectos.IdMovimientoTipoEfecto INNE' +
      'R JOIN'#13#10'MovimientosEstatus ON MovimientosDetalle.IdMovimientoEst' +
      'atus = MovimientosEstatus.IdMovimientoEstatus'#13#10'WHERE Movimientos' +
      'Detalle.IdMovimiento = :IdMovimiento'
    DataSource = dsMaster
    MasterFields = 'IdMovimiento'
    Parameters = <
      item
        Name = 'IdMovimiento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 48
    Top = 88
    object adodsMovimientosDetIdMovimientoDetalle: TAutoIncField
      FieldName = 'IdMovimientoDetalle'
      ReadOnly = True
      Visible = False
    end
    object adodsMovimientosDetIdMovimiento: TIntegerField
      FieldName = 'IdMovimiento'
      Visible = False
    end
    object adodsMovimientosDetIdMovimientoTipo: TIntegerField
      FieldName = 'IdMovimientoTipo'
      Visible = False
    end
    object adodsMovimientosDetIdMovimientoEstatus: TIntegerField
      FieldName = 'IdMovimientoEstatus'
      Visible = False
    end
    object adodsMovimientosDetTipo: TStringField
      FieldName = 'Tipo'
      Size = 100
    end
    object adodsMovimientosDetImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object adodsMovimientosDetCategoria: TStringField
      FieldName = 'Categoria'
      Size = 100
    end
    object adodsMovimientosDetEfecto: TStringField
      FieldName = 'Efecto'
      Size = 100
    end
    object adodsMovimientosDetEstatus: TStringField
      FieldName = 'Estatus'
      Size = 100
    end
  end
  object adodsMovimientosTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMovimientoTipo, Descripcion from MovimientosTipos'
    Parameters = <>
    Left = 96
    Top = 152
  end
end
