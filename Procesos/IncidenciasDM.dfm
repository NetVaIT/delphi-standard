inherited dmIncidencias: TdmIncidencias
  OldCreateOrder = True
  Height = 512
  Width = 535
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdIncidencia, IdInstruccion, IdPersona, IdPersonaRelacion' +
      'ada FROM Incidencias'
    Left = 40
    object adodsMasterIdIncidencia: TAutoIncField
      FieldName = 'IdIncidencia'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdInstruccion: TIntegerField
      FieldName = 'IdInstruccion'
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdPersonaRelacionada: TIntegerField
      FieldName = 'IdPersonaRelacionada'
      Visible = False
    end
    object adodsMasterInstruccion: TStringField
      FieldKind = fkLookup
      FieldName = 'Instruccion'
      LookupDataSet = adodsInstruccion
      LookupKeyFields = 'IdInstruccion'
      LookupResultField = 'Concepto'
      KeyFields = 'IdInstruccion'
      Size = 200
      Lookup = True
    end
    object adodsMasterPersona: TStringField
      FieldKind = fkLookup
      FieldName = 'Persona'
      LookupDataSet = adodsPersona
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersona'
      Size = 150
      Lookup = True
    end
    object adodsMasterPersonaRelacionada: TStringField
      FieldKind = fkLookup
      FieldName = 'PersonaRelacionada'
      LookupDataSet = adodsPersonaRelacionada
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaRelacionada'
      Size = 150
      Lookup = True
    end
  end
  object adodsMovimientoTipo: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdMovimientoTipo, Descripcion FROM MovimientosTipos'
    Parameters = <>
    Left = 312
    Top = 336
  end
  object adodsInstruccion: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdInstruccion, Concepto FROM Instrucciones'
    Parameters = <>
    Left = 72
    Top = 96
  end
  object adodsPersona: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPersona, RazonSocial FROM Personas'
    Parameters = <>
    Left = 72
    Top = 160
  end
  object adodsPersonaRelacionada: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPersona, RazonSocial FROM Personas'
    Parameters = <>
    Left = 72
    Top = 224
  end
  object adodsIncidenciaDetalle: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdIncidenciaDetalle, IdIncidencia, IdMovimientoTipo, Impo' +
      'rte, IdIncidenciaEstatus FROM IncidenciasDetalle WHERE IdInciden' +
      'cia = :IdIncidencia'
    DataSource = dsMaster
    IndexFieldNames = 'IdIncidencia'
    MasterFields = 'IdIncidencia'
    Parameters = <
      item
        Name = 'IdIncidencia'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 312
    Top = 280
    object adodsIncidenciaDetalleIdIncidenciaDetalle: TAutoIncField
      FieldName = 'IdIncidenciaDetalle'
      ReadOnly = True
      Visible = False
    end
    object adodsIncidenciaDetalleIdIncidencia: TIntegerField
      FieldName = 'IdIncidencia'
      Visible = False
    end
    object adodsIncidenciaDetalleIdMovimientoTipo: TIntegerField
      FieldName = 'IdMovimientoTipo'
      Visible = False
    end
    object adodsIncidenciaDetalleIdIncidenciaEstatus: TIntegerField
      FieldName = 'IdIncidenciaEstatus'
      Visible = False
    end
    object adodsIncidenciaDetalleMovimientoTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'MovimientoTipo'
      LookupDataSet = adodsMovimientoTipo
      LookupKeyFields = 'IdMovimientoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipo'
      Size = 50
      Lookup = True
    end
    object adodsIncidenciaDetalleImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object adodsIncidenciaDetalleIncidenciaEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'IncidenciaEstatus'
      LookupDataSet = adodsIncidenciaEstatus
      LookupKeyFields = 'IdIncidenciaEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdIncidenciaEstatus'
      Size = 50
      Lookup = True
    end
  end
  object adodsIncidenciaEstatus: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdIncidenciaEstatus, Descripcion FROM IncidenciasEstatus'
    Parameters = <>
    Left = 312
    Top = 392
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 144
    Top = 24
  end
end
