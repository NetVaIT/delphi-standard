inherited dmMovimientos: TdmMovimientos
  OldCreateOrder = True
  Height = 484
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    AfterScroll = adodsMasterAfterScroll
    CommandText = 
      'SELECT IdMovimiento, IdInstruccion, IdPersona, IdPeriodo, Fecha,' +
      ' Ingresos, Descuentos, Base, Entregas, '#13#10'Percepciones, Deduccion' +
      'es, Prestaciones, Obligaciones, Operaciones, ImpuestoTrasladado,' +
      ' ImpuestoRetenido, Costo, Carga FROM Movimientos'
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
    object adodsMasterBase: TFMTBCDField
      FieldName = 'Base'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterEntregas: TFMTBCDField
      FieldName = 'Entregas'
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
    object adodsMasterImpuestoTrasladado: TFMTBCDField
      DisplayLabel = 'Impuesto trasladado'
      FieldName = 'ImpuestoTrasladado'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterImpuestoRetenido: TFMTBCDField
      DisplayLabel = 'Impuesto retenido'
      FieldName = 'ImpuestoRetenido'
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
    object adodsMasterCarga: TFMTBCDField
      FieldName = 'Carga'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  inherited ActionList: TActionList
    object actMovimientosCalculados: TAction
      Caption = 'Generar movimientos'
      Hint = 'Genera movimientos del periodo actual'
      OnExecute = actMovimientosCalculadosExecute
    end
    object actCalcularCXP: TAction
      Caption = 'Generar CXP'
      Hint = 'Genera cuentas por pagar del periodo'
      OnExecute = actCalcularCXPExecute
    end
  end
  object adodsPersona: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPersona, RazonSocial from Personas'
    Parameters = <>
    Left = 192
    Top = 24
  end
  object adodsPeriodo: TADODataSet
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
      'select IdMovimientoDetalle, IdMovimiento, IdPersonaRol, IdMovimi' +
      'entoTipo, IdMovimientoEstatus, IdCuentaXPagar, Importe from Movi' +
      'mientosDetalle'#13#10'WHERE IdMovimiento = :IdMovimiento'
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
    object adodsMovimientosDetIdPersonaRol: TIntegerField
      FieldName = 'IdPersonaRol'
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
    object adodsMovimientosDetIdCuentaXPagar: TIntegerField
      FieldName = 'IdCuentaXPagar'
      Visible = False
    end
    object adodsMovimientosDetPersonaRelacionada: TStringField
      DisplayLabel = 'Persona relacionada'
      FieldKind = fkLookup
      FieldName = 'PersonaRelacionada'
      LookupDataSet = adodsPersonaRol
      LookupKeyFields = 'IdPersonaRol'
      LookupResultField = 'PersonaRelacionada'
      KeyFields = 'IdPersonaRol'
      Size = 500
      Lookup = True
    end
    object adodsMovimientosDetTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo'
      LookupDataSet = adodsMovimientosTipo
      LookupKeyFields = 'IdMovimientoTipo'
      LookupResultField = 'Tipo'
      KeyFields = 'IdMovimientoTipo'
      Size = 100
      Lookup = True
    end
    object adodsMovimientosDetImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMovimientosDetEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsMovimientosEstatus
      LookupKeyFields = 'IdMovimientoEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoEstatus'
      Size = 50
      Lookup = True
    end
  end
  object adodsPersonaRol: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        PersonasRoles.IdPersonaRol, PersonasRoles.IdPerson' +
      'a, Roles.Descripcion AS Rol, Personas.RazonSocial AS PersonaRela' +
      'cionada'#13#10'FROM            PersonasRoles INNER JOIN'#13#10'             ' +
      '            Roles ON PersonasRoles.IdRol = Roles.IdRol INNER JOI' +
      'N'#13#10'                         Personas ON PersonasRoles.IdPersonaR' +
      'elacionada = Personas.IdPersona'#13#10
    Parameters = <>
    Left = 176
    Top = 200
  end
  object adodsMovimientosTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        MovimientosTipos.IdMovimientoTipo, MovimientosTipo' +
      's.Descripcion AS Tipo, MovimientosTiposCategorias.Descripcion AS' +
      ' Categoria, MovimientosTiposEfectos.Descripcion AS Efecto'#13#10'FROM ' +
      '           MovimientosTipos INNER JOIN'#13#10'                        ' +
      ' MovimientosTiposCategorias ON MovimientosTipos.IdMovimientoTipo' +
      'Categoria = MovimientosTiposCategorias.IdMovimientoTipoCategoria' +
      ' INNER JOIN'#13#10'                         MovimientosTiposEfectos ON' +
      ' MovimientosTipos.IdMovimientoTipoEfecto = MovimientosTiposEfect' +
      'os.IdMovimientoTipoEfecto'
    Parameters = <>
    Left = 176
    Top = 256
  end
  object adodsMovimientosEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMovimientoEstatus, Descripcion from MovimientosEstatus'
    Parameters = <>
    Left = 176
    Top = 320
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
  object adospCentasXPagar: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_GenCuentasXPagar;1'
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
      end
      item
        Name = '@IdUsuarioRegistro'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 192
    Top = 403
  end
end
