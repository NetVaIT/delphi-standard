inherited dmMovimientosrpt: TdmMovimientosrpt
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
      'iodo)'#13#10
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
    PrinterSetup.PaperName = 'Letter'
    DataPipelineName = 'dbpReport'
    inherited ppTitleBand1: TppTitleBand
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 0
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 14023
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Catagoria'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 2646
        mmTop = 1852
        mmWidth = 136261
        BandType = 4
        LayerName = Foreground
      end
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
        mmHeight = 5293
        mmLeft = 10848
        mmTop = 7408
        mmWidth = 150548
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Importe'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 5293
        mmLeft = 164836
        mmTop = 7408
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
        mmHeight = 16140
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'Persona'
          DataPipeline = dbpReport
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpReport'
          mmHeight = 4763
          mmLeft = 3969
          mmTop = 3175
          mmWidth = 199232
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          AutoSize = False
          Caption = 'Catagoria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 3969
          mmTop = 10055
          mmWidth = 19579
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          AutoSize = False
          Caption = 'Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 62442
          mmTop = 10054
          mmWidth = 9260
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          AutoSize = False
          Caption = 'Importe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 182034
          mmTop = 10054
          mmWidth = 14817
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
