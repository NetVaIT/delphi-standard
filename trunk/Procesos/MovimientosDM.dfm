inherited dmMovimientos: TdmMovimientos
  OldCreateOrder = True
  Height = 484
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdMovimiento, IdInstruccion, IdPersona, IdPeriodo, Fecha,' +
      ' Ingresos, Descuentos, Neto, Percepciones, Deducciones, Prestaci' +
      'ones, Obligaciones, Operaciones, Costo from Movimientos'
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
    object adodsMasterIngresos: TFMTBCDField
      FieldName = 'Ingresos'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterDescuentos: TFMTBCDField
      FieldName = 'Descuentos'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterNeto: TFMTBCDField
      FieldName = 'Neto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterPercepciones: TFMTBCDField
      FieldName = 'Percepciones'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterDeducciones: TFMTBCDField
      FieldName = 'Deducciones'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterPrestaciones: TFMTBCDField
      FieldName = 'Prestaciones'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterObligaciones: TFMTBCDField
      FieldName = 'Obligaciones'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterOperaciones: TFMTBCDField
      FieldName = 'Operaciones'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterCosto: TFMTBCDField
      FieldName = 'Costo'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  inherited ActionList: TActionList
    object actMovimientosCalculados: TAction
      Caption = 'Movimientos calculados'
      Hint = 'Movimientos calculados'
      ImageIndex = 13
      OnExecute = actMovimientosCalculadosExecute
    end
  end
  object adodsPersona: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPersona, RazonSocial from Personas'
    Parameters = <>
    Left = 192
    Top = 24
  end
  object adodsPersonaR: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPersona, RazonSocial from Personas'
    Parameters = <>
    Left = 192
    Top = 256
  end
  object adodsPeriodo: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPeriodo, Descripcion from Periodos'
    Parameters = <>
    Left = 192
    Top = 88
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
      'e.IdMovimiento, MovimientosDetalle.IdPersonaRelacionada,  Movimi' +
      'entosDetalle.IdMovimientoTipo, MovimientosDetalle.Importe, Movim' +
      'ientosDetalle.IdMovimientoEstatus, '#13#10'MovimientosTipos.Descripcio' +
      'n AS Tipo, MovimientosTiposCategorias.Descripcion AS Categoria, ' +
      'MovimientosTiposEfectos.Descripcion AS Efecto, MovimientosEstatu' +
      's.Descripcion AS Estatus'#13#10'FROM MovimientosDetalle INNER JOIN'#13#10'Mo' +
      'vimientosTipos ON MovimientosDetalle.IdMovimientoTipo = Movimien' +
      'tosTipos.IdMovimientoTipo INNER JOIN'#13#10'MovimientosTiposCategorias' +
      ' ON MovimientosTipos.IdMovimientoTipoCategoria = MovimientosTipo' +
      'sCategorias.IdMovimientoTipoCategoria INNER JOIN'#13#10'MovimientosTip' +
      'osEfectos ON MovimientosTipos.IdMovimientoTipoEfecto = Movimient' +
      'osTiposEfectos.IdMovimientoTipoEfecto INNER JOIN'#13#10'MovimientosEst' +
      'atus ON MovimientosDetalle.IdMovimientoEstatus = MovimientosEsta' +
      'tus.IdMovimientoEstatus'#13#10'WHERE MovimientosDetalle.IdMovimiento =' +
      ' :IdMovimiento'
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
    Top = 200
    object adodsMovimientosDetIdMovimientoDetalle: TAutoIncField
      FieldName = 'IdMovimientoDetalle'
      ReadOnly = True
      Visible = False
    end
    object adodsMovimientosDetIdMovimiento: TIntegerField
      FieldName = 'IdMovimiento'
      Visible = False
    end
    object adodsMovimientosDetIdPersonaRelacionada: TIntegerField
      FieldName = 'IdPersonaRelacionada'
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
    object adodsMovimientosDetPersonaRelacionada: TStringField
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
    object adodsMovimientosDetTipo: TStringField
      FieldName = 'Tipo'
      Size = 100
    end
    object adodsMovimientosDetImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
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
    Left = 192
    Top = 200
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
    Left = 48
    Top = 344
  end
  object adospMovimientosCalculados: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_GenMovimientosCalculados;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdPeriodo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 48
    Top = 400
  end
end
