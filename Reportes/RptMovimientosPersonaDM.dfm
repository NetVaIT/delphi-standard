inherited dmRptMovimientosPersona: TdmRptMovimientosPersona
  OldCreateOrder = True
  inherited adodsReport: TADODataSet
    CommandText =
      'SELECT vRptMovimientosDetalle.IdMovimiento, Movimientos.IdPerson' +
      'a, Movimientos.IdPeriodo, Personas.RazonSocial AS Persona, vRptM' +
      'ovimientosDetalle.GrupoTipo, vRptMovimientosDetalle.Tipo, vRptMo' +
      'vimientosDetalle.Importe,'#13#10'Movimientos.SaldoAnteriorGrupo AS Sal' +
      'doAnterior, Movimientos.BaseGrupo AS Base'#13#10'FROM vRptMovimientosD' +
      'etalle '#13#10'INNER JOIN Movimientos ON vRptMovimientosDetalle.IdMovi' +
      'miento = Movimientos.IdMovimiento '#13#10'INNER JOIN Personas ON Movim' +
      'ientos.IdPersona = Personas.IdPersona'#13#10'WHERE (Movimientos.IdPeri' +
      'odo = :IdPeriodo)'#13#10'ORDER BY Personas.RazonSocial , vRptMovimient' +
      'osDetalle.OrdenImpresion'
    Parameters = <
      item
        Name = 'IdPeriodo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
  end
  inherited dbpReport: TppDBPipeline
    object dbpReportppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'IdMovimiento'
      FieldName = 'IdMovimiento'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object dbpReportppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'IdPersona'
      FieldName = 'IdPersona'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object dbpReportppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'IdPeriodo'
      FieldName = 'IdPeriodo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object dbpReportppField4: TppField
      FieldAlias = 'Persona'
      FieldName = 'Persona'
      FieldLength = 300
      DisplayWidth = 300
      Position = 3
    end
    object dbpReportppField5: TppField
      FieldAlias = 'GrupoTipo'
      FieldName = 'GrupoTipo'
      FieldLength = 12
      DisplayWidth = 12
      Position = 4
    end
    object dbpReportppField6: TppField
      FieldAlias = 'Tipo'
      FieldName = 'Tipo'
      FieldLength = 100
      DisplayWidth = 100
      Position = 5
    end
    object dbpReportppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Importe'
      FieldName = 'Importe'
      FieldLength = 6
      DataType = dtDouble
      DisplayWidth = 39
      Position = 6
    end
    object dbpReportppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'SaldoAnterior'
      FieldName = 'SaldoAnterior'
      FieldLength = 6
      DataType = dtDouble
      DisplayWidth = 19
      Position = 7
    end
    object dbpReportppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Base'
      FieldName = 'Base'
      FieldLength = 6
      DataType = dtDouble
      DisplayWidth = 19
      Position = 8
    end
  end
  inherited ppReport: TppReport
    Units = utPrinterPixels
    DataPipelineName = 'dbpReport'
    inherited ppTitleBand1: TppTitleBand
      mmHeight = 0
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 16383
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 8731
      object ppLine7: TppLine
        UserName = 'Line7'
        Pen.Color = clNavy
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 4741
        mmWidth = 194734
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'Importe'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 139436
        mmTop = 529
        mmWidth = 54240
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'Tipo'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 1312
        mmTop = 529
        mmWidth = 137848
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
        Visible = False
        LayerName = Foreground
      end
    end
    object ppGroup3: TppGroup [4]
      BreakName = 'Persona'
      DataPipeline = dbpReport
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbpReport'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 11113
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          mmHeight = 4498
          mmLeft = 1323
          mmTop = 529
          mmWidth = 194734
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          DataField = 'Persona'
          DataPipeline = dbpReport
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpReport'
          mmHeight = 3969
          mmLeft = 4233
          mmTop = 529
          mmWidth = 173567
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 22490
        mmPrintPosition = 0
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'Importe'
          DataPipeline = dbpReport
          DisplayFormat = '$#,0.00;-$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpReport'
          mmHeight = 4498
          mmLeft = 139436
          mmTop = 794
          mmWidth = 54240
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'SaldoAnterior'
          DataPipeline = dbpReport
          DisplayFormat = '$#,0.00;-$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpReport'
          mmHeight = 4498
          mmLeft = 139436
          mmTop = 6350
          mmWidth = 54240
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          DataField = 'Base'
          DataPipeline = dbpReport
          DisplayFormat = '$#,0.00;-$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpReport'
          mmHeight = 4498
          mmLeft = 139436
          mmTop = 11377
          mmWidth = 54240
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'Suma'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 127529
          mmTop = 794
          mmWidth = 9790
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = 'Saldo anterior'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 113242
          mmTop = 6350
          mmWidth = 24077
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 128852
          mmTop = 11377
          mmWidth = 8467
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object ppGroup4: TppGroup [5]
      BreakName = 'GrupoTipo'
      DataPipeline = dbpReport
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbpReport'
      NewFile = False
      object ppGroupHeaderBand4: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 10319
        mmPrintPosition = 0
        object ppLine6: TppLine
          UserName = 'Line6'
          Pen.Color = clNavy
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 3969
          mmLeft = 1323
          mmTop = 6350
          mmWidth = 194734
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          DataField = 'GrupoTipo'
          DataPipeline = dbpReport
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpReport'
          mmHeight = 4498
          mmLeft = 1323
          mmTop = 529
          mmWidth = 20108
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          AutoSize = False
          Caption = 'Importe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 139436
          mmTop = 6350
          mmWidth = 54240
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          AutoSize = False
          Caption = 'Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 1312
          mmTop = 6350
          mmWidth = 137848
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 9790
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'Importe'
          DataPipeline = dbpReport
          DisplayFormat = '$#,0.00;-$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpReport'
          mmHeight = 4498
          mmLeft = 139436
          mmTop = 527
          mmWidth = 54229
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
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
    Left = 40
    Top = 88
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
