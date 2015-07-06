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
  inherited ActionList: TActionList
    object actCambiarConcepto: TAction
      Caption = 'actCambiarConcepto'
      OnExecute = actCambiarConceptoExecute
    end
  end
  object adodsPeriodo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPeriodo, Descripcion FROM Periodos'
    Parameters = <>
    Left = 168
    Top = 88
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
    Top = 203
  end
  object adodsCXCConceptos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaXCobrarConcepto, Descripcion FROM CuentasXCobrarC' +
      'onceptos'
    Parameters = <>
    Left = 320
    Top = 248
    object adodsCXCConceptosDescripcion: TStringField
      DisplayLabel = 'Conceptos'
      FieldName = 'Descripcion'
      Size = 200
    end
    object adodsCXCConceptosIdCuentaXCobrarConcepto: TAutoIncField
      FieldName = 'IdCuentaXCobrarConcepto'
      ReadOnly = True
    end
  end
  object adocAutorizaCuenta: TADOCommand
    CommandText = 
      'UPDATE CuentasXCobrar'#13#10'SET IdCuentaXCobrarEstatus = 2, ConceptoG' +
      'enerico = :Concepto '#13#10'WHERE IdCuentaXCobrar = :IdCuentaXCobrar A' +
      'ND IdCuentaXCobrarEstatus = 1'
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'Concepto'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 200
        Value = Null
      end
      item
        Name = 'IdCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 168
    Top = 272
  end
  object adodsPersonaRolCXCConcepto: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersonaRolCXCConcepto, IdPersonaRol, IdCuentaXCobrarCon' +
      'cepto FROM PersonasRolesCXCConceptos WHERE IdPersonaRol = :IdPer' +
      'sonaRol'
    Parameters = <
      item
        Name = 'IdPersonaRol'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 288
    Top = 168
    object adodsPersonaRolCXCConceptoIdPersonaRolCXCConcepto: TAutoIncField
      FieldName = 'IdPersonaRolCXCConcepto'
      ReadOnly = True
      Visible = False
    end
    object adodsPersonaRolCXCConceptoIdPersonaRol: TIntegerField
      FieldName = 'IdPersonaRol'
      Visible = False
    end
    object adodsPersonaRolCXCConceptoIdCuentaXCobrarConcepto: TIntegerField
      FieldName = 'IdCuentaXCobrarConcepto'
      Visible = False
    end
    object adodsPersonaRolCXCConceptoDescripcion: TStringField
      FieldKind = fkLookup
      FieldName = 'Descripcion'
      LookupDataSet = adodsCXCConceptos
      LookupKeyFields = 'IdCuentaXCobrarConcepto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCuentaXCobrarConcepto'
      Size = 200
      Lookup = True
    end
  end
end
