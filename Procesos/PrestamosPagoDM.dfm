inherited dmPrestamosPago: TdmPrestamosPago
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdPrestamoPago, IdPrestamo, IdMovimiento, IdPersona, IdPe' +
      'riodo, IdMovimientoTipo, ImporteCalculo, Porcentaje, ImportePeri' +
      'odo, ImportePago from PrestamosPago'#13#10'where IdPeriodo = :IdPeriod' +
      'o'
    Parameters = <
      item
        Name = 'IdPeriodo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    object adodsMasterIdPrestamoPago: TAutoIncField
      FieldName = 'IdPrestamoPago'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPrestamo: TIntegerField
      FieldName = 'IdPrestamo'
      Visible = False
    end
    object adodsMasterIdMovimiento: TIntegerField
      FieldName = 'IdMovimiento'
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
    object adodsMasterIdMovimientoTipo: TIntegerField
      FieldName = 'IdMovimientoTipo'
      Visible = False
    end
    object adodsMasterPeriodo: TStringField
      FieldKind = fkLookup
      FieldName = 'Periodo'
      LookupDataSet = adodsPeriodo
      LookupKeyFields = 'IdPeriodo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPeriodo'
      Size = 100
      Lookup = True
    end
    object adodsMasterPersona: TStringField
      FieldKind = fkLookup
      FieldName = 'Persona'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersona'
      Size = 500
      Lookup = True
    end
    object adodsMasterMovimientoTipo: TStringField
      DisplayLabel = 'Tipo de movimiento'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipo'
      LookupDataSet = adodsMovimientoTipo
      LookupKeyFields = 'IdMovimientoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipo'
      Size = 100
      Lookup = True
    end
    object adodsMasterImporteCalculo: TFMTBCDField
      DisplayLabel = 'Ingreso'
      FieldName = 'ImporteCalculo'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterPorcentaje: TFMTBCDField
      FieldName = 'Porcentaje'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object adodsMasterImportePeriodo: TFMTBCDField
      DisplayLabel = 'Importe del peridodo'
      FieldName = 'ImportePeriodo'
      OnChange = adodsMasterImportePeriodoChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterImportePago: TFMTBCDField
      DisplayLabel = 'Importe pago'
      FieldName = 'ImportePago'
      Visible = False
      currency = True
      Precision = 18
      Size = 6
    end
  end
  object adodsPeriodo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPeriodo, Descripcion from Periodos'
    Parameters = <>
    Left = 120
    Top = 56
  end
  object adodsMovimientoTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMovimientoTipo, Descripcion from MovimientosTipos'
    Parameters = <>
    Left = 120
    Top = 168
  end
  object adodsPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPersona, RazonSocial from Personas'
    Parameters = <>
    Left = 120
    Top = 112
  end
  object adopSetPrestamosPago: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_SetPrestamosPago;1'
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
    Top = 280
  end
  object adopGenMovimientosPrestamos: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_GenMovimientosPrestamos;1'
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
    Left = 248
    Top = 272
  end
end
