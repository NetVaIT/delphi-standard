inherited dmInstruccionesPeriodos: TdmInstruccionesPeriodos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    AutoCalcFields = False
    CursorType = ctStatic
    CommandText = 
      'SELECT InstruccionesPeriodos.IdInstruccion, InstruccionesPeriodo' +
      's.IdPeriodo, InstruccionesPeriodos.Fecha, '#13#10'Instrucciones.Concep' +
      'to AS Instruccion, Documentos.NombreArchivo AS Archivo, Periodos' +
      '.Descripcion AS Periodo, Instrucciones.IncidenciasGeneradas'#13#10'FRO' +
      'M InstruccionesPeriodos '#13#10'INNER JOIN Instrucciones ON Instruccio' +
      'nesPeriodos.IdInstruccion = Instrucciones.IdInstruccion'#13#10'INNER J' +
      'OIN Periodos ON InstruccionesPeriodos.IdPeriodo = Periodos.IdPer' +
      'iodo'#13#10'INNER JOIN Documentos ON Instrucciones.IdDocumento = Docum' +
      'entos.IdDocumento'
    object adodsMasterIdInstruccion: TIntegerField
      FieldName = 'IdInstruccion'
      Visible = False
    end
    object adodsMasterIdPeriodo: TIntegerField
      FieldName = 'IdPeriodo'
      Visible = False
    end
    object adodsMasterPariodo: TStringField
      FieldName = 'Periodo'
      Size = 100
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterInstruccion: TStringField
      DisplayLabel = 'Instrucci'#243'n'
      FieldName = 'Instruccion'
      Size = 200
    end
    object adodsMasterArchivo: TStringField
      FieldName = 'Archivo'
      Size = 200
    end
    object adodsMasterIncidenciasGeneradas: TBooleanField
      DisplayLabel = 'Incidencias generadas'
      FieldName = 'IncidenciasGeneradas'
      Visible = False
    end
  end
  object adospSetInstruccionesPeriodos: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_SetInstruccionesPeriodos;1'
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
    Left = 80
    Top = 184
  end
  object adospGenMovimientos: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_GenMovimientos;1'
    Parameters = <>
    Left = 80
    Top = 248
  end
end
