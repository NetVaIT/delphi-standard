inherited dmDocumentosAdjuntos: TdmDocumentosAdjuntos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdDocumentoAdjunto, IdDocumentoTipo, IdDocumentoClase, De' +
      'scripcion, NombreArchivo, IdArchivo, Archivo FROM DocumentosAdju' +
      'ntos'
    Left = 40
    object adodsMasterIdDocumentoAdjunto: TAutoIncField
      FieldName = 'IdDocumentoAdjunto'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdDocumentoTipo: TIntegerField
      FieldName = 'IdDocumentoTipo'
      Visible = False
    end
    object adodsMasterIdDocumentoClase: TIntegerField
      FieldName = 'IdDocumentoClase'
      Visible = False
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object adodsMasterNombreArchivo: TStringField
      FieldName = 'NombreArchivo'
      Size = 200
    end
    object adodsMasterIdArchivo: TGuidField
      FieldName = 'IdArchivo'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object adodsMasterArchivo: TBlobField
      FieldName = 'Archivo'
    end
    object adodsMasterDocumentoTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'DocumentoTipo'
      LookupDataSet = adodsDocumentoTipo
      LookupKeyFields = 'IdDocumentoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDocumentoTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterDocumentoClase: TStringField
      FieldKind = fkLookup
      FieldName = 'DocumentoClase'
      LookupDataSet = adodsDocumentoClase
      LookupKeyFields = 'IdDocumentoClase'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDocumentoClase'
      Size = 50
      Lookup = True
    end
  end
  object adodsDocumentoTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdDocumentoTipo, Descripcion FROM DocumentosTipos'
    Parameters = <>
    Left = 96
    Top = 136
  end
  object adodsDocumentoClase: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdDocumentoClase, Descripcion FROM DocumentosClases'
    Parameters = <>
    Left = 96
    Top = 208
  end
end
