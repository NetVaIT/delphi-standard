inherited dmIncidencias: TdmIncidencias
  OldCreateOrder = True
  Height = 512
  Width = 535
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 'SELECT IdIncidencia, IdInstruccion, IdPersona FROM Incidencias'
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
  end
  object adodsMovimientoTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdMovimientoTipo, Descripcion FROM MovimientosTipos'
    Parameters = <>
    Left = 184
    Top = 216
  end
  object adodsInstruccion: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdInstruccion, Concepto FROM Instrucciones'
    Parameters = <>
    Left = 192
    Top = 24
  end
  object adodsPersona: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPersona, RazonSocial FROM Personas'
    Parameters = <>
    Left = 192
    Top = 88
  end
  object adodsIncidenciaDetalle: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdIncidenciaDetalle, IdIncidencia, IdMovimientoTipo, IdMo' +
      'neda, Importe, IdIncidenciaEstatus FROM IncidenciasDetalle WHERE' +
      ' IdIncidencia = :IdIncidencia'
    DataSource = dsMaster
    IndexFieldNames = 'IdIncidencia'
    MasterFields = 'IdIncidencia'
    Parameters = <
      item
        Name = 'IdIncidencia'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 61
      end>
    Left = 48
    Top = 216
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
    object adodsIncidenciaDetalleIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Required = True
      Visible = False
    end
    object adodsIncidenciaDetalleIdIncidenciaEstatus: TIntegerField
      FieldName = 'IdIncidenciaEstatus'
      Visible = False
    end
    object adodsIncidenciaDetalleMovimientoTipo: TStringField
      DisplayLabel = 'Tipo de Movimiento'
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
    object adodsIncidenciaDetalleMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = adodsMoneda
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMoneda'
      Size = 80
      Lookup = True
    end
    object adodsIncidenciaDetalleIncidenciaEstatus: TStringField
      DisplayLabel = 'Estatus'
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
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdIncidenciaEstatus, Descripcion FROM IncidenciasEstatus'
    Parameters = <>
    Left = 184
    Top = 272
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 120
    Top = 16
  end
  object adodsMoneda: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, Descripcion from Monedas'
    Parameters = <>
    Left = 184
    Top = 336
  end
end
