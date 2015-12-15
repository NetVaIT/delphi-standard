inherited dmTmpInstrucciones: TdmTmpInstrucciones
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT        TmpInstrucciones.IdTmpInstruccion, TmpInstruccione' +
      's.IdInstruccionTipo, TmpInstrucciones.IdDocumento, TmpInstruccio' +
      'nes.Descripcion, TmpInstrucciones.Inicio, Documentos.NombreArchi' +
      'vo AS Archivo'#13#10'FROM            TmpInstrucciones LEFT JOIN'#13#10#9#9#9#9#9 +
      #9' Documentos ON TmpInstrucciones.IdDocumento = Documentos.IdDocu' +
      'mento'
    object adodsMasterIdTmpInstruccion: TAutoIncField
      FieldName = 'IdTmpInstruccion'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdInstruccionTipo: TIntegerField
      FieldName = 'IdInstruccionTipo'
      Visible = False
    end
    object adodsMasterIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
      Visible = False
    end
    object adodsMasterInstruccionTipo: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkLookup
      FieldName = 'InstruccionTipo'
      LookupDataSet = adodsInstruccionesTipos
      LookupKeyFields = 'IdInstruccionTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdInstruccionTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object adodsMasterInicio: TDateTimeField
      DisplayLabel = 'Empieza el'
      FieldName = 'Inicio'
    end
    object adodsMasterArchivo: TStringField
      FieldName = 'Archivo'
      Size = 200
    end
  end
  inherited ActionList: TActionList
    object actGetFileForGroup: TAction
      Caption = '...'
      Hint = 'Asigna archivo'
      OnExecute = actGetFileForGroupExecute
    end
  end
  object adodsInstruccionesTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdInstruccionTipo, Descripcion from InstruccionesTipos'
    Parameters = <>
    Left = 56
    Top = 88
  end
  object adocIniTmpInstrucciones: TADOCommand
    CommandText = 
      'DELETE TmpInstrucciones;'#13#10'INSERT INTO TmpInstrucciones (IdInstru' +
      'ccionTipo,Descripcion,Inicio)'#13#10'SELECT IdInstrucciontipo, CAST(YE' +
      'AR(:Inicio) AS varchar(4))+'#39'S'#39'+CAST(DATEPART(week, :Inicio) AS v' +
      'archar(2))+'#39' '#39'+Descripcion, :Inicio from InstruccionesTipos'#13#10'WHE' +
      'RE IncluirGrupo = 1;'#13#10
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'Inicio'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'Inicio'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'Inicio'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    Left = 184
    Top = 83
  end
  object adocInsInstrucciones: TADOCommand
    CommandText = 
      'DECLARE @IdTmpInstruccion int;'#13#10'DECLARE @IdPersonaSolicita int;'#13 +
      #10'DECLARE @IdInstruccion int;'#13#10'SET @IdPersonaSolicita = :IdPerson' +
      'aSolicita;'#13#10#13#10#9'DECLARE instrucciones_cursor CURSOR FOR '#13#10#9'SELECT' +
      ' IdTmpInstruccion FROM TmpInstrucciones WHERE IdDocumento IS NOT' +
      ' NULL'#13#10#9'OPEN instrucciones_cursor'#13#10#9'FETCH NEXT FROM instruccione' +
      's_cursor INTO @IdTmpInstruccion'#13#10#9'WHILE @@FETCH_STATUS = 0'#13#10#9'BEG' +
      'IN'#13#10#9#9'INSERT INTO Instrucciones (IdInstruccionTipo,IdPersonaSoli' +
      'cita,IdDocumento,Concepto,Fecha,Repetir,RepetirInicio,RepetirFin' +
      'aliza)'#13#10#9#9'SELECT IdInstruccionTipo, @IdPersonaSolicita, IdDocume' +
      'nto,Descripcion,CONVERT(date, GETDATE()),0,Inicio,0'#13#10#9#9'FROM TmpI' +
      'nstrucciones'#13#10#9#9'WHERE IdTmpInstruccion = @IdTmpInstruccion;'#13#10#9#9'S' +
      'ELECT @IdInstruccion = @@identity;'#13#10#9#9'UPDATE TmpInstrucciones SE' +
      'T IdInstruccion = @IdInstruccion WHERE IdTmpInstruccion = @IdTmp' +
      'Instruccion;'#13#10#9#9'FETCH NEXT FROM instrucciones_cursor INTO @IdTmp' +
      'Instruccion'#13#10#9'END'#13#10#9'CLOSE instrucciones_cursor'#13#10#9'DEALLOCATE inst' +
      'rucciones_cursor'#13#10
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdPersonaSolicita'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 184
    Top = 147
  end
end
