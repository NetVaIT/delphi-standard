object DMXMLCFDI: TDMXMLCFDI
  OldCreateOrder = False
  Height = 384
  Width = 586
  object XMLDocument: TXMLDocument
    Left = 88
    Top = 56
    DOMVendorDesc = 'MSXML'
  end
  object ClientDataSetCFDConceptos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CFDLink'
        ParamType = ptInput
        Value = 18
      end>
    ProviderName = 'DataSetProviderCFDConceptos'
    Left = 84
    Top = 152
    object ClientDataSetCFDConceptosCFDLINK: TIntegerField
      FieldName = 'CFDLINK'
      Origin = '"CFDCONCEPTOS"."CFDLINK"'
      Required = True
    end
    object ClientDataSetCFDConceptosUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Origin = '"CFDCONCEPTOS"."UNIDAD"'
    end
    object ClientDataSetCFDConceptosCLAVE: TWideStringField
      FieldName = 'CLAVE'
      Origin = '"CFDCONCEPTOS"."CLAVE"'
    end
    object ClientDataSetCFDConceptosVALORUNITARIO: TBCDField
      FieldName = 'VALORUNITARIO'
      Origin = '"CFDCONCEPTOS"."VALORUNITARIO"'
      DisplayFormat = '$ ###,##0.00'
      Precision = 18
    end
    object ClientDataSetCFDConceptosIMPORTE: TBCDField
      DefaultExpression = '0'
      FieldName = 'IMPORTE'
      Origin = '"CFDCONCEPTOS"."IMPORTE"'
      DisplayFormat = '$ ###,##0.00'
      Precision = 18
    end
    object ClientDataSetCFDConceptosDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Origin = '"CFDCONCEPTOS"."DESCRIPCION"'
      Size = 200
    end
    object ClientDataSetCFDConceptosDESCRIPCION2: TMemoField
      FieldName = 'DESCRIPCION2'
      Origin = '"CFDCONCEPTOS"."DESCRIPCION2"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object ClientDataSetCFDConceptosADUANANUMERO: TWideStringField
      FieldName = 'ADUANANUMERO'
      Origin = '"CFDCONCEPTOS"."ADUANANUMERO"'
      Size = 250
    end
    object ClientDataSetCFDConceptosADUANANOMBRE: TWideStringField
      FieldName = 'ADUANANOMBRE'
      Origin = '"CFDCONCEPTOS"."ADUANANOMBRE"'
      Size = 250
    end
    object ClientDataSetCFDConceptosADUANAFECHA: TDateTimeField
      FieldName = 'ADUANAFECHA'
      Origin = '"CFDCONCEPTOS"."ADUANAFECHA"'
    end
    object ClientDataSetCFDConceptosDESCRIPCIONV: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'DESCRIPCIONV'
      Size = 1024
      Calculated = True
    end
    object ClientDataSetCFDConceptosID: TAutoIncField
      FieldName = 'ID'
    end
    object ClientDataSetCFDConceptosCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
  end
  object ClientDataSetCFD: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'fechaini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'fechafin'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProviderCFD'
    Left = 88
    Top = 104
    object ClientDataSetCFDVERSION: TWideStringField
      FieldName = 'VERSION'
      Origin = '"CFD"."VERSION"'
      Size = 3
    end
    object ClientDataSetCFDSERIE: TWideStringField
      FieldName = 'SERIE'
      Origin = '"CFD"."SERIE"'
      Size = 10
    end
    object ClientDataSetCFDFOLIO: TWideStringField
      FieldName = 'FOLIO'
      Origin = '"CFD"."FOLIO"'
    end
    object ClientDataSetCFDSELLO: TWideStringField
      FieldName = 'SELLO'
      Origin = '"CFD"."SELLO"'
      Size = 250
    end
    object ClientDataSetCFDNUMEROAPROBACION: TIntegerField
      FieldName = 'NUMEROAPROBACION'
      Origin = '"CFD"."NUMEROAPROBACION"'
    end
    object ClientDataSetCFDAGNOAPROBACION: TIntegerField
      FieldName = 'AGNOAPROBACION'
      Origin = '"CFD"."AGNOAPROBACION"'
    end
    object ClientDataSetCFDFORMADEPAGO: TWideStringField
      FieldName = 'FORMADEPAGO'
      Origin = '"CFD"."FORMADEPAGO"'
      Size = 50
    end
    object ClientDataSetCFDNOCERTIFICADO: TWideStringField
      FieldName = 'NOCERTIFICADO'
      Origin = '"CFD"."NOCERTIFICADO"'
    end
    object ClientDataSetCFDCONDICIONESDEPAGO: TWideStringField
      FieldName = 'CONDICIONESDEPAGO'
      Origin = '"CFD"."CONDICIONESDEPAGO"'
      Size = 50
    end
    object ClientDataSetCFDSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      Origin = '"CFD"."SUBTOTAL"'
      DisplayFormat = '$ ###,##0.00'
      currency = True
      Precision = 18
    end
    object ClientDataSetCFDDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      Origin = '"CFD"."DESCUENTO"'
      DisplayFormat = '$ ###,##0.00'
      currency = True
      Precision = 18
    end
    object ClientDataSetCFDMOTIVODESCUENTO: TWideStringField
      FieldName = 'MOTIVODESCUENTO'
      Origin = '"CFD"."MOTIVODESCUENTO"'
      Size = 250
    end
    object ClientDataSetCFDTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = '"CFD"."TOTAL"'
      DisplayFormat = '$ ###,##0.00'
      currency = True
      Precision = 18
    end
    object ClientDataSetCFDMETODODEPAGO: TWideStringField
      FieldName = 'METODODEPAGO'
      Origin = '"CFD"."METODODEPAGO"'
      Size = 250
    end
    object ClientDataSetCFDTIPODECOMPROBANTE: TWideStringField
      FieldName = 'TIPODECOMPROBANTE'
      Origin = '"CFD"."TIPODECOMPROBANTE"'
      Size = 50
    end
    object ClientDataSetCFDRFCEMISOR: TWideStringField
      FieldName = 'RFCEMISOR'
      Origin = '"CFD"."RFCEMISOR"'
      Size = 13
    end
    object ClientDataSetCFDCALLEDMEMISOR: TWideStringField
      DisplayLabel = 'calle'
      FieldName = 'CALLEDMEMISOR'
      Origin = '"CFD"."CALLEDMEMISOR"'
      Size = 200
    end
    object ClientDataSetCFDNUMEXTDMEMISOR: TWideStringField
      FieldName = 'NUMEXTDMEMISOR'
      Origin = '"CFD"."NUMEXTDMEMISOR"'
    end
    object ClientDataSetCFDNUMINTDMEMISOR: TWideStringField
      FieldName = 'NUMINTDMEMISOR'
      Origin = '"CFD"."NUMINTDMEMISOR"'
    end
    object ClientDataSetCFDCOLONIADMEMISOR: TWideStringField
      FieldName = 'COLONIADMEMISOR'
      Origin = '"CFD"."COLONIADMEMISOR"'
      Size = 200
    end
    object ClientDataSetCFDLOCALIDADDMEMISOR: TWideStringField
      FieldName = 'LOCALIDADDMEMISOR'
      Origin = '"CFD"."LOCALIDADDMEMISOR"'
      Size = 200
    end
    object ClientDataSetCFDREFERENCIADMEMISOR: TWideStringField
      FieldName = 'REFERENCIADMEMISOR'
      Origin = '"CFD"."REFERENCIADMEMISOR"'
      Size = 200
    end
    object ClientDataSetCFDMUNICIPIODMEMISOR: TWideStringField
      FieldName = 'MUNICIPIODMEMISOR'
      Origin = '"CFD"."MUNICIPIODMEMISOR"'
      Size = 200
    end
    object ClientDataSetCFDESTADODMEMISOR: TWideStringField
      FieldName = 'ESTADODMEMISOR'
      Origin = '"CFD"."ESTADODMEMISOR"'
      Size = 200
    end
    object ClientDataSetCFDPAISDMEMISOR: TWideStringField
      FieldName = 'PAISDMEMISOR'
      Origin = '"CFD"."PAISDMEMISOR"'
      Size = 200
    end
    object ClientDataSetCFDCODIGOPOSTALDMEMISOR: TWideStringField
      FieldName = 'CODIGOPOSTALDMEMISOR'
      Origin = '"CFD"."CODIGOPOSTALDMEMISOR"'
      Size = 5
    end
    object ClientDataSetCFDCALLEDMEXPEDICION: TWideStringField
      FieldName = 'CALLEDMEXPEDICION'
      Origin = '"CFD"."CALLEDMEXPEDICION"'
      Size = 200
    end
    object ClientDataSetCFDNUMEXTDMEXPEDICION: TWideStringField
      FieldName = 'NUMEXTDMEXPEDICION'
      Origin = '"CFD"."NUMEXTDMEXPEDICION"'
    end
    object ClientDataSetCFDNUMINTDMEXPEDICION: TWideStringField
      FieldName = 'NUMINTDMEXPEDICION'
      Origin = '"CFD"."NUMINTDMEXPEDICION"'
    end
    object ClientDataSetCFDCOLONIADMEXPEDICION: TWideStringField
      FieldName = 'COLONIADMEXPEDICION'
      Origin = '"CFD"."COLONIADMEXPEDICION"'
      Size = 200
    end
    object ClientDataSetCFDLOCALIDADDMEXPEDICION: TWideStringField
      FieldName = 'LOCALIDADDMEXPEDICION'
      Origin = '"CFD"."LOCALIDADDMEXPEDICION"'
      Size = 200
    end
    object ClientDataSetCFDREFERENCIADMEXPEDICION: TWideStringField
      FieldName = 'REFERENCIADMEXPEDICION'
      Origin = '"CFD"."REFERENCIADMEXPEDICION"'
      Size = 200
    end
    object ClientDataSetCFDMUNICIPIODMEXPEDICION: TWideStringField
      FieldName = 'MUNICIPIODMEXPEDICION'
      Origin = '"CFD"."MUNICIPIODMEXPEDICION"'
      Size = 200
    end
    object ClientDataSetCFDESTADODMEXPEDICION: TWideStringField
      FieldName = 'ESTADODMEXPEDICION'
      Origin = '"CFD"."ESTADODMEXPEDICION"'
      Size = 200
    end
    object ClientDataSetCFDPAISDMEXPEDICION: TWideStringField
      FieldName = 'PAISDMEXPEDICION'
      Origin = '"CFD"."PAISDMEXPEDICION"'
      Size = 200
    end
    object ClientDataSetCFDCODIGOPOSTALDMEXPEDICION: TWideStringField
      FieldName = 'CODIGOPOSTALDMEXPEDICION'
      Origin = '"CFD"."CODIGOPOSTALDMEXPEDICION"'
      Size = 5
    end
    object ClientDataSetCFDRFCRECEPTOR: TWideStringField
      FieldName = 'RFCRECEPTOR'
      Origin = '"CFD"."RFCRECEPTOR"'
      Size = 13
    end
    object ClientDataSetCFDRAZONSOCIALRECEPTOR: TWideStringField
      FieldName = 'RAZONSOCIALRECEPTOR'
      Origin = '"CFD"."RAZONSOCIALRECEPTOR"'
      Size = 250
    end
    object ClientDataSetCFDCALLEDMRECEPTOR: TWideStringField
      FieldName = 'CALLEDMRECEPTOR'
      Origin = '"CFD"."CALLEDMRECEPTOR"'
      Size = 200
    end
    object ClientDataSetCFDNUMEXTDMRECEPTOR: TWideStringField
      FieldName = 'NUMEXTDMRECEPTOR'
      Origin = '"CFD"."NUMEXTDMRECEPTOR"'
    end
    object ClientDataSetCFDNUMINTDMRECEPTOR: TWideStringField
      FieldName = 'NUMINTDMRECEPTOR'
      Origin = '"CFD"."NUMINTDMRECEPTOR"'
    end
    object ClientDataSetCFDCOLONIADMRECEPTOR: TWideStringField
      FieldName = 'COLONIADMRECEPTOR'
      Origin = '"CFD"."COLONIADMRECEPTOR"'
      Size = 200
    end
    object ClientDataSetCFDLOCALIDADDMRECEPTOR: TWideStringField
      FieldName = 'LOCALIDADDMRECEPTOR'
      Origin = '"CFD"."LOCALIDADDMRECEPTOR"'
      Size = 200
    end
    object ClientDataSetCFDREFERENCIADMRECEPTOR: TWideStringField
      FieldName = 'REFERENCIADMRECEPTOR'
      Origin = '"CFD"."REFERENCIADMRECEPTOR"'
      Size = 200
    end
    object ClientDataSetCFDMUNICIPIODMRECEPTOR: TWideStringField
      FieldName = 'MUNICIPIODMRECEPTOR'
      Origin = '"CFD"."MUNICIPIODMRECEPTOR"'
      Size = 200
    end
    object ClientDataSetCFDESTADODMRECEPTOR: TWideStringField
      FieldName = 'ESTADODMRECEPTOR'
      Origin = '"CFD"."ESTADODMRECEPTOR"'
      Size = 200
    end
    object ClientDataSetCFDPAISDMRECEPTOR: TWideStringField
      FieldName = 'PAISDMRECEPTOR'
      Origin = '"CFD"."PAISDMRECEPTOR"'
      Size = 200
    end
    object ClientDataSetCFDCODIGOPOSTALDMRECEPTOR: TWideStringField
      FieldName = 'CODIGOPOSTALDMRECEPTOR'
      Origin = '"CFD"."CODIGOPOSTALDMRECEPTOR"'
      Size = 5
    end
    object ClientDataSetCFDTOTALIMPUESTORETENIDO: TBCDField
      FieldName = 'TOTALIMPUESTORETENIDO'
      Origin = '"CFD"."TOTALIMPUESTORETENIDO"'
      currency = True
      Precision = 18
    end
    object ClientDataSetCFDTOTALIMPUESTOTRASLADADO: TBCDField
      FieldName = 'TOTALIMPUESTOTRASLADADO'
      Origin = '"CFD"."TOTALIMPUESTOTRASLADADO"'
      currency = True
      Precision = 18
    end
    object ClientDataSetCFDRAZONSOCIALEMISOR: TWideStringField
      FieldName = 'RAZONSOCIALEMISOR'
      Origin = '"CFD"."RAZONSOCIALEMISOR"'
      Size = 250
    end
    object ClientDataSetCFDFECHA: TDateTimeField
      FieldName = 'FECHA'
      Origin = '"CFD"."FECHA"'
    end
    object ClientDataSetCFDCERTIFICADO: TWideStringField
      FieldName = 'CERTIFICADO'
      Origin = '"CFD"."CERTIFICADO"'
      Size = 2048
    end
    object ClientDataSetCFDCADENAORIGINAL: TWideStringField
      FieldName = 'CADENAORIGINAL'
      Origin = '"CFD"."CADENAORIGINAL"'
      Size = 4096
    end
    object ClientDataSetCFDCANTIDADCONLETRA: TWideStringField
      FieldName = 'CANTIDADCONLETRA'
      Origin = '"CFD"."CANTIDADCONLETRA"'
      Size = 1024
    end
    object ClientDataSetCFDESTADODELCOMPROBANTE: TWideStringField
      FieldName = 'ESTADODELCOMPROBANTE'
      Origin = '"CFD"."ESTADODELCOMPROBANTE"'
      Size = 1
    end
    object ClientDataSetCFDUUID: TWideStringField
      FieldName = 'UUID'
      Origin = '"CFD"."UUID"'
      Size = 36
    end
    object ClientDataSetCFDNOCERTIFICADOSAT: TWideStringField
      FieldName = 'NOCERTIFICADOSAT'
      Origin = '"CFD"."NOCERTIFICADOSAT"'
    end
    object ClientDataSetCFDSELLOSAT: TWideStringField
      FieldName = 'SELLOSAT'
      Origin = '"CFD"."SELLOSAT"'
      Size = 250
    end
    object ClientDataSetCFDCBB: TBlobField
      FieldName = 'CBB'
      Origin = '"CFD"."CBB"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ClientDataSetCFDACUSE: TWideStringField
      FieldName = 'ACUSE'
      Origin = '"CFD"."ACUSE"'
      Size = 4096
    end
    object ClientDataSetCFDRECEPTOR_DIRECCION: TStringField
      FieldKind = fkCalculated
      FieldName = 'RECEPTOR_DIRECCION'
      Size = 250
      Calculated = True
    end
    object ClientDataSetCFDRECEPTOR_CIUDADEDOPAIS: TStringField
      FieldKind = fkCalculated
      FieldName = 'RECEPTOR_CIUDADEDOPAIS'
      Size = 250
      Calculated = True
    end
    object ClientDataSetCFDFECHATIMBRADO: TDateTimeField
      FieldName = 'FECHATIMBRADO'
      Origin = '"CFD"."FECHATIMBRADO"'
    end
    object ClientDataSetCFDNUMCTAPAGO: TWideStringField
      FieldName = 'NUMCTAPAGO'
      Origin = '"CFD"."NUMCTAPAGO"'
      Visible = False
    end
    object ClientDataSetCFDREGIMENFISCAL: TWideStringField
      FieldName = 'REGIMENFISCAL'
      Origin = '"CFD"."REGIMENFISCAL"'
      Visible = False
      Size = 250
    end
    object ClientDataSetCFDCANCELADO: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'CANCELADO'
      Calculated = True
    end
    object ClientDataSetCFDBANCO: TWideStringField
      FieldName = 'BANCO'
      Origin = '"CFD"."BANCO"'
      Size = 100
    end
    object ClientDataSetCFDTIMBREVERSION: TStringField
      FieldName = 'TIMBREVERSION'
      Size = 5
    end
    object ClientDataSetCFDID: TAutoIncField
      FieldName = 'ID'
    end
    object ClientDataSetCFDMONEDA: TStringField
      FieldName = 'MONEDA'
      Size = 50
    end
    object ClientDataSetCFDTIPOCAMBIO: TStringField
      FieldName = 'TIPOCAMBIO'
      Size = 50
    end
  end
  object ClientDataSetCFDRetenciones: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProviderCFDRetenciones'
    Left = 84
    Top = 248
    object ClientDataSetCFDRetencionesCFDLINK: TIntegerField
      FieldName = 'CFDLINK'
      Required = True
    end
    object ClientDataSetCFDRetencionesIMPUESTO: TWideStringField
      FieldName = 'IMPUESTO'
      Size = 3
    end
    object ClientDataSetCFDRetencionesIMPORTE: TBCDField
      FieldName = 'IMPORTE'
      DisplayFormat = '$ ###,##0.00'
      Precision = 18
    end
    object ClientDataSetCFDRetencionesID: TAutoIncField
      FieldName = 'ID'
    end
    object ClientDataSetCFDRetencionesTASA: TFloatField
      FieldName = 'TASA'
    end
  end
  object ClientDataSetTraslados: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProviderCFDRetenciones'
    Left = 84
    Top = 200
    object IntegerField1: TIntegerField
      FieldName = 'CFDLINK'
      Required = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'IMPUESTO'
      Size = 3
    end
    object BCDField1: TBCDField
      FieldName = 'IMPORTE'
      DisplayFormat = '$ ###,##0.00'
      Precision = 18
    end
    object AutoIncField1: TAutoIncField
      FieldName = 'ID'
    end
    object ClientDataSetTrasladosTASA: TFloatField
      FieldName = 'TASA'
    end
  end
  object ppReportCFDI: TppReport
    AutoStop = False
    DataPipeline = ppDBPipelineConceptos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter (8,5" x 11")'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 3810
    PrinterSetup.mmMarginLeft = 3810
    PrinterSetup.mmMarginRight = 3810
    PrinterSetup.mmMarginTop = 3810
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 122
    Template.FileName = 'C:\luisg\Proyectos\Interva\Client\Formato.rtm'
    Units = utScreenPixels
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 360
    Top = 48
    Version = '15.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipelineConceptos'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 82286
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Style = bsClear
        Shape = stRoundRect
        mmHeight = 10848
        mmLeft = 0
        mmTop = 0
        mmWidth = 39423
        BandType = 0
        LayerName = Foreground
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Style = bsClear
        Shape = stRoundRect
        mmHeight = 10848
        mmLeft = 168275
        mmTop = 0
        mmWidth = 39423
        BandType = 0
        LayerName = Foreground
      end
      object ppShape13: TppShape
        UserName = 'Shape11'
        Shape = stRoundRect
        mmHeight = 20108
        mmLeft = 265
        mmTop = 53995
        mmWidth = 206375
        BandType = 0
        LayerName = Foreground
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        Brush.Color = clBtnFace
        Shape = stRoundRect
        mmHeight = 7673
        mmLeft = 0
        mmTop = 74613
        mmWidth = 205052
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2646
        mmTop = 77013
        mmWidth = 15071
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Descripci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 77010
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Precio Unitario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 157957
        mmTop = 77013
        mmWidth = 24977
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Importe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 186267
        mmTop = 77013
        mmWidth = 12912
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'Serie'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 4233
        mmLeft = 15346
        mmTop = 5292
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Folio'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3969
        mmLeft = 19050
        mmTop = 5292
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 265
        mmTop = 59022
        mmWidth = 206111
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'Serie y Folio internos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 0
        mmWidth = 32279
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 265
        mmTop = 63784
        mmWidth = 206111
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'Fecha hora Expedici'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 169598
        mmTop = 1058
        mmWidth = 34925
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        DataField = 'FECHA'
        DataPipeline = ppDBPipelineCFD
        DisplayFormat = 'dd/mm/yyyy   hh:nn:ss'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3704
        mmLeft = 170657
        mmTop = 5821
        mmWidth = 37042
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 53446
        mmTop = 53995
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'Metodo de Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 55298
        mmTop = 54524
        mmWidth = 24871
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'METODODEPAGO'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3598
        mmLeft = 55298
        mmTop = 59816
        mmWidth = 26723
        BandType = 0
        LayerName = Foreground
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 83608
        mmTop = 54259
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'LUGAR DE EXPEDICION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4064
        mmLeft = 84931
        mmTop = 54524
        mmWidth = 40555
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel30: TppLabel
        UserName = 'Label27'
        Caption = 'Guadalajara, Jalisco, M'#233'xico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 84667
        mmTop = 59812
        mmWidth = 44185
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'FORMA DE PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4064
        mmLeft = 132292
        mmTop = 54524
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 130969
        mmTop = 53995
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        AutoSize = True
        DataField = 'FORMADEPAGO'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3969
        mmLeft = 132292
        mmTop = 59812
        mmWidth = 41010
        BandType = 0
        LayerName = Foreground
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 265
        mmTop = 69076
        mmWidth = 206111
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'CONDICIONES DE PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4064
        mmLeft = 1003
        mmTop = 64843
        mmWidth = 41783
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'CONDICIONESDEPAGO'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3704
        mmLeft = 1003
        mmTop = 69341
        mmWidth = 41804
        BandType = 0
        LayerName = Foreground
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 48363
        mmTop = 63784
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'TIPO DE COMPROBANTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4064
        mmLeft = 49422
        mmTop = 64843
        mmWidth = 42503
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'TIPODECOMPROBANTE'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 4191
        mmLeft = 49422
        mmTop = 69341
        mmWidth = 43127
        BandType = 0
        LayerName = Foreground
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 95724
        mmTop = 63784
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'REGIMEN FISCAL DEL EMISOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4064
        mmLeft = 97047
        mmTop = 64843
        mmWidth = 52155
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        Angle = 45
        AutoSize = True
        BlankWhenZero = True
        DataField = 'CANCELADO'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 48
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 19455
        mmLeft = 91608
        mmTop = 54189
        mmWidth = 19455
        BandType = 0
        LayerName = Foreground
        RotatedOriginLeft = -72018
        RotatedOriginTop = 2619
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'FECHA CERTIFICACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 11642
        mmTop = 54520
        mmWidth = 39423
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'FECHATIMBRADO'
        DataPipeline = ppDBPipelineCFD
        DisplayFormat = 'DD/MM/YYYY hh:nn:ss'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3704
        mmLeft = 2646
        mmTop = 59812
        mmWidth = 48154
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Unidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 24077
        mmTop = 77010
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Shape = stRoundRect
        mmHeight = 20108
        mmLeft = 265
        mmTop = 32560
        mmWidth = 206375
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 529
        mmTop = 37587
        mmWidth = 206111
        BandType = 0
        LayerName = Foreground
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 529
        mmTop = 42349
        mmWidth = 206111
        BandType = 0
        LayerName = Foreground
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 53711
        mmTop = 32560
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'RFC Receptor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 55563
        mmTop = 33089
        mmWidth = 21695
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'RFCRECEPTOR'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3704
        mmLeft = 55563
        mmTop = 38380
        mmWidth = 26723
        BandType = 0
        LayerName = Foreground
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 83873
        mmTop = 32824
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Calle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 85196
        mmTop = 33089
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Num. Ext.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 132557
        mmTop = 33089
        mmWidth = 15345
        BandType = 0
        LayerName = Foreground
      end
      object ppLine11: TppLine
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 131234
        mmTop = 32560
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'NUMEXTDMRECEPTOR'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3969
        mmLeft = 132557
        mmTop = 38380
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 529
        mmTop = 47641
        mmWidth = 206111
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Colonia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 43408
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'COLONIADMRECEPTOR'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 47905
        mmWidth = 41804
        BandType = 0
        LayerName = Foreground
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 48683
        mmTop = 42349
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Municipio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 49742
        mmTop = 43408
        mmWidth = 14287
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'MUNICIPIODMRECEPTOR'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 4233
        mmLeft = 49742
        mmTop = 47905
        mmWidth = 43127
        BandType = 0
        LayerName = Foreground
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 96044
        mmTop = 42349
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 97367
        mmTop = 43408
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel35: TppLabel
        UserName = 'Label101'
        Caption = 'Receptor Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 33089
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        AutoSize = True
        DataField = 'RAZONSOCIALRECEPTOR'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 38365
        mmWidth = 31221
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'CALLEDMRECEPTOR'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3704
        mmLeft = 86784
        mmTop = 38380
        mmWidth = 42069
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Num. Int.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 151342
        mmTop = 33089
        mmWidth = 14287
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'NUMINTDMRECEPTOR'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3969
        mmLeft = 151342
        mmTop = 38380
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'C. P.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 170657
        mmTop = 33089
        mmWidth = 7937
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'CODIGOPOSTALDMRECEPTOR'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3969
        mmLeft = 170657
        mmTop = 38380
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'ESTADODMRECEPTOR'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 4233
        mmLeft = 97367
        mmTop = 47905
        mmWidth = 43127
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'Pa'#237's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 144463
        mmTop = 43408
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'PAISDMRECEPTOR'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 4233
        mmLeft = 144463
        mmTop = 47905
        mmWidth = 43127
        BandType = 0
        LayerName = Foreground
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Shape = stRoundRect
        mmHeight = 20108
        mmLeft = 265
        mmTop = 11907
        mmWidth = 206375
        BandType = 0
        LayerName = Foreground
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 529
        mmTop = 16934
        mmWidth = 206111
        BandType = 0
        LayerName = Foreground
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 529
        mmTop = 21697
        mmWidth = 206111
        BandType = 0
        LayerName = Foreground
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 53975
        mmTop = 11907
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'RFC Emisor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4234
        mmLeft = 55827
        mmTop = 12435
        mmWidth = 18786
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'RFCEMISOR'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3704
        mmLeft = 55827
        mmTop = 17728
        mmWidth = 26723
        BandType = 0
        LayerName = Foreground
      end
      object ppLine21: TppLine
        UserName = 'Line101'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 84138
        mmTop = 12172
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'Calle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 85461
        mmTop = 12436
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 'Num. Ext.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 132821
        mmTop = 12436
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 131498
        mmTop = 11907
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'NUMEXTDMEMISOR'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3969
        mmLeft = 132821
        mmTop = 17728
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 529
        mmTop = 26988
        mmWidth = 206111
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = 'Colonia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 22755
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        DataField = 'COLONIADMEMISOR'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 27253
        mmWidth = 41804
        BandType = 0
        LayerName = Foreground
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 48948
        mmTop = 21697
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        Caption = 'Municipio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 50006
        mmTop = 22755
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        DataField = 'MUNICIPIODMEMISOR'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 4233
        mmLeft = 50006
        mmTop = 27253
        mmWidth = 43127
        BandType = 0
        LayerName = Foreground
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 96309
        mmTop = 21697
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 97631
        mmTop = 22755
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        Caption = 'Emisor Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4234
        mmLeft = 17727
        mmTop = 12435
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        AutoSize = True
        DataField = 'RAZONSOCIALEMISOR'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 17727
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText39: TppDBText
        UserName = 'DBText201'
        DataField = 'CALLEDMEMISOR'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3704
        mmLeft = 87048
        mmTop = 17728
        mmWidth = 42069
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Caption = 'Num. Int.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 151607
        mmTop = 12436
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        DataField = 'NUMINTDMEMISOR'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3969
        mmLeft = 151607
        mmTop = 17728
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel49: TppLabel
        UserName = 'Label401'
        Caption = 'C. P.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 170921
        mmTop = 12436
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        DataField = 'CODIGOPOSTALDMEMISOR'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3969
        mmLeft = 170921
        mmTop = 17728
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        DataField = 'ESTADODMEMISOR'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 4233
        mmLeft = 97631
        mmTop = 27253
        mmWidth = 43127
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        Caption = 'Pa'#237's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 144727
        mmTop = 22755
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        DataField = 'PAISDMEMISOR'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 4233
        mmLeft = 144727
        mmTop = 27253
        mmWidth = 43127
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        AutoSize = True
        DataField = 'REGIMENFISCAL'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3704
        mmLeft = 97631
        mmTop = 70115
        mmWidth = 105040
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        AutoSize = True
        DataField = 'Cantidad'
        DataPipeline = ppDBPipelineConceptos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineConceptos'
        mmHeight = 4233
        mmLeft = 8996
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'ValorUnitario'
        DataPipeline = ppDBPipelineConceptos
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipelineConceptos'
        mmHeight = 4233
        mmLeft = 154517
        mmTop = 0
        mmWidth = 22754
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'Importe'
        DataPipeline = ppDBPipelineConceptos
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipelineConceptos'
        mmHeight = 4233
        mmLeft = 181240
        mmTop = 0
        mmWidth = 22754
        BandType = 4
        LayerName = Foreground
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        CharWrap = False
        DataField = 'DESCRIPCION'
        DataPipeline = ppDBPipelineConceptos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBPipelineConceptos'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 0
        mmWidth = 105834
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        DataField = 'UNIDAD'
        DataPipeline = ppDBPipelineConceptos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineConceptos'
        mmHeight = 4233
        mmLeft = 21696
        mmTop = 0
        mmWidth = 16139
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      AlignToBottom = True
      mmBottomOffset = 0
      mmHeight = 94721
      mmPrintPosition = 0
      object ppShape9: TppShape
        UserName = 'Shape9'
        Shape = stRoundRect
        mmHeight = 7673
        mmLeft = 0
        mmTop = 529
        mmWidth = 205052
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'SUBTOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 153194
        mmTop = 9790
        mmWidth = 17727
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'IVA TASA 0%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 134144
        mmTop = 9790
        mmWidth = 12700
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'SubTotal'
        DataPipeline = ppDBPipelineCFD
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 4191
        mmLeft = 175684
        mmTop = 9525
        mmWidth = 28310
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 159544
        mmTop = 25135
        mmWidth = 11377
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Importe con Letra :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 529
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        DataField = 'CantidadconLetra'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 4233
        mmLeft = 30956
        mmTop = 2117
        mmWidth = 144992
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 
          'La Reproducci'#243'n ap'#243'crifa de este comprobante constituye un delit' +
          'o en los t'#233'rminos de las disposiciones fiscales.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        WordWrap = True
        mmHeight = 8213
        mmLeft = 0
        mmTop = 8731
        mmWidth = 99314
        BandType = 7
        LayerName = Foreground
      end
      object ppDBImage1: TppDBImage
        UserName = 'DBImage1'
        AlignHorizontal = ahLeft
        AlignVertical = avTop
        MaintainAspectRatio = False
        Stretch = True
        DataField = 'CBB'
        DataPipeline = ppDBPipelineCFD
        GraphicType = 'AutoDetect'
        ParentDataPipeline = False
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 27517
        mmLeft = 103981
        mmTop = 9790
        mmWidth = 27517
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'TOTALIMPUESTOTRASLADADO'
        DataPipeline = ppDBPipelineCFD
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 4191
        mmLeft = 175684
        mmTop = 15081
        mmWidth = 28310
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'Total'
        DataPipeline = ppDBPipelineCFD
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 4191
        mmLeft = 175684
        mmTop = 25143
        mmWidth = 28310
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label201'
        Caption = 'Efectos fiscales al pago.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        WordWrap = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 17990
        mmWidth = 82815
        BandType = 7
        LayerName = Foreground
      end
      object ppLine14: TppLine
        UserName = 'Line11'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 43663
        mmWidth = 206375
        BandType = 7
        LayerName = Foreground
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = True
        DataField = 'SELLO'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 8996
        mmLeft = 265
        mmTop = 49749
        mmWidth = 202671
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Folio SAT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        WordWrap = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 23548
        mmWidth = 17727
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'UUID'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3969
        mmLeft = 19579
        mmTop = 23548
        mmWidth = 66675
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        DataField = 'NOCERTIFICADOSAT'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3969
        mmLeft = 50536
        mmTop = 29104
        mmWidth = 37041
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Num. Serie Certificado SAT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 29104
        mmWidth = 47625
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Num. Serie Certificado CSD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        WordWrap = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 33338
        mmWidth = 47625
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        AutoSize = True
        DataField = 'NOCERTIFICADO'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3968
        mmLeft = 50536
        mmTop = 33338
        mmWidth = 37041
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        UserName = 'Label2'
        Caption = 'Sello Digital del CFDI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 265
        mmTop = 45515
        mmWidth = 37835
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'Sello del SAT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        WordWrap = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 59274
        mmWidth = 37835
        BandType = 7
        LayerName = Foreground
      end
      object ppDBMemo3: TppDBMemo
        UserName = 'DBMemo3'
        CharWrap = True
        DataField = 'SELLOSAT'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 8996
        mmLeft = 0
        mmTop = 64036
        mmWidth = 202671
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBMemo4: TppDBMemo
        UserName = 'DBMemo4'
        CharWrap = True
        DataField = 'CADENAORIGINAL'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 13494
        mmLeft = 0
        mmTop = 77001
        mmWidth = 202671
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'Cadena Original'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        WordWrap = True
        mmHeight = 4234
        mmLeft = 0
        mmTop = 73032
        mmWidth = 37835
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel33: TppLabel
        UserName = 'Label202'
        Caption = 'Este documento es una representaci'#243'n impresa de un CFDI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 134144
        mmTop = 31485
        mmWidth = 72496
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Fecha y hora de Certificaci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 265
        mmTop = 38365
        mmWidth = 50536
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        AutoSize = True
        DataField = 'FECHATIMBRADO'
        DataPipeline = ppDBPipelineCFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 3968
        mmLeft = 50536
        mmTop = 38365
        mmWidth = 37835
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'IMP.TRASLADADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 140759
        mmTop = 15080
        mmWidth = 30163
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Caption = 'IMP.RETENIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 146579
        mmTop = 20371
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        DataField = 'TOTALIMPUESTORETENIDO'
        DataPipeline = ppDBPipelineCFD
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipelineCFD'
        mmHeight = 4233
        mmLeft = 175684
        mmTop = 20373
        mmWidth = 28310
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipelineCFD: TppDBPipeline
    DataSource = DataSourceCFD
    UserName = 'DBPipelineCFD'
    Left = 360
    Top = 104
    object ppDBPipelineCFDppField1: TppField
      FieldAlias = 'VERSION'
      FieldName = 'VERSION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField2: TppField
      FieldAlias = 'SERIE'
      FieldName = 'SERIE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField3: TppField
      FieldAlias = 'FOLIO'
      FieldName = 'FOLIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField4: TppField
      FieldAlias = 'SELLO'
      FieldName = 'SELLO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField5: TppField
      FieldAlias = 'NUMEROAPROBACION'
      FieldName = 'NUMEROAPROBACION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField6: TppField
      FieldAlias = 'AGNOAPROBACION'
      FieldName = 'AGNOAPROBACION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField7: TppField
      FieldAlias = 'FORMADEPAGO'
      FieldName = 'FORMADEPAGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField8: TppField
      FieldAlias = 'NOCERTIFICADO'
      FieldName = 'NOCERTIFICADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField9: TppField
      FieldAlias = 'CONDICIONESDEPAGO'
      FieldName = 'CONDICIONESDEPAGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField10: TppField
      FieldAlias = 'SUBTOTAL'
      FieldName = 'SUBTOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField11: TppField
      FieldAlias = 'DESCUENTO'
      FieldName = 'DESCUENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField12: TppField
      FieldAlias = 'MOTIVODESCUENTO'
      FieldName = 'MOTIVODESCUENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField13: TppField
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField14: TppField
      FieldAlias = 'METODODEPAGO'
      FieldName = 'METODODEPAGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField15: TppField
      FieldAlias = 'TIPODECOMPROBANTE'
      FieldName = 'TIPODECOMPROBANTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField16: TppField
      FieldAlias = 'RFCEMISOR'
      FieldName = 'RFCEMISOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField17: TppField
      FieldAlias = 'CALLEDMEMISOR'
      FieldName = 'CALLEDMEMISOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField18: TppField
      FieldAlias = 'NUMEXTDMEMISOR'
      FieldName = 'NUMEXTDMEMISOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField19: TppField
      FieldAlias = 'NUMINTDMEMISOR'
      FieldName = 'NUMINTDMEMISOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField20: TppField
      FieldAlias = 'COLONIADMEMISOR'
      FieldName = 'COLONIADMEMISOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField21: TppField
      FieldAlias = 'LOCALIDADDMEMISOR'
      FieldName = 'LOCALIDADDMEMISOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField22: TppField
      FieldAlias = 'REFERENCIADMEMISOR'
      FieldName = 'REFERENCIADMEMISOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField23: TppField
      FieldAlias = 'MUNICIPIODMEMISOR'
      FieldName = 'MUNICIPIODMEMISOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField24: TppField
      FieldAlias = 'ESTADODMEMISOR'
      FieldName = 'ESTADODMEMISOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField25: TppField
      FieldAlias = 'PAISDMEMISOR'
      FieldName = 'PAISDMEMISOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField26: TppField
      FieldAlias = 'CODIGOPOSTALDMEMISOR'
      FieldName = 'CODIGOPOSTALDMEMISOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField27: TppField
      FieldAlias = 'CALLEDMEXPEDICION'
      FieldName = 'CALLEDMEXPEDICION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField28: TppField
      FieldAlias = 'NUMEXTDMEXPEDICION'
      FieldName = 'NUMEXTDMEXPEDICION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField29: TppField
      FieldAlias = 'NUMINTDMEXPEDICION'
      FieldName = 'NUMINTDMEXPEDICION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField30: TppField
      FieldAlias = 'COLONIADMEXPEDICION'
      FieldName = 'COLONIADMEXPEDICION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField31: TppField
      FieldAlias = 'LOCALIDADDMEXPEDICION'
      FieldName = 'LOCALIDADDMEXPEDICION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField32: TppField
      FieldAlias = 'REFERENCIADMEXPEDICION'
      FieldName = 'REFERENCIADMEXPEDICION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField33: TppField
      FieldAlias = 'MUNICIPIODMEXPEDICION'
      FieldName = 'MUNICIPIODMEXPEDICION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField34: TppField
      FieldAlias = 'ESTADODMEXPEDICION'
      FieldName = 'ESTADODMEXPEDICION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField35: TppField
      FieldAlias = 'PAISDMEXPEDICION'
      FieldName = 'PAISDMEXPEDICION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField36: TppField
      FieldAlias = 'CODIGOPOSTALDMEXPEDICION'
      FieldName = 'CODIGOPOSTALDMEXPEDICION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField37: TppField
      FieldAlias = 'RFCRECEPTOR'
      FieldName = 'RFCRECEPTOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField38: TppField
      FieldAlias = 'RAZONSOCIALRECEPTOR'
      FieldName = 'RAZONSOCIALRECEPTOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField39: TppField
      FieldAlias = 'CALLEDMRECEPTOR'
      FieldName = 'CALLEDMRECEPTOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField40: TppField
      FieldAlias = 'NUMEXTDMRECEPTOR'
      FieldName = 'NUMEXTDMRECEPTOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField41: TppField
      FieldAlias = 'NUMINTDMRECEPTOR'
      FieldName = 'NUMINTDMRECEPTOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField42: TppField
      FieldAlias = 'COLONIADMRECEPTOR'
      FieldName = 'COLONIADMRECEPTOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField43: TppField
      FieldAlias = 'LOCALIDADDMRECEPTOR'
      FieldName = 'LOCALIDADDMRECEPTOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField44: TppField
      FieldAlias = 'REFERENCIADMRECEPTOR'
      FieldName = 'REFERENCIADMRECEPTOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField45: TppField
      FieldAlias = 'MUNICIPIODMRECEPTOR'
      FieldName = 'MUNICIPIODMRECEPTOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField46: TppField
      FieldAlias = 'ESTADODMRECEPTOR'
      FieldName = 'ESTADODMRECEPTOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField47: TppField
      FieldAlias = 'PAISDMRECEPTOR'
      FieldName = 'PAISDMRECEPTOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField48: TppField
      FieldAlias = 'CODIGOPOSTALDMRECEPTOR'
      FieldName = 'CODIGOPOSTALDMRECEPTOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField49: TppField
      FieldAlias = 'TOTALIMPUESTORETENIDO'
      FieldName = 'TOTALIMPUESTORETENIDO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField50: TppField
      FieldAlias = 'TOTALIMPUESTOTRASLADADO'
      FieldName = 'TOTALIMPUESTOTRASLADADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField51: TppField
      FieldAlias = 'RAZONSOCIALEMISOR'
      FieldName = 'RAZONSOCIALEMISOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField52: TppField
      FieldAlias = 'FECHA'
      FieldName = 'FECHA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField53: TppField
      FieldAlias = 'CERTIFICADO'
      FieldName = 'CERTIFICADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField54: TppField
      FieldAlias = 'CADENAORIGINAL'
      FieldName = 'CADENAORIGINAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField55: TppField
      FieldAlias = 'CANTIDADCONLETRA'
      FieldName = 'CANTIDADCONLETRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField56: TppField
      FieldAlias = 'ESTADODELCOMPROBANTE'
      FieldName = 'ESTADODELCOMPROBANTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField57: TppField
      FieldAlias = 'UUID'
      FieldName = 'UUID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField58: TppField
      FieldAlias = 'NOCERTIFICADOSAT'
      FieldName = 'NOCERTIFICADOSAT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField59: TppField
      FieldAlias = 'SELLOSAT'
      FieldName = 'SELLOSAT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField60: TppField
      FieldAlias = 'CBB'
      FieldName = 'CBB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField61: TppField
      FieldAlias = 'ACUSE'
      FieldName = 'ACUSE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField62: TppField
      FieldAlias = 'RECEPTOR_DIRECCION'
      FieldName = 'RECEPTOR_DIRECCION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField63: TppField
      FieldAlias = 'RECEPTOR_CIUDADEDOPAIS'
      FieldName = 'RECEPTOR_CIUDADEDOPAIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField64: TppField
      FieldAlias = 'FECHATIMBRADO'
      FieldName = 'FECHATIMBRADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField65: TppField
      FieldAlias = 'NUMCTAPAGO'
      FieldName = 'NUMCTAPAGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField66: TppField
      FieldAlias = 'REGIMENFISCAL'
      FieldName = 'REGIMENFISCAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField67: TppField
      FieldAlias = 'CANCELADO'
      FieldName = 'CANCELADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField68: TppField
      FieldAlias = 'BANCO'
      FieldName = 'BANCO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField69: TppField
      FieldAlias = 'TIMBREVERSION'
      FieldName = 'TIMBREVERSION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField70: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField71: TppField
      FieldAlias = 'MONEDA'
      FieldName = 'MONEDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineCFDppField72: TppField
      FieldAlias = 'TIPOCAMBIO'
      FieldName = 'TIPOCAMBIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipelineConceptos: TppDBPipeline
    DataSource = DataSourceConceptos
    UserName = 'DBPipelineConceptos'
    Left = 360
    Top = 152
    object ppDBPipelineConceptosppField1: TppField
      FieldAlias = 'CFDLINK'
      FieldName = 'CFDLINK'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineConceptosppField2: TppField
      FieldAlias = 'UNIDAD'
      FieldName = 'UNIDAD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineConceptosppField3: TppField
      FieldAlias = 'CLAVE'
      FieldName = 'CLAVE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineConceptosppField4: TppField
      FieldAlias = 'VALORUNITARIO'
      FieldName = 'VALORUNITARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineConceptosppField5: TppField
      FieldAlias = 'IMPORTE'
      FieldName = 'IMPORTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineConceptosppField6: TppField
      FieldAlias = 'DESCRIPCION'
      FieldName = 'DESCRIPCION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineConceptosppField7: TppField
      FieldAlias = 'DESCRIPCION2'
      FieldName = 'DESCRIPCION2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineConceptosppField8: TppField
      FieldAlias = 'ADUANANUMERO'
      FieldName = 'ADUANANUMERO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineConceptosppField9: TppField
      FieldAlias = 'ADUANANOMBRE'
      FieldName = 'ADUANANOMBRE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineConceptosppField10: TppField
      FieldAlias = 'ADUANAFECHA'
      FieldName = 'ADUANAFECHA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineConceptosppField11: TppField
      FieldAlias = 'DESCRIPCIONV'
      FieldName = 'DESCRIPCIONV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineConceptosppField12: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineConceptosppField13: TppField
      FieldAlias = 'CANTIDAD'
      FieldName = 'CANTIDAD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipelineTraslados: TppDBPipeline
    DataSource = DataSourceTraslados
    UserName = 'DBPipelineTraslados'
    Left = 360
    Top = 200
    object ppDBPipelineTrasladosppField1: TppField
      FieldAlias = 'CFDLINK'
      FieldName = 'CFDLINK'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineTrasladosppField2: TppField
      FieldAlias = 'IMPUESTO'
      FieldName = 'IMPUESTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineTrasladosppField3: TppField
      FieldAlias = 'IMPORTE'
      FieldName = 'IMPORTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineTrasladosppField4: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineTrasladosppField5: TppField
      FieldAlias = 'TASA'
      FieldName = 'TASA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipelineRetenciones: TppDBPipeline
    DataSource = DataSourceRetenciones
    UserName = 'DBPipelineRetenciones'
    Left = 360
    Top = 248
    object ppDBPipelineRetencionesppField1: TppField
      FieldAlias = 'CFDLINK'
      FieldName = 'CFDLINK'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineRetencionesppField2: TppField
      FieldAlias = 'IMPUESTO'
      FieldName = 'IMPUESTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineRetencionesppField3: TppField
      FieldAlias = 'IMPORTE'
      FieldName = 'IMPORTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineRetencionesppField4: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineRetencionesppField5: TppField
      FieldAlias = 'TASA'
      FieldName = 'TASA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
  end
  object DataSourceCFD: TDataSource
    DataSet = ClientDataSetCFD
    Left = 224
    Top = 104
  end
  object DataSourceConceptos: TDataSource
    DataSet = ClientDataSetCFDConceptos
    Left = 224
    Top = 152
  end
  object DataSourceTraslados: TDataSource
    DataSet = ClientDataSetTraslados
    Left = 224
    Top = 200
  end
  object DataSourceRetenciones: TDataSource
    DataSet = ClientDataSetCFDRetenciones
    Left = 224
    Top = 248
  end
  object XSLTCFD2: TXMLDocument
    XML.Strings = (
      '<?xml version="1.0" encoding="UTF-8"?>'
      
        '<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/' +
        'XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns' +
        ':fn="http://www.w3.org/2005/xpath-functions" xmlns:cfd="http://w' +
        'ww.sat.gob.mx/cfd/2" xmlns:ecc="http://www.sat.gob.mx/ecc" xmlns' +
        ':donat="http://www.sat.gob.mx/donat" xmlns:psgecfd="http://www.s' +
        'at.gob.mx/psgecfd" xmlns:divisas="http://www.sat.gob.mx/divisas"' +
        ' xmlns:detallista="http://www.sat.gob.mx/detallista" xmlns:ecb="' +
        'http://www.sat.gob.mx/ecb" xmlns:implocal="http://www.sat.gob.mx' +
        '/implocal" xmlns:terceros="http://www.sat.gob.mx/terceros" xmlns' +
        ':iedu="http://www.sat.gob.mx/iedu" xmlns:psgcfdsp="http://www.sa' +
        't.gob.mx/psgcfdsp">'
      
        #9'<!-- Con el siguiente m'#233'todo se establece que la salida deber'#225' ' +
        'ser en texto -->'
      
        #9'<!-- <xsl:output method="text" version="1.0" encoding="UTF-8" i' +
        'ndent="no"/> -->'
      
        #9'<xsl:output method="text" version="1.0" encoding="UTF-8" indent' +
        '="no"/>'
      #9'<!--'
      
        #9#9'En esta secci'#243'n se define la inclusi'#243'n de las plantillas de ut' +
        'iler'#237'a'
      #9'-->'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/2/c' +
        'adenaoriginal_2_0/utilerias.xslt"/>'
      #9'<!-- '
      
        #9#9'En esta secci'#243'n se define la inclusi'#243'n de las dem'#225's plantillas' +
        ' de transformaci'#243'n para '
      
        #9#9'la generaci'#243'n de las cadenas originales de los complementos fi' +
        'scales '
      #9'-->'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ecc' +
        '/ecc.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/psg' +
        'ecfd/psgecfd.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/don' +
        'at/donat.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/div' +
        'isas/divisas.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ecb' +
        '/ecb.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/det' +
        'allista/detallista.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/imp' +
        'local/implocal.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ter' +
        'ceros/terceros.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ied' +
        'u/iedu.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/psg' +
        'cfdsp/psgcfdsp.xslt"/>'
      
        #9'<!-- Aqu'#237' iniciamos el procesamiento de la cadena original con ' +
        'su | inicial y el terminador || -->'
      
        #9'<xsl:template match="/">|<xsl:apply-templates select="/cfd:Comp' +
        'robante"/>||</xsl:template>'
      
        #9'<!--  Aqu'#237' iniciamos el procesamiento de los datos incluidos en' +
        ' el comprobante -->'
      #9'<xsl:template match="cfd:Comprobante">'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos de comprobante ' +
        '-->'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@version"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@serie"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@folio"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@fecha"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@noAprobacion"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@anoAprobacion"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@tipoDeComprobante"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@formaDePago"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@condicionesDePago"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@subTotal"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@descuento"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@total"/>'
      #9#9'</xsl:call-template>'
      #9#9'<!--'
      #9#9#9'Llamadas para procesar al los sub nodos del comprobante'
      #9#9'-->'
      #9#9'<xsl:apply-templates select="./cfd:Emisor"/>'
      #9#9'<xsl:apply-templates select="./cfd:Receptor"/>'
      #9#9'<xsl:apply-templates select="./cfd:Conceptos"/>'
      #9#9'<xsl:apply-templates select="./cfd:Impuestos"/>'
      #9#9'<xsl:apply-templates select="./cfd:Complemento"/>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Emisor -->'
      #9'<xsl:template match="cfd:Emisor">'
      #9#9'<!-- Iniciamos el tratamiento de los atributos del Emisor -->'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@rfc"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@nombre"/>'
      #9#9'</xsl:call-template>'
      #9#9'<!--'
      #9#9#9'Llamadas para procesar al los sub nodos del comprobante'
      #9#9'-->'
      #9#9'<xsl:apply-templates select="./cfd:DomicilioFiscal"/>'
      #9#9'<xsl:if test="./cfd:ExpedidoEn">'
      #9#9#9'<xsl:call-template name="Domicilio">'
      #9#9#9#9'<xsl:with-param name="Nodo" select="./cfd:ExpedidoEn"/>'
      #9#9#9'</xsl:call-template>'
      #9#9'</xsl:if>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Receptor -->'
      #9'<xsl:template match="cfd:Receptor">'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos del Receptor --' +
        '>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@rfc"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@nombre"/>'
      #9#9'</xsl:call-template>'
      #9#9'<!--'
      #9#9#9'Llamadas para procesar al los sub nodos del Receptor'
      #9#9'-->'
      #9#9'<xsl:call-template name="Domicilio">'
      #9#9#9'<xsl:with-param name="Nodo" select="./cfd:Domicilio"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Conceptos -->'
      #9'<xsl:template match="cfd:Conceptos">'
      
        #9#9'<!-- Llamada para procesar los distintos nodos tipo Concepto -' +
        '->'
      #9#9'<xsl:for-each select="./cfd:Concepto">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Impuestos -->'
      #9'<xsl:template match="cfd:Impuestos">'
      #9#9'<xsl:for-each select="./cfd:Retenciones/cfd:Retencion">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9#9'<xsl:call-template name="Opcional">'
      
        #9#9#9'<xsl:with-param name="valor" select="./@totalImpuestosRetenid' +
        'os"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:for-each select="./cfd:Traslados/cfd:Traslado">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9#9'<xsl:call-template name="Opcional">'
      
        #9#9#9'<xsl:with-param name="valor" select="./@totalImpuestosTraslad' +
        'ados"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Retencion -->'
      #9'<xsl:template match="cfd:Retencion">'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@impuesto"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@importe"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Traslado -->'
      #9'<xsl:template match="cfd:Traslado">'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@impuesto"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@tasa"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@importe"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Complemento -->'
      #9'<xsl:template match="cfd:Complemento">'
      #9#9'<xsl:for-each select="./*">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9'</xsl:template>'
      #9'<!--'
      #9#9'Manejador de nodos tipo Concepto'
      #9'-->'
      #9'<xsl:template match="cfd:Concepto">'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos del Concepto --' +
        '>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@cantidad"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@unidad"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@noIdentificacion"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@descripcion"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@valorUnitario"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@importe"/>'
      #9#9'</xsl:call-template>'
      #9#9'<!--'
      
        #9#9#9'Manejo de los distintos sub nodos de informaci'#243'n aduanera de ' +
        'forma indistinta '
      #9#9#9'a su grado de dependencia'
      #9#9'-->'
      #9#9'<xsl:for-each select=".//cfd:InformacionAduanera">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      
        #9#9'<!-- Llamada al manejador de nodos de Cuenta Predial en caso d' +
        'e existir -->'
      #9#9'<xsl:if test="./cfd:CuentaPredial">'
      #9#9#9'<xsl:apply-templates select="./cfd:CuentaPredial"/>'
      #9#9'</xsl:if>'
      
        #9#9'<!-- Llamada al manejador de nodos de ComplementoConcepto en c' +
        'aso de existir -->'
      #9#9'<xsl:if test="./cfd:ComplementoConcepto">'
      #9#9#9'<xsl:apply-templates select="./cfd:ComplementoConcepto"/>'
      #9#9'</xsl:if>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Informaci'#243'n Aduanera -->'
      #9'<xsl:template match="cfd:InformacionAduanera">'
      #9#9'<!-- Manejo de los atributos de la informaci'#243'n aduanera -->'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@numero"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@fecha"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@aduana"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Informaci'#243'n CuentaPredial -->'
      #9'<xsl:template match="cfd:CuentaPredial">'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@numero"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo ComplementoConcepto -->'
      #9'<xsl:template match="cfd:ComplementoConcepto">'
      #9#9'<xsl:for-each select="./*">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo domicilio fiscal -->'
      #9'<xsl:template match="cfd:DomicilioFiscal">'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos del Domicilio F' +
        'iscal -->'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@calle"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@noExterior"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@noInterior"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@colonia"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@localidad"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@referencia"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@municipio"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@estado"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@pais"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@codigoPostal"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Domicilio -->'
      #9'<xsl:template name="Domicilio">'
      #9#9'<xsl:param name="Nodo"/>'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos del Domicilio  ' +
        '-->'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@calle"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@noExterior"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@noInterior"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@colonia"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@localidad"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@referencia"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@municipio"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@estado"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@pais"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@codigoPostal"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      '</xsl:stylesheet>')
    Left = 488
    Top = 32
    DOMVendorDesc = 'MSXML'
  end
  object XSLTCFD22: TXMLDocument
    XML.Strings = (
      '<?xml version="1.0" encoding="UTF-8"?>'
      
        '<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/' +
        'XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns' +
        ':fn="http://www.w3.org/2005/xpath-functions" xmlns:cfd="http://w' +
        'ww.sat.gob.mx/cfd/2" xmlns:ecc="http://www.sat.gob.mx/ecc" xmlns' +
        ':psgecfd="http://www.sat.gob.mx/psgecfd" xmlns:donat="http://www' +
        '.sat.gob.mx/donat" xmlns:divisas="http://www.sat.gob.mx/divisas"' +
        ' xmlns:detallista="http://www.sat.gob.mx/detallista" xmlns:ecb="' +
        'http://www.sat.gob.mx/ecb" xmlns:implocal="http://www.sat.gob.mx' +
        '/implocal" xmlns:terceros="http://www.sat.gob.mx/terceros" xmlns' +
        ':iedu="http://www.sat.gob.mx/iedu" xmlns:ventavehiculos="http://' +
        'www.sat.gob.mx/ventavehiculos" xmlns:pfic="http://www.sat.gob.mx' +
        '/pfic" xmlns:tpe="http://www.sat.gob.mx/TuristaPasajeroExtranjer' +
        'o" xmlns:leyendasFisc="http://www.sat.gob.mx/leyendasFiscales" x' +
        'mlns:psgcfdsp="http://www.sat.gob.mx/psgcfdsp">'
      
        #9'<!-- Con el siguiente m'#233'todo se establece que la salida deber'#225' ' +
        'ser en texto -->'
      
        #9'<!-- <xsl:output method="text" version="1.0" encoding="UTF-8" i' +
        'ndent="no"/> -->'
      
        #9'<xsl:output method="text" version="1.0" encoding="UTF-8" indent' +
        '="no"/>'
      #9'<!--'
      
        #9#9'En esta secci'#243'n se define la inclusi'#243'n de las plantillas de ut' +
        'iler'#237'a'
      #9'-->'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/2/c' +
        'adenaoriginal_2_0/utilerias.xslt"/>'
      #9'<!-- '
      
        #9#9'En esta secci'#243'n se define la inclusi'#243'n de las dem'#225's plantillas' +
        ' de transformaci'#243'n para '
      
        #9#9'la generaci'#243'n de las cadenas originales de los complementos fi' +
        'scales '
      #9'-->'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ecc' +
        '/ecc.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/psg' +
        'ecfd/psgecfd.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/don' +
        'at/donat11.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/div' +
        'isas/divisas.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ecb' +
        '/ecb.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/det' +
        'allista/detallista.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/imp' +
        'local/implocal.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ter' +
        'ceros/terceros11.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ied' +
        'u/iedu.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ven' +
        'tavehiculos/ventavehiculos.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/pfi' +
        'c/pfic.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/Tur' +
        'istaPasajeroExtranjero/TuristaPasajeroExtranjero.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ley' +
        'endasFiscales/leyendasFisc.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/psg' +
        'cfdsp/psgcfdsp.xslt"/>'
      
        #9'<!-- Aqu'#237' iniciamos el procesamiento de la cadena original con ' +
        'su | inicial y el terminador || -->'
      
        #9'<xsl:template match="/">|<xsl:apply-templates select="/cfd:Comp' +
        'robante"/>||</xsl:template>'
      
        #9'<!--  Aqu'#237' iniciamos el procesamiento de los datos incluidos en' +
        ' el comprobante -->'
      #9'<xsl:template match="cfd:Comprobante">'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos de comprobante ' +
        '-->'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@version"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@serie"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@folio"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@fecha"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@noAprobacion"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@anoAprobacion"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@tipoDeComprobante"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@formaDePago"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@condicionesDePago"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@subTotal"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@descuento"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@total"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@metodoDePago"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@LugarExpedicion"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@NumCtaPago"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@TipoCambio"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@Moneda"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@FolioFiscalOrig"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      
        #9#9#9'<xsl:with-param name="valor" select="./@SerieFolioFiscalOrig"' +
        '/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      
        #9#9#9'<xsl:with-param name="valor" select="./@FechaFolioFiscalOrig"' +
        '/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      
        #9#9#9'<xsl:with-param name="valor" select="./@MontoFolioFiscalOrig"' +
        '/>'
      #9#9'</xsl:call-template>'
      #9#9'<!--'
      #9#9#9'Llamadas para procesar al los sub nodos del comprobante'
      #9#9'-->'
      #9#9'<xsl:apply-templates select="./cfd:Emisor"/>'
      #9#9'<xsl:apply-templates select="./cfd:Receptor"/>'
      #9#9'<xsl:apply-templates select="./cfd:Conceptos"/>'
      #9#9'<xsl:apply-templates select="./cfd:Impuestos"/>'
      #9#9'<xsl:apply-templates select="./cfd:Complemento"/>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Emisor -->'
      #9'<xsl:template match="cfd:Emisor">'
      #9#9'<!-- Iniciamos el tratamiento de los atributos del Emisor -->'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@rfc"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@nombre"/>'
      #9#9'</xsl:call-template>'
      #9#9'<!--'
      #9#9#9'Llamadas para procesar al los sub nodos del comprobante'
      #9#9'-->'
      #9#9'<xsl:apply-templates select="./cfd:DomicilioFiscal"/>'
      #9#9'<xsl:if test="./cfd:ExpedidoEn">'
      #9#9#9'<xsl:call-template name="Domicilio">'
      #9#9#9#9'<xsl:with-param name="Nodo" select="./cfd:ExpedidoEn"/>'
      #9#9#9'</xsl:call-template>'
      #9#9'</xsl:if>'
      #9#9'<xsl:for-each select="./cfd:RegimenFiscal">'
      #9#9#9'<xsl:call-template name="Requerido">'
      #9#9#9#9'<xsl:with-param name="valor" select="./@Regimen"/>'
      #9#9#9'</xsl:call-template>'
      #9#9'</xsl:for-each>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Receptor -->'
      #9'<xsl:template match="cfd:Receptor">'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos del Receptor --' +
        '>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@rfc"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@nombre"/>'
      #9#9'</xsl:call-template>'
      #9#9'<!--'
      #9#9#9'Llamadas para procesar al los sub nodos del Receptor'
      #9#9'-->'
      #9#9'<xsl:call-template name="Domicilio">'
      #9#9#9'<xsl:with-param name="Nodo" select="./cfd:Domicilio"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Conceptos -->'
      #9'<xsl:template match="cfd:Conceptos">'
      
        #9#9'<!-- Llamada para procesar los distintos nodos tipo Concepto -' +
        '->'
      #9#9'<xsl:for-each select="./cfd:Concepto">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Impuestos -->'
      #9'<xsl:template match="cfd:Impuestos">'
      #9#9'<xsl:for-each select="./cfd:Retenciones/cfd:Retencion">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9#9'<xsl:call-template name="Opcional">'
      
        #9#9#9'<xsl:with-param name="valor" select="./@totalImpuestosRetenid' +
        'os"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:for-each select="./cfd:Traslados/cfd:Traslado">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9#9'<xsl:call-template name="Opcional">'
      
        #9#9#9'<xsl:with-param name="valor" select="./@totalImpuestosTraslad' +
        'ados"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Retencion -->'
      #9'<xsl:template match="cfd:Retencion">'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@impuesto"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@importe"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Traslado -->'
      #9'<xsl:template match="cfd:Traslado">'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@impuesto"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@tasa"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@importe"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Complemento -->'
      #9'<xsl:template match="cfd:Complemento">'
      #9#9'<xsl:for-each select="./*">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9'</xsl:template>'
      #9'<!--'
      #9#9'Manejador de nodos tipo Concepto'
      #9'-->'
      #9'<xsl:template match="cfd:Concepto">'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos del Concepto --' +
        '>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@cantidad"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@unidad"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@noIdentificacion"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@descripcion"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@valorUnitario"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@importe"/>'
      #9#9'</xsl:call-template>'
      #9#9'<!--'
      
        #9#9#9'Manejo de los distintos sub nodos de informaci'#243'n aduanera de ' +
        'forma indistinta '
      #9#9#9'a su grado de dependencia'
      #9#9'-->'
      #9#9'<xsl:for-each select=".//cfd:InformacionAduanera">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      
        #9#9'<!-- Llamada al manejador de nodos de Cuenta Predial en caso d' +
        'e existir -->'
      #9#9'<xsl:if test="./cfd:CuentaPredial">'
      #9#9#9'<xsl:apply-templates select="./cfd:CuentaPredial"/>'
      #9#9'</xsl:if>'
      
        #9#9'<!-- Llamada al manejador de nodos de ComplementoConcepto en c' +
        'aso de existir -->'
      #9#9'<xsl:if test="./cfd:ComplementoConcepto">'
      #9#9#9'<xsl:apply-templates select="./cfd:ComplementoConcepto"/>'
      #9#9'</xsl:if>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Informaci'#243'n Aduanera -->'
      #9'<xsl:template match="cfd:InformacionAduanera">'
      #9#9'<!-- Manejo de los atributos de la informaci'#243'n aduanera -->'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@numero"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@fecha"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@aduana"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Informaci'#243'n CuentaPredial -->'
      #9'<xsl:template match="cfd:CuentaPredial">'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@numero"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo ComplementoConcepto -->'
      #9'<xsl:template match="cfd:ComplementoConcepto">'
      #9#9'<xsl:for-each select="./*">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo domicilio fiscal -->'
      #9'<xsl:template match="cfd:DomicilioFiscal">'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos del Domicilio F' +
        'iscal -->'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@calle"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@noExterior"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@noInterior"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@colonia"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@localidad"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@referencia"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@municipio"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@estado"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@pais"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@codigoPostal"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Domicilio -->'
      #9'<xsl:template name="Domicilio">'
      #9#9'<xsl:param name="Nodo"/>'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos del Domicilio  ' +
        '-->'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@calle"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@noExterior"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@noInterior"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@colonia"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@localidad"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@referencia"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@municipio"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@estado"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@pais"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@codigoPostal"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      '</xsl:stylesheet>')
    Left = 488
    Top = 80
    DOMVendorDesc = 'MSXML'
  end
  object XSLTCFDI3: TXMLDocument
    XML.Strings = (
      '<?xml version="1.0" encoding="UTF-8"?>'
      
        '<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/' +
        'XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns' +
        ':fn="http://www.w3.org/2005/xpath-functions" xmlns:cfdi="http://' +
        'www.sat.gob.mx/cfd/3" xmlns:ecc="http://www.sat.gob.mx/ecc" xmln' +
        's:donat="http://www.sat.gob.mx/donat" xmlns:psgecfd="http://www.' +
        'sat.gob.mx/psgecfd" xmlns:divisas="http://www.sat.gob.mx/divisas' +
        '" xmlns:detallista="http://www.sat.gob.mx/detallista" xmlns:ecb=' +
        '"http://www.sat.gob.mx/ecb" xmlns:implocal="http://www.sat.gob.m' +
        'x/implocal" xmlns:terceros="http://www.sat.gob.mx/terceros" xmln' +
        's:iedu="http://www.sat.gob.mx/iedu">'
      
        #9'<!-- Con el siguiente m'#233'todo se establece que la salida deber'#225' ' +
        'ser en texto -->'
      
        #9'<!-- <xsl:output method="text" version="1.0" encoding="UTF-8" i' +
        'ndent="no"/> -->'
      
        #9'<xsl:output method="text" version="1.0" encoding="UTF-8" indent' +
        '="no"/>'
      #9'<!--'
      
        #9#9'En esta secci'#243'n se define la inclusi'#243'n de las plantillas de ut' +
        'iler'#237'as para colapsar espacios'
      #9'-->'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/2/c' +
        'adenaoriginal_2_0/utilerias.xslt"/>'
      #9'<!-- '
      
        #9#9'En esta secci'#243'n se define la inclusi'#243'n de las dem'#225's plantillas' +
        ' de transformaci'#243'n para '
      
        #9#9'la generaci'#243'n de las cadenas originales de los complementos fi' +
        'scales '
      #9'-->'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ecc' +
        '/ecc.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/don' +
        'at/donat.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/div' +
        'isas/divisas.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ecb' +
        '/ecb.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/det' +
        'allista/detallista.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/imp' +
        'local/implocal.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ter' +
        'ceros/terceros.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ied' +
        'u/iedu.xslt"/>'
      
        #9'<!-- Aqu'#237' iniciamos el procesamiento de la cadena original con ' +
        'su | inicial y el terminador || -->'
      
        #9'<xsl:template match="/">|<xsl:apply-templates select="/cfdi:Com' +
        'probante"/>||</xsl:template>'
      
        #9'<!--  Aqu'#237' iniciamos el procesamiento de los datos incluidos en' +
        ' el comprobante -->'
      #9'<xsl:template match="cfdi:Comprobante">'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos de comprobante ' +
        '-->'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@version"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@fecha"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@tipoDeComprobante"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@formaDePago"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@condicionesDePago"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@subTotal"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@descuento"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@TipoCambio"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@Moneda"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@total"/>'
      #9#9'</xsl:call-template>'
      #9#9'<!--'
      #9#9#9'Llamadas para procesar al los sub nodos del comprobante'
      #9#9'-->'
      #9#9'<xsl:apply-templates select="./cfdi:Emisor"/>'
      #9#9'<xsl:apply-templates select="./cfdi:Receptor"/>'
      #9#9'<xsl:apply-templates select="./cfdi:Conceptos"/>'
      #9#9'<xsl:apply-templates select="./cfdi:Impuestos"/>'
      #9#9'<xsl:apply-templates select="./cfdi:Complemento"/>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Emisor -->'
      #9'<xsl:template match="cfdi:Emisor">'
      #9#9'<!-- Iniciamos el tratamiento de los atributos del Emisor -->'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@rfc"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@nombre"/>'
      #9#9'</xsl:call-template>'
      #9#9'<!--'
      #9#9#9'Llamadas para procesar al los sub nodos del comprobante'
      #9#9'-->'
      #9#9'<xsl:apply-templates select="./cfdi:DomicilioFiscal"/>'
      #9#9'<xsl:if test="./cfdi:ExpedidoEn">'
      #9#9#9'<xsl:call-template name="Domicilio">'
      #9#9#9#9'<xsl:with-param name="Nodo" select="./cfdi:ExpedidoEn"/>'
      #9#9#9'</xsl:call-template>'
      #9#9'</xsl:if>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Receptor -->'
      #9'<xsl:template match="cfdi:Receptor">'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos del Receptor --' +
        '>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@rfc"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@nombre"/>'
      #9#9'</xsl:call-template>'
      #9#9'<!--'
      #9#9#9'Llamadas para procesar al los sub nodos del Receptor'
      #9#9'-->'
      #9#9'<xsl:if test="./cfdi:Domicilio">'
      #9#9#9'<xsl:call-template name="Domicilio">'
      #9#9#9#9'<xsl:with-param name="Nodo" select="./cfdi:Domicilio"/>'
      #9#9#9'</xsl:call-template>'
      #9#9'</xsl:if>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Conceptos -->'
      #9'<xsl:template match="cfdi:Conceptos">'
      
        #9#9'<!-- Llamada para procesar los distintos nodos tipo Concepto -' +
        '->'
      #9#9'<xsl:for-each select="./cfdi:Concepto">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Impuestos -->'
      #9'<xsl:template match="cfdi:Impuestos">'
      #9#9'<xsl:for-each select="./cfdi:Retenciones/cfdi:Retencion">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9#9'<xsl:call-template name="Opcional">'
      
        #9#9#9'<xsl:with-param name="valor" select="./@totalImpuestosRetenid' +
        'os"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:for-each select="./cfdi:Traslados/cfdi:Traslado">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9#9'<xsl:call-template name="Opcional">'
      
        #9#9#9'<xsl:with-param name="valor" select="./@totalImpuestosTraslad' +
        'ados"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Retencion -->'
      #9'<xsl:template match="cfdi:Retencion">'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@impuesto"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@importe"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Traslado -->'
      #9'<xsl:template match="cfdi:Traslado">'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@impuesto"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@tasa"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@importe"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Complemento -->'
      #9'<xsl:template match="cfdi:Complemento">'
      #9#9'<xsl:for-each select="./*">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9'</xsl:template>'
      #9'<!--'
      #9#9'Manejador de nodos tipo Concepto'
      #9'-->'
      #9'<xsl:template match="cfdi:Concepto">'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos del Concepto --' +
        '>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@cantidad"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@unidad"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@noIdentificacion"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@descripcion"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@valorUnitario"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@importe"/>'
      #9#9'</xsl:call-template>'
      #9#9'<!--'
      
        #9#9#9'Manejo de los distintos sub nodos de informaci'#243'n aduanera de ' +
        'forma indistinta '
      #9#9#9'a su grado de dependencia'
      #9#9'-->'
      #9#9'<xsl:for-each select=".//cfdi:InformacionAduanera">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      
        #9#9'<!-- Llamada al manejador de nodos de Cuenta Predial en caso d' +
        'e existir -->'
      #9#9'<xsl:if test="./cfdi:CuentaPredial">'
      #9#9#9'<xsl:apply-templates select="./cfdi:CuentaPredial"/>'
      #9#9'</xsl:if>'
      
        #9#9'<!-- Llamada al manejador de nodos de ComplementoConcepto en c' +
        'aso de existir -->'
      #9#9'<xsl:if test="./cfdi:ComplementoConcepto">'
      #9#9#9'<xsl:apply-templates select="./cfdi:ComplementoConcepto"/>'
      #9#9'</xsl:if>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Informaci'#243'n Aduanera -->'
      #9'<xsl:template match="cfdi:InformacionAduanera">'
      #9#9'<!-- Manejo de los atributos de la informaci'#243'n aduanera -->'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@numero"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@fecha"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@aduana"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Informaci'#243'n CuentaPredial -->'
      #9'<xsl:template match="cfdi:CuentaPredial">'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@numero"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo ComplementoConcepto -->'
      #9'<xsl:template match="cfdi:ComplementoConcepto">'
      #9#9'<xsl:for-each select="./*">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo domicilio fiscal -->'
      #9'<xsl:template match="cfdi:DomicilioFiscal">'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos del Domicilio F' +
        'iscal -->'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@calle"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@noExterior"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@noInterior"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@colonia"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@localidad"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@referencia"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@municipio"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@estado"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@pais"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@codigoPostal"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Domicilio -->'
      #9'<xsl:template name="Domicilio">'
      #9#9'<xsl:param name="Nodo"/>'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos del Domicilio  ' +
        '-->'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@calle"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@noExterior"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@noInterior"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@colonia"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@localidad"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@referencia"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@municipio"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@estado"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@pais"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@codigoPostal"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      '</xsl:stylesheet>')
    Left = 488
    Top = 132
    DOMVendorDesc = 'MSXML'
  end
  object XSLTCFDI32: TXMLDocument
    XML.Strings = (
      '<?xml version="1.0" encoding="UTF-8"?>'
      
        '<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/' +
        'XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns' +
        ':fn="http://www.w3.org/2005/xpath-functions" xmlns:cfdi="http://' +
        'www.sat.gob.mx/cfd/3" xmlns:ecc="http://www.sat.gob.mx/ecc" xmln' +
        's:psgecfd="http://www.sat.gob.mx/psgecfd" xmlns:donat="http://ww' +
        'w.sat.gob.mx/donat" xmlns:divisas="http://www.sat.gob.mx/divisas' +
        '" xmlns:detallista="http://www.sat.gob.mx/detallista" xmlns:ecb=' +
        '"http://www.sat.gob.mx/ecb" xmlns:implocal="http://www.sat.gob.m' +
        'x/implocal" xmlns:terceros="http://www.sat.gob.mx/terceros" xmln' +
        's:iedu="http://www.sat.gob.mx/iedu" xmlns:ventavehiculos="http:/' +
        '/www.sat.gob.mx/ventavehiculos" xmlns:pfic="http://www.sat.gob.m' +
        'x/pfic" xmlns:tpe="http://www.sat.gob.mx/TuristaPasajeroExtranje' +
        'ro" xmlns:leyendasFisc="http://www.sat.gob.mx/leyendasFiscales">'
      
        #9'<!-- Con el siguiente m'#233'todo se establece que la salida deber'#225' ' +
        'ser en texto -->'
      
        #9'<!-- <xsl:output method="text" version="1.0" encoding="UTF-8" i' +
        'ndent="no"/> -->'
      
        #9'<xsl:output method="text" version="1.0" encoding="UTF-8" indent' +
        '="no"/>'
      #9'<!--'
      
        #9#9'En esta secci'#243'n se define la inclusi'#243'n de las plantillas de ut' +
        'iler'#237'as para colapsar espacios'
      #9'-->'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/2/c' +
        'adenaoriginal_2_0/utilerias.xslt"/>'
      #9'<!-- '
      
        #9#9'En esta secci'#243'n se define la inclusi'#243'n de las dem'#225's plantillas' +
        ' de transformaci'#243'n para '
      
        #9#9'la generaci'#243'n de las cadenas originales de los complementos fi' +
        'scales '
      #9'-->'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ecc' +
        '/ecc.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/psg' +
        'ecfd/psgecfd.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/don' +
        'at/donat11.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/div' +
        'isas/divisas.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ecb' +
        '/ecb.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/det' +
        'allista/detallista.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/imp' +
        'local/implocal.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ter' +
        'ceros/terceros11.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ied' +
        'u/iedu.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ven' +
        'tavehiculos/ventavehiculos.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/pfi' +
        'c/pfic.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/Tur' +
        'istaPasajeroExtranjero/TuristaPasajeroExtranjero.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ley' +
        'endasFiscales/leyendasFisc.xslt"/>'
      
        #9'<!-- Aqu'#237' iniciamos el procesamiento de la cadena original con ' +
        'su | inicial y el terminador || -->'
      
        #9'<xsl:template match="/">|<xsl:apply-templates select="/cfdi:Com' +
        'probante"/>||</xsl:template>'
      
        #9'<!--  Aqu'#237' iniciamos el procesamiento de los datos incluidos en' +
        ' el comprobante -->'
      #9'<xsl:template match="cfdi:Comprobante">'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos de comprobante ' +
        '-->'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@version"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@fecha"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@tipoDeComprobante"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@formaDePago"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@condicionesDePago"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@subTotal"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@descuento"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@TipoCambio"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@Moneda"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@total"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@metodoDePago"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@LugarExpedicion"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@NumCtaPago"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@FolioFiscalOrig"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      
        #9#9#9'<xsl:with-param name="valor" select="./@SerieFolioFiscalOrig"' +
        '/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      
        #9#9#9'<xsl:with-param name="valor" select="./@FechaFolioFiscalOrig"' +
        '/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      
        #9#9#9'<xsl:with-param name="valor" select="./@MontoFolioFiscalOrig"' +
        '/>'
      #9#9'</xsl:call-template>'
      #9#9'<!--'
      #9#9#9'Llamadas para procesar al los sub nodos del comprobante'
      #9#9'-->'
      #9#9'<xsl:apply-templates select="./cfdi:Emisor"/>'
      #9#9'<xsl:apply-templates select="./cfdi:Receptor"/>'
      #9#9'<xsl:apply-templates select="./cfdi:Conceptos"/>'
      #9#9'<xsl:apply-templates select="./cfdi:Impuestos"/>'
      #9#9'<xsl:apply-templates select="./cfdi:Complemento"/>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Emisor -->'
      #9'<xsl:template match="cfdi:Emisor">'
      #9#9'<!-- Iniciamos el tratamiento de los atributos del Emisor -->'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@rfc"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@nombre"/>'
      #9#9'</xsl:call-template>'
      #9#9'<!--'
      #9#9#9'Llamadas para procesar al los sub nodos del comprobante'
      #9#9'-->'
      #9#9'<xsl:apply-templates select="./cfdi:DomicilioFiscal"/>'
      #9#9'<xsl:if test="./cfdi:ExpedidoEn">'
      #9#9#9'<xsl:call-template name="Domicilio">'
      #9#9#9#9'<xsl:with-param name="Nodo" select="./cfdi:ExpedidoEn"/>'
      #9#9#9'</xsl:call-template>'
      #9#9'</xsl:if>'
      #9#9'<xsl:for-each select="./cfdi:RegimenFiscal">'
      #9#9#9'<xsl:call-template name="Requerido">'
      #9#9#9#9'<xsl:with-param name="valor" select="./@Regimen"/>'
      #9#9#9'</xsl:call-template>'
      #9#9'</xsl:for-each>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Receptor -->'
      #9'<xsl:template match="cfdi:Receptor">'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos del Receptor --' +
        '>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@rfc"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@nombre"/>'
      #9#9'</xsl:call-template>'
      #9#9'<!--'
      #9#9#9'Llamadas para procesar al los sub nodos del Receptor'
      #9#9'-->'
      #9#9'<xsl:if test="./cfdi:Domicilio">'
      #9#9#9'<xsl:call-template name="Domicilio">'
      #9#9#9#9'<xsl:with-param name="Nodo" select="./cfdi:Domicilio"/>'
      #9#9#9'</xsl:call-template>'
      #9#9'</xsl:if>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Conceptos -->'
      #9'<xsl:template match="cfdi:Conceptos">'
      
        #9#9'<!-- Llamada para procesar los distintos nodos tipo Concepto -' +
        '->'
      #9#9'<xsl:for-each select="./cfdi:Concepto">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Impuestos -->'
      #9'<xsl:template match="cfdi:Impuestos">'
      #9#9'<xsl:for-each select="./cfdi:Retenciones/cfdi:Retencion">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9#9'<xsl:call-template name="Opcional">'
      
        #9#9#9'<xsl:with-param name="valor" select="./@totalImpuestosRetenid' +
        'os"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:for-each select="./cfdi:Traslados/cfdi:Traslado">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9#9'<xsl:call-template name="Opcional">'
      
        #9#9#9'<xsl:with-param name="valor" select="./@totalImpuestosTraslad' +
        'ados"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Retencion -->'
      #9'<xsl:template match="cfdi:Retencion">'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@impuesto"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@importe"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Traslado -->'
      #9'<xsl:template match="cfdi:Traslado">'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@impuesto"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@tasa"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@importe"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Complemento -->'
      #9'<xsl:template match="cfdi:Complemento">'
      #9#9'<xsl:for-each select="./*">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9'</xsl:template>'
      #9'<!--'
      #9#9'Manejador de nodos tipo Concepto'
      #9'-->'
      #9'<xsl:template match="cfdi:Concepto">'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos del Concepto --' +
        '>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@cantidad"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@unidad"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@noIdentificacion"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@descripcion"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@valorUnitario"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@importe"/>'
      #9#9'</xsl:call-template>'
      #9#9'<!--'
      
        #9#9#9'Manejo de los distintos sub nodos de informaci'#243'n aduanera de ' +
        'forma indistinta '
      #9#9#9'a su grado de dependencia'
      #9#9'-->'
      #9#9'<xsl:for-each select=".//cfdi:InformacionAduanera">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      
        #9#9'<!-- Llamada al manejador de nodos de Cuenta Predial en caso d' +
        'e existir -->'
      #9#9'<xsl:if test="./cfdi:CuentaPredial">'
      #9#9#9'<xsl:apply-templates select="./cfdi:CuentaPredial"/>'
      #9#9'</xsl:if>'
      
        #9#9'<!-- Llamada al manejador de nodos de ComplementoConcepto en c' +
        'aso de existir -->'
      #9#9'<xsl:if test="./cfdi:ComplementoConcepto">'
      #9#9#9'<xsl:apply-templates select="./cfdi:ComplementoConcepto"/>'
      #9#9'</xsl:if>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Informaci'#243'n Aduanera -->'
      #9'<xsl:template match="cfdi:InformacionAduanera">'
      #9#9'<!-- Manejo de los atributos de la informaci'#243'n aduanera -->'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@numero"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@fecha"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@aduana"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Informaci'#243'n CuentaPredial -->'
      #9'<xsl:template match="cfdi:CuentaPredial">'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@numero"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo ComplementoConcepto -->'
      #9'<xsl:template match="cfdi:ComplementoConcepto">'
      #9#9'<xsl:for-each select="./*">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Domicilio fiscal -->'
      #9'<xsl:template match="cfdi:DomicilioFiscal">'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos del Domicilio F' +
        'iscal -->'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@calle"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@noExterior"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@noInterior"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@colonia"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@localidad"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@referencia"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@municipio"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@estado"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@pais"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@codigoPostal"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Domicilio -->'
      #9'<xsl:template name="Domicilio">'
      #9#9'<xsl:param name="Nodo"/>'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos del Domicilio  ' +
        '-->'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@calle"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@noExterior"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@noInterior"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@colonia"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@localidad"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@referencia"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@municipio"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@estado"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@pais"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@codigoPostal"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      '</xsl:stylesheet>')
    Left = 488
    Top = 184
    DOMVendorDesc = 'MSXML'
  end
  object XSLTTFD1: TXMLDocument
    XML.Strings = (
      '<?xml version="1.0" encoding="UTF-8"?>'
      
        '<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/' +
        'XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns' +
        ':fn="http://www.w3.org/2005/xpath-functions" xmlns:tfd="http://w' +
        'ww.sat.gob.mx/TimbreFiscalDigital">'
      
        #9'<!-- Con el siguiente m'#233'todo se establece que la salida deber'#225' ' +
        'ser en texto -->'
      
        #9'<xsl:output method="text" version="1.0" encoding="UTF-8" indent' +
        '="no"/>'
      #9'<xsl:template name="Requerido">'
      
        #9#9'<xsl:param name="valor"/>|<xsl:call-template name="ManejaEspac' +
        'ios">'
      #9#9#9'<xsl:with-param name="s" select="$valor"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Normalizador de espacios en blanco -->'
      #9'<xsl:template name="ManejaEspacios">'
      #9#9'<xsl:param name="s"/>'
      #9#9'<xsl:value-of select="normalize-space(string($s))"/>'
      #9'</xsl:template>'
      
        #9'<!-- Aqu'#237' iniciamos el procesamiento de la cadena original con ' +
        'su | inicial y el terminador || -->'
      
        #9'<xsl:template match="/">|<xsl:apply-templates select="/tfd:Timb' +
        'reFiscalDigital"/>||</xsl:template>'
      
        #9'<!--  Aqu'#237' iniciamos el procesamiento de los datos incluidos en' +
        ' el comprobante -->'
      #9'<xsl:template match="tfd:TimbreFiscalDigital">'
      #9#9'<!-- Iniciamos el tratamiento de los atributos del Timbre-->'#9#9
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@version"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@UUID"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@FechaTimbrado"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@selloCFD"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@noCertificadoSAT"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      '</xsl:stylesheet>')
    Left = 488
    Top = 232
    DOMVendorDesc = 'MSXML'
  end
  object XSLPageProducer: TXSLPageProducer
    ParseOptions = [poResolveExternals, poPreserveWhiteSpace]
    XML.Strings = (
      '<?xml version="1.0" encoding="UTF-8"?>'
      
        '<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/' +
        'XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns' +
        ':fn="http://www.w3.org/2005/xpath-functions" xmlns:cfd="http://w' +
        'ww.sat.gob.mx/cfd/2" xmlns:ecc="http://www.sat.gob.mx/ecc" xmlns' +
        ':psgecfd="http://www.sat.gob.mx/psgecfd" xmlns:divisas="http://w' +
        'ww.sat.gob.mx/divisas" xmlns:detallista="http://www.sat.gob.mx/d' +
        'etallista" xmlns:ecb="http://www.sat.gob.mx/ecb" xmlns:implocal=' +
        '"http://www.sat.gob.mx/implocal" xmlns:terceros="http://www.sat.' +
        'gob.mx/terceros">'
      
        #9'<!-- Con el siguiente m'#233'todo se establece que la salida deber'#225' ' +
        'ser en texto -->'
      
        #9'<!-- <xsl:output method="text" version="1.0" encoding="UTF-8" i' +
        'ndent="no"/> -->'
      
        #9'<xsl:output method="text" version="1.0" encoding="UTF-8" indent' +
        '="no"/>'
      #9'<!--'
      
        #9#9'En esta secci'#243'n se define la inclusi'#243'n de las plantillas de ut' +
        'iler'#237'a'
      #9'-->'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/2/c' +
        'adenaoriginal_2_0/utilerias.xslt"/>'
      #9'<!-- '
      
        #9#9'En esta secci'#243'n se define la inclusi'#243'n de las dem'#225's plantillas' +
        ' de transformaci'#243'n para '
      
        #9#9'la generaci'#243'n de las cadenas originales de los complementos fi' +
        'scales '
      #9'-->'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ecc' +
        '/ecc.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/psg' +
        'ecfd/psgecfd.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/don' +
        'at/donat.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/div' +
        'isas/divisas.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ecb' +
        '/ecb.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/det' +
        'allista/detallista.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/imp' +
        'local/implocal.xslt"/>'
      
        #9'<xsl:include href="http://www.sat.gob.mx/sitio_internet/cfd/ter' +
        'ceros/terceros.xslt"/>'
      
        #9'<!-- Aqu'#237' iniciamos el procesamiento de la cadena original con ' +
        'su | inicial y el terminador || -->'
      
        #9'<xsl:template match="/">|<xsl:apply-templates select="/cfd:Comp' +
        'robante"/>||</xsl:template>'
      
        #9'<!--  Aqu'#237' iniciamos el procesamiento de los datos incluidos en' +
        ' el comprobante -->'
      #9'<xsl:template match="cfd:Comprobante">'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos de comprobante ' +
        '-->'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@version"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@serie"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@folio"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@fecha"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@noAprobacion"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@anoAprobacion"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@tipoDeComprobante"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@formaDePago"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@condicionesDePago"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@subTotal"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@descuento"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@total"/>'
      #9#9'</xsl:call-template>'
      #9#9'<!--'
      #9#9#9'Llamadas para procesar al los sub nodos del comprobante'
      #9#9'-->'
      #9#9'<xsl:apply-templates select="./cfd:Emisor"/>'
      #9#9'<xsl:apply-templates select="./cfd:Receptor"/>'
      #9#9'<xsl:apply-templates select="./cfd:Conceptos"/>'
      #9#9'<xsl:apply-templates select="./cfd:Impuestos"/>'
      #9#9'<xsl:apply-templates select="./cfd:Complemento"/>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Emisor -->'
      #9'<xsl:template match="cfd:Emisor">'
      #9#9'<!-- Iniciamos el tratamiento de los atributos del Emisor -->'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@rfc"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@nombre"/>'
      #9#9'</xsl:call-template>'
      #9#9'<!--'
      #9#9#9'Llamadas para procesar al los sub nodos del comprobante'
      #9#9'-->'
      #9#9'<xsl:apply-templates select="./cfd:DomicilioFiscal"/>'
      #9#9'<xsl:if test="./cfd:ExpedidoEn">'
      #9#9#9'<xsl:call-template name="Domicilio">'
      #9#9#9#9'<xsl:with-param name="Nodo" select="./cfd:ExpedidoEn"/>'
      #9#9#9'</xsl:call-template>'
      #9#9'</xsl:if>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Receptor -->'
      #9'<xsl:template match="cfd:Receptor">'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos del Receptor --' +
        '>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@rfc"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@nombre"/>'
      #9#9'</xsl:call-template>'
      #9#9'<!--'
      #9#9#9'Llamadas para procesar al los sub nodos del Receptor'
      #9#9'-->'
      #9#9'<xsl:call-template name="Domicilio">'
      #9#9#9'<xsl:with-param name="Nodo" select="./cfd:Domicilio"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Conceptos -->'
      #9'<xsl:template match="cfd:Conceptos">'
      
        #9#9'<!-- Llamada para procesar los distintos nodos tipo Concepto -' +
        '->'
      #9#9'<xsl:for-each select="./cfd:Concepto">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Impuestos -->'
      #9'<xsl:template match="cfd:Impuestos">'
      #9#9'<xsl:for-each select="./cfd:Retenciones/cfd:Retencion">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9#9'<xsl:call-template name="Opcional">'
      
        #9#9#9'<xsl:with-param name="valor" select="./@totalImpuestosRetenid' +
        'os"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:for-each select="./cfd:Traslados/cfd:Traslado">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9#9'<xsl:call-template name="Opcional">'
      
        #9#9#9'<xsl:with-param name="valor" select="./@totalImpuestosTraslad' +
        'ados"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Retencion -->'
      #9'<xsl:template match="cfd:Retencion">'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@impuesto"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@importe"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Traslado -->'
      #9'<xsl:template match="cfd:Traslado">'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@impuesto"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@tasa"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@importe"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Complemento -->'
      #9'<xsl:template match="cfd:Complemento">'
      #9#9'<xsl:for-each select="./*">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9'</xsl:template>'
      #9'<!--'
      #9#9'Manejador de nodos tipo Concepto'
      #9'-->'
      #9'<xsl:template match="cfd:Concepto">'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos del Concepto --' +
        '>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@cantidad"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@unidad"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@noIdentificacion"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@descripcion"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@valorUnitario"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@importe"/>'
      #9#9'</xsl:call-template>'
      #9#9'<!--'
      
        #9#9#9'Manejo de los distintos sub nodos de informaci'#243'n aduanera de ' +
        'forma indistinta '
      #9#9#9'a su grado de dependencia'
      #9#9'-->'
      #9#9'<xsl:for-each select=".//cfd:InformacionAduanera">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      
        #9#9'<!-- Llamada al manejador de nodos de Cuenta Predial en caso d' +
        'e existir -->'
      #9#9'<xsl:if test="./cfd:CuentaPredial">'
      #9#9#9'<xsl:apply-templates select="./cfd:CuentaPredial"/>'
      #9#9'</xsl:if>'
      
        #9#9'<!-- Llamada al manejador de nodos de ComplementoConcepto en c' +
        'aso de existir -->'
      #9#9'<xsl:if test="./cfd:ComplementoConcepto">'
      #9#9#9'<xsl:apply-templates select="./cfd:ComplementoConcepto"/>'
      #9#9'</xsl:if>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Informaci'#243'n Aduanera -->'
      #9'<xsl:template match="cfd:InformacionAduanera">'
      #9#9'<!-- Manejo de los atributos de la informaci'#243'n aduanera -->'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@numero"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@fecha"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@aduana"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Informaci'#243'n CuentaPredial -->'
      #9'<xsl:template match="cfd:CuentaPredial">'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@numero"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo ComplementoConcepto -->'
      #9'<xsl:template match="cfd:ComplementoConcepto">'
      #9#9'<xsl:for-each select="./*">'
      #9#9#9'<xsl:apply-templates select="."/>'
      #9#9'</xsl:for-each>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo domicilio fiscal -->'
      #9'<xsl:template match="cfd:DomicilioFiscal">'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos del Domicilio F' +
        'iscal -->'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@calle"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@noExterior"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@noInterior"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@colonia"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@localidad"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="./@referencia"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@municipio"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@estado"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@pais"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="./@codigoPostal"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      #9'<!-- Manejador de nodos tipo Domicilio -->'
      #9'<xsl:template name="Domicilio">'
      #9#9'<xsl:param name="Nodo"/>'
      
        #9#9'<!-- Iniciamos el tratamiento de los atributos del Domicilio  ' +
        '-->'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@calle"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@noExterior"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@noInterior"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@colonia"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@localidad"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@referencia"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@municipio"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@estado"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Requerido">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@pais"/>'
      #9#9'</xsl:call-template>'
      #9#9'<xsl:call-template name="Opcional">'
      #9#9#9'<xsl:with-param name="valor" select="$Nodo/@codigoPostal"/>'
      #9#9'</xsl:call-template>'
      #9'</xsl:template>'
      '</xsl:stylesheet>')
    XMLData = XMLDocument
    Left = 484
    Top = 284
    DOMVendorDesc = 'MSXML'
  end
end
