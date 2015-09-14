inherited dmMovimientos: TdmMovimientos
  OldCreateOrder = True
  Height = 562
  Width = 559
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    AfterScroll = adodsMasterAfterScroll
    CommandText = 
      'SELECT IdMovimiento, IdPersona, IdPeriodo, Ingresos, Descuentos,' +
      ' Base, Entregas, '#13#10'Percepciones, Deducciones, Prestaciones, Obli' +
      'gaciones, Operaciones, ImpuestoTrasladado, ImpuestoRetenido,'#13#10'Eg' +
      'resos, Costo, Carga, SaldoAnterior, SaldoPeriodo, Saldo, '#13#10'BaseG' +
      'rupo, CostoGrupo, CargaGrupo, SaldoAnteriorGrupo, SaldoPeriodoGr' +
      'upo, SaldoGrupo FROM Movimientos'
    object adodsMasterIdMovimiento: TAutoIncField
      FieldName = 'IdMovimiento'
      ReadOnly = True
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
    object adodsMasterPersonaTitular: TStringField
      DisplayLabel = 'Titular'
      FieldKind = fkLookup
      FieldName = 'PersonaTitular'
      LookupDataSet = adodsPersonaTitular
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'Titular'
      KeyFields = 'IdPersona'
      Visible = False
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
      DisplayLabel = 'Base individual'
      FieldName = 'Base'
      Visible = False
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterBaseGrupo: TFMTBCDField
      DisplayLabel = 'Base'
      FieldName = 'BaseGrupo'
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
    object adodsMasterEgresos: TFMTBCDField
      FieldName = 'Egresos'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterCosto: TFMTBCDField
      DisplayLabel = 'Costo individual'
      FieldName = 'Costo'
      Visible = False
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterCostoGrupo: TFMTBCDField
      DisplayLabel = 'Costo'
      FieldName = 'CostoGrupo'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterCarga: TFMTBCDField
      DisplayLabel = 'Carga laboral individual'
      FieldName = 'Carga'
      Visible = False
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterCargaGrupo: TFMTBCDField
      DisplayLabel = 'Carga laboral'
      FieldName = 'CargaGrupo'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldoAnterior: TFMTBCDField
      DisplayLabel = 'Saldo anterior individual'
      FieldName = 'SaldoAnterior'
      Visible = False
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldoAnteriorGrupo: TFMTBCDField
      DisplayLabel = 'Saldo anterior'
      FieldName = 'SaldoAnteriorGrupo'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldoPeriodo: TFMTBCDField
      DisplayLabel = 'Saldo del periodo individual'
      FieldName = 'SaldoPeriodo'
      Visible = False
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldoPeriodoGrupo: TFMTBCDField
      DisplayLabel = 'Saldo del periodo'
      FieldName = 'SaldoPeriodoGrupo'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldo: TFMTBCDField
      DisplayLabel = 'Saldo individual'
      FieldName = 'Saldo'
      Visible = False
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldoGrupo: TFMTBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'SaldoGrupo'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  inherited ActionList: TActionList
    object actCalcularmovimientos: TAction
      Caption = 'Deversificar importes'
      Hint = 'Genera movimientos calculados del periodo actual'
      ImageIndex = 10
      OnExecute = actCalcularmovimientosExecute
    end
    object actEliminarMovimientos: TAction
      Caption = 'Eliminar movimientos'
      Hint = 'Elimina movimientos del periodo actual'
      ImageIndex = 12
      OnExecute = actEliminarMovimientosExecute
    end
    object actCalcularCXP: TAction
      Caption = 'Generar cuentas por pagar'
      Hint = 'Genera cuentas por pagar del periodo'
      ImageIndex = 10
      OnExecute = actCalcularCXPExecute
    end
    object actEliminarCXP: TAction
      Caption = 'Eliminar cuentas por pagar'
      Hint = 'Eliminar cuentas por pagar del periodo'
      ImageIndex = 12
      OnExecute = actEliminarCXPExecute
    end
    object actCalcularCXC: TAction
      Caption = 'Generar cuentas por cobrar'
      Hint = 'Genera cuentas por cobrar del periodo'
      ImageIndex = 10
      OnExecute = actCalcularCXCExecute
    end
    object actEliminarCXC: TAction
      Caption = 'Eliminar cuentas por cobrar'
      Hint = 'Eliminar cuentas por cobrar del periodo'
      ImageIndex = 12
      OnExecute = actEliminarCXCExecute
    end
    object actMostrarISR: TAction
      Caption = 'Mostrar ISR'
      Hint = 'Mostrar ISR de la persona'
      ImageIndex = 11
      OnExecute = actMostrarISRExecute
    end
  end
  object adodsPersona: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPersona, RazonSocial from Personas'
    Parameters = <>
    Left = 184
    Top = 16
  end
  object adodsPeriodo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPeriodo, Descripcion from Periodos'
    Parameters = <>
    Left = 184
    Top = 72
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 96
    Top = 16
  end
  object adodsMovimientosDet: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = adodsMovimientosDetAfterPost
    CommandText = 
      'SELECT IdMovimientoDetalle, IdMovimiento, IdPersonaRol, IdIncide' +
      'nciaDetalle, IdMovimientoTipo, IdMoneda, IdMovimientoEstatus, Id' +
      'CuentaXPagar, IdCuentaXCobrar, IdPrestamoPago, Fecha, Importe FR' +
      'OM MovimientosDetalle'#13#10'WHERE IdMovimiento = :IdMovimiento'
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
    object adodsMovimientosDetIdIncidenciaDetalle: TIntegerField
      FieldName = 'IdIncidenciaDetalle'
      Visible = False
    end
    object adodsMovimientosDetIdMovimientoTipo: TIntegerField
      FieldName = 'IdMovimientoTipo'
      Visible = False
    end
    object adodsMovimientosDetIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
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
    object adodsMovimientosDetIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
      Visible = False
    end
    object adodsMovimientosDetIdPrestamoPago: TIntegerField
      FieldName = 'IdPrestamoPago'
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
    object adodsMovimientosDetCategoria: TStringField
      FieldKind = fkLookup
      FieldName = 'Categoria'
      LookupDataSet = adodsMovimientosTipo
      LookupKeyFields = 'IdMovimientoTipo'
      LookupResultField = 'Categoria'
      KeyFields = 'IdMovimientoTipo'
      Size = 100
      Lookup = True
    end
    object adodsMovimientosDetFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMovimientosDetImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMovimientosDetAplicarCategoria: TBooleanField
      DisplayLabel = 'Aplicar'
      FieldKind = fkLookup
      FieldName = 'AplicarCategoria'
      LookupDataSet = adodsMovimientosTipo
      LookupKeyFields = 'IdMovimientoTipo'
      LookupResultField = 'AplicarCategoria'
      KeyFields = 'IdMovimientoTipo'
      Lookup = True
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
      ' Categoria, MovimientosTiposEfectos.Descripcion AS Efecto, Movim' +
      'ientosTipos.AplicarCategoria'#13#10'FROM            MovimientosTipos I' +
      'NNER JOIN'#13#10'                         MovimientosTiposCategorias O' +
      'N MovimientosTipos.IdMovimientoTipoCategoria = MovimientosTiposC' +
      'ategorias.IdMovimientoTipoCategoria INNER JOIN'#13#10'                ' +
      '         MovimientosTiposEfectos ON MovimientosTipos.IdMovimient' +
      'oTipoEfecto = MovimientosTiposEfectos.IdMovimientoTipoEfecto'
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
  object adospMovimientosDiversificados: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_GenMovimientosDiversificados;1'
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
    Left = 64
    Top = 448
  end
  object adospCuentasXPagar: TADOStoredProc
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
    Left = 208
    Top = 443
  end
  object adopDelMovimientos: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_DelMovimientos;1'
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
    Left = 64
    Top = 504
  end
  object adopDelCuentasXPagar: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_DelCuentasXPagar;1'
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
    Left = 208
    Top = 504
  end
  object adopUptMovimientosTotales: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_UpdMovimientosTotales;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdMovimiento'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 56
    Top = 272
  end
  object adospCuentasXCobrar: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_GenCuentasXCobrar;1'
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
    Left = 336
    Top = 448
  end
  object adopDelCuentasXCobrar: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_DelCuentasXCobrar;1'
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
    Left = 336
    Top = 504
  end
  object adodsPersonaTitular: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        Personas.IdPersona, ISNULL(Personas_1.RazonSocial,' +
      ' '#39#39') AS Titular'#13#10'FROM            Personas LEFT JOIN'#13#10'           ' +
      '              Personas AS Personas_1 ON Personas.IdPersonaTitula' +
      'r = Personas_1.IdPersona'
    Parameters = <>
    Left = 184
    Top = 128
  end
end
