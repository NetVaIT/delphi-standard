inherited dmCuentasXCobrar: TdmCuentasXCobrar
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaXCobrar, IdPersonaRol, IdPeriodo, IdCuentaXCobrar' +
      'Estatus, Persona, PersonaRelacionada, ConceptoGenerico, SumaSubt' +
      'otal, SumaTotal, SumaDescuentos, TotalIVATrasladado, TotalISRTra' +
      'sladado, TotalIEPSTrasladado, TotalLocalesTrasladado, TotalIVARe' +
      'tenido, TotalISRRetenido, TotalLocalesRetenido, SaldoPendiente, ' +
      'Estatus FROM vCuentasXCobrar'
    Left = 32
    Top = 24
    object adodsMasterIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
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
    object adodsMasterIdCuentaXCobrarEstatus: TIntegerField
      FieldName = 'IdCuentaXCobrarEstatus'
      Visible = False
    end
    object adodsMasterPersona: TStringField
      FieldName = 'Persona'
      Size = 300
    end
    object adodsMasterPersonaRelacionada: TStringField
      DisplayLabel = 'Persona Relacionada'
      FieldName = 'PersonaRelacionada'
      Size = 300
    end
    object adodsMasterConceptoGenerico: TStringField
      DisplayLabel = 'Concepto'
      FieldName = 'ConceptoGenerico'
      Size = 200
    end
    object adodsMasterSumaSubtotal: TFMTBCDField
      DisplayLabel = 'Suma Subtotal'
      FieldName = 'SumaSubtotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSumaTotal: TFMTBCDField
      DisplayLabel = 'Suma Total'
      FieldName = 'SumaTotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSumaDescuentos: TFMTBCDField
      DisplayLabel = 'Suma Descuentos'
      FieldName = 'SumaDescuentos'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalIVATrasladado: TFMTBCDField
      DisplayLabel = 'Total IVA Trasladado'
      FieldName = 'TotalIVATrasladado'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalISRTrasladado: TFMTBCDField
      DisplayLabel = 'Total ISR Trasladado'
      FieldName = 'TotalISRTrasladado'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalIEPSTrasladado: TFMTBCDField
      DisplayLabel = 'Total IEPS Trasladado'
      FieldName = 'TotalIEPSTrasladado'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalLocalesTrasladado: TFMTBCDField
      DisplayLabel = 'Total Locales Trasladado'
      FieldName = 'TotalLocalesTrasladado'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalIVARetenido: TFMTBCDField
      DisplayLabel = 'Total IVA Retenido'
      FieldName = 'TotalIVARetenido'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalISRRetenido: TFMTBCDField
      DisplayLabel = 'Total ISR Retenido'
      FieldName = 'TotalISRRetenido'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalLocalesRetenido: TFMTBCDField
      DisplayLabel = 'Total Locales Retenido'
      FieldName = 'TotalLocalesRetenido'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldoPendiente: TFMTBCDField
      DisplayLabel = 'Saldo Pendiente'
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
  object adodsPeriodo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPeriodo, Descripcion FROM Periodos'
    Parameters = <>
    Left = 184
    Top = 168
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
    Top = 219
  end
end
