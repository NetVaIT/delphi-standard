inherited dmFacturacion: TdmFacturacion
  OldCreateOrder = True
  Height = 367
  Width = 524
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaXCobrarEstatus, Estatus, ConceptoGenerico, SumaSu' +
      'btotal, SumaTotal, SumaDescuentos, TotalIVATrasladado, TotalISRT' +
      'rasladado, TotalIEPSTrasladado, TotalLocalesTrasladado, TotalIVA' +
      'Retenido, TotalISRRetenido, TotalLocalesRetenido, Facturar, IdPe' +
      'rsona, IdPersonaRelacionada, RegimenFiscal, IdCuentaXCobrar FROM' +
      ' vCuentasXCobrarFacturacion WHERE IdCuentaXCobrarEstatus = 2'
    Left = 40
    Top = 32
    object adodsMasterIdCuentaXCobrarEstatus: TIntegerField
      FieldName = 'IdCuentaXCobrarEstatus'
      Visible = False
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
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSumaTotal: TFMTBCDField
      FieldName = 'SumaTotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSumaDescuentos: TFMTBCDField
      FieldName = 'SumaDescuentos'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalIVATrasladado: TFMTBCDField
      FieldName = 'TotalIVATrasladado'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalISRTrasladado: TFMTBCDField
      FieldName = 'TotalISRTrasladado'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalIEPSTrasladado: TFMTBCDField
      FieldName = 'TotalIEPSTrasladado'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalLocalesTrasladado: TFMTBCDField
      FieldName = 'TotalLocalesTrasladado'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalIVARetenido: TFMTBCDField
      FieldName = 'TotalIVARetenido'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalISRRetenido: TFMTBCDField
      FieldName = 'TotalISRRetenido'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalLocalesRetenido: TFMTBCDField
      FieldName = 'TotalLocalesRetenido'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterFacturar: TBooleanField
      FieldName = 'Facturar'
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdPersonaRelacionada: TIntegerField
      FieldName = 'IdPersonaRelacionada'
      Visible = False
    end
    object adodsMasterRegimenFiscal: TStringField
      FieldName = 'RegimenFiscal'
      Size = 50
    end
    object adodsMasterIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
      Visible = False
    end
  end
  inherited adodsUpdate: TADODataSet
    CursorType = ctStatic
  end
  inherited ActionList: TActionList
    object actListaFacturar: TAction
      OnExecute = actListaFacturarExecute
    end
    object actProcesarFacturas: TAction
      Hint = 'Procesar Facturas'
      ImageIndex = 13
      OnExecute = actProcesarFacturasExecute
    end
    object actXMLaPDF: TAction
      Caption = 'actXMLaPDF'
      OnExecute = actXMLaPDFExecute
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
    Left = 80
    Top = 96
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
    Left = 80
    Top = 152
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
  object adocFacturaCuenta: TADOCommand
    CommandText = 
      'UPDATE CuentasXCobrar'#13#10'SET IdCuentaXCobrarEstatus = 3 '#13#10'WHERE Id' +
      'CuentaXCobrar = :IdCuentaXCobrar'
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 256
    Top = 288
  end
  object adodsCXCFacturasEmitidas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaXCobrarFacturaEmitida, IdDocumentoXML, IdDocument' +
      'oPDF, Emision, Serie, Folio FROM CuentasXCobrarFacturasEmitidas'
    Parameters = <>
    Left = 80
    Top = 208
    object adodsCXCFacturasEmitidasIdCuentaXCobrarFacturaEmitida: TAutoIncField
      FieldName = 'IdCuentaXCobrarFacturaEmitida'
      ReadOnly = True
    end
    object adodsCXCFacturasEmitidasIdDocumentoXML: TIntegerField
      FieldName = 'IdDocumentoXML'
    end
    object adodsCXCFacturasEmitidasIdDocumentoPDF: TIntegerField
      FieldName = 'IdDocumentoPDF'
    end
    object adodsCXCFacturasEmitidasArchivoXML: TStringField
      FieldKind = fkLookup
      FieldName = 'ArchivoXML'
      LookupDataSet = adodsDocumento
      LookupKeyFields = 'IdDocumento'
      LookupResultField = 'NombreArchivo'
      KeyFields = 'IdDocumentoXML'
      Size = 200
      Lookup = True
    end
    object adodsCXCFacturasEmitidasArchivoPDF: TStringField
      FieldKind = fkLookup
      FieldName = 'ArchivoPDF'
      LookupDataSet = adodsDocumento
      LookupKeyFields = 'IdDocumento'
      LookupResultField = 'NombreArchivo'
      KeyFields = 'IdDocumentoPDF'
      Size = 200
      Lookup = True
    end
    object adodsCXCFacturasEmitidasEmision: TDateTimeField
      FieldName = 'Emision'
    end
    object adodsCXCFacturasEmitidasSerie: TStringField
      FieldName = 'Serie'
      Size = 10
    end
    object adodsCXCFacturasEmitidasFolio: TStringField
      FieldName = 'Folio'
      Size = 10
    end
  end
  object adodsDocumento: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdDocumento, IdDocumentoTipo, IdDocumentoClase, Descripci' +
      'on, NombreArchivo, IdArchivo, Archivo FROM Documentos'
    Parameters = <>
    Left = 72
    Top = 272
    object adodsDocumentoIdDocumento: TAutoIncField
      FieldName = 'IdDocumento'
      ReadOnly = True
    end
    object adodsDocumentoIdDocumentoTipo: TIntegerField
      FieldName = 'IdDocumentoTipo'
    end
    object adodsDocumentoIdDocumentoClase: TIntegerField
      FieldName = 'IdDocumentoClase'
    end
    object adodsDocumentoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object adodsDocumentoNombreArchivo: TStringField
      FieldName = 'NombreArchivo'
      Size = 200
    end
    object adodsDocumentoIdArchivo: TGuidField
      FieldName = 'IdArchivo'
      FixedChar = True
      Size = 38
    end
    object adodsDocumentoArchivo: TBlobField
      FieldName = 'Archivo'
    end
  end
  object PersonasCDS: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT IdDocumentoCER, IdDocumentoKEY, Clave'
      'FROM PersonasCSD'
      'WHERE IdPersona = :IdPersona')
    Left = 168
    Top = 104
    object PersonasCDSIdDocumentoCER: TIntegerField
      FieldName = 'IdDocumentoCER'
    end
    object PersonasCDSIdDocumentoKEY: TIntegerField
      FieldName = 'IdDocumentoKEY'
    end
    object PersonasCDSClave: TStringField
      FieldName = 'Clave'
      Size = 100
    end
  end
end
