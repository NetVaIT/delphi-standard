inherited dmRptMovimientos: TdmRptMovimientos
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 242
  Width = 356
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
  inherited dsReport: TDataSource
    Left = 112
  end
  inherited dbpReport: TppDBPipeline
    Left = 184
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
  end
  inherited ppReport: TppReport
    AutoStop = True
    DataPipeline = nil
    PrinterSetup.Duplex = dpDefault
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.mmPaperHeight = 615900
    PrinterSetup.mmPaperWidth = 650000
    PrinterSetup.PaperSize = 198
    AllowPrintToFile = True
    DefaultFileDeviceType = 'XLSReport'
    TextFileName = '($MyDocuments)\Report.xls'
    XLSSettings.AppName = 'IntervaRH'
    XLSSettings.Author = 'IntervaRH'
    XLSSettings.ExportComponents = [ecText, ecLine, ecTable]
    XLSSettings.IncludeSingleFooter = True
    XLSSettings.IncludeSingleHeader = True
    XLSSettings.MergeAdjacentCells = False
    XLSSettings.ScaleToPageWidth = True
    Left = 248
    DataPipelineName = ''
    inherited ppTitleBand1: TppTitleBand
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        mmWidth = 643121
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
    end
    inherited ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      object ppCrossTab1: TppCrossTab
        UserName = 'CrossTab1'
        DataPipeline = dbpReport
        ParentDataPipeline = False
        Pagination = ctptAcrossThenDown
        Save = True
        Stretch = True
        Style = 'Standard'
        DataPipelineName = 'dbpReport'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 1058
        mmWidth = 637300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object TppGrandTotal
          ChildType = 6
          object TppTotalCaptionDef
            ChildType = 4
            Alignment = taRightJustify
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
          end
          object TppTotalDef
            ChildType = 3
            Color = clWhite
            DisplayFormat = '$#,0.00;-$#,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
          end
        end
        object TppGrandTotal
          ChildType = 7
          object TppTotalCaptionDef
            ChildType = 4
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
          end
          object TppTotalDef
            ChildType = 3
            Color = clWhite
            DisplayFormat = '$#,0.00;-$#,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
          end
        end
        object TppColumnDef
          FieldAlias = 'Tipo'
          FieldName = 'Tipo'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          object TppSubTotal
            ChildType = 5
            object TppTotalCaptionDef
              ChildType = 4
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
            end
            object TppTotalDef
              ChildType = 3
              Color = clWhite
              DisplayFormat = '$#,0.00;-$#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
            end
          end
        end
        object TppRowDef
          ChildType = 1
          FieldAlias = 'Persona'
          FieldName = 'Persona'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          object TppSubTotal
            ChildType = 5
            object TppTotalCaptionDef
              ChildType = 4
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
            end
            object TppTotalDef
              ChildType = 3
              Color = clWhite
              DisplayFormat = '$#,0.00;-$#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
            end
          end
        end
        object TppValueDef
          ChildType = 2
          FieldAlias = 'Importe'
          FieldName = 'Importe'
          Color = clWhite
          DisplayFormat = '$#,0.00;-$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          object TppValueCaptionDef
            ChildType = 8
            CalcType = dcSum
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
          end
        end
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited ppLineFooter: TppLine
        mmWidth = 634655
        LayerName = Foreground
      end
      inherited pplblPrintDate: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pplblPageNo: TppSystemVariable
        SaveOrder = -1
        mmLeft = 625394
        LayerName = Foreground
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
