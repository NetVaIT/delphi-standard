inherited dmDetalleMovimientosPersona: TdmDetalleMovimientosPersona
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 273
  inherited adodsReport: TADODataSet
    Active = True
    CommandText = 
      'SELECT        Personas.RazonSocial AS Persona, MovimientosTiposC' +
      'ategorias.Descripcion AS Catagoria, MovimientosTipos.Descripcion' +
      ' AS Tipo, MovimientosDetalle.Importe,'#13#10'                    Movim' +
      'ientos.SaldoAnterior, Movimientos.SaldoPeriodo, Movimientos.Sald' +
      'o'#13#10'FROM            MovimientosDetalle INNER JOIN'#13#10'              ' +
      '           Movimientos ON MovimientosDetalle.IdMovimiento = Movi' +
      'mientos.IdMovimiento INNER JOIN'#13#10'                         Movimi' +
      'entosTipos ON MovimientosDetalle.IdMovimientoTipo = MovimientosT' +
      'ipos.IdMovimientoTipo INNER JOIN'#13#10'                         Movim' +
      'ientosTiposCategorias ON MovimientosTipos.IdMovimientoTipoCatego' +
      'ria = MovimientosTiposCategorias.IdMovimientoTipoCategoria INNER' +
      ' JOIN'#13#10'                         MovimientosTiposEfectos ON Movim' +
      'ientosTipos.IdMovimientoTipoEfecto = MovimientosTiposEfectos.IdM' +
      'ovimientoTipoEfecto INNER JOIN'#13#10'                         Persona' +
      's ON Movimientos.IdPersona = Personas.IdPersona'#13#10'WHERE        (M' +
      'ovimientos.IdPeriodo = :IdPeriodo)'#13#10'ORDER BY Persona, Movimiento' +
      'sTiposCategorias.OrdenImpresion'
    Parameters = <
      item
        Name = 'IdPeriodo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    object adodsReportPersona: TStringField
      FieldName = 'Persona'
      Size = 300
    end
    object adodsReportCatagoria: TStringField
      FieldName = 'Catagoria'
      Size = 100
    end
    object adodsReportTipo: TStringField
      FieldName = 'Tipo'
      Size = 100
    end
    object adodsReportImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsReportSaldoAnterior: TFMTBCDField
      FieldName = 'SaldoAnterior'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsReportSaldoPeriodo: TFMTBCDField
      FieldName = 'SaldoPeriodo'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsReportSaldo: TFMTBCDField
      FieldName = 'Saldo'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  inherited dbpReport: TppDBPipeline
    object dbpReportppField1: TppField
      FieldAlias = 'Persona'
      FieldName = 'Persona'
      FieldLength = 300
      DisplayWidth = 300
      Position = 0
    end
    object dbpReportppField2: TppField
      FieldAlias = 'Catagoria'
      FieldName = 'Catagoria'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object dbpReportppField3: TppField
      FieldAlias = 'Tipo'
      FieldName = 'Tipo'
      FieldLength = 100
      DisplayWidth = 100
      Position = 2
    end
    object dbpReportppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Importe'
      FieldName = 'Importe'
      FieldLength = 6
      DataType = dtDouble
      DisplayWidth = 19
      Position = 3
    end
    object dbpReportppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'SaldoAnterior'
      FieldName = 'SaldoAnterior'
      FieldLength = 6
      DataType = dtDouble
      DisplayWidth = 19
      Position = 4
    end
    object dbpReportppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'SaldoPeriodo'
      FieldName = 'SaldoPeriodo'
      FieldLength = 6
      DataType = dtDouble
      DisplayWidth = 19
      Position = 5
    end
    object dbpReportppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Saldo'
      FieldName = 'Saldo'
      FieldLength = 6
      DataType = dtDouble
      DisplayWidth = 19
      Position = 6
    end
  end
  inherited ppReport: TppReport
    OnStartPage = ppReportStartPage
    PrinterSetup.PaperName = 'Letter'
    DataPipelineName = 'dbpReport'
    inherited ppTitleBand1: TppTitleBand
      mmHeight = 2117
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        Visible = False
        mmHeight = -1058
        mmTop = 1852
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 15610
      object pplblEncabezado: TppLabel
        UserName = 'lblEncabezado'
        AutoSize = False
        Caption = 'lblEncabezado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 16
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6612
        mmLeft = 1323
        mmTop = 528
        mmWidth = 200025
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 5027
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Tipo'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4232
        mmLeft = 13758
        mmTop = 528
        mmWidth = 147373
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Importe'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpReport'
        mmHeight = 4232
        mmLeft = 164836
        mmTop = 528
        mmWidth = 34660
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited ppLineFooter: TppLine
        LayerName = Foreground
      end
      inherited pplblPrintDate: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pplblPageNo: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup [4]
      BreakName = 'Persona'
      DataPipeline = dbpReport
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbpReport'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 7938
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'Persona'
          DataPipeline = dbpReport
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbpReport'
          mmHeight = 4498
          mmLeft = 2118
          mmTop = 793
          mmWidth = 199232
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Pen.Color = clBlue
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 1319
          mmLeft = 2117
          mmTop = 6081
          mmWidth = 199232
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 16140
        mmPrintPosition = 0
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          DataField = 'SaldoAnterior'
          DataPipeline = dbpReport
          DisplayFormat = '$#,0.00;-$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpReport'
          mmHeight = 4498
          mmLeft = 164832
          mmTop = 788
          mmWidth = 34677
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          DataField = 'SaldoPeriodo'
          DataPipeline = dbpReport
          DisplayFormat = '$#,0.00;-$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpReport'
          mmHeight = 4498
          mmLeft = 164832
          mmTop = 6341
          mmWidth = 34677
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          DataField = 'Saldo'
          DataPipeline = dbpReport
          DisplayFormat = '$#,0.00;-$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpReport'
          mmHeight = 4498
          mmLeft = 164832
          mmTop = 11364
          mmWidth = 34677
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'Saldo Anterior'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4234
          mmLeft = 137319
          mmTop = 788
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = 'Saldo en el Periodo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4234
          mmLeft = 129117
          mmTop = 6341
          mmWidth = 29898
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = 'Saldo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 150284
          mmTop = 11364
          mmWidth = 8731
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object ppGroup2: TppGroup [5]
      BreakName = 'Catagoria'
      DataPipeline = dbpReport
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbpReport'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          DataField = 'Catagoria'
          DataPipeline = dbpReport
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbpReport'
          mmHeight = 3968
          mmLeft = 2117
          mmTop = 264
          mmWidth = 136261
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppLine1: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 164836
          mmTop = 263
          mmWidth = 34662
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Caption = 'Sub-Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 144463
          mmTop = 2114
          mmWidth = 14552
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 2117
          mmTop = 263
          mmWidth = 159015
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'Importe'
          DataPipeline = dbpReport
          DisplayFormat = '$#,0.00;-$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpReport'
          mmHeight = 4498
          mmLeft = 164836
          mmTop = 2114
          mmWidth = 34660
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
      end
    end
    object raCodeModule1: TraCodeModule [6]
      ProgramStream = {00}
    end
  end
  inherited mdParams: TdxMemData
    object mdParamsIdPeriodo: TIntegerField
      FieldName = 'IdPeriodo'
    end
  end
  object adodsPeriodos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPeriodo, Descripcion FROM Periodos'
    Parameters = <>
    Left = 32
    Top = 112
    object adodsPeriodosIdPeriodo: TAutoIncField
      FieldName = 'IdPeriodo'
      ReadOnly = True
    end
    object adodsPeriodosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
  end
end
