inherited dmRolesDocumentos: TdmRolesDocumentos
  OldCreateOrder = True
  Height = 343
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdRolDocumento, IdPersonaRol, IdDocumentoAdjunto FROM Rol' +
      'esDocumentos WHERE IdPersonaRol = :IdPersonaRol'
    Parameters = <
      item
        Name = 'IdPersonaRol'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 32
    Top = 24
    object adodsMasterIdRolDocumento: TAutoIncField
      FieldName = 'IdRolDocumento'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersonaRol: TIntegerField
      FieldName = 'IdPersonaRol'
      Visible = False
    end
    object adodsMasterIdDocumentoAdjunto: TIntegerField
      FieldName = 'IdDocumentoAdjunto'
      Visible = False
    end
    object adodsMasterDocumentoAdjunto: TStringField
      FieldKind = fkLookup
      FieldName = 'DocumentoAdjunto'
      LookupDataSet = adodsDocumentoAdjunto
      LookupKeyFields = 'IdDocumentoAdjunto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDocumentoAdjunto'
      Size = 200
      Lookup = True
    end
  end
  inherited ActionList: TActionList
    object actExpedienteDigital: TAction
      Caption = '...'
      Hint = 'Asigna archivo'
      OnExecute = actExpedienteDigitalExecute
    end
  end
  object adodsDocumentoAdjunto: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdDocumentoAdjunto, IdDocumentoTipo, IdDocumentoClase, De' +
      'scripcion, NombreArchivo, IdArchivo, Archivo FROM DocumentosAdju' +
      'ntos'
    DataSource = dsMaster
    IndexFieldNames = 'IdDocumentoAdjunto'
    MasterFields = 'IdDocumentoAdjunto'
    Parameters = <>
    Left = 128
    Top = 96
    object adodsDocumentoAdjuntoIdDocumentoAdjunto: TAutoIncField
      FieldName = 'IdDocumentoAdjunto'
      ReadOnly = True
      Visible = False
    end
    object adodsDocumentoAdjuntoIdDocumentoTipo: TIntegerField
      FieldName = 'IdDocumentoTipo'
      Visible = False
    end
    object adodsDocumentoAdjuntoDocumentoTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'DocumentoTipo'
      LookupDataSet = adodsDocumentoTipo
      LookupKeyFields = 'IdDocumentoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDocumentoTipo'
      Size = 50
      Lookup = True
    end
    object adodsDocumentoAdjuntoIdDocumentoClase: TIntegerField
      FieldName = 'IdDocumentoClase'
      Visible = False
    end
    object adodsDocumentoAdjuntoDocumentoClase: TStringField
      FieldKind = fkLookup
      FieldName = 'DocumentoClase'
      LookupDataSet = adodsDocumentoClase
      LookupKeyFields = 'IdDocumentoClase'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDocumentoClase'
      Size = 50
      Lookup = True
    end
    object adodsDocumentoAdjuntoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object adodsDocumentoAdjuntoNombreArchivo: TStringField
      FieldName = 'NombreArchivo'
      Size = 200
    end
    object adodsDocumentoAdjuntoIdArchivo: TGuidField
      FieldName = 'IdArchivo'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object adodsDocumentoAdjuntoArchivo: TBlobField
      FieldName = 'Archivo'
    end
  end
  object adodsDocumentoTipo: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdDocumentoTipo, Descripcion FROM DocumentosTipos'
    Parameters = <>
    Left = 208
    Top = 152
  end
  object adodsDocumentoClase: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdDocumentoClase, Descripcion FROM DocumentosClases'
    Parameters = <>
    Left = 208
    Top = 216
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 128
    Top = 24
  end
end
