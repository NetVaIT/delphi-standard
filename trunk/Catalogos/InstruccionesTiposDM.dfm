inherited dmInstruccionesTipos: TdmInstruccionesTipos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdInstruccionTipo, Identificador, Descripcion from Instru' +
      'ccionesTipos'
    object adodsMasterIdInstruccionTipo: TAutoIncField
      FieldName = 'IdInstruccionTipo'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Required = True
      Size = 10
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Required = True
      Size = 50
    end
  end
  object dtMaster: TDataSource
    DataSet = adodsMaster
    Left = 104
    Top = 16
  end
  object adodsInstruccionesTiposDetalle: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdInstruccionTipoDetalle, IdInstruccionTipo, IdMovimiento' +
      'Tipo, IdMoneda, Nombre, Valor from InstruccionesTiposDetalle'#13#10'wh' +
      'ere IdInstruccionTipo = :IdInstruccionTipo'
    DataSource = dtMaster
    MasterFields = 'IdInstruccionTipo'
    Parameters = <
      item
        Name = 'IdInstruccionTipo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 32
    Top = 88
    object adodsInstruccionesTiposDetalleIdInstruccionTipoDetalle: TAutoIncField
      FieldName = 'IdInstruccionTipoDetalle'
      ReadOnly = True
      Visible = False
    end
    object adodsInstruccionesTiposDetalleIdInstruccionTipo: TIntegerField
      FieldName = 'IdInstruccionTipo'
      Visible = False
    end
    object adodsInstruccionesTiposDetalleIdMovimientoTipo: TIntegerField
      FieldName = 'IdMovimientoTipo'
      Required = True
      Visible = False
    end
    object adodsInstruccionesTiposDetalleMovimientoTipo: TStringField
      DisplayLabel = 'Tipo de movimiento'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipo'
      LookupDataSet = adodsMovimientosTipos
      LookupKeyFields = 'IdMovimientoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipo'
      Size = 100
      Lookup = True
    end
    object adodsInstruccionesTiposDetalleNombre: TStringField
      FieldName = 'Nombre'
      Required = True
      Size = 255
    end
    object adodsInstruccionesTiposDetalleValor: TStringField
      FieldName = 'Valor'
      Required = True
      Size = 255
    end
    object adodsInstruccionesTiposDetalleIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Required = True
      Visible = False
    end
    object adodsInstruccionesTiposDetalleMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = adodsMoneda
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMoneda'
      Size = 80
      Lookup = True
    end
  end
  object adodsMovimientosTipos: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMovimientoTipo, Descripcion from MovimientosTipos'
    Parameters = <>
    Left = 176
    Top = 88
  end
  object adodsMoneda: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, Descripcion from Monedas'
    Parameters = <>
    Left = 176
    Top = 152
  end
end
