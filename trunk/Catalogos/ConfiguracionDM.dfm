inherited dmConfiguracion: TdmConfiguracion
  OldCreateOrder = True
  Height = 420
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdPais, IdMoneda, IdMovimientoTipoNomina, IdMovimientoTip' +
      'oRetencion, IdMovimientoTipoPrestamo, IdMetodoPagoCuentasXPagar,' +
      ' IdMetodoPagoFactura from Configuraciones'
    object adodsMasterIdPais: TIntegerField
      FieldName = 'IdPais'
      Visible = False
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsMasterIdMovimientoTipoNomina: TIntegerField
      FieldName = 'IdMovimientoTipoNomina'
      Visible = False
    end
    object adodsMasterIdMovimientoTipoRetencion: TIntegerField
      FieldName = 'IdMovimientoTipoRetencion'
      Visible = False
    end
    object adodsMasterIdMovimientoTipoPrestamo: TIntegerField
      FieldName = 'IdMovimientoTipoPrestamo'
      Visible = False
    end
    object adodsMasterIdMetodoPagoCuentasXPagar: TIntegerField
      FieldName = 'IdMetodoPagoCuentasXPagar'
      Visible = False
    end
    object adodsMasterIdMetodoPagoFactura: TIntegerField
      FieldName = 'IdMetodoPagoFactura'
      Visible = False
    end
    object adodsMasterPais: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldKind = fkLookup
      FieldName = 'Pais'
      LookupDataSet = adodsPaises
      LookupKeyFields = 'IdPais'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPais'
      Size = 100
      Lookup = True
    end
    object adodsMasterMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = adodsMonedas
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMoneda'
      Size = 80
      Lookup = True
    end
    object adodsMasterMovimientoTipoNomina: TStringField
      DisplayLabel = 'Tipo movimiento para nomina'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoNomina'
      LookupDataSet = adodsMovimientosTipo1
      LookupKeyFields = 'IdMovimientoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoNomina'
      Size = 100
      Lookup = True
    end
    object adodsMasterMovimientoTipoRetencion: TStringField
      DisplayLabel = 'Tipo movimiento para retenci'#243'n'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoRetencion'
      LookupDataSet = adodsMovimientosTipo2
      LookupKeyFields = 'IdMovimientoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoRetencion'
      Size = 100
      Lookup = True
    end
    object adodsMasterMovimientoTipoPrestamo: TStringField
      DisplayLabel = 'Tipo movimiento para prestamo'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoPrestamo'
      LookupDataSet = adodsMovimientosTipo3
      LookupKeyFields = 'IdMovimientoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoPrestamo'
      Size = 100
      Lookup = True
    end
    object adodsMasterMetodoPagoCuentasXPagar: TStringField
      DisplayLabel = 'Metodo de pago para cuentas por pagar'
      FieldKind = fkLookup
      FieldName = 'MetodoPagoCuentasXPagar'
      LookupDataSet = adodsMetodosPago1
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMetodoPagoCuentasXPagar'
      Size = 100
      Lookup = True
    end
    object adodsMasterMetodoPagoFactura: TStringField
      DisplayLabel = 'Metodo de pago para facturar'
      FieldKind = fkLookup
      FieldName = 'MetodoPagoFactura'
      LookupDataSet = adodsMetodosPago2
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMetodoPagoFactura'
      Size = 100
      Lookup = True
    end
  end
  object adoqGetIdPeriodoActual: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT dbo.GetIdPeriodoActual() AS Valor')
    Left = 320
    Top = 160
    object adoqGetIdPeriodoActualValor: TIntegerField
      FieldName = 'Valor'
      ReadOnly = True
    end
  end
  object adodsPaises: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPais, Descripcion from Paises'
    Parameters = <>
    Left = 104
    Top = 16
  end
  object adodsMonedas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, Descripcion from Monedas'
    Parameters = <>
    Left = 104
    Top = 64
  end
  object adodsMovimientosTipo1: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMovimientoTipo, Descripcion from MovimientosTipos'
    Parameters = <>
    Left = 104
    Top = 112
  end
  object adodsMovimientosTipo2: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMovimientoTipo, Descripcion from MovimientosTipos'
    Parameters = <>
    Left = 104
    Top = 168
  end
  object adodsMovimientosTipo3: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMovimientoTipo, Descripcion from MovimientosTipos'
    Parameters = <>
    Left = 104
    Top = 224
  end
  object adodsMetodosPago1: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMetodoPago, Descripcion from MetodosPago'
    Parameters = <>
    Left = 104
    Top = 272
  end
  object adodsMetodosPago2: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMetodoPago, Descripcion from MetodosPago'
    Parameters = <>
    Left = 104
    Top = 328
  end
end
