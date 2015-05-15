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
      DisplayLabel = 'Persona relacionada'
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
      DisplayLabel = 'Saldo pendiente'
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
  inherited ActionList: TActionList
    object actCalcularCXP: TAction
      Caption = 'Generar CXP'
      Hint = 'Genera cuentas por pagar del periodo'
      Visible = False
      OnExecute = actCalcularCXPExecute
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
    Left = 64
    Top = 179
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
      end>
    Left = 64
    Top = 235
  end
  object adodsPeriodo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPeriodo, Descripcion from Periodos'
    Parameters = <>
    Left = 168
    Top = 104
  end
end
