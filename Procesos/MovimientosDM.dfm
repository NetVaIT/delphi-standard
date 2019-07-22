inherited dmMovimientos: TdmMovimientos
  OldCreateOrder = True
  Height = 562
  Width = 756
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    AfterScroll = adodsMasterAfterScroll
    CommandText = 
      'SELECT Movimientos.IdMovimiento, Movimientos.IdPersona, Movimien' +
      'tos.IdPeriodo, Personas.RazonSocial AS Persona, Personas_1.Razon' +
      'Social AS PersonaTitular, Movimientos.Ingresos, Movimientos.Rete' +
      'ncion, '#13#10'Movimientos.Descuentos, Movimientos.Base, Movimientos.E' +
      'ntregas, Movimientos.Percepciones, Movimientos.Deducciones, Movi' +
      'mientos.Prestaciones, Movimientos.Obligaciones, Movimientos.Oper' +
      'aciones, '#13#10'Movimientos.ImpuestoTrasladado, Movimientos.ImpuestoR' +
      'etenido, Movimientos.Egresos, Movimientos.Costo, Movimientos.Car' +
      'ga, Movimientos.SaldoAnterior, Movimientos.SaldoPeriodo, Movimie' +
      'ntos.Saldo, '#13#10'Movimientos.SaldoCosto, Movimientos.BaseGrupo, Mov' +
      'imientos.CostoGrupo, Movimientos.CargaGrupo, Movimientos.SaldoAn' +
      'teriorGrupo, Movimientos.SaldoPeriodoGrupo, Movimientos.SaldoGru' +
      'po, Movimientos.SaldoCostoGrupo'#13#10'FROM Movimientos '#13#10'INNER JOIN P' +
      'ersonas ON Movimientos.IdPersona = Personas.IdPersona '#13#10'LEFT OUT' +
      'ER JOIN Personas AS Personas_1 ON Personas.IdPersonaTitular = Pe' +
      'rsonas_1.IdPersona '#13#10'ORDER BY Persona'
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
      FieldName = 'Persona'
      Size = 300
    end
    object adodsMasterPersonaTitular: TStringField
      DisplayLabel = 'Titular'
      FieldName = 'PersonaTitular'
      Size = 300
    end
    object adodsMasterIngresos: TFMTBCDField
      FieldName = 'Ingresos'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterRetencion: TFMTBCDField
      DisplayLabel = 'Retenci'#243'n'
      FieldName = 'Retencion'
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
    object adodsMasterSaldoCosto: TFMTBCDField
      DisplayLabel = 'Saldo costo individual'
      FieldName = 'SaldoCosto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldoCostoGrupo: TFMTBCDField
      DisplayLabel = 'Saldo costo'
      FieldName = 'SaldoCostoGrupo'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  inherited ActionList: TActionList
    object actCalcularmovimientos: TAction
      Caption = 'Deversificar importes'
      Hint = 'Genera movimientos calculados del periodo actual'
      ImageIndex = 17
      OnExecute = actCalcularmovimientosExecute
      OnUpdate = actCalcularmovimientosUpdate
    end
    object actEliminarMovimientos: TAction
      Caption = 'Eliminar movimientos'
      Hint = 'Elimina movimientos del periodo actual'
      ImageIndex = 12
      OnExecute = actEliminarMovimientosExecute
      OnUpdate = actCalcularmovimientosUpdate
    end
    object actCalcularCXP: TAction
      Caption = 'Generar cuentas por pagar'
      Hint = 'Genera cuentas por pagar del periodo'
      ImageIndex = 18
      OnExecute = actCalcularCXPExecute
      OnUpdate = actCalcularmovimientosUpdate
    end
    object actEliminarCXP: TAction
      Caption = 'Eliminar cuentas por pagar'
      Hint = 'Eliminar cuentas por pagar del periodo'
      ImageIndex = 12
      OnExecute = actEliminarCXPExecute
      OnUpdate = actCalcularmovimientosUpdate
    end
    object actCalcularCXC: TAction
      Caption = 'Generar cuentas por cobrar'
      Hint = 'Genera cuentas por cobrar del periodo'
      ImageIndex = 18
      OnExecute = actCalcularCXCExecute
      OnUpdate = actCalcularmovimientosUpdate
    end
    object actEliminarCXC: TAction
      Caption = 'Eliminar cuentas por cobrar'
      Hint = 'Eliminar cuentas por cobrar del periodo'
      ImageIndex = 12
      OnExecute = actEliminarCXCExecute
      OnUpdate = actCalcularmovimientosUpdate
    end
    object actMostrarISR: TAction
      Caption = 'Mostrar ISR'
      Hint = 'Mostrar ISR de la persona'
      ImageIndex = 11
      OnExecute = actMostrarISRExecute
    end
    object actEliminarDispercion: TAction
      Caption = 'Elimina movimientos diversificados'
      Hint = 'Elimina movimientos diversificados del periodo actual'
      ImageIndex = 12
      OnExecute = actEliminarDispercionExecute
      OnUpdate = actCalcularmovimientosUpdate
    end
    object actRolesTitular: TAction
      Caption = 'Modifica los roles del titular'
      Hint = 'Modifica los roles del titular'
      ImageIndex = 11
      OnExecute = actRolesTitularExecute
      OnUpdate = actCalcularmovimientosUpdate
    end
    object actMovimientosSolidarios: TAction
      Caption = 'Generar movimientos de solidarios'
      Hint = 'Generar movimientos de solidarios'
      ImageIndex = 11
      OnExecute = actMovimientosSolidariosExecute
      OnUpdate = actCalcularmovimientosUpdate
    end
    object actSetPorcent: TAction
      Caption = 'Calcular porcentaje'
      OnExecute = actSetPorcentExecute
    end
  end
  object adodsPeriodo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPeriodo, Descripcion from Periodos'
    Parameters = <>
    Left = 184
    Top = 16
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
      'CuentaXPagar, IdCuentaXCobrar, IdPrestamoPago, Fecha, Importe, P' +
      'orcentajeRetencion'#13#10'FROM MovimientosDetalle'#13#10'WHERE IdMovimiento ' +
      '= :IdMovimiento'
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
    object adodsMovimientosDetPorcentajeRetencion: TFMTBCDField
      DisplayLabel = 'Porcentaje de retenci'#243'n'
      FieldName = 'PorcentajeRetencion'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
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
  object adopDelMovimientosDiversificados: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_DelMovimientosDiversificados;1'
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
    Left = 488
    Top = 448
  end
  object adodsRolesTitular: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT PersonasRoles.IdPersonaRol, PersonasRoles.IdRol, P1.IdPer' +
      'sona, P1.RazonSocial AS Persona, Roles.Descripcion AS Rol, P2.Ra' +
      'zonSocial AS PersonaRelacionada, '#13#10'RolesEstatus.Descripcion AS E' +
      'status, RolesClases.Descripcion AS Clase, PersonasRoles.Calcular' +
      ', PersonasRoles.PorcentajeCalculo'#13#10'FROM PersonasRoles '#13#10'INNER JO' +
      'IN Roles ON PersonasRoles.IdRol = Roles.IdRol '#13#10'INNER JOIN Perso' +
      'nas AS P1 ON PersonasRoles.IdPersona = P1.IdPersona '#13#10'INNER JOIN' +
      ' Personas AS P2 ON PersonasRoles.IdPersonaRelacionada = P2.IdPer' +
      'sona '#13#10'INNER JOIN RolesEstatus ON PersonasRoles.IdRolEstatus = R' +
      'olesEstatus.IdRolEstatus '#13#10'INNER JOIN RolesClases ON PersonasRol' +
      'es.IdRolClase = RolesClases.IdRolClase '#13#10'WHERE PersonasRoles.IdR' +
      'ol IN (SELECT IdRol FROM Roles WHERE IdRolTipo IN (4,5))'#13#10'AND Pe' +
      'rsonasRoles.IdRolEstatus = 1'#13#10'AND PersonasRoles.IdPersona IN (SE' +
      'LECT IdPersona FROM Personas WHERE IdPersonaTitular = :IdPersona' +
      'Titular)'#13#10'ORDER BY Rol, Persona, PersonaRelacionada'#13#10
    Parameters = <
      item
        Name = 'IdPersonaTitular'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 552
    Top = 24
    object adodsRolesTitularIdPersonaRol: TAutoIncField
      FieldName = 'IdPersonaRol'
      ReadOnly = True
      Visible = False
    end
    object adodsRolesTitularIdRol: TIntegerField
      FieldName = 'IdRol'
      Visible = False
    end
    object adodsRolesTitularIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
      Visible = False
    end
    object adodsRolesTitularPersona: TStringField
      FieldName = 'Persona'
      Size = 300
    end
    object adodsRolesTitularRol: TStringField
      FieldName = 'Rol'
      Size = 50
    end
    object adodsRolesTitularPersonaRelacionada: TStringField
      DisplayLabel = 'Persona relacionada'
      FieldName = 'PersonaRelacionada'
      Size = 300
    end
    object adodsRolesTitularEstatus: TStringField
      FieldName = 'Estatus'
      Size = 50
    end
    object adodsRolesTitularClase: TStringField
      FieldName = 'Clase'
      Size = 50
    end
    object adodsRolesTitularCalcular: TBooleanField
      FieldName = 'Calcular'
      OnChange = adodsRolesTitularCalcularChange
    end
    object adodsRolesTitularPorcentajeCalculo: TFMTBCDField
      DisplayLabel = 'Porcentaje'
      FieldName = 'PorcentajeCalculo'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
  end
  object adopGenMovimientosSolidarios: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_GenMovimientosSolidarios;1'
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
        Name = '@IdPersonaTitular'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 552
    Top = 88
  end
end
