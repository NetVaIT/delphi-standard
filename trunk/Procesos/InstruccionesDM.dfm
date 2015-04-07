inherited dmInstrucciones: TdmInstrucciones
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select IdInstruccion, IdInstruccionTipo, IdPersonaSolicita, IdDo' +
      'cumentoAdjunto, IdPeriodicidad, Concepto, Fecha, ContadorDesde, ' +
      'ContadorHasta, FechaInicio, FechaFin from Instrucciones'
    object adodsMasterIdInstruccion: TAutoIncField
      FieldName = 'IdInstruccion'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersonaSolicita: TIntegerField
      FieldName = 'IdPersonaSolicita'
      Visible = False
    end
    object adodsMasterIdDocumentoAdjunto: TIntegerField
      FieldName = 'IdDocumentoAdjunto'
      Visible = False
    end
    object adodsMasterIdPeriodicidad: TIntegerField
      FieldName = 'IdPeriodicidad'
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
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
      Required = True
    end
    object adodsMasterContadorDesde: TIntegerField
      DisplayLabel = 'Contador desde'
      FieldName = 'ContadorDesde'
    end
    object adodsMasterContadorHasta: TIntegerField
      DisplayLabel = 'Contador hasta'
      FieldName = 'ContadorHasta'
    end
    object adodsMasterFechaInicio: TDateTimeField
      DisplayLabel = 'Inicio'
      FieldName = 'FechaInicio'
    end
    object adodsMasterFechaFin: TDateTimeField
      DisplayLabel = 'Fin'
      FieldName = 'FechaFin'
    end
  end
  inherited ActionList: TActionList
    object actProcessXLS: TAction
      Caption = 'Procesar XLS'
      ImageIndex = 13
      OnExecute = actProcessXLSExecute
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
end
