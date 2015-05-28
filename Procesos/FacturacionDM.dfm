inherited dmFacturacion: TdmFacturacion
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaXCobrarEstatus, Estatus, ConceptoGenerico, SumaSu' +
      'btotal, SumaTotal, SumaDescuentos, TotalIVATrasladado, TotalISRT' +
      'rasladado, TotalIEPSTrasladado, TotalLocalesTrasladado, TotalIVA' +
      'Retenido, TotalISRRetenido, TotalLocalesRetenido, Facturar, IdPe' +
      'rsona, IdPersonaRelacionada, RegimenFiscal FROM vCuentasXCobrarF' +
      'acturacion WHERE IdCuentaXCobrarEstatus = 2'
    Left = 40
    Top = 32
    object adodsMasterIdCuentaXCobrarEstatus: TIntegerField
      FieldName = 'IdCuentaXCobrarEstatus'
    end
    object adodsMasterEstatus: TStringField
      FieldName = 'Estatus'
      Size = 50
    end
    object adodsMasterConceptoGenerico: TStringField
      FieldName = 'ConceptoGenerico'
      Size = 200
    end
    object adodsMasterSumaSubtotal: TFMTBCDField
      FieldName = 'SumaSubtotal'
      Precision = 18
      Size = 6
    end
    object adodsMasterSumaTotal: TFMTBCDField
      FieldName = 'SumaTotal'
      Precision = 18
      Size = 6
    end
    object adodsMasterSumaDescuentos: TFMTBCDField
      FieldName = 'SumaDescuentos'
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalIVATrasladado: TFMTBCDField
      FieldName = 'TotalIVATrasladado'
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalISRTrasladado: TFMTBCDField
      FieldName = 'TotalISRTrasladado'
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalIEPSTrasladado: TFMTBCDField
      FieldName = 'TotalIEPSTrasladado'
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalLocalesTrasladado: TFMTBCDField
      FieldName = 'TotalLocalesTrasladado'
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalIVARetenido: TFMTBCDField
      FieldName = 'TotalIVARetenido'
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalISRRetenido: TFMTBCDField
      FieldName = 'TotalISRRetenido'
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalLocalesRetenido: TFMTBCDField
      FieldName = 'TotalLocalesRetenido'
      Precision = 18
      Size = 6
    end
    object adodsMasterFacturar: TBooleanField
      FieldName = 'Facturar'
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsMasterIdPersonaRelacionada: TIntegerField
      FieldName = 'IdPersonaRelacionada'
    end
    object adodsMasterRegimenFiscal: TStringField
      FieldName = 'RegimenFiscal'
      Size = 50
    end
  end
  inherited adodsUpdate: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdDocumento, IdDocumentoTipo, IdDocumentoClase, Descripci' +
      'on, NombreArchivo, IdArchivo, Archivo FROM Documentos'
    object adodsUpdateIdDocumento: TAutoIncField
      FieldName = 'IdDocumento'
      ReadOnly = True
    end
    object adodsUpdateIdDocumentoTipo: TIntegerField
      FieldName = 'IdDocumentoTipo'
    end
    object adodsUpdateIdDocumentoClase: TIntegerField
      FieldName = 'IdDocumentoClase'
    end
    object adodsUpdateDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object adodsUpdateNombreArchivo: TStringField
      FieldName = 'NombreArchivo'
      Size = 200
    end
    object adodsUpdateIdArchivo: TGuidField
      FieldName = 'IdArchivo'
      FixedChar = True
      Size = 38
    end
    object adodsUpdateArchivo: TBlobField
      FieldName = 'Archivo'
    end
  end
  inherited ActionList: TActionList
    object actListaFacturar: TAction
      OnExecute = actListaFacturarExecute
    end
    object actProcesarFacturas: TAction
      Hint = 'Procesar Facturas'
      OnExecute = actProcesarFacturasExecute
    end
  end
  object adodsEmisor: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, RFC, RazonSocial, Calle, NoExterior, NoInterio' +
      'r, CodigoPostal, Colonia, Poblacion, Municipio, Estado, Pais fro' +
      'm vPersonaFacturacion WHERE IdPersona = :IdPersona'
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 72
    Top = 136
    object adodsEmisorIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsEmisorRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object adodsEmisorRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adodsEmisorCalle: TStringField
      FieldName = 'Calle'
      Size = 30
    end
    object adodsEmisorNoExterior: TStringField
      FieldName = 'NoExterior'
      Size = 10
    end
    object adodsEmisorNoInterior: TStringField
      FieldName = 'NoInterior'
      Size = 10
    end
    object adodsEmisorCodigoPostal: TStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object adodsEmisorColonia: TStringField
      FieldName = 'Colonia'
      Size = 50
    end
    object adodsEmisorPoblacion: TStringField
      FieldName = 'Poblacion'
      Size = 150
    end
    object adodsEmisorMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object adodsEmisorEstado: TStringField
      FieldName = 'Estado'
      Size = 50
    end
    object adodsEmisorPais: TStringField
      FieldName = 'Pais'
      Size = 100
    end
  end
  object adodsReceptor: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, RFC, RazonSocial, Calle, NoExterior, NoInterio' +
      'r, CodigoPostal, Colonia, Poblacion, Municipio, Estado, Pais fro' +
      'm vPersonaFacturacion WHERE IdPersona = :IdPersona'
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 72
    Top = 200
    object adodsReceptorIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsReceptorRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object adodsReceptorRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adodsReceptorCalle: TStringField
      FieldName = 'Calle'
      Size = 30
    end
    object adodsReceptorNoExterior: TStringField
      FieldName = 'NoExterior'
      Size = 10
    end
    object adodsReceptorNoInterior: TStringField
      FieldName = 'NoInterior'
      Size = 10
    end
    object adodsReceptorCodigoPostal: TStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object adodsReceptorColonia: TStringField
      FieldName = 'Colonia'
      Size = 50
    end
    object adodsReceptorPoblacion: TStringField
      FieldName = 'Poblacion'
      Size = 150
    end
    object adodsReceptorMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object adodsReceptorEstado: TStringField
      FieldName = 'Estado'
      Size = 50
    end
    object adodsReceptorPais: TStringField
      FieldName = 'Pais'
      Size = 100
    end
  end
  object adodsCer: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersona, IdRol, IdPersonaRol, Clave, VencimientoDocumen' +
      'to, NombreArchivo, Archivo FROM vCertificadosFacturacion'
    Parameters = <>
    Left = 216
    Top = 120
    object adodsCerIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsCerIdRol: TIntegerField
      FieldName = 'IdRol'
    end
    object adodsCerIdPersonaRol: TIntegerField
      FieldName = 'IdPersonaRol'
    end
    object adodsCerClave: TStringField
      FieldName = 'Clave'
      Size = 100
    end
    object adodsCerVencimientoDocumento: TWideStringField
      FieldName = 'VencimientoDocumento'
      Size = 10
    end
    object adodsCerNombreArchivo: TStringField
      FieldName = 'NombreArchivo'
      Size = 200
    end
    object adodsCerArchivo: TBlobField
      FieldName = 'Archivo'
    end
  end
  object adodsKey: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersona, IdRol, IdPersonaRol, Clave, VencimientoDocumen' +
      'to, NombreArchivo, Archivo FROM vCertificadosFacturacion'
    Parameters = <>
    Left = 216
    Top = 216
    object adodsKeyIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsKeyIdRol: TIntegerField
      FieldName = 'IdRol'
    end
    object adodsKeyIdPersonaRol: TIntegerField
      FieldName = 'IdPersonaRol'
    end
    object adodsKeyClave: TStringField
      FieldName = 'Clave'
      Size = 100
    end
    object adodsKeyVencimientoDocumento: TWideStringField
      FieldName = 'VencimientoDocumento'
      Size = 10
    end
    object adodsKeyNombreArchivo: TStringField
      FieldName = 'NombreArchivo'
      Size = 200
    end
    object adodsKeyArchivo: TBlobField
      FieldName = 'Archivo'
    end
  end
end
