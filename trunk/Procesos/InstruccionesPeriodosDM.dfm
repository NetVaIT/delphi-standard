inherited dmInstruccionesPeriodos: TdmInstruccionesPeriodos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    AutoCalcFields = False
    CursorType = ctStatic
    CommandText = 
      'SELECT InstruccionesPeriodos.IdInstruccion, InstruccionesPeriodo' +
      's.IdPeriodo, InstruccionesPeriodos.Fecha, '#13#10'Instrucciones.Concep' +
      'to AS Instruccion, DocumentosAdjuntos.NombreArchivo AS Archivo, ' +
      'Periodos.Descripcion AS Periodo'#13#10'FROM InstruccionesPeriodos '#13#10'IN' +
      'NER JOIN Instrucciones ON InstruccionesPeriodos.IdInstruccion = ' +
      'Instrucciones.IdInstruccion'#13#10'INNER JOIN Periodos ON Instruccione' +
      'sPeriodos.IdPeriodo = Periodos.IdPeriodo'#13#10'INNER JOIN DocumentosA' +
      'djuntos ON Instrucciones.IdDocumentoAdjunto = DocumentosAdjuntos' +
      '.IdDocumentoAdjunto'
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
  object adocGetPeriodoActual: TADOCommand
    CommandText = 
      'DECLARE @IdPeriodo int;'#13#10'SELECT @IdPeriodo = IdPeriodo FROM Peri' +
      'odos WHERE IdPeriodoEstatus = 3;'#13#10'SET :IdPeriodo  = @IdPeriodo;'#13 +
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
    Left = 80
    Top = 120
  end
end