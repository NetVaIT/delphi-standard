inherited dmRptPagos: TdmRptPagos
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 315
  Width = 461
  inherited adodsReport: TADODataSet
    CommandText = 
      'SELECT        CP.IdCuentaXPagar, CP.IdPeriodo, CPP.IdCuentaXPaga' +
      'rPago, CPP.IdCuentaXPagarEstatus, CPP.IdPersonaRol, CPP.IdMetodo' +
      'Pago, CPP.IdCuentaBancariaPagador, CPP.IdCuentaBancariaCobrador,' +
      ' '#13#10'PER.Descripcion AS Periodo, P2.RazonSocial AS Pagador, CBP.Cu' +
      'entaBancaria AS CuentaBancariaPagador,'#13#10'CP.ConceptoGenerico, '#13#10'P' +
      '1.RazonSocial AS Cobrador,                          CBC.CuentaBa' +
      'ncaria AS CuentaBancariaCobrador,'#13#10'                         CPP.' +
      'FechaAutorizacion, CPP.MontoAutorizado, CPP.FechaPago, CPP.Monto' +
      'Pagado'#13#10'FROM            CuentasXPagarPagos AS CPP INNER JOIN'#13#10'  ' +
      '                       CuentasXPagar AS CP ON CPP.IdCuentaXPagar' +
      ' = CP.IdCuentaXPagar INNER JOIN'#13#10'                         Period' +
      'os AS PER ON CP.IdPeriodo = PER.IdPeriodo INNER JOIN'#13#10'          ' +
      '               PersonasRoles AS PR ON CP.IdPersonaRol = PR.IdPer' +
      'sonaRol INNER JOIN'#13#10'                         Personas AS P1 ON P' +
      'R.IdPersona = P1.IdPersona INNER JOIN'#13#10'                         ' +
      'Personas AS P2 ON PR.IdPersonaRelacionada = P2.IdPersona LEFT JO' +
      'IN'#13#10'                         CuentasBancarias AS CBC ON CPP.IdCu' +
      'entaBancariaCobrador = CBC.IdCuentaBancaria INNER JOIN'#13#10'        ' +
      '                 CuentasBancarias AS CBP ON CPP.IdCuentaBancaria' +
      'Pagador = CBP.IdCuentaBancaria'#13#10'WHERE CP.IdPeriodo = :IdPeriodo'#13 +
      #10'ORDER BY PER.Descripcion, P2.RazonSocial, CBP.CuentaBancaria, C' +
      'P.ConceptoGenerico'#13#10
    Parameters = <
      item
        Name = 'IdPeriodo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
  end
  inherited ppReport: TppReport
    Units = utScreenPixels
    DataPipelineName = 'dbpReport'
    inherited ppTitleBand1: TppTitleBand
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        Caption = 'Pagos'
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 10848
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Receptor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 2910
        mmTop = 0
        mmWidth = 66146
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'Cuenta bancaria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 68788
        mmTop = 0
        mmWidth = 26458
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Fecha autorizaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 105846
        mmTop = 0
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'Fecha de pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 156104
        mmTop = 0
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'Monto autorizado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 130975
        mmTop = 0
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = 'Monto pagado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 178596
        mmTop = 0
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Pen.Color = clNavy
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 4498
        mmWidth = 194734
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 4763
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'Cobrador'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 0
        mmWidth = 66146
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'CuentaBancariaCobrador'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 68792
        mmTop = 0
        mmWidth = 37042
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'FechaAutorizacion'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 105834
        mmTop = 0
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'FechaPago'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 156104
        mmTop = 0
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'MontoAutorizado'
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
        mmLeft = 130969
        mmTop = 0
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'MontoPagado'
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
        mmLeft = 178594
        mmTop = 0
        mmWidth = 23813
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
      BreakName = 'Periodo'
      DataPipeline = dbpReport
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbpReport'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'Periodo'
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
          mmWidth = 70379
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
      BreakName = 'Pagador'
      DataPipeline = dbpReport
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
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
        object ppDBText12: TppDBText
          UserName = 'DBText101'
          DataField = 'Pagador'
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
          mmWidth = 70379
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          DataField = 'CuentaBancariaPagador'
          DataPipeline = dbpReport
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpReport'
          mmHeight = 4233
          mmLeft = 74083
          mmTop = 529
          mmWidth = 20108
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup [6]
      BreakName = 'ConceptoGenerico'
      DataPipeline = dbpReport
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbpReport'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppDBText14: TppDBText
          UserName = 'DBText14'
          DataField = 'ConceptoGenerico'
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
          mmTop = 265
          mmWidth = 100000
          BandType = 3
          GroupNo = 2
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
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
    object mdParamsIdPersona: TWordField
      FieldName = 'IdPersona'
    end
    object mdParamsIdCuentaBancaria: TIntegerField
      FieldName = 'IdCuentaBancaria'
    end
  end
  object adodsPeriodos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPeriodo, Descripcion FROM Periodos'
    Parameters = <>
    Left = 52
    Top = 100
  end
  object adodsPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT PersonasRoles.IdPersona, PersonasRoles.IdRol, Personas.Ra' +
      'zonSocial'#13#10'FROM PersonasRoles INNER JOIN'#13#10'          Personas ON ' +
      'PersonasRoles.IdPersona = Personas.IdPersona'#13#10'WHERE (PersonasRol' +
      'es.IdRol = 1) AND (PersonasRoles.IdRolEstatus = 1) OR'#13#10'         ' +
      '    (PersonasRoles.IdRol = 2)'
    Parameters = <>
    Left = 58
    Top = 160
    object adodsPersonasIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsPersonasIdRol: TIntegerField
      FieldName = 'IdRol'
    end
    object adodsPersonasRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
  end
  object dsPersonas: TDataSource
    DataSet = adodsPersonas
    Left = 130
    Top = 160
  end
  object adodsCuentaBancaria: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT CuentasBancarias.IdCuentaBancaria, CuentasBancarias.IdPer' +
      'sona, Bancos.Nombre, Monedas.Identificador, CuentasBancarias.Cue' +
      'ntaBancaria'#13#10'  FROM Bancos'#13#10'INNER JOIN CuentasBancarias ON Banco' +
      's.IdBanco = CuentasBancarias.IdBanco'#13#10'INNER JOIN Monedas ON Cuen' +
      'tasBancarias.IdMoneda = Monedas.IdMoneda'#13#10'WHERE CuentasBancarias' +
      '.IdPersona = :IdPersona'
    DataSource = dsPersonas
    IndexFieldNames = 'IdPersona'
    MasterFields = 'IdPersona'
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 31
      end>
    Left = 58
    Top = 216
    object adodsCuentaBancariaIdCuentaBancaria: TAutoIncField
      FieldName = 'IdCuentaBancaria'
      ReadOnly = True
    end
    object adodsCuentaBancariaIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsCuentaBancariaNombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object adodsCuentaBancariaIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 3
    end
    object adodsCuentaBancariaCuentaBancaria: TStringField
      FieldName = 'CuentaBancaria'
      Size = 50
    end
  end
end
