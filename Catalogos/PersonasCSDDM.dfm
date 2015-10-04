inherited dmPersonasCSD: TdmPersonasCSD
  OldCreateOrder = True
  Height = 278
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdPersonaCSD, IdPersona, IdDocumento, Clave, Vencimiento ' +
      'from PersonasCSD'
    object adodsMasterIdPersonaCSD: TIntegerField
      FieldName = 'IdPersonaCSD'
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
      Visible = False
    end
    object adodsMasterArchivo: TStringField
      FieldKind = fkLookup
      FieldName = 'Archivo'
      LookupDataSet = adodsDocumento
      LookupKeyFields = 'IdDocumento'
      LookupResultField = 'NombreArchivo'
      KeyFields = 'IdDocumento'
      Size = 200
      Lookup = True
    end
    object adodsMasterClave: TStringField
      FieldName = 'Clave'
      Size = 100
    end
    object adodsMasterVencimiento: TDateTimeField
      FieldName = 'Vencimiento'
    end
  end
  inherited ActionList: TActionList
    object actUpdateFile: TAction
      Caption = '...'
      Hint = 'Asigna archivo'
      OnExecute = actUpdateFileExecute
    end
  end
  object adodsDocumento: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdDocumento, NombreArchivo FROM Documentos'
    Parameters = <>
    Left = 168
    Top = 136
  end
end
