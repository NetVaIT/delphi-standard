inherited dmInstrucciones: TdmInstrucciones
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select IdInstruccion, IdInstruccionTipo, IdPersonaSolicita, IdDo' +
      'cumentoAdjunto, Concepto, Fecha, Repetir, IdPeriodoTipo, Repetir' +
      'Dia, RepetirInicio, RepetirFinaliza, RepetirFin, RepetirHasta fr' +
      'om Instrucciones'
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
    object adodsMasterConcepto: TStringField
      FieldName = 'Concepto'
      Required = True
      Size = 200
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
    object adodsMasterIdDocumentoAdjunto: TIntegerField
      FieldName = 'IdDocumentoAdjunto'
      Required = True
      Visible = False
    end
    object adodsMasterNombreArchivo: TStringField
      DisplayLabel = 'Archivo'
      FieldKind = fkLookup
      FieldName = 'NombreArchivo'
      LookupDataSet = adodsDocumentosAdjuntos
      LookupKeyFields = 'IdDocumentoAdjunto'
      LookupResultField = 'NombreArchivo'
      KeyFields = 'IdDocumentoAdjunto'
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
      OnChange = adodsMasterRepetirChange
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
    object adodsMasterRepetirDia: TIntegerField
      DisplayLabel = 'Repetir el'
      FieldName = 'RepetirDia'
      Visible = False
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
    end
    object actCreateMov: TAction
      Caption = 'Generar movimientos'
      Hint = 'Generar movimientos'
      ImageIndex = 17
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
  object adodsDocumentosAdjuntos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdDocumentoAdjunto, NombreArchivo from DocumentosAdjuntos'
    Parameters = <>
    Left = 104
    Top = 120
  end
  object adodsPeriodosTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPeriodoTipo, Descripcion from PeriodosTipos'#13#10'WHERE Iden' +
      'tificador IN ('#39'S'#39','#39'M'#39')'
    Parameters = <>
    Left = 104
    Top = 184
  end
end
