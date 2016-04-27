inherited dmCuentasXPagar: TdmCuentasXPagar
  OldCreateOrder = True
  Height = 527
  Width = 559
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdCuentaXPagar, IdPersonaRol, IdPersona, IdPersonaRelacio' +
      'nada, IdPeriodo, IdCuentaXPagarEstatus, Persona, PersonaRelacion' +
      'ada, ConceptoGenerico, SumaSubtotal, SumaTotal, SumaDescuentos, ' +
      'TotalIVATrasladado, TotalISRTrasladado, TotalIEPSTrasladado, Tot' +
      'alLocalesTrasladado, TotalIVARetenido, TotalISRRetenido, TotalLo' +
      'calesRetenido, SaldoPendiente, FlujoEfectivo, Estatus from vCuen' +
      'tasXPagar'
    object adodsMasterIdCuentaXPagar: TIntegerField
      FieldName = 'IdCuentaXPagar'
      Visible = False
    end
    object adodsMasterIdPersonaRol: TIntegerField
      FieldName = 'IdPersonaRol'
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
    object adodsMasterIdCuentaXPagarEstatus: TIntegerField
      FieldName = 'IdCuentaXPagarEstatus'
      Visible = False
    end
    object adodsMasterPersona: TStringField
      DisplayLabel = 'Receptora'
      FieldName = 'Persona'
      Size = 300
    end
    object adodsMasterPersonaRelacionada: TStringField
      DisplayLabel = 'Emisora'
      FieldName = 'PersonaRelacionada'
      Size = 300
    end
    object adodsMasterConceptoGenerico: TStringField
      DisplayLabel = 'Concepto'
      FieldName = 'ConceptoGenerico'
      Size = 200
    end
    object adodsMasterSumaSubtotal: TFMTBCDField
      DisplayLabel = 'Subtotal'
      FieldName = 'SumaSubtotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSumaTotal: TFMTBCDField
      DisplayLabel = 'Total'
      FieldName = 'SumaTotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSumaDescuentos: TFMTBCDField
      DisplayLabel = 'Descuentos'
      FieldName = 'SumaDescuentos'
      Visible = False
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalIVATrasladado: TFMTBCDField
      FieldName = 'TotalIVATrasladado'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalISRTrasladado: TFMTBCDField
      FieldName = 'TotalISRTrasladado'
      Visible = False
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalIEPSTrasladado: TFMTBCDField
      FieldName = 'TotalIEPSTrasladado'
      Visible = False
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalLocalesTrasladado: TFMTBCDField
      FieldName = 'TotalLocalesTrasladado'
      Visible = False
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalIVARetenido: TFMTBCDField
      FieldName = 'TotalIVARetenido'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalISRRetenido: TFMTBCDField
      FieldName = 'TotalISRRetenido'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalLocalesRetenido: TFMTBCDField
      FieldName = 'TotalLocalesRetenido'
      Visible = False
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldoPendiente: TFMTBCDField
      DisplayLabel = 'Saldo pendiente'
      FieldName = 'SaldoPendiente'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterFlujoEfectivo: TFMTBCDField
      DisplayLabel = 'Flujo de efectivo'
      FieldName = 'FlujoEfectivo'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterEstatus: TStringField
      FieldName = 'Estatus'
      Size = 50
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 464
  end
  inherited ActionList: TActionList
    Left = 464
    object actCambiarEstatus: TAction
      ImageIndex = 13
      OnExecute = actCambiarEstatusExecute
      OnUpdate = actCambiarEstatusUpdate
    end
    object actAutorizar: TAction
      Caption = 'Autorizar'
      ImageIndex = 13
      OnExecute = actAutorizarExecute
    end
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 96
    Top = 16
  end
  object adodsMovimientosDetalle: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMovimientoDetalle, IdCuentaXPagar, IdPersonaRol, IdMovi' +
      'mientoTipo, IdMovimientoEstatus, PersonaRelacionada, Tipo, Categ' +
      'oria, Efecto, Fecha, Importe, AplicarCategoria, Estatus from vMo' +
      'vimientosDetalle'#13#10'WHERE IdCuentaXPagar = :IdCuentaXPagar'
    DataSource = dsMaster
    MasterFields = 'IdCuentaXPagar'
    Parameters = <
      item
        Name = 'IdCuentaXPagar'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 195
      end>
    Left = 24
    Top = 72
    object adodsMovimientosDetalleIdMovimientoDetalle: TIntegerField
      FieldName = 'IdMovimientoDetalle'
      Visible = False
    end
    object adodsMovimientosDetalleIdCuentaXPagar: TIntegerField
      FieldName = 'IdCuentaXPagar'
      Visible = False
    end
    object adodsMovimientosDetalleIdPersonaRol: TIntegerField
      FieldName = 'IdPersonaRol'
      Visible = False
    end
    object adodsMovimientosDetalleIdMovimientoTipo: TIntegerField
      FieldName = 'IdMovimientoTipo'
      Visible = False
    end
    object adodsMovimientosDetalleIdMovimientoEstatus: TIntegerField
      FieldName = 'IdMovimientoEstatus'
      Visible = False
    end
    object adodsMovimientosDetallePersonaRelacionada: TStringField
      DisplayLabel = 'Persona relacionada'
      FieldName = 'PersonaRelacionada'
      Size = 300
    end
    object adodsMovimientosDetalleTipo: TStringField
      FieldName = 'Tipo'
      Size = 100
    end
    object adodsMovimientosDetalleCategoria: TStringField
      FieldName = 'Categoria'
      Size = 100
    end
    object adodsMovimientosDetalleEfecto: TStringField
      FieldName = 'Efecto'
      Size = 100
    end
    object adodsMovimientosDetalleFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMovimientosDetalleImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMovimientosDetalleAplicarCategoria: TBooleanField
      DisplayLabel = 'Aplicar'
      FieldName = 'AplicarCategoria'
    end
    object adodsMovimientosDetalleEstatus: TStringField
      FieldName = 'Estatus'
      Size = 100
    end
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
      end>
    Left = 96
    Top = 363
  end
  object adodsPeriodo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPeriodo, Descripcion from Periodos'
    Parameters = <>
    Left = 304
    Top = 408
  end
  object adodsCuentasXPagarPagos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT CuentasXPagarPagos.IdCuentaXPagarPago, CuentasXPagarPagos' +
      '.IdCuentaXPagar, CuentasXPagarPagos.IdCuentaXPagarEstatus, Cuent' +
      'asXPagarPagos.IdPersonaRol, CuentasXPagarEstatus.Descripcion AS ' +
      'Estatus, Personas.RazonSocial AS Receptora, Personas_1.RazonSoci' +
      'al AS Pagadora, '#13#10'CuentasXPagarPagos.FechaProgramada, CuentasXPa' +
      'garPagos.MontoProgramado'#13#10'FROM CuentasXPagarPagos '#13#10'INNER JOIN C' +
      'uentasXPagarEstatus ON CuentasXPagarPagos.IdCuentaXPagarEstatus ' +
      '= CuentasXPagarEstatus.IdCuentaXPagarEstatus'#13#10'INNER JOIN Persona' +
      'sRoles ON CuentasXPagarPagos.IdPersonaRol = PersonasRoles.IdPers' +
      'onaRol'#13#10'INNER JOIN Personas ON PersonasRoles.IdPersona = Persona' +
      's.IdPersona'#13#10'INNER JOIN Personas AS Personas_1 ON PersonasRoles.' +
      'IdPersonaRelacionada = Personas_1.IdPersona'#13#10'WHERE CuentasXPagar' +
      'Pagos.IdCuentaXPagar = :IdCuentaXPagar'#13#10
    DataSource = dsMaster
    MasterFields = 'IdCuentaXPagar'
    Parameters = <
      item
        Name = 'IdCuentaXPagar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 480
    Top = 448
    object adodsCuentasXPagarPagosIdCuentaXPagarPago: TAutoIncField
      FieldName = 'IdCuentaXPagarPago'
      ReadOnly = True
      Visible = False
    end
    object adodsCuentasXPagarPagosIdCuentaXPagar: TIntegerField
      FieldName = 'IdCuentaXPagar'
      Visible = False
    end
    object adodsCuentasXPagarPagosIdCuentaXPagarEstatus: TIntegerField
      FieldName = 'IdCuentaXPagarEstatus'
      Visible = False
    end
    object adodsCuentasXPagarPagosIdPersonaRol: TIntegerField
      FieldName = 'IdPersonaRol'
      Visible = False
    end
    object adodsCuentasXPagarPagosEstatus: TStringField
      FieldName = 'Estatus'
      Size = 50
    end
    object adodsCuentasXPagarPagosReceptora: TStringField
      FieldName = 'Receptora'
      Size = 300
    end
    object adodsCuentasXPagarPagosPagadora: TStringField
      DisplayLabel = 'Emisora'
      FieldName = 'Pagadora'
      Size = 300
    end
    object adodsCuentasXPagarPagosFechaProgramada: TDateTimeField
      DisplayLabel = 'Fecha programada'
      FieldName = 'FechaProgramada'
    end
    object adodsCuentasXPagarPagosMontoProgramado: TFMTBCDField
      DisplayLabel = 'Importe programado'
      FieldName = 'MontoProgramado'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  object adospUpdCuentasXPagarPagosEstatus: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_UpdCuentasXPagarPagosEstatus;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCuentaXPagarPago'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCuentaXPagarEstatusOrigen'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCuentaXPagarEstatusDestino'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdUsuario'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 96
    Top = 408
  end
  object adopSetCuentasXPagarPagosAutorizar: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_SetCuentasXPagarPagosAutorizar;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdUsuario'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 96
    Top = 464
  end
  object adodsMonedas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdMoneda, IdPais, Identificador, Descripcion FROM Monedas'
    Parameters = <>
    Left = 312
    Top = 296
  end
  object adodsCtaBanPagador: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT C.IdCuentaBancaria, C.IdPersona, B.Nombre + '#39' - '#39' + C.Cue' +
      'ntaBancaria + '#39' - '#39' + M.Identificador AS CuentaCompleta'#13#10'FROM Cu' +
      'entasBancarias AS C '#13#10'INNER JOIN Bancos AS B ON C.IdBanco = B.Id' +
      'Banco '#13#10'INNER JOIN Monedas AS M ON M.IdMoneda = C.IdMoneda '#13#10
    DataSource = dsMaster
    IndexFieldNames = 'IdPersona'
    MasterFields = 'IdPersonaRelacionada'
    Parameters = <>
    Left = 192
    Top = 128
  end
  object adodsCtaBanCobrador: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        C.IdCuentaBancaria, PRCB.IdPersonaRol, B.Nombre + ' +
      #39' - '#39' + C.CuentaBancaria + '#39' - '#39' + M.Identificador AS CuentaComp' +
      'leta, P.Descripcion AS Perfil'#13#10'FROM            PersonasRolesCuen' +
      'tasBancarias AS PRCB INNER JOIN'#13#10'                         Cuenta' +
      'sBancarias AS C ON C.IdCuentaBancaria = PRCB.IdCuentaBancaria IN' +
      'NER JOIN'#13#10'                         Bancos AS B ON C.IdBanco = B.' +
      'IdBanco INNER JOIN'#13#10'                         Monedas AS M ON M.I' +
      'dMoneda = C.IdMoneda INNER JOIN'#13#10'                         Cuenta' +
      'sBancariasPerfiles AS P ON PRCB.IdCuentaBancariaPerfil = P.IdCue' +
      'ntaBancariaPerfil'#13#10'WHERE        PRCB.IdCuentaBancariaEstatus = 1' +
      #13#10
    DataSource = dsMaster
    IndexFieldNames = 'idPersonaRol'
    MasterFields = 'IdPersonaRol'
    Parameters = <>
    Left = 192
    Top = 184
  end
  object adodsPagos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaXPagarPago, IdCuentaXPagar, IdCuentaXPagarEstatus' +
      ', IdPersonaRol, IdMetodoPago, IdCuentaBancariaPagador, IdCuentaB' +
      'ancariaCobrador, IdMoneda, '#13#10'FechaProgramacion, IdUsuarioProgram' +
      'a, FechaProgramada, MontoProgramado, '#13#10'FechaAutorizacion, IdUsua' +
      'rioAutoriza, FechaAutorizaPago, MontoAutorizado, '#13#10'FechaPago, Id' +
      'UsuarioPago, MontoPagado,'#13#10'FechaConcilia, IdUsuarioConcilia, '#13#10'I' +
      'dMonedaExtranjera, TipoCambio, TotalMonedaExtranjera, '#13#10'TotalMon' +
      'edaNacional, IdEstadoCuenta '#13#10'FROM CuentasXPagarPagos'#13#10'WHERE IdC' +
      'uentaXPagar = :IdCuentaXPagar'#13#10
    DataSource = dsMaster
    IndexFieldNames = 'IdCuentaXPagar'
    MasterFields = 'IDCuentaXpagar'
    Parameters = <
      item
        Name = 'IDCuentaXpagar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 22497
      end>
    Left = 192
    Top = 16
    object adodsPagosIdCuentaXPagarPago: TAutoIncField
      FieldName = 'IdCuentaXPagarPago'
      ReadOnly = True
      Visible = False
    end
    object adodsPagosIdCuentaXPagar: TIntegerField
      FieldName = 'IdCuentaXPagar'
      Visible = False
    end
    object adodsPagosIdCuentaXPagarEstatus: TIntegerField
      FieldName = 'IdCuentaXPagarEstatus'
      Visible = False
    end
    object adodsPagosIdPersonaRol: TIntegerField
      FieldName = 'IdPersonaRol'
      Visible = False
    end
    object adodsPagosIDMetodoPago: TIntegerField
      FieldName = 'IDMetodoPago'
      Visible = False
    end
    object adodsPagosIdUsuarioPrograma: TIntegerField
      FieldName = 'IdUsuarioPrograma'
      Visible = False
    end
    object adodsPagosIdUsuarioAutoriza: TIntegerField
      FieldName = 'IdUsuarioAutoriza'
      Visible = False
    end
    object adodsPagosIdUsuarioPago: TIntegerField
      FieldName = 'IdUsuarioPago'
      Visible = False
    end
    object adodsPagosIdUsuarioConcilia: TIntegerField
      FieldName = 'IdUsuarioConcilia'
      Visible = False
    end
    object adodsPagosIDCuentaBancariaPagador: TIntegerField
      FieldName = 'IdCuentaBancariaPagador'
      Visible = False
    end
    object adodsPagosIDCuentaBancariaCobrador: TIntegerField
      FieldName = 'IdCuentaBancariaCobrador'
      Visible = False
    end
    object adodsPagosIDMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsPagosIdMonedaExtranjera: TIntegerField
      FieldName = 'IdMonedaExtranjera'
      Visible = False
    end
    object adodsPagosIdEstadoCuenta: TIntegerField
      FieldName = 'IdEstadoCuenta'
      Visible = False
    end
    object adodsPagosEstatusCXP: TStringField
      DisplayLabel = 'Estatus'
      FieldKind = fkLookup
      FieldName = 'EstatusCXP'
      LookupDataSet = adodsEstatusCXP
      LookupKeyFields = 'IdCuentaXPagarEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCuentaXPagarEstatus'
      Size = 50
      Lookup = True
    end
    object adodsPagosCuentaBanPagador: TStringField
      DisplayLabel = 'Cuenta bancaria retiro'
      FieldKind = fkLookup
      FieldName = 'CuentaBanPagador'
      LookupDataSet = adodsCtaBanPagador
      LookupKeyFields = 'IdCuentaBancaria'
      LookupResultField = 'CuentaCompleta'
      KeyFields = 'IDCuentaBancariaPagador'
      Size = 50
      Lookup = True
    end
    object adodsPagosCuentaBanCobrador: TStringField
      DisplayLabel = 'Cuenta bancaria dep'#243'sito'
      FieldKind = fkLookup
      FieldName = 'CuentaBanCobrador'
      LookupDataSet = adodsCtaBanCobrador
      LookupKeyFields = 'IdCuentaBancaria'
      LookupResultField = 'CuentaCompleta'
      KeyFields = 'IDCuentaBancariaCobrador'
      Size = 50
      Lookup = True
    end
    object adodsPagosCuentaBanCompleta2: TStringField
      DisplayLabel = 'Cuenta bancaria dep'#243'sito'
      FieldKind = fkLookup
      FieldName = 'CuentaBanCobrador2'
      LookupDataSet = adodsCuentaBancariaConsulta
      LookupKeyFields = 'IdCuentaBancaria'
      LookupResultField = 'CuentaCompleta'
      KeyFields = 'IDCuentaBancariaCobrador'
      Size = 100
      Lookup = True
    end
    object adodsPagosUsuarioPrograma: TStringField
      DisplayLabel = 'Usuario Programa'
      FieldKind = fkLookup
      FieldName = 'UsuarioPrograma'
      LookupDataSet = adodsUsuPrograma
      LookupKeyFields = 'IdUsuario'
      LookupResultField = 'Razonsocial'
      KeyFields = 'IdUsuarioPrograma'
      Size = 50
      Lookup = True
    end
    object adodsPagosFechaProgramacion: TDateTimeField
      DisplayLabel = 'Fecha Programaci'#243'n'
      FieldName = 'FechaProgramacion'
    end
    object adodsPagosFechaProgramada: TDateTimeField
      DisplayLabel = 'Fecha Programada'
      FieldName = 'FechaProgramada'
    end
    object adodsPagosMontoProgramado: TFMTBCDField
      DisplayLabel = 'Monto Programado'
      FieldName = 'MontoProgramado'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsPagosUsuarioAutoriza: TStringField
      DisplayLabel = 'Usuario Autoriza'
      FieldKind = fkLookup
      FieldName = 'UsuarioAutoriza'
      LookupDataSet = adodsUsuAutoriza
      LookupKeyFields = 'IdUsuario'
      LookupResultField = 'Razonsocial'
      KeyFields = 'IdUsuarioAutoriza'
      Size = 50
      Lookup = True
    end
    object adodsPagosFechaAutorizacion: TDateTimeField
      DisplayLabel = 'Fecha Autorizaci'#243'n'
      FieldName = 'FechaAutorizacion'
    end
    object adodsPagosFechaAutorizaPago: TDateTimeField
      DisplayLabel = 'Fecha Autoriza Pago'
      FieldName = 'FechaAutorizaPago'
    end
    object adodsPagosMontoAutorizado: TFMTBCDField
      DisplayLabel = 'Monto Autorizado'
      FieldName = 'MontoAutorizado'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsPagosFechaPago: TDateTimeField
      DisplayLabel = 'Fecha Pago'
      FieldName = 'FechaPago'
    end
    object adodsPagosUsuarioPaga: TStringField
      DisplayLabel = 'Usuario Paga'
      FieldKind = fkLookup
      FieldName = 'UsuarioPaga'
      LookupDataSet = adodsUsuPaga
      LookupKeyFields = 'IdUsuario'
      LookupResultField = 'Razonsocial'
      KeyFields = 'IdUsuarioPago'
      Size = 50
      Lookup = True
    end
    object adodsPagosMontoPagado: TFMTBCDField
      DisplayLabel = 'Monto Pagado'
      FieldName = 'MontoPagado'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsPagosFechaConcilia: TDateTimeField
      DisplayLabel = 'Fecha Concilia'
      FieldName = 'FechaConcilia'
      Visible = False
    end
    object adodsPagosUsuarioConcilia: TStringField
      DisplayLabel = 'Usuario Concilia'
      FieldKind = fkLookup
      FieldName = 'UsuarioConcilia'
      LookupDataSet = adodsUsuConcilia
      LookupKeyFields = 'IdUsuario'
      LookupResultField = 'Razonsocial'
      KeyFields = 'IdUsuarioConcilia'
      Visible = False
      Size = 50
      Lookup = True
    end
    object adodsPagosTipoCambio: TFMTBCDField
      DisplayLabel = 'Tipo Cambio'
      FieldName = 'TipoCambio'
      Visible = False
      Precision = 18
      Size = 6
    end
    object adodsPagosTotalMonedaExtranjera: TFMTBCDField
      FieldName = 'TotalMonedaExtranjera'
      Visible = False
      Precision = 18
      Size = 6
    end
    object adodsPagosTotalMonedaNacional: TFMTBCDField
      DisplayLabel = 'Total MXN'
      FieldName = 'TotalMonedaNacional'
      Visible = False
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsPagosMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = adodsMonedas
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Identificador'
      KeyFields = 'IDMoneda'
      Visible = False
      Size = 15
      Lookup = True
    end
    object adodsPagosMonedaExt: TStringField
      DisplayLabel = 'Moneda Extanjera'
      FieldKind = fkLookup
      FieldName = 'MonedaExt'
      LookupDataSet = adodsMonedas
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Identificador'
      KeyFields = 'IdMonedaExtranjera'
      Visible = False
      Size = 15
      Lookup = True
    end
    object adodsPagosMetodoPago: TStringField
      FieldKind = fkLookup
      FieldName = 'MetodoPago'
      LookupDataSet = adodsMetodosPago
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IDMetodoPago'
      Visible = False
      Size = 50
      Lookup = True
    end
  end
  object adodsUsuAutoriza: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select U.IdUsuario, U.IdPersona, U.IdUsuarioEstatus, P. Razonsoc' +
      'ial,'#13#10' U.Login, U.Password, '#13#10'U.LoginServidor, U.PasswordServido' +
      'r  from Usuarios U  '#13#10'inner Join Personas  P on P.IDPersona=U.ID' +
      'Persona'
    Parameters = <>
    Left = 312
    Top = 72
  end
  object adodsUsuPrograma: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select U.IdUsuario, U.IdPersona, U.IdUsuarioEstatus, P. Razonsoc' +
      'ial,'#13#10' U.Login, U.Password, '#13#10'U.LoginServidor, U.PasswordServido' +
      'r  from Usuarios U  '#13#10'inner Join Personas  P on P.IDPersona=U.ID' +
      'Persona'
    Parameters = <>
    Left = 312
    Top = 128
  end
  object adodsUsuPaga: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select U.IdUsuario, U.IdPersona, U.IdUsuarioEstatus, P. Razonsoc' +
      'ial,'#13#10' U.Login, U.Password, '#13#10'U.LoginServidor, U.PasswordServido' +
      'r  from Usuarios U  '#13#10'inner Join Personas  P on P.IDPersona=U.ID' +
      'Persona'
    Parameters = <>
    Left = 312
    Top = 184
  end
  object adodsUsuConcilia: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select U.IdUsuario, U.IdPersona, U.IdUsuarioEstatus, P. Razonsoc' +
      'ial,'#13#10' U.Login, U.Password, '#13#10'U.LoginServidor, U.PasswordServido' +
      'r  from Usuarios U  '#13#10'inner Join Personas  P on P.IDPersona=U.ID' +
      'Persona'
    Parameters = <>
    Left = 312
    Top = 240
  end
  object adodsEstatusCXP: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select * from CuentasXPagarEstatus'
    Parameters = <>
    Left = 192
    Top = 240
  end
  object adodsMetodosPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMetodoPago, Identificador, Descripcion from MetodosPago'
    Parameters = <>
    Left = 192
    Top = 296
    object adodsMetodosPagoIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
    object adodsMetodosPagoIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsMetodosPagoDescripcion: TStringField
      DisplayLabel = 'M'#233'todo Pago'
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object adodsCuentaBancariaConsulta: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select B.Nombre +'#39' - '#39'+ C.CuentaBancaria+'#39' - '#39'+M.identificador a' +
      's CuentaCompleta,'#13#10'C.IdCuentaBancaria, C.IdPersona, C.IdCuentaBa' +
      'ncariaTipo,'#13#10' C.IdBanco, C.CuentaBancaria, C.ClabeInterbancaria,' +
      ' C.IdMoneda '#13#10'SaldoCuenta from CuentasBancarias C inner join ban' +
      'cos B on C.IdBanco=B.IdBanco'#13#10'inner join monedas M on M.IDMoneda' +
      '=C.idMoneda'#13#10
    IndexFieldNames = 'IdCuentaBancaria'
    MasterFields = 'IDCuentaBancariaCobrador'
    Parameters = <>
    Left = 192
    Top = 72
  end
  object ADODtStTotales: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Left = 464
    Top = 256
  end
  object dsPagos: TDataSource
    DataSet = adodsPagos
    OnDataChange = dsPagosDataChange
    Left = 312
    Top = 16
  end
end
