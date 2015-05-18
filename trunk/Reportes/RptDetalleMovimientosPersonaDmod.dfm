inherited dmDetalleMovimientosPersona: TdmDetalleMovimientosPersona
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 273
  inherited adodsReport: TADODataSet
    CommandText = 
      'SELECT        Personas.RazonSocial AS Persona, MovimientosTiposC' +
      'ategorias.Descripcion AS Catagoria, MovimientosTipos.Descripcion' +
      ' AS Tipo, MovimientosDetalle.Importe'#13#10'FROM            Movimiento' +
      'sDetalle INNER JOIN'#13#10'                         Movimientos ON Mov' +
      'imientosDetalle.IdMovimiento = Movimientos.IdMovimiento INNER JO' +
      'IN'#13#10'                         MovimientosTipos ON MovimientosDeta' +
      'lle.IdMovimientoTipo = MovimientosTipos.IdMovimientoTipo INNER J' +
      'OIN'#13#10'                         MovimientosTiposCategorias ON Movi' +
      'mientosTipos.IdMovimientoTipoCategoria = MovimientosTiposCategor' +
      'ias.IdMovimientoTipoCategoria INNER JOIN'#13#10'                      ' +
      '   MovimientosTiposEfectos ON MovimientosTipos.IdMovimientoTipoE' +
      'fecto = MovimientosTiposEfectos.IdMovimientoTipoEfecto INNER JOI' +
      'N'#13#10'                         Personas ON Movimientos.IdPersona = ' +
      'Personas.IdPersona'#13#10'WHERE        (Movimientos.IdPeriodo = :IdPer' +
      'iodo)'#13#10'ORDER BY Persona, MovimientosTiposCategorias.OrdenImpresi' +
      'on'
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
      Precision = 18
      Size = 6
    end
  end
  inherited ppReport: TppReport
    OnStartPage = ppReportStartPage
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
      mmHeight = 10848
      object pplblEncabezado: TppLabel
        UserName = 'lblEncabezado'
        AutoSize = False
        Caption = 'lblEncabezado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 20
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8202
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 200025
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 8467
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Tipo'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 5292
        mmLeft = 13758
        mmTop = 1323
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
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpReport'
        mmHeight = 5292
        mmLeft = 164836
        mmTop = 1323
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
        mmHeight = 14288
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
          mmHeight = 5293
          mmLeft = 2118
          mmTop = 1588
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
          mmHeight = 3969
          mmLeft = 2117
          mmTop = 8996
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
        mmHeight = 0
        mmPrintPosition = 0
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
        mmHeight = 6615
        mmPrintPosition = 0
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          DataField = 'Catagoria'
          DataPipeline = dbpReport
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbpReport'
          mmHeight = 4763
          mmLeft = 2117
          mmTop = 794
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
        mmHeight = 10054
        mmPrintPosition = 0
        object ppVariable1: TppVariable
          UserName = 'Variable1'
          AutoSize = False
          BlankWhenZero = False
          CalcOrder = 0
          CalcComponent = ppGroup2
          CalcType = veGroupStart
          DataType = dtCurrency
          DisplayFormat = '$#,0.00;-$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          ResetComponent = ppGroup2
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4763
          mmLeft = 164836
          mmTop = 3969
          mmWidth = 33602
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 164836
          mmTop = 1323
          mmWidth = 33602
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
          Font.Size = 11
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4498
          mmLeft = 142346
          mmTop = 3969
          mmWidth = 16669
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 2117
          mmTop = 1323
          mmWidth = 159015
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
      end
    end
    object raCodeModule1: TraCodeModule [6]
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060F
        5661726961626C65314F6E43616C630B50726F6772616D54797065070B747450
        726F63656475726506536F75726365066270726F636564757265205661726961
        626C65314F6E43616C63287661722056616C75653A2056617269616E74293B0D
        0A626567696E0D0A0D0A202056616C7565203A3D206462705265706F72745B27
        496D706F727465275D0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D
        6506095661726961626C6531094576656E744E616D6506064F6E43616C630745
        76656E7449440221084361726574506F730102000200000000}
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
