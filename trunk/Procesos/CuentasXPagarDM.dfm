inherited dmCuentasXPagar: TdmCuentasXPagar
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdCuentaXPagar, IdPersonaRol, IdPeriodo, IdCuentaXPagarEs' +
      'tatus, Persona, PersonaRelacionada, ConceptoGenerico, SumaSubtot' +
      'al, SumaTotal, SumaDescuentos, TotalIVATrasladado, TotalISRTrasl' +
      'adado, TotalIEPSTrasladado, TotalLocalesTrasladado, TotalIVARete' +
      'nido, TotalISRRetenido, TotalLocalesRetenido, SaldoPendiente, Es' +
      'tatus from vCuentasXPagar'
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
      FieldName = 'Persona'
      Size = 300
    end
    object adodsMasterPersonaRelacionada: TStringField
      FieldName = 'PersonaRelacionada'
      Size = 300
    end
    object adodsMasterConceptoGenerico: TStringField
      FieldName = 'ConceptoGenerico'
      Size = 200
    end
    object adodsMasterSumaSubtotal: TFMTBCDField
      FieldName = 'SumaSubtotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSumaTotal: TFMTBCDField
      FieldName = 'SumaTotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSumaDescuentos: TFMTBCDField
      FieldName = 'SumaDescuentos'
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
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalIEPSTrasladado: TFMTBCDField
      FieldName = 'TotalIEPSTrasladado'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalLocalesTrasladado: TFMTBCDField
      FieldName = 'TotalLocalesTrasladado'
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
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldoPendiente: TFMTBCDField
      FieldName = 'SaldoPendiente'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterEstatus: TStringField
      FieldName = 'Estatus'
      Size = 50
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
      'oria, Efecto, Importe, Estatus from vMovimientosDetalle'#13#10'WHERE I' +
      'dCuentaXPagar = :IdCuentaXPagar'
    DataSource = dsMaster
    MasterFields = 'IdCuentaXPagar'
    Parameters = <
      item
        Name = 'IdCuentaXPagar'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 195
      end>
    Left = 56
    Top = 104
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
    object adodsMovimientosDetalleImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMovimientosDetalleEstatus: TStringField
      FieldName = 'Estatus'
      Size = 100
    end
  end
end
