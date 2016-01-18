inherited dmCuentasXPagar: TdmCuentasXPagar
  OldCreateOrder = True
  Height = 405
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdCuentaXPagar, IdPersonaRol, IdPeriodo, IdCuentaXPagarEs' +
      'tatus, Persona, PersonaRelacionada, ConceptoGenerico, SumaSubtot' +
      'al, SumaTotal, SumaDescuentos, TotalIVATrasladado, TotalISRTrasl' +
      'adado, TotalIEPSTrasladado, TotalLocalesTrasladado, TotalIVARete' +
      'nido, TotalISRRetenido, TotalLocalesRetenido, SaldoPendiente, Fl' +
      'ujoEfectivo, Estatus from vCuentasXPagar'
    object adodsMasterIdCuentaXPagar: TIntegerField
      FieldName = 'IdCuentaXPagar'
      Visible = False
    end
    object adodsMasterIdPersonaRol: TIntegerField
      FieldName = 'IdPersonaRol'
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
  inherited ActionList: TActionList
    object actExpotarPagos: TAction
      Caption = 'Exportar Pagos'
      Hint = 'Exportar Pagos'
      ImageIndex = 13
      Visible = False
      OnExecute = actExpotarPagosExecute
    end
    object actDescargarPagos: TAction
      Caption = 'Descargar Pagos'
      Hint = 'Descargar Pagos'
      ImageIndex = 13
      Visible = False
      OnExecute = actDescargarPagosExecute
    end
    object actCambiarEstatus: TAction
      ImageIndex = 13
      OnExecute = actCambiarEstatusExecute
      OnUpdate = actCambiarEstatusUpdate
    end
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 112
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
    Left = 72
    Top = 88
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
    Left = 72
    Top = 219
  end
  object adodsPeriodo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPeriodo, Descripcion from Periodos'
    Parameters = <>
    Left = 224
    Top = 88
  end
  object adodsCuentasXPagarPagos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT CuentasXPagarPagos.IdCuentaXPagarPago, CuentasXPagarPagos' +
      '.IdCuentaXPagar, CuentasXPagarPagos.IdCuentaXPagarEstatus, Cuent' +
      'asXPagarEstatus.Descripcion AS Estatus, Personas.RazonSocial AS ' +
      'Receptora, Personas_1.RazonSocial AS Pagadora, '#13#10'CuentasXPagarPa' +
      'gos.FechaProgramada, CuentasXPagarPagos.MontoProgramado'#13#10'FROM Cu' +
      'entasXPagarPagos '#13#10'INNER JOIN CuentasXPagarEstatus ON CuentasXPa' +
      'garPagos.IdCuentaXPagarEstatus = CuentasXPagarEstatus.IdCuentaXP' +
      'agarEstatus'#13#10'INNER JOIN PersonasRoles ON CuentasXPagarPagos.IdPe' +
      'rsonaRol = PersonasRoles.IdPersonaRol'#13#10'INNER JOIN Personas ON Pe' +
      'rsonasRoles.IdPersona = Personas.IdPersona'#13#10'INNER JOIN Personas ' +
      'AS Personas_1 ON PersonasRoles.IdPersonaRelacionada = Personas_1' +
      '.IdPersona'#13#10'WHERE CuentasXPagarPagos.IdCuentaXPagar = :IdCuentaX' +
      'Pagar'#13#10
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
    Left = 72
    Top = 144
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
      end
      item
        Name = '@IdCuentaXPagarPago'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@IdCuentaXPagarEstatusOrigen'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@IdCuentaXPagarEstatusDestino'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@IdUsuario'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
      end>
    Left = 240
    Top = 216
  end
end
