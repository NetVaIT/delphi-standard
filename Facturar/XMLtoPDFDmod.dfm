object dmodXMLtoPDF: TdmodXMLtoPDF
  OldCreateOrder = False
  Height = 475
  Width = 742
  object XMLTransform: TXMLTransform
    Left = 48
    Top = 24
  end
  object cdsXML: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsXMLCalcFields
    Left = 64
    Top = 312
    object cdsXMLImporteConLetra: TStringField
      FieldKind = fkCalculated
      FieldName = 'ImporteConLetra'
      Size = 255
      Calculated = True
    end
    object cdsXMLCadenaOriginal: TStringField
      FieldKind = fkCalculated
      FieldName = 'CadenaOriginal'
      Size = 99999
      Calculated = True
    end
    object cdsXMLfechahora: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'fechahora'
      Calculated = True
    end
    object cdsXMLversion: TStringField
      FieldName = 'version1'
      Required = True
      Size = 31
    end
    object cdsXMLserie: TStringField
      FieldName = 'serie'
      Size = 25
    end
    object cdsXMLfolio: TStringField
      FieldName = 'folio'
    end
    object cdsXMLfecha: TDateField
      FieldName = 'fecha'
      Required = True
    end
    object cdsXMLsello: TStringField
      FieldName = 'sello'
      Required = True
      Size = 2000
    end
    object cdsXMLformaDePago: TStringField
      FieldName = 'formaDePago'
      Required = True
      Size = 255
    end
    object cdsXMLnoCertificado: TStringField
      FieldName = 'noCertificado'
      Required = True
      Size = 255
    end
    object cdsXMLcertificado: TStringField
      FieldName = 'certificado'
      Required = True
      Size = 255
    end
    object cdsXMLcondicionesDePago: TStringField
      FieldName = 'condicionesDePago'
      Size = 255
    end
    object cdsXMLsubTotal: TBCDField
      FieldName = 'subTotal'
      Required = True
      Precision = 14
    end
    object cdsXMLdescuento: TBCDField
      FieldName = 'descuento'
      Precision = 14
    end
    object cdsXMLmotivoDescuento: TStringField
      FieldName = 'motivoDescuento'
      Size = 255
    end
    object cdsXMLTipoCambio: TStringField
      FieldName = 'TipoCambio'
      Size = 31
    end
    object cdsXMLMoneda: TStringField
      FieldName = 'Moneda'
      Size = 31
    end
    object cdsXMLtotal: TBCDField
      FieldName = 'total'
      Required = True
      Precision = 14
    end
    object cdsXMLtipoDeComprobante: TStringField
      FieldName = 'tipoDeComprobante'
      Required = True
      Size = 31
    end
    object cdsXMLmetodoDePago: TStringField
      FieldName = 'metodoDePago'
      Required = True
      Size = 255
    end
    object cdsXMLLugarExpedicion: TStringField
      FieldName = 'LugarExpedicion'
      Required = True
      Size = 255
    end
    object cdsXMLNumCtaPago: TStringField
      FieldName = 'NumCtaPago'
      Size = 255
    end
    object cdsXMLFolioFiscalOrig: TStringField
      FieldName = 'FolioFiscalOrig'
      Size = 31
    end
    object cdsXMLSerieFolioFiscalOrig: TStringField
      FieldName = 'SerieFolioFiscalOrig'
      Size = 31
    end
    object cdsXMLFechaFolioFiscalOrig: TStringField
      FieldName = 'FechaFolioFiscalOrig'
      Size = 31
    end
    object cdsXMLMontoFolioFiscalOrig: TBCDField
      FieldName = 'MontoFolioFiscalOrig'
      Precision = 14
    end
    object cdsXMLEmisor_rfc: TStringField
      FieldName = 'Emisor_rfc'
      Required = True
      Size = 13
    end
    object cdsXMLEmisor_nombre: TStringField
      FieldName = 'Emisor_nombre'
      Size = 255
    end
    object cdsXMLDomicilioFiscal_calle: TStringField
      FieldName = 'DomicilioFiscal_calle'
      Required = True
      Size = 255
    end
    object cdsXMLDomicilioFiscal_noExterior: TStringField
      FieldName = 'DomicilioFiscal_noExterior'
      Size = 31
    end
    object cdsXMLDomicilioFiscal_noInterior: TStringField
      FieldName = 'DomicilioFiscal_noInterior'
      Size = 31
    end
    object cdsXMLDomicilioFiscal_colonia: TStringField
      FieldName = 'DomicilioFiscal_colonia'
      Size = 255
    end
    object cdsXMLDomicilioFiscal_localidad: TStringField
      FieldName = 'DomicilioFiscal_localidad'
      Size = 255
    end
    object cdsXMLDomicilioFiscal_referencia: TStringField
      FieldName = 'DomicilioFiscal_referencia'
      Size = 255
    end
    object cdsXMLDomicilioFiscal_municipio: TStringField
      FieldName = 'DomicilioFiscal_municipio'
      Required = True
      Size = 31
    end
    object cdsXMLDomicilioFiscal_estado: TStringField
      FieldName = 'DomicilioFiscal_estado'
      Required = True
      Size = 31
    end
    object cdsXMLDomicilioFiscal_pais: TStringField
      FieldName = 'DomicilioFiscal_pais'
      Required = True
      Size = 31
    end
    object cdsXMLDomicilioFiscal_codigoPostal: TStringField
      FieldName = 'DomicilioFiscal_codigoPostal'
      Required = True
      Size = 31
    end
    object cdsXMLExpedidoEn_calle: TStringField
      FieldName = 'ExpedidoEn_calle'
      Required = True
      Size = 255
    end
    object cdsXMLExpedidoEn_noExterior: TStringField
      FieldName = 'ExpedidoEn_noExterior'
      Size = 31
    end
    object cdsXMLExpedidoEn_noInterior: TStringField
      FieldName = 'ExpedidoEn_noInterior'
      Size = 31
    end
    object cdsXMLExpedidoEn_colonia: TStringField
      FieldName = 'ExpedidoEn_colonia'
      Size = 255
    end
    object cdsXMLExpedidoEn_localidad: TStringField
      FieldName = 'ExpedidoEn_localidad'
      Size = 255
    end
    object cdsXMLExpedidoEn_referencia: TStringField
      FieldName = 'ExpedidoEn_referencia'
      Size = 255
    end
    object cdsXMLExpedidoEn_municipio: TStringField
      FieldName = 'ExpedidoEn_municipio'
      Required = True
      Size = 31
    end
    object cdsXMLExpedidoEn_estado: TStringField
      FieldName = 'ExpedidoEn_estado'
      Required = True
      Size = 31
    end
    object cdsXMLExpedidoEn_pais: TStringField
      FieldName = 'ExpedidoEn_pais'
      Required = True
      Size = 31
    end
    object cdsXMLExpedidoEn_codigoPostal: TStringField
      FieldName = 'ExpedidoEn_codigoPostal'
      Required = True
      Size = 31
    end
    object cdsXMLReceptor_rfc: TStringField
      FieldName = 'Receptor_rfc'
      Required = True
      Size = 13
    end
    object cdsXMLReceptor_nombre: TStringField
      FieldName = 'Receptor_nombre'
      Size = 255
    end
    object cdsXMLDomicilio_calle: TStringField
      FieldName = 'Domicilio_calle'
      Required = True
      Size = 255
    end
    object cdsXMLDomicilio_noExterior: TStringField
      FieldName = 'Domicilio_noExterior'
      Size = 31
    end
    object cdsXMLDomicilio_noInterior: TStringField
      FieldName = 'Domicilio_noInterior'
      Size = 31
    end
    object cdsXMLDomicilio_colonia: TStringField
      FieldName = 'Domicilio_colonia'
      Size = 255
    end
    object cdsXMLDomicilio_localidad: TStringField
      FieldName = 'Domicilio_localidad'
      Size = 255
    end
    object cdsXMLDomicilio_referencia: TStringField
      FieldName = 'Domicilio_referencia'
      Size = 255
    end
    object cdsXMLDomicilio_municipio: TStringField
      FieldName = 'Domicilio_municipio'
      Required = True
      Size = 31
    end
    object cdsXMLDomicilio_estado: TStringField
      FieldName = 'Domicilio_estado'
      Required = True
      Size = 31
    end
    object cdsXMLDomicilio_pais: TStringField
      FieldName = 'Domicilio_pais'
      Required = True
      Size = 31
    end
    object cdsXMLDomicilio_codigoPostal: TStringField
      FieldName = 'Domicilio_codigoPostal'
      Required = True
      Size = 31
    end
    object cdsXMLtotalImpuestosRetenidos: TBCDField
      FieldName = 'totalImpuestosRetenidos'
      Precision = 14
    end
    object cdsXMLtotalImpuestosTrasladados: TBCDField
      FieldName = 'totalImpuestosTrasladados'
      Precision = 14
    end
    object cdsXMLversion2: TStringField
      FieldName = 'version2'
      Required = True
      Size = 31
    end
    object cdsXMLUUID: TStringField
      FieldName = 'UUID'
      Required = True
      Size = 36
    end
    object cdsXMLFechaTimbrado: TStringField
      FieldName = 'FechaTimbrado'
      Required = True
      Size = 31
    end
    object cdsXMLselloCFD: TStringField
      FieldName = 'selloCFD'
      Required = True
      Size = 2000
    end
    object cdsXMLnoCertificadoSAT: TStringField
      FieldName = 'noCertificadoSAT'
      Required = True
      Size = 255
    end
    object cdsXMLselloSAT: TStringField
      FieldName = 'selloSAT'
      Required = True
      Size = 255
    end
    object cdsXMLRegimenFiscal: TDataSetField
      FieldName = 'RegimenFiscal'
      UnNamed = True
    end
    object cdsXMLConcepto: TDataSetField
      FieldName = 'Concepto'
      UnNamed = True
    end
    object cdsXMLRetencion: TDataSetField
      FieldName = 'Retencion'
      UnNamed = True
    end
    object cdsXMLTraslado: TDataSetField
      FieldName = 'Traslado'
      UnNamed = True
    end
  end
  object XMLTransformProvider: TXMLTransformProvider
    TransformRead.TransformationFile = 
      'C:\Users\hucj1e3\Documents\RAD Studio\Projects\Pruebas\Facturar\' +
      'Win32\Debug\Transfor32.xtr'
    XMLDataFile = 'C:\Temp\XML\F00028727.xml'
    Left = 48
    Top = 80
  end
  object ppReport: TppReport
    OnFileDeviceCreate = ppReportFileDeviceCreate
    AutoStop = False
    DataPipeline = ppDBPipelineDatosDetalleFactura
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 3810
    PrinterSetup.mmMarginLeft = 3810
    PrinterSetup.mmMarginRight = 3810
    PrinterSetup.mmMarginTop = 3810
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 122
    Template.FileName = 'C:\Netvait\RRHH\Facturar\CFDIInterva.rtm'
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
    Left = 296
    Top = 136
    Version = '15.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipelineDatosDetalleFactura'
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
        mmLeft = 35436
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
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
        mmHeight = 4233
        mmLeft = 15346
        mmTop = 5292
        mmWidth = 794
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Folio'
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataPipeline = ppDBPipelineDatosFactura
        DisplayFormat = 'dd/mm/yyyy   hh:nn:ss'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
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
      object ppLabel39: TppLabel
        UserName = 'Label30'
        Caption = 
          'Regimen de Personas Fisicas con Actividades Empresariales y Prof' +
          'esionales.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 97102
        mmTop = 69870
        mmWidth = 99219
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        Angle = 45
        AutoSize = True
        BlankWhenZero = True
        DataField = 'CANCELADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 48
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 19455
        mmLeft = 91608
        mmTop = 54189
        mmWidth = 19455
        BandType = 0
        LayerName = Foreground
        RotatedOriginLeft = -71643
        RotatedOriginTop = 2994
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
        DataPipeline = ppDBPipelineDatosFactura
        DisplayFormat = 'DD/MM/YYYY hh:nn:ss'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        mmLeft = 20632
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
        DataField = 'Receptor_rfc'
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataField = 'Domicilio_noExterior'
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataField = 'Domicilio_colonia'
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataField = 'Domicilio_municipio'
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataField = 'Receptor_nombre'
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 38365
        mmWidth = 19580
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'Domicilio_calle'
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataField = 'Domicilio_noInterior'
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataField = 'Domicilio_codigoPostal'
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
        mmHeight = 3969
        mmLeft = 170657
        mmTop = 38380
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'Domicilio_estado'
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataField = 'Domicilio_pais'
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataField = 'Emisor_rfc'
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataField = 'DomicilioFiscal_noExterior'
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataField = 'DomicilioFiscal_colonia'
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataField = 'DomicilioFiscal_municipio'
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataField = 'Emisor_nombre'
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 17727
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText39: TppDBText
        UserName = 'DBText201'
        DataField = 'DomicilioFiscal_calle'
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataField = 'DomicilioFiscal_noInterior'
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataField = 'DomicilioFiscal_codigoPostal'
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
        mmHeight = 3969
        mmLeft = 170921
        mmTop = 17728
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        DataField = 'DomicilioFiscal_estado'
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataField = 'DomicilioFiscal_pais'
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
        mmHeight = 4233
        mmLeft = 144727
        mmTop = 27253
        mmWidth = 43127
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnBalancing = True
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        AutoSize = True
        DataField = 'Cantidad'
        DataPipeline = ppDBPipelineDatosDetalleFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosDetalleFactura'
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
        DataPipeline = ppDBPipelineDatosDetalleFactura
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosDetalleFactura'
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
        DataPipeline = ppDBPipelineDatosDetalleFactura
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosDetalleFactura'
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
        DataPipeline = ppDBPipelineDatosDetalleFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosDetalleFactura'
        mmHeight = 4233
        mmLeft = 35454
        mmTop = 0
        mmWidth = 117475
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
        DataPipeline = ppDBPipelineDatosDetalleFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosDetalleFactura'
        mmHeight = 4233
        mmLeft = 18251
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
      mmHeight = 98161
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
        mmHeight = 4234
        mmLeft = 153194
        mmTop = 15081
        mmWidth = 21696
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'SubTotal'
        DataPipeline = ppDBPipelineDatosFactura
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        mmLeft = 153194
        mmTop = 20373
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
        DataField = 'ImporteConLetra'
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataPipeline = ppDBPipelineDatosFactura
        GraphicType = 'AutoDetect'
        ParentDataPipeline = False
        DataPipelineName = 'ppDBPipelineDatosFactura'
        mmHeight = 27517
        mmLeft = 125413
        mmTop = 12435
        mmWidth = 27517
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'totalImpuestosTrasladados'
        DataPipeline = ppDBPipelineDatosFactura
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataPipeline = ppDBPipelineDatosFactura
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
        mmHeight = 4191
        mmLeft = 175684
        mmTop = 20373
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
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
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
        mmLeft = 133879
        mmTop = 29104
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
        DataPipeline = ppDBPipelineDatosFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineDatosFactura'
        mmHeight = 3968
        mmLeft = 50536
        mmTop = 38365
        mmWidth = 37835
        BandType = 7
        LayerName = Foreground
      end
      object ppImageCBB: TppImage
        UserName = 'ImageCBB'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 30427
        mmLeft = 101071
        mmTop = 10845
        mmWidth = 30427
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppPageStyle1: TppPageStyle
      Background.Brush.Style = bsClear
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 271781
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'PageLayer1'
        LayerType = ltPage
        Index = 0
      end
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 1
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipelineDatosFactura: TppDBPipeline
    DataSource = dsXML
    UserName = 'Comprobante'
    Left = 64
    Top = 200
    object ppDBPipelineDatosFacturappField1: TppField
      FieldAlias = 'ImporteConLetra'
      FieldName = 'ImporteConLetra'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField2: TppField
      FieldAlias = 'CadenaOriginal'
      FieldName = 'CadenaOriginal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField3: TppField
      FieldAlias = 'fechahora'
      FieldName = 'fechahora'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField4: TppField
      FieldAlias = 'version1'
      FieldName = 'version1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField5: TppField
      FieldAlias = 'serie'
      FieldName = 'serie'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField6: TppField
      FieldAlias = 'folio'
      FieldName = 'folio'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField7: TppField
      FieldAlias = 'fecha'
      FieldName = 'fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField8: TppField
      FieldAlias = 'sello'
      FieldName = 'sello'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField9: TppField
      FieldAlias = 'formaDePago'
      FieldName = 'formaDePago'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField10: TppField
      FieldAlias = 'noCertificado'
      FieldName = 'noCertificado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField11: TppField
      FieldAlias = 'certificado'
      FieldName = 'certificado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField12: TppField
      FieldAlias = 'condicionesDePago'
      FieldName = 'condicionesDePago'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField13: TppField
      FieldAlias = 'subTotal'
      FieldName = 'subTotal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField14: TppField
      FieldAlias = 'descuento'
      FieldName = 'descuento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField15: TppField
      FieldAlias = 'motivoDescuento'
      FieldName = 'motivoDescuento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField16: TppField
      FieldAlias = 'TipoCambio'
      FieldName = 'TipoCambio'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField17: TppField
      FieldAlias = 'Moneda'
      FieldName = 'Moneda'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField18: TppField
      FieldAlias = 'total'
      FieldName = 'total'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField19: TppField
      FieldAlias = 'tipoDeComprobante'
      FieldName = 'tipoDeComprobante'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField20: TppField
      FieldAlias = 'metodoDePago'
      FieldName = 'metodoDePago'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField21: TppField
      FieldAlias = 'LugarExpedicion'
      FieldName = 'LugarExpedicion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField22: TppField
      FieldAlias = 'NumCtaPago'
      FieldName = 'NumCtaPago'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField23: TppField
      FieldAlias = 'FolioFiscalOrig'
      FieldName = 'FolioFiscalOrig'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField24: TppField
      FieldAlias = 'SerieFolioFiscalOrig'
      FieldName = 'SerieFolioFiscalOrig'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField25: TppField
      FieldAlias = 'FechaFolioFiscalOrig'
      FieldName = 'FechaFolioFiscalOrig'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField26: TppField
      FieldAlias = 'MontoFolioFiscalOrig'
      FieldName = 'MontoFolioFiscalOrig'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField27: TppField
      FieldAlias = 'Emisor_rfc'
      FieldName = 'Emisor_rfc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField28: TppField
      FieldAlias = 'Emisor_nombre'
      FieldName = 'Emisor_nombre'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField29: TppField
      FieldAlias = 'DomicilioFiscal_calle'
      FieldName = 'DomicilioFiscal_calle'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField30: TppField
      FieldAlias = 'DomicilioFiscal_noExterior'
      FieldName = 'DomicilioFiscal_noExterior'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField31: TppField
      FieldAlias = 'DomicilioFiscal_noInterior'
      FieldName = 'DomicilioFiscal_noInterior'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField32: TppField
      FieldAlias = 'DomicilioFiscal_colonia'
      FieldName = 'DomicilioFiscal_colonia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField33: TppField
      FieldAlias = 'DomicilioFiscal_localidad'
      FieldName = 'DomicilioFiscal_localidad'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField34: TppField
      FieldAlias = 'DomicilioFiscal_referencia'
      FieldName = 'DomicilioFiscal_referencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField35: TppField
      FieldAlias = 'DomicilioFiscal_municipio'
      FieldName = 'DomicilioFiscal_municipio'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField36: TppField
      FieldAlias = 'DomicilioFiscal_estado'
      FieldName = 'DomicilioFiscal_estado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField37: TppField
      FieldAlias = 'DomicilioFiscal_pais'
      FieldName = 'DomicilioFiscal_pais'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField38: TppField
      FieldAlias = 'DomicilioFiscal_codigoPostal'
      FieldName = 'DomicilioFiscal_codigoPostal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField39: TppField
      FieldAlias = 'ExpedidoEn_calle'
      FieldName = 'ExpedidoEn_calle'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField40: TppField
      FieldAlias = 'ExpedidoEn_noExterior'
      FieldName = 'ExpedidoEn_noExterior'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField41: TppField
      FieldAlias = 'ExpedidoEn_noInterior'
      FieldName = 'ExpedidoEn_noInterior'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField42: TppField
      FieldAlias = 'ExpedidoEn_colonia'
      FieldName = 'ExpedidoEn_colonia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField43: TppField
      FieldAlias = 'ExpedidoEn_localidad'
      FieldName = 'ExpedidoEn_localidad'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField44: TppField
      FieldAlias = 'ExpedidoEn_referencia'
      FieldName = 'ExpedidoEn_referencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField45: TppField
      FieldAlias = 'ExpedidoEn_municipio'
      FieldName = 'ExpedidoEn_municipio'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField46: TppField
      FieldAlias = 'ExpedidoEn_estado'
      FieldName = 'ExpedidoEn_estado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField47: TppField
      FieldAlias = 'ExpedidoEn_pais'
      FieldName = 'ExpedidoEn_pais'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField48: TppField
      FieldAlias = 'ExpedidoEn_codigoPostal'
      FieldName = 'ExpedidoEn_codigoPostal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField49: TppField
      FieldAlias = 'Receptor_rfc'
      FieldName = 'Receptor_rfc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField50: TppField
      FieldAlias = 'Receptor_nombre'
      FieldName = 'Receptor_nombre'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField51: TppField
      FieldAlias = 'Domicilio_calle'
      FieldName = 'Domicilio_calle'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField52: TppField
      FieldAlias = 'Domicilio_noExterior'
      FieldName = 'Domicilio_noExterior'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField53: TppField
      FieldAlias = 'Domicilio_noInterior'
      FieldName = 'Domicilio_noInterior'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField54: TppField
      FieldAlias = 'Domicilio_colonia'
      FieldName = 'Domicilio_colonia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField55: TppField
      FieldAlias = 'Domicilio_localidad'
      FieldName = 'Domicilio_localidad'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField56: TppField
      FieldAlias = 'Domicilio_referencia'
      FieldName = 'Domicilio_referencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField57: TppField
      FieldAlias = 'Domicilio_municipio'
      FieldName = 'Domicilio_municipio'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField58: TppField
      FieldAlias = 'Domicilio_estado'
      FieldName = 'Domicilio_estado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField59: TppField
      FieldAlias = 'Domicilio_pais'
      FieldName = 'Domicilio_pais'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField60: TppField
      FieldAlias = 'Domicilio_codigoPostal'
      FieldName = 'Domicilio_codigoPostal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField61: TppField
      FieldAlias = 'totalImpuestosRetenidos'
      FieldName = 'totalImpuestosRetenidos'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField62: TppField
      FieldAlias = 'totalImpuestosTrasladados'
      FieldName = 'totalImpuestosTrasladados'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField63: TppField
      FieldAlias = 'version2'
      FieldName = 'version2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField64: TppField
      FieldAlias = 'UUID'
      FieldName = 'UUID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField65: TppField
      FieldAlias = 'FechaTimbrado'
      FieldName = 'FechaTimbrado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField66: TppField
      FieldAlias = 'selloCFD'
      FieldName = 'selloCFD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField67: TppField
      FieldAlias = 'noCertificadoSAT'
      FieldName = 'noCertificadoSAT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField68: TppField
      FieldAlias = 'selloSAT'
      FieldName = 'selloSAT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField69: TppField
      FieldAlias = 'RegimenFiscal'
      FieldName = 'RegimenFiscal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField70: TppField
      FieldAlias = 'Concepto'
      FieldName = 'Concepto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField71: TppField
      FieldAlias = 'Retencion'
      FieldName = 'Retencion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosFacturappField72: TppField
      FieldAlias = 'Traslado'
      FieldName = 'Traslado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
  end
  object dsXML: TDataSource
    DataSet = cdsXML
    Left = 64
    Top = 256
  end
  object ppDBPipelineDatosDetalleFactura: TppDBPipeline
    DataSource = dsConcepto
    UserName = 'Concepto'
    Left = 184
    Top = 176
    object ppDBPipelineDatosDetalleFacturappField1: TppField
      FieldAlias = 'cantidad'
      FieldName = 'cantidad'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosDetalleFacturappField2: TppField
      FieldAlias = 'unidad'
      FieldName = 'unidad'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosDetalleFacturappField3: TppField
      FieldAlias = 'noIdentificacion'
      FieldName = 'noIdentificacion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosDetalleFacturappField4: TppField
      FieldAlias = 'descripcion'
      FieldName = 'descripcion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosDetalleFacturappField5: TppField
      FieldAlias = 'valorUnitario'
      FieldName = 'valorUnitario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosDetalleFacturappField6: TppField
      FieldAlias = 'importe'
      FieldName = 'importe'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosDetalleFacturappField7: TppField
      FieldAlias = 'numero'
      FieldName = 'numero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosDetalleFacturappField8: TppField
      FieldAlias = 'InformacionAduanera'
      FieldName = 'InformacionAduanera'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosDetalleFacturappField9: TppField
      FieldAlias = 'Parte'
      FieldName = 'Parte'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
  end
  object dsConcepto: TDataSource
    DataSet = cdsConcepto
    Left = 184
    Top = 256
  end
  object ppDBPipelineDatosRetencion: TppDBPipeline
    DataSource = dsRetencion
    UserName = 'Retencion'
    Left = 296
    Top = 200
    object ppDBPipelineDatosRetencionppField1: TppField
      FieldAlias = 'impuesto'
      FieldName = 'impuesto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosRetencionppField2: TppField
      FieldAlias = 'importe'
      FieldName = 'importe'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
  end
  object dsRetencion: TDataSource
    DataSet = cdsRetencion
    Left = 296
    Top = 256
  end
  object ppDBPipelineDatosTraslado: TppDBPipeline
    DataSource = dsTraslado
    UserName = 'Traslado'
    Left = 408
    Top = 176
    object ppDBPipelineDatosTrasladoppField1: TppField
      FieldAlias = 'impuesto'
      FieldName = 'impuesto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosTrasladoppField2: TppField
      FieldAlias = 'tasa'
      FieldName = 'tasa'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineDatosTrasladoppField3: TppField
      FieldAlias = 'importe'
      FieldName = 'importe'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
  end
  object dsTraslado: TDataSource
    DataSet = cdsTraslado
    Left = 408
    Top = 256
  end
  object ppDesigner: TppDesigner
    Caption = 'Dise'#241'o'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtParadox
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Icon.Data = {
      000001000A00303010000100040068060000A60000002020100001000400E802
      00000E070000101010000100040028010000F60900003030000001000800A80E
      00001E0B00002020000001000800A8080000C619000010100000010008006805
      00006E2200003030000001002000A8250000D62700002020000001002000A810
      00007E4D0000181800000100200088090000265E000010100000010020006804
      0000AE6700002800000030000000600000000100040000000000800400000000
      0000000000000000000000000000000000000000800000800000008080008000
      0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
      0000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF88F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFF88FFFFFF
      FFFFFFFFFFFFFF888F8888888F88888FF888888FFF88FFFFFFFFFFFFFFFFFF66
      686666C68866664886646C68F8F8FFFFFFFFFFFFFFFFF84C68C6776C76C68C66
      6C6766688FFF8F8FFFFFFFFFFFFFFF66686C78C68664F6486468C468F8F8F8FF
      FFFFFFFFFFFFFF46C866C8667466764786C666CF888FFF8F8FFFFFFFFFFFFF6C
      68C6786C86C6C6C6F866C67887888FF8FFFFFFFFFFFFF8666864E8C676478667
      88776C68888F8FFF8FF8FFFFFFFFFF46C846786486C68C66E4C864777887F88F
      88FFFFF8FFFFFF64686C68C6766686487667C667B788888FFF8FF8FFFFFFF86C
      7888866C88888888888887F779B787F88F88FFFFFFFFFF6668FFF8C68F888878
      888888F8889B88888FFF8FFFFFFFFF747FFFF8668FFF8787888888F88887B788
      F8FF88FFFFFFFFFFFFFFFFFFFF8788788878788788837B888888FF8F8FFFFFFF
      FFFFFF88F888783887873733788898887888FF88FFFFFFFFFFF8F88FF8888B78
      88737777B7888B8888888FFF8FFFFFFFFFFFF8F8888878188877B8B898B88878
      8888F8FF88FFFFFFFFF88FF88888837888B7787888988788888888F88FFFFFFF
      FF88FF88888889788877978888B738F888888FF8FFFFFFFFF88FFFFF8F888B58
      889B8388888988F88888FF8FFFFFFFFF88FFF8FF888887388B8889388887B888
      888FF8FFFFFFFFF88FFF8FFFFF78B71788988837878378F888FF88FFFFFFFFF8
      FF8888FF8FF8883787B78887888988888FF8FFFFFFFFFF8FF888888FFFF88893
      7889888B88833888F88FFFFFFFFFFF88FFF88888FFFF8837788B787987318BFF
      F8FFFFFFFFFFFFF8FFF8888888FFF87978893137B75378F88FFFFFFFFFFFFFFF
      88FFF88888F8F88B37177317713778F8FFFFFFFF8FFFFFFFF8FFFFFF8FFFFF87
      9331373B9339FF8FFFFFFF8FFFFFFFFFFF88FFFFF8FFF88877317977177B88FF
      FFFFFFFFFFFFFFFFFFF8FFFFFFFFFFFFB897333937988FFFFFFFFFFFFFFFFFFF
      FFFF88FFFFFFFFFF888B797B7888FFFFFFFFFFFFFFFFFFFFFFFFF8FF8FF8F8FF
      FF888878888FFFFF8FFFFFFFFFFFFFFFFFFFFF88FFF8FF88F8FF888FF8FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFF8FFFF88F8FFFFFFF888F88FFFFFFFFFFFFFFFFFFF
      FFFFFFFF88FFF88888FF8FF8FFFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFF8FFFFF8
      F8FFF88FFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFFFF88FF888F8FF8FFFFFFFFFF
      8FFFFFFFFFFFFFFFFFFFFFFFFFF8FFFF8FFF8FFFF8FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF88FFF8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FF
      F88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF88F8FFFFFFFFFFFF8F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF88FFFFF8FFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF8FFFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000280000002000000040000000010004000000
      0000000200000000000000000000000000000000000000000000000080000080
      00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
      000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8
      FFFFFFFFFFFFFF8F8F88FF88FF8888FF8FFFFFFFFFFFF668666C86666866C68F
      F8FFFFFFFFFFF7C7C776748C67C76688FF8FFFFFFFFFF668667C76664866C688
      8FF8FFFFFFFFF7C7C6867C7C6886658888FF8FFFFFFFF66867C6768668C84688
      888FF8FFFFFFF7C8686C8E78787E787B7888F8FFFFFFF768FF868F8888888888
      98888F88FFFFF88FFF88FF87788888888B7888FF8FFFFFFFFFF8F87878773798
      87B8888FF8FFFFFFF8F88888788778B788888888F8FFFFFFF8F88883888B7888
      98788888F8FFFFFF8FFF888838797788B78888FF8FFFFFF8FF8FF8879F8B8988
      788888F8FFFFFF8F88FFF888377888788988FF8FFFFFF8FF8888FF88378988B8
      3788F8FFFFFFFF8FF8888FF8978B31781B8F8FFFFFFFFFF8FF8F8FFF83717379
      388FFFFFFFFFFFFF8FFFF8FF8B537937388FFFFFFFFFFFFFF8FFFFFFF8793739
      88FFFFFFFFFFFFFFFF8FFFF8FFF88B8F8FFFFFFFFFFFFFFFFFF8FF8F88FF88F8
      F8FFFFFFFFFFFFFFFFFF8FF88F8FFF8FFFFFFFFFFFFFFFFFFFFFF8FF88FF88FF
      FFFFFFFFFFFFFFFFFFFFFF8FF8FF8FFFFFFFFFFFFFFFFFFFFFFFFFF8FF88FFFF
      FFFFFFFFFFFFFFFFFFFF8FFF8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000028000000100000002000
      0000010004000000000080000000000000000000000000000000000000000000
      000000008000008000000080800080000000800080008080000080808000C0C0
      C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF
      FFFFFFFFFFFFFFFFFFFF8FFFFFFF8664667648F8FFFF86C77C76688FFFFF8776
      E787C888FFFF88F8888888B888FFFFF888787B8888FFFF8F8878787888FFF8FF
      887B889F8FFFFF88F878983F8FFFFFFF8F733778FFFFFF8FFF88988FFFFFFFFF
      F8FFF8FFFFFFFFFF8F8F8FFFFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002800
      0000300000006000000001000800000000000009000000000000000000000001
      000000010000000000007B4C190078553700152A47000D315500133155002032
      54001F3F66001F4D6E00194773002A476900334B6B00234B7A002F557C003257
      7B0048556800505E6E00465D7A005B6C7F008F470E00874D0D008D4D0C00934D
      05009B4D0400934C0A00994C0900945005009C500200935009009A500A00854B
      13008E4B1100814B1800904B12008C5217008E551B0092561600A04D03008A54
      24008F592800955C23009C5D23009B5E2800865D3200A05C2500996424009565
      2B009F672C00916634009A6832008E6D4900946D4100987C5600A77B4500AC7F
      4600A87F4A00A4854E00A9854C00B1834D00A4835100B2875000B18C5700B48C
      5800B98D5900B39157009F896100BEA26E00BBA27500C3965E00C2996E00C1A2
      6C00C2A47400D5B37700D8B47D001D4782001E5386001C589500285785003557
      8000265B92003662890028639C0036689900296AA800366EA7003B72AB003976
      B400466A8D00586B800056708800487599005477990067798C00627C95004079
      AD00487FB3003A7DC10079808C0067839D00748A9B004A84B4005788B8007B92
      AF00628BB2006A95B9007B99B8003B82C4004584C300568DC6004E90C7005B92
      C6004B8ED2004D96D9005798D6006598C900729DC800639BD2006FA2CE0078A2
      C80067A1D70076A6D6006B9FE000878987008C93980094969600BFA78100BBA8
      8700BCA58E00BFAD8A00A2AA9D00BDAC93008798A600949DA700839FB60088A1
      AE009CA2A50080A1BD0099A9B800A7A9AA00BFB2A200AAB3B900B6B6B700C1A7
      8500C4A98200C3AE8E00CAB48B00D3BA8B00C1AC9100C4B29500CDB59100CFBB
      9700C2B89F00CCB99800D1BA9C00C0B9AF00C0BEBE00DAC89500E3CF9D00CEC1
      A300CEC4A800DAC9A500DDCFB000D1CABC00DED0B700DED2BA00E2D9AC00E3D5
      B700E0D3BB00E5DAB800EAD9B90086A7C60095ACC5008CB1CC009CB7CC0084AB
      D3008AB2D60092B5D600AAA6C500B1ADCA00A7B6C300B8BBC200B0A9D100A1B9
      D600B8B7D30089BEEA0098BFE200C3BFC300C0BBD500C6BFE600BCC3C800ACC9
      DD00B6C9D500BFD0DF009BC2E200A6C8E400B8D3E700C3C4C400C8C7C600C4C8
      C600CAC8C400C3C5C900C9C5C900C5C9CA00CBCBCB00D0CDCC00DCD3C300D4D0
      CC00C7CAD600CCD1D500D7D8D800E2D5C100E4DAC500E1D6C800E1DBD400E4DF
      DD00DEE1DE00F0E7CC00E9E4D400E1E3DE00EDE9DB00F1EAD900F3F0DE00CECA
      ED00C7D7E400D7D9E400D3CCF100DDD8F200E1DEE400DBE3E700C7E2F300DBE8
      F300E3E4E400E8E5E600EBEAE400E1E5EB00E8E7EC00E5E9EB00ECECEC00F4EE
      E200F0EDED00EEF1EC00F4F0E000FAF8E700F2F1ED00FDFAEB00EAEBF600F1EF
      F500EEF2F400F3F4F400F8F7F500F5F9F500FBFBF400F4F4F900F8F6FB00F6FB
      FB00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFBFFFFFEFFFEFFFFFFFFFFFBFEFFF3
      E9C4F7FEF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFFFEFFFEFEFF
      FEFFFEFFFFFFFFFBFFFBFEFFFFFBFFEBCCDACCF6FEFFF6FFFFFFFBFFFFFFFFFF
      FFFFFFFFFFFFFFFFFEFFFBFFFEFEFFFFFFFEFEFBFFFEFFFEFEFFFFFBFFF6E9CC
      F7F9EDCCEDF6FFFBFFFFFFFDFFFFF6FFFFFBFFFFFFFFFFF9A4A4D2F2D9A4A4A6
      A4A4DBFBD3D2A4A4CDF3F2D2A3A47FA4D4F3F9EDCCF6F9FFFFFEFFFFFFFFFFFF
      FFFFFFFFFFFFFEF11F1A28A8331515151A1D8EA1231515151E9E98221C151C19
      27A2F6F6ECCCF7F6FBFFF9FFFDFFFFFBFFFFFEFFFFFFFEDD211B29921C25363F
      252547301B2D481A2538311A163A1C2528D5CCF0F6E9CAF6FBFFFFF6FFFFFFFF
      FFFFFFFFFFFFFFDD21252C9225253E922519421E1930A5141C382F2515471325
      299AD1CCF0F9EDCCF6F6FFFFFFFBFFFFFFFFFFFFFFFFFFF1152529921A1B3E91
      252542201928461515388E241B3A152528D28DD58AF0F9EDCCF6F9F9FFFFFFFF
      FFFFF6FFFFFFFFDD1525299225163E92251642201B1616251C38F296371C2525
      2AA2CC7ACCCAF0F9F7C4F9FEFBFFFEFFFFFFFFFFFFFFFFF11C1B2C92161B3E95
      192546011C2A491C2539A07D4537162526BD89CF8CD6CCF0FFF69BFEF9F9FFF9
      FFFFFBFFFFFFFFF11C25299216253D91192542201930A5151638441C139D1319
      027375ACBF8AD7BDF0F0F7C4F6F6FFFDFFFDFFFFFFFFFFF115162C921C163E46
      251B472B1C2E9C151541431F1C3E151C02757071AEC38CCA8DEDF6E9CBF6F6FB
      FFFFFEFFFFFFF9DD1C2529A99695913E25198FF19393808282D1E08B8094907D
      CE7671707077C37CDAC9F7FFE9CBF6FBFFF9FFFFFFFFFFEE1F1C2AD8FFFFF295
      19198EF6CCF3DA8988AAAAADCFD1818DF689AD786F6FB8E58DE0C4EDFFE9CCF6
      F9FFFFF9FFFFFFF3323334F1FBFFFF9E333397FBF3DA89ABAF76BF8CD0879BCC
      F7D08CC0886C7078C08CD6C5EDF6E9D0F9F7FBFFFFFFFFFFFBF2FBFBFFFFFFFB
      F2EEFBFBE984ABAA7683B4D17ABD8984B386D08AB3676F74C3CC8D8A9BF0F9E9
      CCEDFDF6FFFFFFFFFFFFFFFFFFF9FFFFEDC6FFDA8C8DABAF5B89CA7B8A634D65
      65555BB38CAD6471C2BD878AD5CCEDF6ECCCF6FBFFFFFFFFFFFFFFFBFFF9F9DA
      CCF6E98DCCB3AC7662D0878D8350706F71707475BF8CAD88C0878DCE8DD1D0F0
      F9ECC6F7FFFFFFFFFFFFFFFFF6F9ECD1F6D6C4CA8DB3AC76128A8DBD69717778
      AE76786F77BEB3E47BCB9BCBCC8DD5CAF6F3DACCFFFFFFFFFFFBFFFEFFDACAF6
      E9BD8AD1CABFAF67108DD1BF757179BE83DFBF787078C361C68DCB8DBDCC8CCB
      F0F7C9EDFFFFFFFFFFFFFFF6EDCCF9F9F09BD58DD0B3AF650FD18ABF74715E5D
      D18DE489747462BDF9D58DC69BC4CCF6F3C4F0FDF6FFFFFFF6FFFBECCCF7F7F9
      F9EDBDD58CBFB067118CD16974716E0D86D18CDFAA6E788CEC8AD58DC6C6F9F6
      CCF0FFFFFFFFFFFFFFF6ECC6F7F9F7F7F0F9EDB4D189B0720BD08C887778C168
      4E84D18ABD5A74E58DD78AD18DFFEDC6F0FFFFFBFFFFFFFFF6EDC5F9F7F7E4F7
      F7F6F9F687B4B0730B5CDFAA7775C0AA5A5DB487845774B0F78DD1B4FFEDC4ED
      FFF6FFFFFFFFFFFFE9CCFDEAB2E2B2BCF7F6F6F9F0BDB6AA4D1284667774BFEA
      AC65DF8DD0506FB9E0C6BDF6F3CEF6FBFFFFFFFFFFFFFFF6CAF6F6F7BBBBE1B2
      E0F7FEF7F7EAB775520A7CAD7974868CC372AACF7C0C6FB0E4BDF6EDCCEDFFFF
      FEFFF6FFFFFFFFFFD1D6F6FDF5B7B5BCB1C0F5F7F7FEE4B0654E84CFAE77118C
      636E6989100C70C1EDF6F9C6F0FFFEFFFFFFFFFFFFFFFFFFF3D1D5FEFDF5BBB5
      DEB1BCF7FDF7F6BF72505DBFB0790C03055F7588064D71C3FEF7CCEDFFF6FFFF
      FBFFFFFFFFFFFFFFF6FBD5E0FEFCF5E1F5E2B1CFFDF9F9DFAE6C50590A57554B
      4B6D6C08095E78E6FECAF6FFF6FFFBFFFFFFFEFFFFFFFFFFFFF9FED5E0F9FDFC
      FCFDE2E0FCFEF6F7B678524D07045F53536F52094C6BC2E6D7EDFFFFFFFFFFFD
      FFFFFFFFFFFFFFFFF9FFFEF6D5E4F9FFF9FFF9FDF5FFFEF6E0B06E544D090C55
      56564A4F5679E5CAF7FFFDFFFFFBFFFFFFFFFFFFFFFFFFFFF9FFFFFEFDD1E0FB
      FFF9F9FDF9F9FFF9FEE6AC7756514F4C4C4C536B71B0CAF0FEFDF9FEFFFFFFFE
      FFFFF6FFFFFFFFFFFFFDFFF6FFF6D1D6F9FFF9F9F9FFFFFEFFF9DFC2786E6B6A
      6A6A6DAEC2BBF3FFFEFFFFFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFBFFFFF9FFD1
      D6FEF9FFFFF6F9ECECFDFDFDE6C3AFC168B0C3E6BDF3FFFEFFFFF9FFFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFF9FFFEFBD1DAF9F9F9D1DAF3D5E4EAFDF9F7EAC8
      CFF7F7C8F5FEF7FEFFFBFFFEFFFFFFF9FFFFF9FFFFFFFFFFFFF6FFFFFFFFFFFD
      F7CCEAFFFDF7C4CCD5E0E0ECFEFEF0F6EDECBDEAECE6E4FFF9FEFFFFFEFFFFFF
      FFFFFFFFFDFFFFFFFFFFFFFFFEFFFFF6FFFFCCEAF9F9F6D1CFD1D7D5F7F9F9FB
      F0CCEDFFFEFEFFFBFFFEFFFFFFFFF9FFFFFDFFFFFFFFFFFFFFFFFFFFFFFBFFFF
      FFF9FFCCEAF9F9F6DAD1CCD1EDF9FEEDC4EDFEFEFFFFFFFBFFFEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF9FFFFFFFFFBFFFFF6F9D1DAFFFEF7C4CCE8EDF6F6C6
      F0FFFEFFFFFDFFFFFFFFFFFEFFFFF9FFFFFDFFFFFFFFFFFFFFFFFFFFFFFDFFFF
      FDFFFFFFF6D1E0FBF9F6CCDAFFF6CCEDFFFFF6FFFFFFFFFEFFFFFFFFF6FFFFFF
      FFFFF6FFFFFFFFFFFFFFFFFFFFFFFDFFFFFFF9FFFFF3D1DAFFFDEDD5F7CCEDFF
      FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFFF
      F9FFFFF6FFFFF6D5D7F6FEEDC4F7FFFFFFFFFFFFFFFDFFFFF6FFFFFBFFFFFFF9
      FFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFFFFFFFFFFFFDD1DAF6CCEDFFFBFF
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF9FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFF6FFF6F6D1C4EDFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFBF6FFFFFFFFFB
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002800000020000000400000000100080000000000000400000000
      000000000000000100000001000000000000273D5F001B456E002F4763002B4D
      7000314A73002A507600405C7A008A4D0C00954E06009B4D0400934B0B00994C
      0B009950040091520E00955515009A57170094551C009A551A00975B1A00995C
      1A00A14E0100A35E1B0083502500935B2500995F21009A652B009F703200A466
      2A00A36C2D00AB703700A4723E00AD773C00AA783C00AD7E4C00A87C5400AC81
      4900A5865500A8885500AF8D5B00BC915D00AE906C00B7946300BD936300B798
      6600BC986300B4966C00BD956A00BE9C6F00AF957A00B8997300BDA37700C4A2
      6F00C3A170001F4C840024558300245D94002C62960024629D00336294003F6A
      91002362A200356DA5003670AC003373B0003C7ABC00566C8600406F98005B77
      9000607081006A798A00707D8C00677F90004375A5004175A900487CB5007882
      8D007D8C9B004680BA005483B800568ABD007590AB00608FBD006C97B900779B
      BF007A99B8004383C2004A86C400558CC4004B90CC005493CD005797D5005098
      D900599ADA006291C3006897C5006E98C300679DCA006B9ECC00749CC200759F
      CA00629BD200639CD9006CA0CC0077A0C40076A9CD006EA4D6006AA8DF0071A4
      D30079A8D30073A3DB007FADD900B4A28C008594A6008C9EAC0096A2AC0087A3
      BB0097A5B2009DACB60093A8BE009BAEBD00A6A5A700ABAFA700A0A6A800A6A9
      A800A9ABAC00A1A7B000AAADB300A0ACBA00A8B1B700A4B4BB00A9B3BD00B3B2
      B100B7BCBB00B8BBBD00C9AF8600D0AF8700C7B28E00CCB59300D2BE9C00CBBC
      AD00C1BFBE00D5C29D00D2C5AC00DFD0AD00C2C0BF00C9C3BD00DAD1BD0084A4
      C1008BAAC60080A6CC0085AACE008AAECF0082A9D20084B1D30094B4D2009DB9
      D30091B3D900AFAECD00A3B7C300ABB7C100A0B5C800A5BBCE00A9BCC800B5BD
      C300BBBEC100B1BECC00BDB8CD00A3BBD200B9B6D400BEB8DB00BEC3C300B5C1
      CB00A5C2D800B2C3D200BEC9D100B4C9DE00A5C3E000ADC7E000A6C9E700B9D0
      E100B3D1EA00BBD7EA00C2C3C400CBCDC500C4C5C900C3C8CB00CBCACA00D3CC
      C100C3CCD400C8CFD000C4C1D800CCD1D400C4D3D900D4D4D400D8D6D400D9D9
      D500D4D7D900D8D7D800DBDBDB00E1DAC600E7DFCC00E5DFDC00EAE1CF00E5E0
      D300E9E1D200E2E2DF00EBE6DD00EDE9DC00C8C1E400C0D3E500D3D0E100DBDE
      E200DADCEC00C5DEF000E2DEE200DEE0E100DCE0E700DDEAF400E3E3E300E3E6
      ED00E9E7E800E4E9EC00EBEAEB00F2EDE000EFF0EE00F4F1E500F6F5EB00F2F2
      ED00E4E0F300E2EEF200EBEAF200EAE5F900F0EEF600F0EFFB00EEF1F100F3F3
      F300F6F9F500FBFBF500F4F4F900F9F7FB00F7FAFC00F7FCFC00F9F9FA00FCFA
      FA00FAFDFA00FDFDFA00F9F9FC00FCFAFC00FAFDFD00FEFEFD00000000000000
      00000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4
      D8F1FFFFFFFFFFFFFFFFFFFFFFFFFFF1EEFFF1F1FFF1EEFFF1FFF1EEFFEDECC2
      CED8EDFFFFFFFFFFFFFFFFFFFFFFFFD0CDE2D0CBCBCCE4E0CBCCCFEECBC98CCC
      ECDDC7ECFFFFECFFFFFFFFFFFFFFF1220987180F0F0D8A1A140E18890E0F0C11
      C3ECDCC7ECFFFFFFFFFFFFFFFFFFFF220A340A202815260C2C1B0C240D240C10
      92C2E4DCCEECFFECFFFFFFFFFFFFFF220A340A21280A250C1D13088E191A0A12
      BC9191E4DDD7EDFFFFEDFFFFFFFFFF240A3409212B15250C1B160E908B1F0A11
      AB81B9C2EEDDC7F0FFFFF0FFFFFFFF240A3409202B0A250C2E1B0E340C2D0C17
      6769AEBAC0ECCEC7ECF3FFEEFFFFEE240C882F3021158A32332E31B829322770
      625C5DAD7DC2F3CECEF3FFFFF3FFFF230E8BFFEE2B0E8FD8DD829795A6BE7ADC
      9F9D586BB0B9C2ECDCCEECFFFFFFFFCCC8E0FFFFCC93E2E4819563A4857C83AC
      82A577596CC091A5ECCED8ECFFFFFFFFFFFFFFEEECC6E1AB789851A47B484A58
      4B74AC5361BD7991C6ECCED8ECFFFFFFFFF0ECEBC7DD9191A1964D7DA05E5D6C
      67659AA6AC84BBBB91C6ECD8CEFFFFFFFFFFE4C2ECBB91BAAD604C91AD5D6D76
      C1985B9C7EBAABB991BEECC2ECFFFFFFECECC2ECECDDC2ABA2604691945D4971
      B9AF635EBDC0B891C2ECC2ECFFFFFFFFECC2EBF3EBECCEB9786442BD646A9B3C
      80857258B4B8A5C0ECC2ECFFFFFFFFEBC2EBD3BFD5ECF3D8AC9904736365C19B
      557F754EB6B9BBECC6ECFFFFFFFFFFC2ECEABFD1A9D5EAEBD59B3B47AD6572AE
      52A64541B6BEECC6ECFFFFEDFFFFFFECC6ECEAAAAA9ED5F3ECD24F44A66E0503
      50940157D6F3C6ECFFFFFFFFFFFFFFEDECC7ECF3E5E8A9EBECDC994307043F38
      5A37376ADAD8F3F0EEFFF0FFFFFFFFFFFFE1C6F3F3F0EAEBF0EBB05E39023B40
      3F3641B3C0FFF3FFFFFFFFFFFFFFFFFFECFFECC6ECFFF0F0FFF1F3B2653F3A3D
      3D566CC0ECF1F1FFFFFFFFFFFFFFFFFFFFFFF3ECC6EDF0FFEDEBEBECDAB16F61
      9AB6BEF1F1FFEEFFFFFFFFFFFFFFFFFFFFF0FFFFECC2F0EEC6CEC7DCF3EBD8C6
      E6BEE6E6FFEEFFF1FFFFFFFFFFFFFFFFFFFFF0FFFFECC6F3ECC2C2C7CEF1EDEC
      C2ECFFF3EEF1FFFFFFFFFFFFEDFFFFFFFFFFFFFFECFFECC6F3F3C7BBCEECECC2
      ECFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECFFFFFFF0ECC6F3ECC2DDECC7EC
      FFF1FFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEBC7FFECCEC7ECFF
      FFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFECFFFFFFFFFFFFFFECC2ECC2ECFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFFFFFFFECFFEBC2ECFFFFF3
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000280000001000000020000000010008000000
      00000001000000000000000000000001000000010000000000002C547D009851
      0F00975113009A5E1C009C5D1E00A2611F009C693000A2652600A9692900A06E
      3000AE713200B0773A009E724600A6784300AF7D4700A97C4800AD7D4900B17A
      4100AE845300B0885A00B48B5800B1906100B2956E0034699F002F67A000446C
      980055779900687D9500778A9D004B83B8005D8EBF007094B7007797B5005990
      C7006796C300679BCC00699CCA00689FCF00779DC3007C9FC200709FCB0073A1
      CC0077A5D200859BAF0095A1AD0099A0A8009FABB600C3A68100CCB69600D5BF
      A200D4BEA400C0BFBF00BFC0BF008CA9C4008FACC6008AAACA0092AEC80094B2
      C80089AED5009DBAD300A5B7C700A5B7C800AFBEC800B6BCC100C0BFDB00BBC2
      C600BFC3C700ADC3D300B5C4D100BECFDD00C3C4C300C6C7C800CDCECE00C1CD
      D800CFD0D100D2D1D200D4D4D300D2D2D400D5D5D500DFD9D200DBD9D500D9D9
      D900DBDCDD00DCDCDC00E3D6C900E5E3D800CFCAE400C8D7E300CEDDE900DEDE
      E900DFE0E200E1E1E100E4E3E200E2E1E400E3E5E500E5E5E500E6E8E700E8E8
      E600E1E7E900E3E0EC00EAE9EA00EDEDED00F2EEE500F2F1E900F6F4EB00F1F1
      EE00E1E9F000EDEDF100EBEDF600F1EEF900EDF3F500F1F1F100F7F7F200F0F3
      F500F5F6F600F8F7F100F9F9F500F7F9F800F9FAFA00FBFDFB00FDFDFA00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF007A7A7A7A7A7A7A7A7A73
      7A7A7A7A7A7A75696967736771675062737A7A7A7A7A33120406120A0E040350
      5F737A7A7A7A330C060B0A08151102354C62737A7A7A33121209141617130D26
      3C4B5F737A7A55317A30563F3740353E26444B5F737A7A7A7A564B392D2C2223
      3A3E34525F737A7A5B5F48382E2B21452A35484C5F7A7A5B5A6C5B391D29372F
      20464C5F7A7A6C6257416C581B3B1C281A595F7A7A7A7A736C6E647227011918
      1F637A717A7A7A7A627377766B3B1E2546767A7A7A7A7A7A7A62735B52735F5B
      6F7A7A7A7A7A7A7A7A7A626C5262637A7A7A7A7A7A7A7A7A7A7A7A7362637A7A
      7A7A7A7A7A7A7A7A7A7A7A7A73777A7A7A7A7A7A7A7A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000028000000300000006000
      000001002000000000008025000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FEFFFEFEFEFEFEFEFEFEFEFEFEFFFEFEFEFEFEFEFEFFFEFEFDFEFDFDFDFEFEFE
      FEFFFEFEFEFEFEFEFEFEFEFEFEFEFFFFFDFFFEFEFEFEFDFEFEFEFDFEFFFFFDFE
      FEFEFDFEFEFEFFFEFFFFFEFEFEFEFEFEFFFFFEFEFEFEFEFEFDFEFDFFFEFFFEFE
      FEFEFEFEFDFEFEFEFDFFFBFCFCFEFDFEFEFEFDFEFEFFFEFEFEFEFEFEFEFEFEFE
      FEFFFEFEFEFEFEFEFEFEFEFEFEFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFEFE
      FEFEFEFEFEFEFEFEFEFFFEFEFEFEFEFEFEFEFEFEFEFFFEFEFEFEFEFEFEFEFEFE
      FBFFFEFCFEFEFCFBFEFEFDFEFAFFFCFDFDFEFCFCFEFFFEFEFDFEFDFDFBFEFEFD
      FCFFFEFEFBFEFBFDFCFEFBFEFAFEFEFFF9FFFCFEFEFEF9FDFEFEFAFEFEFFFBFC
      FEFEFBFCFDFEFEFEFDFFFCFDFEFEFBFDFEFFFBFDFDFEFBFDF9FEF8FDFAFFFCFC
      FDFEF7F5F3FEEBEBE4FFC4C8C6FEF0F3F8FEF6F9FAFFF9FAF8FEFCFCFCFEFBFB
      FBFFFEFEFEFEFDFDFDFEFEFEFEFFFDFDFDFEFDFDFDFEFDFDFDFEFEFEFEFFFDFD
      FDFEFDFDFDFEFEFEFEFFFDFDFDFEFDFDFDFEFEFEFEFFFEFEFEFEFEFEFEFEFDFE
      FDFFFAFEFEFFF9FDFEFFFDFEF9FFFBFEFDFFFDFBFFFFFBFDFEFFF6FEFDFFF9FD
      FEFFFBFDFEFFFAFEFCFFFAFEFDFFFBFFFCFFFBFEFDFFFCFDFDFFFDFDFCFFFEFD
      FBFFFEFEF8FFFBFFF9FFFDFEFBFFFAFDFDFFFCFDFEFFFEFDFBFFFEFCF9FFFCFA
      FBFFE9E8EAFFCECECDFFE3E3E0FFCCCCCDFFF3F2F5FFF7FAF9FFFBFCFCFFFCFC
      FCFFFDFDFDFFFEFEFEFFFEFEFEFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFDFD
      FDFFFDFEFDFEFBFEFBFEFDFEFCFFFEFEFAFEFEFEFBFFFAFEFDFEF7FEFDFEFBFE
      FCFFFCFEFBFEFEFCFEFEF7FCFEFEF9FEFBFFFDFEFBFEFEFDFDFEFCFDFDFFFCFE
      FDFEFBFEFDFEFAFDFEFFFEFEFBFEFBFEFAFFFEFBFAFEFBFBF9FEF8FAF3FFECE9
      E5FEC9C9CBFEF1F8F6FFF8F8F2FEEBECEAFECDCCCEFFF2F0F0FEF6F6F6FEF9F9
      F9FFFDFDFDFEFEFEFEFEFDFDFDFFFDFDFDFEFDFDFDFEFDFDFDFEFEFEFEFFFDFD
      FDFEFDFDFDFEFEFEFEFFFDFDFDFEFDFDFDFEFEFEFEFFFEFEFEFEFEFEFEFEFEFE
      FBFFFCFAF6FFE0D3BCFFE0D3BCFFE2D6BEFFFAF8E7FFE9E4D4FFDED3B9FFE1D4
      B8FFE3D5B7FFE1D2BAFFDFD3BBFFEDE9DBFFFDFCF2FFE4DAC5FFE1D3BAFFDFD3
      BBFFDDD3BBFFDBD1C2FFF7F4EDFFFCF9EDFFE2D5C1FFDFD1B9FFDED0B7FFBCA5
      8EFFDFD0BCFFDED6C4FFF4F1EBFFF9F7F6FFECEBEDFFC9C9CAFFF2F2F2FFF8F8
      F8FFFAFAFAFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFF8FF
      FDFFF3F0E2FE8E4C12FE945006FF955F25FEE5DAB8FF956D43FE8F4C0CFE8C4D
      0BFF8F4D0EFE965008FE974E0AFEC1A785FFDDCFB0FE8E551BFE904D0BFF8E4F
      0DFE8C4F09FE864B13FFCEC1A3FECCB998FF8C5217FE914E0AFE8E4C0FFF954B
      0FFE994D0EFE8F5928FFCDC9C0FEF2EFEEFEF6F5F6FFE7EAECFEC9C9CAFEF3F3
      F3FFF8F8F8FEFAFAFAFEFCFCFCFFFCFCFCFEFCFCFCFEFDFDFDFEFEFEFEFFFDFD
      FDFEFDFDFDFEFEFEFEFFFDFDFDFEFDFDFDFEFEFEFEFFFEFEFEFEFEFEFEFEF6FF
      FBFFF3F0DFFE904B12FE9F4F02FF9C5E20FED2BB8FFF964B0CFE9E4C04FEAC7F
      46FFB98D59FE9D4D04FE9E4F03FEC1A476FF916731FE984F04FE996424FFD5B3
      77FE935005FE9C4D05FFA68550FE9A6832FF965005FE924E05FEB0844BFF964B
      0BFE9F4E04FE975C22FFE1DBD4FECECBCBFEEDEFEEFFF2F5F5FEE8E8E8FEC8C8
      C8FFF3F3F3FEF7F7F7FEFCFCFCFFFBFBFBFEFCFCFCFEFDFDFDFEFEFEFEFFFDFD
      FDFEFDFDFDFEFEFEFEFFFDFDFDFEFDFDFDFEFEFEFEFFFEFEFEFEFEFEFEFEFCFF
      FAFFF4F0E0FF8F4C10FFA14E02FF9F5D24FFD5BB8AFF994E04FFA14F04FFB58C
      58FFD1B88CFFA14C06FF9B4C07FFBFA36EFF854C13FF9A4C09FF916736FFE2DA
      ABFF874E0DFF974B0BFFA6854FFF9F672CFF994F02FF924E07FFB7A171FF904D
      0DFFA14D02FF995E23FFC0B9AFFFD6D4D3FFCDCECDFFEEEEEEFFF5F5F5FFECEC
      ECFFCDCDCDFFF4F4F4FFF6F6F6FFFCFCFCFFFCFCFCFFFDFDFDFFFDFDFDFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFF
      FAFFF4EFE2FE8E4D0FFEA04D03FF9E5C26FED4BB8AFF944F05FE9C5003FEB38C
      57FFCEB78AFE9D4D06FE994C04FEBEA26EFF814B18FE9B4D08FE935D22FFC0A3
      69FE8A4D0CFE8D4E0DFFA18252FEC7AB82FF925616FE9A500AFEB2834FFF924D
      08FEA24D05FE975922FFE1D6C8FEBCBBB7FEDDDBDAFFABADACFEEDEDECFEF5F6
      F5FFEBEDEDFECBC8CCFEF6F4F6FFF5F8F4FEF9FBF9FEFDFCFCFEFDFDFDFFFDFD
      FDFEFEFEFEFEFEFEFEFFFEFEFEFEFDFDFDFEFEFEFEFFFEFEFEFEFEFEFEFEFFFE
      FCFFF4F0DFFE8D4E0BFEA04D01FF9E5C24FED4BA89FF984E04FE9A4E02FEB18D
      57FFCEB78BFE9E4D04FE9E4E01FEBFA36FFF7B4C19FE9B4E05FE9A4D07FF944B
      07FE9A4D08FE964E05FFA78452FEFFFCE8FFCFBB97FEA77B45FE954A0CFF9C50
      03FE9D4C02FE9B5D29FFD1CABCFECACBCAFE898889FFCDCDCCFEC9C7C7FEEDEF
      EDFFF7FAF7FEF2EFF2FEC3BFC3FFF5FAF6FEFAFBF9FEFCF9FAFEFCFCFCFFFDFD
      FDFEFDFDFDFEFEFEFEFFFDFDFDFEFDFDFDFEFEFEFEFFFEFEFEFEFEFEFEFEFFFD
      FDFFF4F0DFFE935009FE9D5000FF9E5E21FED3BB89FF934E05FE9A4F02FEB28E
      59FFCEB791FE9F4C07FE9F4E00FEC0A36EFF794C19FE984B09FE9B5F28FFD8B4
      7DFE994C07FE9D4E03FFA9854CFEDAC9A5FFBFA781FEC2996EFEA87F4AFF9249
      02FE9F4E04FE8A5424FFBBC7C9FE9BA8B5FEC2C9D2FFB2B2B4FEE3E0E1FECACC
      C8FFF1F2EEFEFCFCFAFEF3F4F3FFBBBEC0FEF8F8FBFEF9F8F9FEFAFAFAFFFDFD
      FDFEFCFCFCFEFDFDFDFFFDFDFDFEFDFDFDFEFEFEFEFFFEFEFEFEFEFEFEFEFEFD
      FEFFF5F0E0FF915009FF9A4E04FF9C5D23FFD2BB8CFF914D08FF9A4E03FFB58C
      58FFCCB48EFF9A4C08FF9D4E00FFC0A36EFF7F4C1AFF994B09FF916437FFE3D9
      AEFF8C4D09FF974E05FFA3854DFFC3965EFF924B0AFF8F470EFFE3CF9DFF8F49
      0EFF9B4B09FF7C5231FF74A0C5FF71A5D0FF8CB1CCFFBDC9D5FFA6AAADFFDCE1
      DEFFC1C4C4FFF0F2F3FFF0F0EFFFEFEDF0FFC4C4C5FFF0F1F0FFF1F1F1FFF9F9
      F9FFFBFBFBFFFBFBFBFFFCFCFCFFFDFDFDFFFDFDFDFFFEFEFEFFFFFFFFFFF8FE
      FBFFF4F0DFFE8E4F0BFE9A4D07FFA15C23FED5BB8DFF954D0BFE994E05FEB287
      50FFC5A16DFE9A4E05FE9D4F03FEC4A472FF865D32FE924D0CFE95652BFFDAC8
      95FE874D0EFE8D4B0DFF9F8961FEBFA379FF8D4F0DFE92500BFEB39157FF8F4F
      0DFE914E0BFE75593EFF699BCCFE519AD8FE569CD2FF7DAEDBFEAFCDE4FEA9B4
      B7FFC5C9CAFEB1B3B6FEF0EEEFFFF6F3F5FEE8E8E7FECACAC8FEF4F4F4FFF7F7
      F7FEFAFAFAFEFCFCFCFFFDFDFDFEFDFDFDFEFEFEFEFFFEFEFEFEFEFEFEFEF8FE
      FAFFF4F0DDFE924C0AFE9D4E06FFA05D27FEEAD9B9FFD1BA9CFECDB391FEC8B2
      8DFFB18D57FEA04E07FE9F4D06FEC5A880FFF2EADBFEC1AC91FEC7B38FFFBFAD
      8AFEBFAE90FEBCAA96FFD0D7D6FED1DADEFFBFB2A2FEC3AE8EFEC4B295FFC5B2
      89FEBBA887FED6D1CBFF7CA1C4FE5C9AD3FE4D96DCFF4F98DEFE659FD5FEBAD3
      E5FF979C9DFEE2DEE0FEC8C3C8FFECEEF1FEFAFCFAFEEAEBE8FECACACAFFF3F3
      F3FEF9F9F9FEFBFBFBFFFCFCFCFEFEFEFEFEFDFDFDFFFEFEFEFEFEFEFEFEFCFB
      FEFFF5EEE3FF8E4B12FF954E06FF975F27FFF0E7CCFFFCFEF9FFFBFEFAFFFEFE
      F1FFCEB88BFF9B4D09FF964B09FFC0AA85FFF7F8F5FFCACDCDFFF0F1EFFFDFE3
      DFFF9BABAFFF87A6C0FF80A4C9FF8EADCBFF9FAFC5FFC7CFD7FFD7DCDCFFA2AA
      9DFFB8B6B4FFEFF0F7FF99AEBAFF91B2D1FF75A2D7FF538FCFFF5395D7FF89BE
      EAFFC5DDECFFB0B2B5FFDDDDDFFFC3C6C8FFEEEFEFFFFAFAF9FFECECECFFCCCC
      CCFFF4F4F4FFF8F8F8FFFBFBFBFFFDFDFDFFFDFDFDFFFEFEFEFFFFFFFFFFFEFD
      FCFFF5F0ECFE8E6D49FE946F40FF987C56FEF0EBD8FFFDFCFBFEFDFDFBFEFCFD
      F9FFCEC4A8FE966E40FE926D41FEC2B89FFFFDFDF4FEF5F4EFFEDEE2E3FF9FAB
      B7FE8BABC0FE88B5DBFF82A0C3FEB7CAD4FFADB4BFFEC5CECDFE9FA2A2FFBEBE
      BEFECBCBCCFEF0F3F7FFCAD4D5FEADB2BAFEC2D1E0FF7C99BBFE5187BFFE4A99
      DCFF73A6D5FEC5D4E0FEADB4B1FFDFDFDDFECBC7C9FEEEECEEFEF5F5F5FFE7E7
      E7FECFCFCFFEF5F5F5FFF4F4F4FEFBFBFBFEFCFCFCFFFEFEFEFEFEFEFEFEFEFF
      FBFFFEFDFCFEFEFDF3FEFEFEF1FFFDFDF3FEFCFDF7FFFCFCFCFEFEFDFCFEFDFC
      FCFFFDFDF5FEFCFAEDFEEEEDE2FEFDFCF5FFFCFDF8FEE4E5E2FE97A0A3FF95AA
      BDFE87ADCDFE79A1C9FF8395A8FEB7BDC1FFCFD2D5FE868A85FEC0C2C5FF9AA4
      B3FE94A4B1FEA7BBC6FF889BA8FEC8D1D7FEA6ADACFFA7B3C0FE658CB1FE4B95
      D1FF5A9ACDFEB4D2E2FECCD3D4FFB9B7B5FEA9A8A9FEBCBEBFFEEEEEEEFFF5F5
      F5FEE8E8E8FECDCDCDFFEFEFEFFEF8F8F8FEF9F9F9FFFDFDFDFEFEFEFEFEFFFF
      FEFFFFFEFDFFFFFEFDFFFEFEFDFFFDFEFCFFFDFEFCFFFDFEFDFFFCFDFCFFFDFC
      FCFFFDFCFCFFEBE9E8FFC8C7C6FFF9F9F8FFE4E6E5FFB1B3B3FFADB8C1FF90A9
      C2FF8AB1D5FF537699FF9EAEB9FFC6CACDFF8B9092FFA8B0B3FF738A9AFF2E59
      85FF5282B1FF5587BAFF3D70A7FF55789AFFA4B5BFFFAEB8BEFF9DB7CAFF4A84
      B4FF599CD5FFA4C9E6FFBEC4CAFF9E9DA0FFA9A8A5FFDDDDDCFFCBCBCBFFEEEE
      EEFFF6F6F6FFEAEAEAFFCACACAFFF3F3F3FFF8F8F8FFFBFBFBFFFEFEFEFFFEFE
      FEFFFEFEFEFEFEFEFEFEFEFEFDFFFDFDFDFEFDFDFDFFFCFCFCFEF9F9F9FEF9F9
      F9FFE7E7E7FED0CECEFEF7F6F5FEE7E7E6FFB1B2B2FECDCFD0FEA8B6C2FF8FAD
      CAFE80A8CDFE647E98FFC6CED3FE9EA0A3FFB8BEC0FE8497A8FE34648BFF4F97
      DAFE5295D9FE5996D8FF5597DBFE5E98D4FE709CC6FFB2CCDCFEA6B4BBFE9CB8
      CEFF7EA2C3FEBFD0DFFEA0A1A4FFBAB8BCFED2D0CDFEB7B6B5FED9D9D9FFCECE
      CEFEEEEEEEFEF6F6F6FFE8E8E8FEC7C7C7FEF0F0F0FFFDFDFDFEFEFEFEFEFFFF
      FFFFFFFFFFFFFEFEFEFFFDFDFDFFFCFCFCFFFCFCFCFFF9F9F9FFF6F7F7FFE6E7
      E7FFD0D0D0FFF5F4F4FFDEDDDDFFC6C5C5FFC8C9CAFFB7BABBFFA0B1C0FF90B1
      D3FF759EC5FF5B6C7FFFAFB1B1FFB5B6B8FFB9C0C6FF7798BBFF6198D4FF599C
      DEFF72A6D8FF84ADD3FF78A5C5FF6FA2CEFF5A98D7FF629BCFFFA9C7DDFFA2B2
      BDFFD9DFE7FF929090FFCAC8C6FFBFBFBEFFC8C8C6FFCECFD0FFB7B7B7FFDCDC
      DCFFC7C7C7FFF3F3F3FFF1F1F1FFE2E2E2FFD0D0D0FFFDFDFDFFFEFEFEFFFEFE
      FEFFFEFEFEFEFEFEFEFEFDFDFDFFFCFCFCFEFCFCFCFFF9F9F9FEE6E7E7FEC4C8
      C7FFF5F6F6FEE5E5E5FEC3C1C1FEAFAEAEFFCFD0D1FEC7C9CCFEB1C3D4FF8FB3
      D7FE608AB4FE505E6EFFB7B7B5FECFD0D1FFBBC7D1FE729FCFFE5C97DBFF6DA1
      D4FEAFCBDEFE8898A3FFCBDEE1FEB4CBD7FE70A1D1FF4F96DAFE76A8D8FEC2D5
      E6FF79808CFEC6C8CBFEB1B2B1FFCCCECEFEB3B6B8FEC0C2C4FECCCCCCFFB0B0
      B0FECCCCCCFEEFEFEFFFEFEFEFFEC8C8C8FEEAEAEAFFFCFCFCFEFEFEFEFEFEFE
      FEFFFDFDFDFEFEFEFEFEFDFDFDFFFDFDFDFEFBFBFBFFECECECFEC9CBCBFEF6FA
      F8FFF5F7F5FEEFEFEDFEC0BEBEFEDCDCDCFFB5B6B7FED0D2D4FEA2B3C3FF91B4
      D8FE5D89B5FE445567FFD1D4D5FEAAACAEFFB7CBD9FE6298CFFE559CDFFF4079
      ADFE617A91FED5D9DDFFAEB2B6FED7DDE1FE91A8BEFF689DD1FE669CD0FE6783
      9DFFBFC7CDFEF6F8FAFEDCDEDEFFB8B8B8FECACBCAFEC0C1C1FEC3C3C3FFD0D0
      D0FEF4F4F4FEEFEFEFFFC5C5C5FEEFEFEFFEF9F9F9FFFAFAFAFEFEFEFEFEFEFE
      FEFFFDFDFDFFFAFAFAFFFCFCFCFFFBFBFBFFE5E7E7FFCBCDCDFFF0F4F3FFF0F6
      F3FFF4F7F5FFF6F6F5FFECEBEAFFC2C1C0FFDADBDCFFB2B4B6FFBBCCD7FF90B3
      D6FF5F8CBBFF4A5E76FFAFB6BCFFD2D6D8FF7E9AB2FF609CD3FF599FD9FF5A90
      C3FF2F557CFF919EADFFD6D6DEFFADB2B8FFD1DCE1FF84A5C0FF568EC6FF76A6
      D4FFA5B4BCFFE9EAEAFFA4A5A8FFDFDBDDFFB9B8B4FFC6C5C3FFC5C5C5FFF6F6
      F6FFF2F2F2FFCBCBCBFFEFEFEFFFFCFCFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFDFEFEFBFBFBFEF7F7F7FFE7E9E9FEC6C8C8FFEEF0F0FEF3F7F7FEF2F7
      F5FFF1F5F3FEF0F0EDFEF8F7F5FEEFEDEDFFBDBDBFFED3D6D7FE9DACB7FF8FB0
      D2FE6693C1FE364F6EFFCAD4DDFEAFB6BAFF80A1BDFE65A1D7FE73A6D6FFA0BC
      DCFE6693C1FE32577BFF8F99A7FED8DBDDFEA8AEAAFFB2C0CAFE4C759BFE619A
      D1FFC4E1F5FEB5B7B9FEE4DFDDFFA9A8ADFED5D7DCFEBBBBBAFEF8F8F8FFEEEE
      EEFEC7C7C7FEEFEFEFFFFAFAFAFEFCFCFCFEFCFCFCFFFEFEFEFEFEFEFEFEFCFD
      FDFFFDFDFEFEF4F3F6FEEBEAEBFFC8C7CAFEF7F6FAFFF1F0F9FEEDEEF9FED9DB
      E7FFEDEDF6FEF2F3F5FEF4F4F4FEF5F4F6FFF0EFF2FE9FA1A2FEAEBCC3FF96B1
      D2FE75A0CBFE2B4B6FFF6E788AFECBD6DDFF86A5C5FE64A2D4FE6C9ECCFFBFD1
      DFFE87A8C4FE447597FF637E97FEB3B4BDFE9FA3A3FF99A2A9FE466A8DFE5A96
      D1FF95B9DAFEECF2F5FEBBB8B7FFCFD2D3FEBBBCBFFEF9F8F8FEEFEFEFFFC5C5
      C5FEEDEDEDFEFAFAFAFFF8F8F8FEFDFDFDFEFDFDFDFFFEFEFEFEFEFEFEFEFDFE
      FEFFFDFDFDFFECEBECFFCCCBCDFFF4F3F8FFE3E1EBFFB9B5C7FFDBD7EEFFB1AD
      CAFFC7C4DCFFECEEF8FFF1F4F6FFF0F4F4FFF2F4F5FFEFF2F0FFBCC4CBFFA3B5
      D1FF77A5CCFF2F5B83FF586B80FF949FA8FF7B92AFFF64A1D8FF6299CDFFB8CA
      D1FFDFE5F1FF8FB0D3FF5C88B2FFC9D5E3FFB1B0B0FFC8D1D7FF3D6186FF5191
      D1FF95BCDFFFD0D6DBFFCACACAFFBEC1C1FFF4F4F5FFF1F1F1FFD0D0D0FFF1F1
      F1FFF9F9F9FFFCFCFCFFFCFCFCFFFDFDFDFFFDFDFDFFFEFEFEFFFFFFFFFFFDFD
      FDFFF8F8F8FEC7C7C7FEF4F3F4FFF6F5F9FEEBE9F5FFC0BBD1FEC1BBD9FED3CC
      F1FFB5B1D0FED1D3E4FEEBEFF9FEF1F6FBFFF5F6FDFEEFF0F3FEDFE2E8FFB2BF
      D0FE7CA9CCFE336998FF294463FE8E979FFFA8B7CBFE68A1DAFE6399D5FF88A1
      AEFEAEB0B5FEBFD6EBFF5D90C2FE91ADC8FEC9CED4FF929CA4FE254C75FE4B8E
      D2FF92BADDFEE0E7EDFEBFC0C2FFF4F6F6FEEBEBECFECCCBCBFEEEEEEEFFFCFC
      FCFEFCFCFCFEFDFDFDFFFCFCFCFEFDFDFDFEFDFDFDFFFEFEFEFEFEFEFEFEFFFE
      FEFFFDFCFCFED7D6D5FEDFDFDDFFF3F3F4FEF6F5FBFFEBEAF9FEBDB8D3FEAEA6
      CDFFC6BFE6FEA3A3C0FEC4C7DFFEEBEFFEFFF0F1FDFEF0F2F5FEF4F8F7FFDAE2
      E7FE95B9D8FE5083B9FF355780FE939FAAFFC2CCD4FE7EABD9FE6B9FE0FF435D
      7EFEA9B0BAFE758B9DFF5C8EBFFE6F97BEFE9BACBBFF4D5669FE214D7BFE4D91
      D4FF9DC2E1FEE6EDF1FEF1F2F5FFF3F4F4FEC8C7C7FEF0EFEFFEFBFBFBFFFBFB
      FBFEFDFDFDFEFDFDFDFFFDFDFDFEFDFDFDFEFDFDFDFFFEFEFEFEFEFEFEFEFEFC
      FEFFFDFBFCFFF5F3F2FFDAD9D5FFDDDEDBFFF7F9FAFFF5F6FDFFE8E6F9FFBFB7
      DAFFB0A9D1FFCECAEDFFA8A6C5FFC3C2DAFFF0F0FCFFF4F7F6FFF4F7F0FFF3F4
      F3FFB0C7DFFF6895C9FF32608FFF607B8FFFBBC8D0FF93B1D3FF6DA0DBFF2849
      7BFF152A47FF133155FF477FB2FF72A1CFFF839FB6FF203254FF2D5D91FF5995
      D1FFB4D4EBFFF7FCFFFFF0F1F4FFCBCBCCFFEEECEDFFFCFBFCFFF6F6F6FFFDFD
      FDFFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFDFC
      FDFFFDFCFDFEF8F7F7FEF8F7F5FFDADBD7FEDFE0DFFFF5F7F9FEF3F4FBFEECE9
      F9FFD4D0E8FEECE8FDFEDDD8F2FEAFABC3FFCDCADBFEF2F2F6FEF7F7F2FFF7F5
      F3FECDD9E7FE85AAD3FF588CBBFE376384FF567088FE304768FE3C6B95FF3E74
      ACFE1E5386FE22568BFF4F91C8FE5589C1FE1F4D6EFF1D4974FE3E73ADFE76A8
      D7FFD3EAF7FEF7F9FBFECAC9CBFFF1F1F3FEFCFCFCFEFAF8F8FEFAFAFAFFFCFC
      FCFEFDFDFDFEFDFDFDFFFDFDFDFEFDFDFDFEFEFEFEFFFEFEFEFEFEFEFEFEFCFD
      FCFFFDFDFDFEFCFBFDFEFBF9FAFFF9F9F8FED8D9D8FFDEDFE1FEF8F9FBFEF4F5
      F8FFF6F5FCFEF7F4FBFEF9F5FEFEE3DEEDFFD8D3E4FEF0EFF7FEF9FAFAFFF4F5
      F7FEE6EBF1FEA2BAD5FF7AA7D6FE386A9CFF275483FE1F3F66FE0D3155FF497F
      B5FE2B6CAAFE2A6EABFF5297D1FE34629DFE104170FF1C5790FE4D85C2FEA2CA
      E9FFDEECF1FEDEDEDFFEEFEDECFFF9FAFDFEFCFCFEFEFEFCFDFEFDFDFDFFFDFD
      FDFEFCFCFCFEFDFDFDFFFDFDFDFEFDFDFDFEFEFEFEFFFEFEFEFEFEFEFEFEFDFE
      FDFFFEFEFEFFFBFAFCFFFDFCFDFFFAF9F9FFF3F3F3FFD8D7D8FFE0DFE1FFFAFB
      FCFFFCFBFCFFFCFBFAFFFDFAFEFFFAF6FDFFF4EFFAFFF1F0F6FFFAFCFCFFF7FB
      FBFFF2F7F6FFD1DBE7FF99B6DBFF5B8FC2FF316FA6FF265786FF1E4B76FF214C
      7DFF3B6EA8FF3374B2FF3372AFFF1D4782FF295994FF3B7BC0FF639BD4FFCBE3
      F1FFC1C9C8FFEFF3F3FFFDFCFCFFF9FAFBFFFCFCFEFFFEFDFDFFFDFDFDFFFDFD
      FDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFEFE
      FEFFFEFEFEFEFAFAFAFEFAFAFAFFFCFCFCFEFCFCFCFFF7F7F7FED9D9DAFEDFDF
      E0FFF7F8F4FEFAFBF7FEFBFBFCFEFAF7FEFFF8F5FCFEFAF9FCFEFDFAFDFFFAFB
      FCFEF6F9F7FEF5F4F8FFDCE5F4FE89B2D5FF65A2D6FE3F79B7FE28639CFF225C
      92FE215A94FE1D5A98FF1B5899FE2664A4FE4484C6FF5694D4FE98BFE2FEC4C9
      CAFFEEF1ECFEF6FDFEFEF6F6F7FFFAFAFAFEFAFCFCFEFDFDFDFEFEFEFEFFFDFD
      FDFEFDFDFDFEFEFEFEFFFDFDFDFEFDFDFDFEFEFEFEFFFEFEFEFEFEFEFEFEFEFE
      FEFFFDFDFDFEFCFCFCFEFDFDFDFFFCFCFCFEF9F9F9FFFAFAFAFEF5F5F5FED6D6
      D6FFE0E2DDFEFAFBF6FEFBFBFBFEF9F7FBFFFBF9FDFEFCFCFCFEFBFCFBFFFAFC
      FCFEFAFBFDFEFCFCFDFFF9F9FBFECBD8E5FFA4C3E2FE7AA8DBFE5C90C8FF4083
      C3FE3984C9FE3A7FC3FF3E81C0FE4D90C6FE80B3DEFFA8C5E1FEBDC5CDFEF3F2
      EBFFFAFBF9FEF8FBFEFEFBFCFCFFFCFCFAFEFDFDFCFEFEFDFDFEFEFEFEFFFDFD
      FDFEFDFDFDFEFEFEFEFFFDFDFDFEFDFDFDFEFEFEFEFFFEFEFEFEFEFEFEFEFEFE
      FEFFFEFEFEFFFEFEFEFFFDFDFDFFFCFCFCFFFCFCFCFFFCFCFCFFF7F7F7FFF9F9
      F8FFD8DAD5FFE2E4DFFFF8F9F7FFF8F7F8FFFBFBFBFFFBFCFAFFF5FBF4FFF6FC
      F6FFE8EBEAFFE5EBEAFFF2F7F5FFF9F8F7FFF2F5F8FFD3E2ECFFBAD2E7FF90B0
      D2FF9AC3E3FF6693B5FF91BAD3FFB8D4EAFFDBEBF4FFBFC3C5FFEFEEEEFFFAFD
      FBFFF9FAFCFFFDFBFEFFFDFEFBFFFBFCFAFFFCFDFDFFFCFDFDFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFF
      FFFFFEFEFEFEFDFDFDFEFEFEFEFFFDFDFDFEFDFDFDFFFBFBFBFEFCFCFCFEFCFC
      FDFFFAFAFAFED3D3D1FEE3E3E3FEF8F7F9FFFCFBFCFEF8F8F7FED4D4D3FFE6E3
      E2FEF1EAE8FEDADADAFFDBE1E5FEE2E5EBFFF6F7F9FEF7FBF8FEEEF4F4FFE4E6
      E7FEC1C4C7FEC4CCCFFFECF3F5FEF0F3F6FEC1C4CBFFE7EEF3FEEEF8FDFEEEF9
      FCFFFBFCFDFEFEFDFCFEFCFDFAFFFEFDFEFEFAFCFEFEFBFDFEFEFEFEFEFFFDFD
      FDFEFDFDFDFEFEFEFEFFFDFDFDFEFDFDFDFEFEFEFEFFFEFEFEFEFEFEFEFEFFFF
      FFFFFEFEFEFEFDFDFDFEFDFDFDFFFDFDFDFEFEFEFEFFFDFDFDFEFCFBFCFEFDFC
      FDFFFCFBFCFEF1F1F2FED3D2D4FEE3E2E4FFFAFAFBFEF6F5F7FEEFF1F3FFC6C6
      C6FED1CCC8FEDFDCD8FFDCDDDEFEDBDDE2FFE6E9EDFEF3F7F8FEF6FBF8FFEEF2
      ECFEF5F6F3FEEBEAEFFFE8E7ECFEC0C0C3FEDFE2E5FFE4EAEEFEDEEAEDFEE0E7
      E9FFFDFCF9FEFAFDF8FEF9FDFEFFFEFCFEFEFDFEFDFEFCFEFDFEFEFEFEFFFDFD
      FDFEFDFDFDFEFEFEFEFFFDFDFDFEFDFDFDFEFEFEFEFFFDFDFDFEFEFEFEFEFFFF
      FFFFFEFEFEFEFDFDFDFEFEFEFEFFFDFDFDFEFDFDFDFFFDFDFDFEFDFDFDFEFCFC
      FDFFFAF9FBFEFBFAFCFEFAF9FAFED5D4D5FFE3E3E4FEFAF9FBFEF6F7F9FFEFF0
      F2FED2D3D5FECFD0D2FFD8D8D8FEDEDEDCFFDDDDDAFEF4F6F5FEF5F8F4FFF7F9
      F2FEF9FAF5FEF0F0EFFFCDCCCDFEEFEEEDFEF9FBFBFFF7FAFBFEF9FCFAFEFDFD
      FAFFFEFEF6FEFAFDFBFEF7FCFFFFFDFDFDFEFEFEFBFEFEFEFDFEFEFEFEFFFDFD
      FDFEFDFDFDFEFEFEFEFFFDFDFDFEFDFDFDFEFEFEFEFFFEFDFDFEFEFEFEFEFFFF
      FFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFE
      FCFFFBFCFBFFFCFCFCFFFBFBFBFFF7F8F6FFD3D3D3FFE1E0E2FFF9F9FAFFF9F8
      F9FFF4F4F6FFE1E3E6FFCFD0D1FFD1CDCDFFDAD5D4FFEBE9E9FFFAF8F9FFF6F5
      F9FFECEDEDFFC3C6C4FFEBEEECFFF6F8F9FFFAFCFDFFFCFCFCFFFCFBFDFFFDFC
      FCFFFEFDFAFFFCFCFDFFFAFCFFFFFDFEFBFFFEFEFCFFFEFDFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFEFEFFFFFF
      FFFFFEFEFEFEFDFDFDFEFEFEFEFFFDFDFDFEFDFDFDFFFEFEFEFEFDFDFDFEFDFE
      FDFFFDFDFDFEFCFCFCFEFCFCFBFEF8F9F8FFF6F6F6FED7D7D7FEE1E2E1FFF9FA
      F9FEF9F9F9FEEEEFEFFFC7C8C8FED1CFCFFFE8E5E6FEEDEBECFEF4F2F3FFF4F3
      F5FEC7C7C8FEEEEFEFFFF9FAFAFEFAFCFCFEFCFDFDFFFEFDFEFEFCFCFEFEFDFD
      FEFFFDFDFCFEFDFDFEFEFDFDFEFFFDFEFCFEFDFEFDFEFDFDFDFEFEFEFEFFFDFD
      FDFEFDFDFDFEFEFEFEFFFDFDFDFEFDFDFDFEFEFEFEFFFEFEFEFEFEFEFEFEFFFF
      FFFFFEFEFEFEFDFDFDFEFEFEFEFFFDFDFDFEFEFEFEFFFEFEFEFEFCFCFCFEFDFD
      FDFFFEFEFEFEFCFCFCFEFDFDFDFEFCFCFCFFFCFCFCFEF6F6F6FED7D7D7FFE0E0
      E0FEF8F8F8FEF9F9F9FFF0F0F0FECDCDCDFFE7E7E7FEF7F7F7FEF5F5F5FFCCCC
      CCFEEEEEEEFEFCFCFCFFFCFCFCFEFAFAFAFEFBFBFBFFFDFDFDFEFDFDFDFEFEFE
      FEFFFDFDFDFEFDFDFDFEFEFEFEFFFDFDFDFEFDFDFDFEFDFDFDFEFEFEFEFFFDFD
      FDFEFDFDFDFEFEFEFEFFFDFDFDFEFDFDFDFEFEFEFEFFFEFEFEFEFEFEFEFEFFFF
      FFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFD
      FDFFFEFEFEFFFDFDFDFFFDFDFDFFFCFCFCFFFDFDFDFFF9F9F9FFF2F2F2FFD7D7
      D7FFE4E4E4FFFBFBFBFFF9F9F9FFECECECFFDBDBDBFFEFEFEFFFCBCBCBFFEEEE
      EEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFF
      FFFFFEFEFEFEFDFDFDFEFEFEFEFFFDFDFDFEFEFEFEFFFEFEFEFEFDFDFDFEFDFD
      FDFFFEFEFEFEFDFDFDFEFEFEFEFEFCFCFCFFFBFBFBFEFCFCFCFEFAFAFAFFF8F8
      F8FED8D8D8FEE1E1E1FFF6F6F6FEF6F6F6FFEDEDEDFEC4C4C4FEF1F1F1FFFBFB
      FBFEFDFDFDFEFDFDFDFFFEFEFEFEFDFDFDFEFEFEFEFFFEFEFEFEFDFDFDFEFEFE
      FEFFFDFDFDFEFDFDFDFEFEFEFEFFFDFDFDFEFDFDFDFEFDFDFDFEFEFEFEFFFDFD
      FDFEFDFDFDFEFEFEFEFFFDFDFDFEFDFDFDFEFEFEFEFFFEFEFEFEFEFEFEFEFFFF
      FFFFFEFEFEFEFDFDFDFEFEFEFEFFFDFDFDFEFEFEFEFFFEFEFEFEFBFBFBFEFDFD
      FDFFFEFEFEFEFDFDFDFEFEFEFEFEFDFDFDFFFDFDFDFEFDFDFDFEFDFDFDFFFCFC
      FCFEF8F8F8FED4D4D4FFE5E5E5FEEFEFEFFFCBCBCBFEEFEFEFFEFAFAFAFFFDFD
      FDFEFDFDFDFEFDFDFDFFFEFEFEFEFEFEFEFEFEFEFEFFFEFEFEFEFDFDFDFEFEFE
      FEFFFDFDFDFEFDFDFDFEFEFEFEFFFDFDFDFEFDFDFDFEFDFDFDFEFEFEFEFFFDFD
      FDFEFDFDFDFEFEFEFEFFFDFDFDFEFDFDFDFEFEFEFEFFFDFDFDFEFEFEFEFEFFFF
      FFFFFEFEFEFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFEFE
      FEFFFEFEFEFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFBFBFBFFFBFB
      FBFFF8F8F8FFF2F2F2FFD1D1D1FFC5C5C5FFEBEBEBFFFCFCFCFFFCFCFCFFF9F9
      F9FFFCFCFCFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFF
      FFFFFEFEFEFEFEFEFEFEFFFFFFFFFEFEFEFEFEFEFEFFFEFEFEFEFEFEFEFEFEFE
      FEFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFEFEFEFEFEFEFEFEFDFDFDFFFCFC
      FCFEFDFDFDFEFDFDFDFFFBFBFBFEF7F7F7FFFDFDFDFEFEFEFEFEFEFEFEFFFEFE
      FEFEFDFDFDFEFEFEFEFFFEFEFEFEFEFEFEFEFEFEFEFFFEFEFEFEFEFEFEFEFEFE
      FEFFFEFEFEFEFEFEFEFEFEFEFEFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFEFE
      FEFEFEFEFEFEFEFEFEFFFEFEFEFEFEFEFEFEFEFEFEFFFEFEFEFEFEFEFEFEFFFF
      FFFFFEFEFEFEFEFEFEFEFFFFFFFFFEFEFEFEFFFFFFFFFEFEFEFEFEFEFEFEFFFF
      FFFFFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFFFEFE
      FEFEFDFDFDFEFDFDFDFFFDFDFDFEFCFCFCFFFEFEFEFEFEFEFEFEFEFEFEFFFEFE
      FEFEFEFEFEFEFEFEFEFFFEFEFEFEFEFEFEFEFFFFFFFFFEFEFEFEFEFEFEFEFFFF
      FFFFFEFEFEFEFEFEFEFEFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFEFE
      FEFEFEFEFEFEFFFFFFFFFEFEFEFEFEFEFEFEFFFFFFFFFEFEFEFEFEFEFEFE0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002800
      0000200000004000000001002000000000008010000000000000000000000000
      000000000000FFFFFFFFFFFEFFFFFFFFFEFFFFFFFFFFFEFEFEFFFEFEFEFFFFFF
      FEFFFEFFFFFFFFFFFEFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFEFEFFFFFFFF
      FEFFFEFFFEFFFEFFFFFFFFFFFEFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFDFFFDFCFEFFFEFEFCFFFCFDFEFFFEFDFDFFFEFDFCFFFEFE
      FCFFFBFEFCFFFEFEFBFFFBFEFEFFFBFEFEFFFBFDFEFFFEFEFEFFFCFDFEFFFCFE
      FCFFFAFEFBFFFBFCFCFFF3F3EEFFDFE2E2FFF7FAFCFFFBFCFBFFFCFCFCFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFCFEFDFFF9FDFDFFFCFEFAFFFDFCFEFFF9FEFEFFF8FDFDFFFBFE
      FDFFFAFDFDFFFBFEFCFFFCFDFDFFFDFDFDFFFDFEFBFFFBFEFBFFFBFDFBFFFCFC
      FCFFFDFDF9FFF5F3F4FFD5D6D7FFE2E2DFFFE0E0E3FFF9FAF9FFFBFBFBFFFEFE
      FEFFFEFEFEFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFCFFEFE9DDFFE9E1D1FFF7F4E5FFECE9DBFFE9E1CFFFECE2
      CFFFE8E0D1FFF6F5EBFFF2EDE0FFEAE1D0FFE8E1D1FFEBE6DDFFFDFBF3FFEAE0
      D1FFE7DFCCFFCBBCADFFE5E0D3FFF6F5F0FFE9E7E8FFDDDCDDFFF8F8F8FFFBFB
      FBFFFEFEFEFFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFF8FFFBFFAD7D4FFF954F07FFC9AF86FF945A24FF945514FF9756
      17FF995006FFCCB795FF9A652BFF995C1AFF93550EFF925D26FFC7B28EFF9050
      0EFF955516FF984C0DFF95561EFFD9D6D0FFF3F2F2FFE3E5E7FFDFDFDFFFF8F8
      F8FFFCFCFCFFFCFCFCFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFBFFF9FFAD7E4EFF9E4D05FFC4A270FF9C4D05FFAE773CFFBE90
      5CFF9F4D06FFA88855FF974C09FFB79866FF9F7031FF914C0DFFAE844CFF9950
      03FFA8824BFF964C09FF9A5717FFC9C3BDFFD7D7D7FFF0F1F1FFE5E5E5FFE1E1
      E1FFF7F7F7FFFBFBFBFFFCFCFCFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFFFEFAFFAC7E4DFF9D4C06FFC4A170FF984F04FFAA783BFFBC94
      5EFF9D4D04FFA58655FF964C09FFA36C2DFF975B1AFF884D0EFFD5C29DFF995F
      21FFA4662AFF994D05FF9A551AFFD3CCC1FFC1BFBEFFC0C1C0FFF2F2F1FFE6E8
      E8FFE2DEE2FFF7FAF6FFFCFAFBFFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFBFFAF8148FF9B4E03FFC4A16FFF974E04FFA9793CFFBD93
      63FFA14E01FFA48655FF924C0BFFAB7037FFA35E1BFF944E07FFDFD0ADFFD2BE
      9BFFA4723EFF994D03FF94541AFFBFC7C7FFA9AEB6FFC7C6C8FFD5D5D3FFF7F8
      F4FFE9E8E9FFDCDFE0FFFAF8FAFFFBFBFBFFFDFDFDFFFDFDFDFFFEFEFEFFFEFE
      FEFFFEFEFEFFFDFDFCFFAE8048FF984C07FFC3A171FF954D06FFAD773CFFBA91
      5FFF9E4F02FFA78755FF944C0DFFB6976AFF9F7033FF8B4D0BFFC4A36FFF944C
      0BFFBC9863FF944B0CFF835025FF6C9FCCFF76A9CDFFB3C5D6FFC2C8C8FFCDD1
      D2FFF0F0F0FFE4E2E4FFDDDDDCFFF4F4F4FFFAFAFAFFFCFCFCFFFDFDFDFFFDFD
      FDFFFEFEFEFFFAFEF8FFAF7F49FF9B4D09FFD0AF87FFBD956AFFBE9C6FFFAD79
      3DFF9F4E05FFCCB492FFB89875FFBDA377FFB3966EFFAF957AFFCBCDC5FFAE90
      6CFFB99B71FFAF8D5BFFB4A28CFF6E9DCAFF5098D9FF589AD8FFA5C2D8FFAAAD
      AEFFD6D1D5FFF3F4F6FFE7E7E4FFE0E0E0FFF9F9F9FFFCFCFCFFFDFDFDFFFDFD
      FDFFFEFEFEFFFDFCFDFFA87C54FF8B4D0DFFD3BF9EFFFCFEFAFFFDFDF5FFB794
      63FF904B0DFFD2C5ACFFE0E3E2FFE5E7E7FFA4B4BBFF87ACCDFF8BAAC6FFB1BD
      CDFFC8CFD0FFABAFA7FFE6E6EBFFA3B7C3FF91B3D9FF548BC6FF6AA8DFFFB3CA
      DDFFC4C6C8FFD2D3D4FFF5F4F4FFE5E5E5FFE2E2E2FFF9F9F9FFFBFBFBFFFDFD
      FDFFFEFEFEFFFEFEFCFFE9E3D6FFE1DAC6FFF2F0E5FFFDFCFCFFFDFCFCFFEBE7
      D7FFDAD1BDFFF3F1E7FFF1F1ECFFA8B1B7FF8BABC6FF779CC0FFB3BDC6FFB8BB
      BDFFA6A9A8FFAAB2BCFFB2C0C9FFA8B5BEFFB7BEC1FF93A8BEFF4B90CCFF71A6
      D0FFCAD5D7FFC2C0BFFFBEBFC0FFF2F2F2FFE4E4E4FFDFDFDFFFF7F7F7FFFBFB
      FBFFFEFEFEFFFEFEFEFFFEFEFDFFFEFEFDFFFDFEFCFFFDFDFCFFFBFBFBFFF3F2
      F2FFD8D7D6FFEFF0EEFFC0C3C3FFA0AFBDFF89ADCFFF7590ABFFB9BFC2FFA0A6
      A8FF677F90FF4175A9FF558BC3FF487CB5FF87A3BBFFB6C4CCFF6C97B9FF689E
      CEFFC2CCD5FFA6A5A7FFC7C7C5FFD5D5D5FFF2F2F2FFE5E5E5FFDFDFDFFFF8F8
      F8FFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFCFCFCFFF9F9F9FFEFF0F0FFD8D8
      D8FFECEAEAFFC6C5C5FFC0C2C3FFA0B5C8FF80A6CCFF7D8C9BFFA9AAABFFABB7
      C1FF6191C2FF599BDCFF74A6D6FF6CA0CCFF6099D2FF86B0D2FFA9BCC8FFB7C1
      CCFFB3B2B1FFCAC9C8FFC7C7C7FFC7C7C7FFD4D4D4FFF3F3F3FFDFDFDFFFE4E4
      E4FFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFCFCFCFFF1F1F1FFD3D6D5FFF3F4
      F3FFCAC9C9FFC0C0C0FFC5C7CAFFA6BDD2FF6F98C2FF78828DFFC2C2C3FFA5BC
      D1FF5D99DAFF79A8D3FF9DACB6FFC6D5D8FF8BAFCFFF5797D5FF9DB9D3FFA1A7
      B0FFCACBCBFFBEC1C0FFC3C5C7FFC2C2C2FFCCCCCCFFF0F0F0FFD2D2D2FFF2F2
      F2FFFEFEFEFFFEFEFEFFFCFCFCFFFCFCFCFFF1F2F2FFD6D7D7FFF2F6F5FFF5F6
      F5FFE7E6E5FFD2D2D2FFBFC1C2FFA5BBCEFF6E99C5FF6A798AFFC1C4C7FF81A4
      C3FF599DDAFF4375A5FF8594A6FFC3C4CBFFBEC9D1FF729DC5FF6897C5FFC1CA
      CFFFCED0D1FFCAC9C8FFC2C1BFFFD2D2D2FFF3F3F3FFD5D5D5FFF6F6F6FFFDFD
      FDFFFEFEFEFFFEFEFEFFFBFBFBFFF3F3F3FFD2D3D4FFF1F2F5FFF1F5F6FFF0F2
      F2FFF5F4F3FFE3E2E3FFC7C8CAFF9BAEBDFF759FCAFF566C86FFC4CCD3FF77A0
      C4FF6EA4D6FF95B3D2FF3F6A91FFA0AAB8FFB7BCBBFF8B9DACFF578EC3FFB9D0
      E1FFCDCAC9FFBBBCC1FFCFCFCFFFF2F2F2FFD3D3D3FFF5F5F5FFFCFCFCFFFDFD
      FDFFFEFEFEFFFCFEFEFFF3F2F4FFD5D4D7FFEDECF3FFD3D0E1FFC4C1D9FFDBDB
      EBFFF1F3F6FFF3F5F5FFDEE0E0FFB5C1CDFF83A9CFFF2B4D70FF96A2ACFF779B
      BFFF639DD2FFC3D1DBFF97B6D4FF7A99B8FFACADB0FF97A5B2FF4680BAFFB5D3
      EBFFC8C8CAFFCACCCDFFF3F2F2FFD9D9D9FFF4F4F4FFFBFBFBFFFCFCFCFFFDFD
      FDFFFEFEFEFFFEFEFEFFD8D7D7FFF2F2F2FFF1F0F8FFC5C1D8FFC8C1E4FFB9B6
      D4FFDBDFEDFFF0F4FCFFF1F2F6FFDADEE5FF92B4D0FF346492FF707D8CFFA0B9
      D3FF639CD9FF8D9FADFFB3C2D1FF608FBDFFB1BFCCFF607081FF3E7DBDFFB2D0
      E9FFCFD1D4FFF2F3F3FFD6D6D6FFF5F5F5FFFCFCFCFFFDFDFDFFFDFDFDFFFDFD
      FDFFFEFEFEFFFEFCFEFFF3F2F1FFD9D9D5FFF4F5F6FFF0EFFBFFBEB8D8FFBFB9
      DFFFAFAECDFFDADBEDFFF3F4F8FFF4F7F2FFC0D3E5FF5483B8FF5B7790FFB1C2
      D0FF73A3DBFF314A73FF2F4763FF568ABDFF87A5C0FF273D5FFF4A86C4FFC5DE
      F0FFF3F5F8FFD6D6D7FFF6F4F5FFF9F9F9FFFDFDFDFFFEFEFEFFFDFDFDFFFEFE
      FEFFFEFEFEFFFDFCFDFFFBFAFAFFF5F5F3FFD9DAD8FFF3F4F7FFF1F0F9FFE4E0
      F3FFEAE5F9FFBDB8CDFFEAE9F2FFF7F6F3FFE0E6EFFF82A9D2FF406F98FF405C
      7AFF2A5076FF356DA5FF245D94FF5493CDFF265680FF235587FF71A3D3FFDEEC
      F4FFE1E0E1FFF6F7F9FFFCFAFAFFFBFBFBFFFCFCFCFFFDFDFDFFFEFEFEFFFEFE
      FEFFFEFEFEFFFDFDFDFFFCFBFCFFFCFBFBFFF1F1F1FFD8D8D9FFF7F7F9FFFBFA
      FBFFFCF9FCFFF4F0FAFFF0EEF6FFF9FBFCFFF0F5F6FFB6C8DFFF6392C4FF2C62
      96FF1B456EFF326196FF3373B0FF3670ADFF1F4C84FF3A78BBFFA6C9E7FFCDD5
      D5FFFAF9F9FFF9FAFDFFFEFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFCFCFCFFFBFBFBFFFBFBFBFFF5F5F5FFD7D7D8FFF6F8
      F3FFFBFBFBFFFAF7FDFFFAF8FCFFFDFBFDFFF8FAFAFFF5F4FAFFADC7E0FF659D
      D2FF3771ACFF24629DFF2261A0FF2564A5FF4383C2FF71A3D6FFC8D2D6FFF3F7
      F5FFF8FAFBFFFAFBFAFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFDFDFDFFFCFCFCFFFCFCFCFFFAFAFAFFF3F3F3FFD9DA
      D6FFF8F8F6FFF8F8F9FFFCFDFBFFF6FCF6FFF1F5F3FFEEF3F2FFF4F6F6FFDDE9
      F4FFA5C3E0FF7FADD9FF679DCAFF83B2D5FFBBD7EAFFCBD0D4FFF6F7F4FFFAFA
      FCFFFCFDFCFFFCFDFBFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFCFCFCFFFDFCFDFFF5F5
      F4FFD6D7D6FFF8F7F9FFF9F9F9FFD9D8D9FFE5DFDCFFDBDBDCFFDCE0E7FFF5F7
      F9FFF1F7F6FFDEE0E1FFD2D7DBFFE7EBEFFFCDD0D5FFE0E8EDFFE2EEF2FFFDFD
      FCFFFBFEFBFFFEFDFEFFFAFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFFFFFFFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFDFFFAF9
      FAFFF4F3F5FFD8D8D9FFF7F7F8FFF2F4F5FFD4D5D5FFD6D6D5FFDEDEDDFFE3E5
      E4FFF6F9F7FFF6F7F0FFF3F2F2FFD6D5D5FFF3F5F4FFF7FCFCFFF9FCFAFFFDFD
      F7FFF8FCFEFFFEFDFDFFFEFEFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFD
      FDFFFEFEFEFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFCFC
      FCFFFCFCFCFFF1F2F1FFD8D7D8FFF7F7F7FFF7F6F8FFDBDDDEFFCDCBCBFFDFDA
      DAFFF6F3F4FFF4F3F6FFD0D2D1FFF1F4F3FFFAFCFDFFFCFCFDFFFDFCFDFFFDFD
      FBFFFBFCFEFFFDFEFBFFFEFDFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFFFEFEFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFAFAFAFFF5F5F5FFD9D9D9FFF7F7F7FFF5F5F5FFD4D3D3FFEEEE
      EEFFF4F4F4FFD8D8D8FFF4F4F4FFFBFBFBFFFBFBFBFFFDFDFEFFFEFDFEFFFEFE
      FEFFFEFDFEFFFEFEFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFEFE
      FEFFFDFDFDFFFCFCFCFFFAFAFAFFF0F0F0FFDCDCDCFFF8F8F8FFF2F2F2FFE4E4
      E4FFD6D6D6FFF5F5F5FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFFFFFFFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFEFE
      FEFFFEFEFEFFFDFDFDFFFDFDFDFFFCFCFCFFF4F4F4FFD9D9D9FFF2F2F2FFD4D4
      D4FFF6F6F6FFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFD
      FDFFFEFEFEFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFBFBFBFFFAFAFAFFF1F1F1FFD4D4D4FFF4F4
      F4FFFDFDFDFFFBFBFBFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFCFCFCFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002800000018000000300000000100200000000000600900000000
      0000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFDFEFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFCFDFDFEFBFDFBFEFCFCFDFEFBFDFCFEFCFD
      FCFEFAFDFBFEFCFEFCFEFBFDFDFEFCFCFBFEFCFEFBFEFBFDFDFEFBFCF9FEF6F4
      F5FED8D9D5FEE9EAEDFEF9FBFAFEFCFCFCFEFDFDFDFEFDFDFDFEFDFDFDFEFDFD
      FDFEFDFDFDFEFDFDFDFEFEFEFEFEFDFCFAFEEEE8DBFEF6F2E6FEEEECE1FEEEE9
      D9FEEDE7DCFEF8F8F0FEEFE9DEFEECE8DCFEF2F0EAFEF5F1E8FEECE5D7FED4C9
      BEFEEEEDE5FEE7E6E6FEE8E8E8FEFAFAFAFEFDFDFDFEFDFDFDFEFDFDFDFEFDFD
      FDFEFDFDFDFEFDFDFDFEFEFEFEFEF5F7EEFE944D0BFEBA9463FE965417FEA069
      2EFE9A4E06FEBCA077FE935513FEA06824FEA57742FEA27039FE985B1AFE984C
      0BFEB59677FEE8E7E7FEE2E4E4FEE9E9E9FEFAFAFAFEFBFBFBFEFDFDFDFEFDFD
      FDFEFDFDFDFEFDFDFDFEFEFEFEFEF8F7EDFE974D09FEB98B57FE9A4F04FEC1A1
      71FE9C4C05FEA07741FE96571AFEAC864BFE9A682EFEA46D31FEA57034FE994D
      07FEB4916FFECFCECCFEDEDFDEFEE6E7E6FEEAE9EBFEF9FAF9FEFDFCFCFEFDFD
      FDFEFEFEFEFEFDFDFDFEFEFEFEFEF9F6EDFE974E05FEB88B55FE974E03FEBFA2
      73FE9E4D03FE9C7743FE9A510FFEA76624FEA06929FED9C9A9FEA97742FE9A4C
      02FEAC9074FEACB1B6FECAC9CAFEE7E9E6FEE9E7E8FEE8EAEAFEFAF9FAFEFCFC
      FCFEFDFDFDFEFDFDFDFEFEFEFEFEF7F6EEFE944E07FEB98B57FE964D06FEBE9A
      68FE9B4D04FEA27C4BFE94581DFEB48E56FE996930FEA8743BFEAD7D43FE924C
      0BFE737980FE69A3D1FEA3BBD0FEC2C8C8FEE0E0E1FEE4E3E4FEE7E8E7FEF9F9
      F9FEFCFCFCFEFDFDFDFEFEFEFEFEF7F5EEFE944C0AFEC49F74FEE5DAC8FED1BD
      98FE9C4C07FEDBCDB5FED0C7B7FEBEBAAAFEA4B2BDFEAFBAC4FEC9C2B5FEB6AE
      98FEB6C4D0FE6BA1D5FE5696D6FEA7C2D6FECDCCCFFEE5E7E8FEE6E6E5FEEBEB
      EBFEFAFAFAFEFDFDFDFEFEFEFEFEFBFAF7FEC7B59BFEE0D8C6FEFDFCFBFEF1EE
      E4FEC4B094FEEEEBE0FED3D6D5FE91ABC0FE81A2C3FEBAC3CAFEAAAFAEFEADB4
      BBFEBAC7CEFEB7C0C7FE7697BAFE589BD3FEBCCBD1FEC3C1C1FEE3E3E4FEE4E4
      E4FEE9E9E9FEFAFAFAFEFDFDFDFEFEFEFDFEFEFEFDFEFDFDFCFEFBFCFBFEF6F6
      F6FEDEDDDCFEDDDEDDFEB4BCC1FE8AABCBFE869CAFFEA9AEB0FE748DA0FE4881
      BAFE5089C5FE7198BCFEA8BBC7FE6F9EC6FEB0BFCCFEB4B3B3FECECDCDFEE8E8
      E8FEE4E4E4FEE8E8E8FEFDFDFDFEFEFEFEFEFDFDFDFEFCFCFCFEF3F4F4FEDBDD
      DDFEDEDDDDFEC3C3C3FEB3BDC6FE7DA3C8FE848C94FEBEC3C8FE6999CEFE79AB
      DAFE93B2C7FE7BA9D3FE74A8D7FEADB9C5FEB4B4B4FEC1C2C2FEC4C5C5FEC7C7
      C7FEF0F0F0FED9D9D9FEFDFDFDFEFDFDFDFEFCFCFCFEF6F6F6FEDCDEDDFEF3F7
      F5FEE4E3E2FECBCBCBFEB7C1C9FE779FC7FE838F9BFEACB9C4FE5C9BD6FE4A76
      9FFEBABFC7FEB9C4CEFE6A9BC9FE90A9BEFED7D9DAFEC6C5C4FEC3C3C3FEEBEB
      EBFEDBDBDBFEF8F8F8FEFDFDFDFEFDFDFDFEF4F3F4FEDBDBDDFEEFF1F6FEEAED
      F1FEF3F3F2FEE4E3E5FEAFB7BCFE80A5CCFE667991FEA0B4C6FE6AA1D3FE93B2
      D0FE5A7894FEB4B8B9FE7790A6FE85B2DCFED0D0D0FEC2C3C6FEE6E6E6FED9D9
      D9FEF6F6F6FEFCFCFCFEFEFEFEFEFBFCFCFEDCDCDDFEEEECF4FEC5C0D7FEC0BB
      D9FEE6E9F2FEF2F5F8FEDEE2E5FE92B0CEFE385C7FFE919FB0FE649DD5FEB3C0
      C9FE81A7CCFEB5C0CBFE6F869DFE70A5D7FECED1D5FEE4E5E6FEDEDEDEFEF8F8
      F8FEFCFCFCFEFDFDFDFEFEFEFEFEFDFCFDFEE1E0DEFEEFEFF1FEE1DFF0FEB8B1
      D7FEB7B6D4FEE3E4F4FEF3F6F4FEC4D5E4FE4773A4FE9CABB7FE7AA6D9FE4A60
      7EFE4A7298FE7FA0BFFE2E4C72FE7DAFDCFEEFF3F6FEDDDCDDFEF7F6F7FEFCFC
      FCFEFDFDFDFEFDFDFDFEFEFEFEFEFCFCFCFEF9F8F8FEE2E3E1FEEFF0F4FEEAE8
      F5FEEEEAFAFECDC9DBFEF4F4F6FEE7EBF0FE7EA5CEFE3B648AFE26486EFE346C
      A4FE3B7BB3FE2E5E8FFE31669CFEB2D2EAFEE3E3E4FEF8F8FAFEFBFAFBFEFCFC
      FCFEFDFDFDFEFDFDFDFEFEFEFEFEFDFEFDFEFBFAFBFEF9F9F9FEE2E1E2FEF3F3
      F3FEFBFAFAFEF8F4FCFEF8F7FAFEF6F9F9FECEDAEBFE5E94C4FE2A5F93FE275C
      92FE2766A4FE2C62A0FE639AD2FECFD9DBFEF6F8F9FEFAFBFBFEFDFDFDFEFDFD
      FDFEFDFDFDFEFDFDFDFEFEFEFEFEFDFDFDFEFDFDFDFEFBFBFBFEF8F8F8FEE1E2
      E0FEF3F4F1FEF9F8FAFEF9FBF9FEF4F7F6FEF3F5F5FED6E2EDFE98BBDDFE689E
      D0FE5B93C2FE98C0E0FEC4CED8FEF8F9F6FEFBFCFCFEFCFCFBFEFDFDFDFEFDFD
      FDFEFDFDFDFEFDFDFDFEFEFEFEFEFEFEFEFEFDFDFDFEFDFDFDFEFCFBFCFEFBFB
      FCFEDEDEDEFEF4F3F5FEECECEDFEDBD7D6FEDCDDDDFEE6E8ECFEF3F8F7FEE2E4
      E3FEE0E4E7FED4D6DAFEE5EEF2FEF1F6F6FEFBFDFBFEFCFCFDFEFCFDFDFEFDFD
      FDFEFDFDFDFEFDFDFDFEFDFDFDFEFEFEFEFEFDFDFDFEFDFDFDFEFDFDFDFEFBFB
      FBFEFBFAFBFEE0E0E0FEF2F2F4FEEBEBEDFED5D6D8FED9D7D5FEF3F3F2FEF4F5
      F3FEDADCDBFEF6F7F7FEFAFBFBFEFDFDF9FEF9FCFDFEFDFDFBFEFEFDFDFEFDFD
      FDFEFDFDFDFEFDFDFDFEFEFDFDFEFEFEFEFEFDFDFDFEFDFDFDFEFDFDFDFEFDFD
      FDFEFCFCFCFEF9F9F9FEE1E1E1FEF2F2F2FEE7E8E8FEDBDADAFEF3F2F2FEDDDD
      DDFEF7F8F8FEFAFBFBFEFDFCFDFEFDFDFDFEFDFDFDFEFDFDFCFEFDFDFDFEFDFD
      FDFEFDFDFDFEFDFDFDFEFEFEFEFEFEFEFEFEFDFDFDFEFDFDFDFEFDFDFDFEFDFD
      FDFEFDFDFDFEFCFCFCFEF8F8F8FEE2E2E2FEF2F2F2FEEAEAEAFEDBDBDBFEF9F9
      F9FEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFD
      FDFEFDFDFDFEFDFDFDFEFEFEFEFEFEFEFEFEFDFDFDFEFDFDFDFEFDFDFDFEFDFD
      FDFEFDFDFDFEFDFDFDFEFCFCFCFEF9F9F9FEDFDFDFFEDADADAFEF8F8F8FEFBFB
      FBFEFDFDFDFEFEFEFEFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFD
      FDFEFDFDFDFEFDFDFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFDFDFDFEFDFDFDFEFCFCFCFEFBFBFBFEFEFEFEFEFDFD
      FDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000280000001000000020000000010020000000
      00004004000000000000000000000000000000000000FEFEFEFFFEFEFEFFFEFE
      FDFFFEFEFDFFFDFEFEFFFDFEFEFFFEFEFEFFFDFEFDFFFBFBFAFFF5F6F7FFFDFD
      FDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF9F9F5FFF6F4EBFFF2F1
      E9FFF2EFE6FFF8F7F1FFF3EFE6FFF7F7F2FFF3EEE5FFDFD9D2FFE8E8E6FFF2F2
      F2FFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFD4BEA4FFB07B40FF9C5D
      1EFFA3601FFFA97C48FFA06E30FFA67843FF9A5E1CFF975113FFDBD9D5FFE6E6
      E7FFF3F3F3FFFCFCFCFFFDFDFDFFFEFEFEFFFEFEFEFFD6BFA3FFB0773AFFA163
      1FFFAE7132FF9C6930FFA26526FFB48B58FFAD7D49FF98510FFFBFC0BFFFD4D4
      D3FFEAE9EAFFF2F3F3FFFDFDFDFFFEFEFEFFFEFEFEFFD5BFA1FFB27A42FFAF7D
      47FFA96929FFB0885AFFB19061FFB2956EFFAE8453FF9E7246FF689FCFFF9DBA
      D3FFCFD0D1FFE7E7E7FFF2F2F2FFFCFCFCFFFEFEFEFFE3D6C9FFCCB696FFFDFD
      FAFFC3A681FFE5E3D8FFAFBEC8FF8FACC6FFB6BCC1FFBBC2C6FFA5B7C7FF679B
      CCFFADC3D3FFD2D1D2FFE7E7E7FFF3F3F3FFFDFDFDFFFEFEFEFFFDFDFDFFF8F8
      F8FFE4E3E2FFCDCECEFF92AEC8FF95A1ADFF859BAFFF5990C7FF6796C3FF94B2
      C8FFA5B7C8FFC0BFBFFFD9D9D9FFE5E5E5FFF6F6F6FFFDFDFDFFFAFAFAFFE3E5
      E5FFE6E6E5FFC6C7C8FF8AAACAFF99A0A8FF77A5D2FF7797B5FFB5C4D1FF73A1
      CCFFBFC3C7FFC3C4C3FFD5D5D5FFE3E3E3FFFBFBFBFFFAFAFBFFE2E1E4FFDEDE
      E9FFECEDF2FFDFE0E1FF92AEC9FF778A9DFF709FCBFF8CA9C4FF9FABB6FF7094
      B7FFC1CDD8FFD2D2D4FFE4E4E4FFFAFAFAFFFEFEFEFFF2F1F1FFECECEDFFCFCA
      E4FFC0BFDBFFEBEDF6FFC8D7E3FF557799FF8AAED6FF687D95FF7C9FC2FF446C
      98FFCEDDE9FFE5E5E5FFFAFAFAFFFDFDFDFFFEFEFEFFFCFCFCFFEFEFEEFFECED
      F1FFF1EEF9FFE3E0ECFFF0F3F5FF779DC3FF2C547DFF2F67A0FF34699FFF5D8E
      BFFFE1E7E9FFFAFAFBFFFCFCFCFFFDFDFDFFFEFEFEFFFDFDFDFFFCFCFCFFEEEE
      EEFFF1F1EEFFFAF9FBFFF7F9F8FFE1E9F0FF88AED5FF4B83B8FF699CCAFFBECF
      DDFFF8FAFAFFFCFCFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFCFC
      FDFFEEEEEEFFF0F0F1FFE1E0E0FFDBDCDDFFF0F3F2FFE6E8E7FFDFE1E3FFEDF3
      F5FFFBFDFBFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFD
      FDFFFCFCFCFFEEEEEEFFEFEFF0FFDCDCDCFFEEECECFFE4E4E5FFF8FAFAFFFDFD
      FDFFFDFDFDFFFDFEFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFD
      FDFFFEFEFEFFFCFCFCFFEFEFEFFFEDEDEDFFE1E1E1FFFBFBFBFFFDFDFDFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFCFCFCFFF0F0F0FFFBFBFBFFFDFDFDFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000}
    Position = poScreenCenter
    Report = ppReport
    IniStorageType = 'Registry'
    IniStorageName = 'IdeaSys'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 296
    Top = 88
  end
  object adosp_GetTipoDocumento: TADOStoredProc
    ProcedureName = 'sp_GetTipoDocumento;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@TIPO_DOCUMENTO'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ARCHIVO_RTM'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 255
        Value = Null
      end>
    Left = 184
    Top = 40
  end
  object cdsConcepto: TClientDataSet
    Aggregates = <>
    DataSetField = cdsXMLConcepto
    Params = <>
    Left = 184
    Top = 312
    object cdsConceptocantidad: TBCDField
      FieldName = 'cantidad'
      Required = True
      Precision = 14
    end
    object cdsConceptounidad: TStringField
      FieldName = 'unidad'
      Size = 31
    end
    object cdsConceptonoIdentificacion: TStringField
      FieldName = 'noIdentificacion'
      Size = 31
    end
    object cdsConceptodescripcion: TStringField
      DisplayWidth = 255
      FieldName = 'descripcion'
      Required = True
      Size = 255
    end
    object cdsConceptovalorUnitario: TBCDField
      FieldName = 'valorUnitario'
      Precision = 14
    end
    object cdsConceptoimporte: TBCDField
      FieldName = 'importe'
      Precision = 14
    end
    object cdsConceptonumero: TStringField
      FieldName = 'numero'
      Required = True
      Size = 31
    end
    object cdsConceptoInformacionAduanera: TDataSetField
      FieldName = 'InformacionAduanera'
      UnNamed = True
    end
    object cdsConceptoParte: TDataSetField
      FieldName = 'Parte'
      UnNamed = True
    end
  end
  object dsInfoAduanera: TDataSource
    DataSet = cdsInfoAduanera
    Left = 512
    Top = 256
  end
  object ppDBPipelineInfoAduanera: TppDBPipeline
    DataSource = dsInfoAduanera
    UserName = 'InformacionAduanera'
    Left = 504
    Top = 200
    object ppDBPipelineInfoAduanerappField1: TppField
      FieldAlias = 'numero'
      FieldName = 'numero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineInfoAduanerappField2: TppField
      FieldAlias = 'fecha'
      FieldName = 'fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineInfoAduanerappField3: TppField
      FieldAlias = 'aduana'
      FieldName = 'aduana'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
  end
  object cdsRetencion: TClientDataSet
    Aggregates = <>
    DataSetField = cdsXMLRetencion
    Params = <>
    Left = 296
    Top = 312
    object cdsRetencionimpuesto: TStringField
      FieldName = 'impuesto'
      Required = True
      Size = 31
    end
    object cdsRetencionimporte: TBCDField
      FieldName = 'importe'
      Precision = 14
    end
  end
  object cdsTraslado: TClientDataSet
    Aggregates = <>
    DataSetField = cdsXMLTraslado
    Params = <>
    Left = 408
    Top = 312
    object cdsTrasladoimpuesto: TStringField
      FieldName = 'impuesto'
      Required = True
      Size = 31
    end
    object cdsTrasladotasa: TBCDField
      FieldName = 'tasa'
      Required = True
      Precision = 14
    end
    object cdsTrasladoimporte: TBCDField
      FieldName = 'importe'
      Precision = 14
    end
  end
  object cdsInfoAduanera: TClientDataSet
    Aggregates = <>
    DataSetField = cdsConceptoInformacionAduanera
    Params = <>
    Left = 512
    Top = 312
    object cdsInfoAduaneranumero: TStringField
      FieldName = 'numero'
      Required = True
      Size = 31
    end
    object cdsInfoAduanerafecha: TDateField
      FieldName = 'fecha'
      Required = True
    end
    object cdsInfoAduaneraaduana: TStringField
      FieldName = 'aduana'
      Size = 255
    end
  end
  object OpenDialogXML: TOpenDialog
    Filter = 'Archivo XML|*.xml|Todos los archivos|*.*'
    Left = 424
    Top = 40
  end
  object cdsRegimenFiscal: TClientDataSet
    Aggregates = <>
    DataSetField = cdsXMLRegimenFiscal
    Params = <>
    Left = 608
    Top = 312
    object cdsRegimenFiscalRegimen: TStringField
      FieldName = 'Regimen'
      Required = True
      Size = 255
    end
  end
  object dsRegimenFiscal: TDataSource
    DataSet = cdsRegimenFiscal
    Left = 608
    Top = 256
  end
  object ppDBPipelineRegimenFiscal: TppDBPipeline
    DataSource = dsRegimenFiscal
    UserName = 'RegimenFiscal'
    Left = 608
    Top = 176
    object ppDBPipelineRegimenFiscalppField1: TppField
      FieldAlias = 'Regimen'
      FieldName = 'Regimen'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
  end
end
