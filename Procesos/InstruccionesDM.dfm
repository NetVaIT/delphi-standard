inherited dmInstrucciones: TdmInstrucciones
  OldCreateOrder = True
  Height = 431
  Width = 468
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select IdInstruccion, IdInstruccionTipo, IdPersonaSolicita, IdDo' +
      'cumento, Concepto, Fecha, Repetir, IdPeriodoTipo, RepetirInicio,' +
      ' RepetirFinaliza, RepetirFin, RepetirHasta, IncidenciasGeneradas' +
      ' from Instrucciones'
    object adodsMasterIdInstruccion: TAutoIncField
      FieldName = 'IdInstruccion'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersonaSolicita: TIntegerField
      FieldName = 'IdPersonaSolicita'
      Visible = False
    end
    object adodsMasterIdPeriodoTipo: TIntegerField
      FieldName = 'IdPeriodoTipo'
      Visible = False
    end
    object adodsMasterIdInstruccionTipo: TIntegerField
      FieldName = 'IdInstruccionTipo'
      Required = True
      Visible = False
    end
    object adodsMasterIntruccionTipo: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkLookup
      FieldName = 'IntruccionTipo'
      LookupDataSet = adodsInstruccionesTipos
      LookupKeyFields = 'IdInstruccionTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdInstruccionTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
      Required = True
      Visible = False
    end
    object adodsMasterIncidenciasGeneradas: TBooleanField
      DisplayLabel = 'Incidencias generadas'
      FieldName = 'IncidenciasGeneradas'
    end
    object adodsMasterConcepto: TStringField
      FieldName = 'Concepto'
      Required = True
      Size = 200
    end
    object adodsMasterNombreArchivo: TStringField
      DisplayLabel = 'Archivo'
      FieldKind = fkLookup
      FieldName = 'NombreArchivo'
      LookupDataSet = adodsDocumentos
      LookupKeyFields = 'IdDocumento'
      LookupResultField = 'NombreArchivo'
      KeyFields = 'IdDocumento'
      Size = 200
      Lookup = True
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
      Required = True
    end
    object adodsMasterRepetirInicio: TDateTimeField
      DisplayLabel = 'Empieza el'
      FieldName = 'RepetirInicio'
      Required = True
    end
    object adodsMasterRepetir: TBooleanField
      FieldName = 'Repetir'
      Required = True
    end
    object adodsMasterPeriodoTipo: TStringField
      DisplayLabel = 'Se repite cada'
      FieldKind = fkLookup
      FieldName = 'PeriodoTipo'
      LookupDataSet = adodsPeriodosTipo
      LookupKeyFields = 'IdPeriodoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPeriodoTipo'
      Visible = False
      Size = 50
      Lookup = True
    end
    object adodsMasterRepetirFinaliza: TIntegerField
      DisplayLabel = 'Finaliza'
      FieldName = 'RepetirFinaliza'
      Visible = False
    end
    object adodsMasterRepetirHasta: TIntegerField
      DisplayLabel = 'Finaliza despu'#233's de'
      FieldName = 'RepetirHasta'
      Visible = False
    end
    object adodsMasterRepetirFin: TDateTimeField
      DisplayLabel = 'Finaliza el'
      FieldName = 'RepetirFin'
      Visible = False
    end
  end
  inherited ActionList: TActionList
    object actUpdateFile: TAction
      Caption = '...'
      Hint = 'Asigna archivo'
      OnExecute = actUpdateFileExecute
    end
    object actProcessXLS: TAction
      Caption = 'Generar incidencias'
      Hint = 'Generar incidencias'
      ImageIndex = 16
      OnExecute = actProcessXLSExecute
      OnUpdate = actProcessXLSUpdate
    end
    object actDeleteIncidencias: TAction
      Caption = 'Eliminar incidencias'
      Hint = 'Eliminar incidencias'
      ImageIndex = 17
      OnExecute = actDeleteIncidenciasExecute
      OnUpdate = actDeleteIncidenciasUpdate
    end
    object actCreateGroup: TAction
      Caption = 'Generar un grupo de instrucciones'
      Hint = 'Generar un grupo de instrucciones'
      ImageIndex = 18
      OnExecute = actCreateGroupExecute
    end
    object actCreateMov: TAction
      Caption = 'Generar movimientos'
      Hint = 'Generar movimientos'
      ImageIndex = 19
      OnExecute = actCreateMovExecute
    end
  end
  object adodsInstruccionesTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdInstruccionTipo, Descripcion from InstruccionesTipos'
    Parameters = <>
    Left = 104
    Top = 64
  end
  object adodsDocumentos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdDocumento, NombreArchivo from Documentos'
    Parameters = <>
    Left = 104
    Top = 120
  end
  object adodsPeriodosTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPeriodoTipo, Descripcion from PeriodosTipos'#13#10'WHERE IdPe' +
      'riodoTipo IN (2,3,4)'
    Parameters = <>
    Left = 104
    Top = 184
  end
  object adocUpdInstrucciones: TADOCommand
    CommandText = 
      'UPDATE Instrucciones SET IncidenciasGeneradas = :Generadas WHERE' +
      ' IdInstruccion = :IdInstruccion'
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'Generadas'
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'IdInstruccion'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 216
    Top = 192
  end
  object adoqTmpInstrucciones: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT IdInstruccion FROM TmpInstrucciones WHERE IdInstruccion I' +
        'S NOT NULL')
    Left = 216
    Top = 120
    object adoqTmpInstruccionesIdInstruccion: TIntegerField
      FieldName = 'IdInstruccion'
    end
  end
end
