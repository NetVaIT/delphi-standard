inherited dmISRProvisionales: TdmISRProvisionales
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT        ISRProvisionales.IdISRProvisional, ISRProvisionale' +
      's.IdMovimiento, ISRProvisionales.IdMovimientoTipo, ISRProvisiona' +
      'les.IdPersona, ISRProvisionales.IdPeriodo, MovimientosTipos.Desc' +
      'ripcion, Periodos.Anio, '#13#10'                         Periodos.Mes,' +
      ' Periodos.Numero, ISRProvisionales.Bruto, ISRProvisionales.Bruto' +
      'Acumulado, ISRProvisionales.ISR, ISRProvisionales.ISRPeriodo, IS' +
      'RProvisionales.ISRAcumulado, ISRProvisionales.Neto'#13#10'FROM        ' +
      '    ISRProvisionales INNER JOIN'#13#10'                         Movimi' +
      'entosTipos ON ISRProvisionales.IdMovimientoTipo = MovimientosTip' +
      'os.IdMovimientoTipo INNER JOIN'#13#10'                         Periodo' +
      's ON ISRProvisionales.IdPeriodo = Periodos.IdPeriodo'#13#10'WHERE ISRP' +
      'rovisionales.IdPersona = :IdPersona'
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    object adodsMasterIdISRProvisional: TAutoIncField
      FieldName = 'IdISRProvisional'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdMovimiento: TIntegerField
      FieldName = 'IdMovimiento'
      Visible = False
    end
    object adodsMasterIdMovimientoTipo: TIntegerField
      FieldName = 'IdMovimientoTipo'
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
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Size = 100
    end
    object adodsMasterAnio: TIntegerField
      DisplayLabel = 'A'#241'o'
      FieldName = 'Anio'
    end
    object adodsMasterMes: TIntegerField
      FieldName = 'Mes'
    end
    object adodsMasterNumero: TIntegerField
      FieldName = 'Numero'
    end
    object adodsMasterBruto: TFMTBCDField
      FieldName = 'Bruto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterBrutoAcumulado: TFMTBCDField
      DisplayLabel = 'Bruto acumulado'
      FieldName = 'BrutoAcumulado'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterISR: TFMTBCDField
      DisplayLabel = 'ISR Calculado'
      FieldName = 'ISR'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterISRPeriodo: TFMTBCDField
      DisplayLabel = 'ISR del periodo'
      FieldName = 'ISRPeriodo'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterISRAcumulado: TFMTBCDField
      DisplayLabel = 'ISR acumulado'
      FieldName = 'ISRAcumulado'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterNeto: TFMTBCDField
      FieldName = 'Neto'
      currency = True
      Precision = 18
      Size = 6
    end
  end
end
