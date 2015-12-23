inherited dmExportarPagosBancos: TdmExportarPagosBancos
  OldCreateOrder = True
  Height = 457
  Width = 699
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaXPagarPago, IdCuentaXPagar, IdCuentaXPagarEstatus' +
      ', Descripcion, FechaInicio, FechaFin, IdPersonaRol, FechaAutoriz' +
      'aPago, MontoAutorizado, FechaProgramada, MontoProgramado, FechaP' +
      'ago, MontoPagado, FechaConcilia, IdCuentaBancariaPagador, IdCuen' +
      'taBancariaCobrador, IdEstadoCuenta, TotalMonedaNacional, Cobra, ' +
      'RFCCobra, Paga, RFCPaga, BancoCobrador, BancoPagador, CtaBanCobr' +
      'ador, CtaBancariaPagador, CClabeCobrador, ClabePagador, BanorteI' +
      'D'#13#10'FROM vExportaPagosBanco'#13#10'WHERE Periodo = :IdPeriodo AND'#13#10'IdPa' +
      'ga = :IdPersona AND'#13#10'IdCuentaBancariaPagador = :IdCuentaBancaria' +
      #13#10
    Parameters = <
      item
        Name = 'IdPeriodo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdCuentaBancaria'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 24
    object adodsMasterIdCuentaXPagarPago: TIntegerField
      FieldName = 'IdCuentaXPagarPago'
      Visible = False
    end
    object adodsMasterIdCuentaXPagar: TIntegerField
      FieldName = 'IdCuentaXPagar'
      Visible = False
    end
    object adodsMasterIdCuentaXPagarEstatus: TIntegerField
      FieldName = 'IdCuentaXPagarEstatus'
      Visible = False
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object adodsMasterFechaInicio: TWideStringField
      FieldName = 'FechaInicio'
      Size = 10
    end
    object adodsMasterFechaFin: TWideStringField
      FieldName = 'FechaFin'
      Size = 10
    end
    object adodsMasterIdPersonaRol: TIntegerField
      FieldName = 'IdPersonaRol'
      Visible = False
    end
    object adodsMasterFechaAutorizaPago: TDateTimeField
      FieldName = 'FechaAutorizaPago'
    end
    object adodsMasterMontoAutorizado: TFMTBCDField
      FieldName = 'MontoAutorizado'
      Precision = 18
      Size = 6
    end
    object adodsMasterFechaProgramada: TDateTimeField
      FieldName = 'FechaProgramada'
    end
    object adodsMasterMontoProgramado: TFMTBCDField
      FieldName = 'MontoProgramado'
      Precision = 18
      Size = 6
    end
    object adodsMasterFechaPago: TDateTimeField
      FieldName = 'FechaPago'
    end
    object adodsMasterMontoPagado: TFMTBCDField
      FieldName = 'MontoPagado'
      Precision = 18
      Size = 6
    end
    object adodsMasterFechaConcilia: TDateTimeField
      FieldName = 'FechaConcilia'
    end
    object adodsMasterIdCuentaBancariaPagador: TIntegerField
      FieldName = 'IdCuentaBancariaPagador'
      Visible = False
    end
    object adodsMasterIdCuentaBancariaCobrador: TIntegerField
      FieldName = 'IdCuentaBancariaCobrador'
      Visible = False
    end
    object adodsMasterIdEstadoCuenta: TIntegerField
      FieldName = 'IdEstadoCuenta'
      Visible = False
    end
    object adodsMasterTotalMonedaNacional: TFMTBCDField
      FieldName = 'TotalMonedaNacional'
      Precision = 18
      Size = 6
    end
    object adodsMasterCobra: TStringField
      FieldName = 'Cobra'
      Size = 300
    end
    object adodsMasterRFCCobra: TStringField
      FieldName = 'RFCCobra'
      Size = 13
    end
    object adodsMasterPaga: TStringField
      FieldName = 'Paga'
      Size = 300
    end
    object adodsMasterRFCPaga: TStringField
      FieldName = 'RFCPaga'
      Size = 13
    end
    object adodsMasterBancoCobrador: TIntegerField
      FieldName = 'BancoCobrador'
    end
    object adodsMasterBancoPagador: TIntegerField
      FieldName = 'BancoPagador'
    end
    object adodsMasterCtaBanCobrador: TStringField
      FieldName = 'CtaBanCobrador'
      Size = 50
    end
    object adodsMasterCtaBancariaPagador: TStringField
      FieldName = 'CtaBancariaPagador'
      Size = 50
    end
    object adodsMasterCClabeCobrador: TStringField
      FieldName = 'CClabeCobrador'
      Size = 18
    end
    object adodsMasterClabePagador: TStringField
      FieldName = 'ClabePagador'
      Size = 18
    end
    object adodsMasterBanorteID: TStringField
      FieldName = 'BanorteID'
      Size = 5
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 248
    Top = 24
  end
  inherited ActionList: TActionList
    Left = 248
    object actExportaBanorte: TAction
      Caption = 'actExportaBanorte'
      OnExecute = actExportaBanorteExecute
    end
    object actBajarArchivoPagos: TAction
      Caption = 'actBajarArchivoPagos'
      OnExecute = actBajarArchivoPagosExecute
    end
    object actDescargar: TAction
      Caption = '&Guardar'
      OnExecute = actDescargarExecute
    end
  end
  object stdBancos: TSaveTextFileDialog
    Left = 576
    Top = 376
  end
  object adodsDocumento: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdDocumento, IdDocumentoTipo, IdDocumentoClase, Descripci' +
      'on, NombreArchivo, IdArchivo, Archivo FROM Documentos'
    Parameters = <>
    Left = 36
    Top = 88
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
    Left = 48
    Top = 224
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
  object adodsPeriodos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPeriodo, Descripcion FROM Periodos'
    Parameters = <>
    Left = 52
    Top = 168
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
    Left = 48
    Top = 304
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
  object adodsEsquemaPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdEsquemaPago, Descripcion FROM EsquemaPagos'
    Parameters = <>
    Left = 48
    Top = 376
    object adodsEsquemaPagoIdEsquemaPago: TAutoIncField
      FieldName = 'IdEsquemaPago'
      ReadOnly = True
    end
    object adodsEsquemaPagoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
  end
  object mdParams: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 576
    Top = 40
    object mdParamsIdPeriodo: TIntegerField
      FieldName = 'IdPeriodo'
    end
    object mdParamsIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object mdParamsEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 300
    end
    object mdParamsIdCuentaBancaria: TIntegerField
      FieldName = 'IdCuentaBancaria'
    end
    object mdParamsCuentaBanco: TStringField
      FieldName = 'CuentaBanco'
      Size = 50
    end
    object mdParamsIdEsquemaPago: TIntegerField
      FieldName = 'IdEsquemaPago'
    end
    object mdParamsEsquemaPago: TStringField
      FieldName = 'EsquemaPago'
      Size = 200
    end
  end
  object dsPersonas: TDataSource
    DataSet = adodsPersonas
    Left = 160
    Top = 232
  end
  object adodsCXPPagos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaXPagarPago, IdCuentaXPagarEstatus, IdExportarPago' +
      'Documento FROM CuentasXPagarPagos'
    Parameters = <>
    Left = 152
    Top = 304
    object adodsCXPPagosIdCuentaXPagarPago: TAutoIncField
      FieldName = 'IdCuentaXPagarPago'
      ReadOnly = True
    end
    object adodsCXPPagosIdCuentaXPagarEstatus: TIntegerField
      FieldName = 'IdCuentaXPagarEstatus'
    end
    object adodsCXPPagosIdExportarPagoDocumento: TIntegerField
      FieldName = 'IdExportarPagoDocumento'
    end
  end
  object adodsExportarPagosDocumentos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdExportarPagoDocumento, Fecha, IdExportarPagoDocumentoEs' +
      'tatus, IdDocumento, Hash, IdPersona, IdPeriodo, IdEsquemaPago, I' +
      'dBanco, IdCuentaBancaria, Observaciones FROM ExportarPagosDocume' +
      'ntos'
    Parameters = <>
    Left = 320
    Top = 240
    object adodsExportarPagosDocumentosIdExportarPagoDocumento: TAutoIncField
      FieldName = 'IdExportarPagoDocumento'
      ReadOnly = True
      Visible = False
    end
    object adodsExportarPagosDocumentosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsExportarPagosDocumentosArchivo: TStringField
      FieldKind = fkLookup
      FieldName = 'Archivo'
      LookupDataSet = adodsDocumento
      LookupKeyFields = 'IdDocumento'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDocumento'
      Size = 200
      Lookup = True
    end
    object adodsExportarPagosDocumentosIdExportarPagoDocumentoEstatus: TIntegerField
      FieldName = 'IdExportarPagoDocumentoEstatus'
      Visible = False
    end
    object adodsExportarPagosDocumentosExportaPagoDocumentoEstatus: TStringField
      DisplayLabel = 'Estatus'
      FieldKind = fkLookup
      FieldName = 'ExportaPagoDocumentoEstatus'
      LookupDataSet = adodsExportarPagosDocumentosEstatus
      LookupKeyFields = 'IdExportarPagoDocumentoEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdExportarPagoDocumentoEstatus'
      Size = 50
      Lookup = True
    end
    object adodsExportarPagosDocumentosIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
      Visible = False
    end
    object adodsExportarPagosDocumentosHash: TStringField
      FieldName = 'Hash'
      Size = 150
    end
    object adodsExportarPagosDocumentosIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsExportarPagosDocumentosIdPeriodo: TIntegerField
      FieldName = 'IdPeriodo'
      Visible = False
    end
    object adodsExportarPagosDocumentosIdEsquemaPago: TIntegerField
      FieldName = 'IdEsquemaPago'
      Visible = False
    end
    object adodsExportarPagosDocumentosIdBanco: TIntegerField
      FieldName = 'IdBanco'
      Visible = False
    end
    object adodsExportarPagosDocumentosIdCuentaBancaria: TIntegerField
      FieldName = 'IdCuentaBancaria'
      Visible = False
    end
    object adodsExportarPagosDocumentosObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
  end
  object adodsExportarPagosDocumentosEstatus: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdExportarPagoDocumentoEstatus, Descripcion FROM Exportar' +
      'PagosDocumentosEstatus'
    Parameters = <>
    Left = 328
    Top = 296
    object adodsExportarPagosDocumentosEstatusIdExportarPagoDocumentoEstatus: TIntegerField
      FieldName = 'IdExportarPagoDocumentoEstatus'
    end
    object adodsExportarPagosDocumentosEstatusDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object adocEstatusCuentaXPagarPagos: TADOCommand
    CommandText = 
      'UPDATE CuentasXPagarPagos'#13#10'SET IdCuentaXPagarEstatus = 9'#13#10'WHERE ' +
      'IdCuentaXPagarPago = :IdCuentaXPagarPagos'
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdCuentaXPagarPagos'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 568
    Top = 176
  end
  object adocExportaPagosDocs: TADOCommand
    CommandText = 
      'UPDATE ExportarPagosDocumentos'#13#10'SET IdExportarPagoDocumentoEstat' +
      'us = 1'#13#10'WHERE IdExportarPagoDocumento = :IdExportarPagoDocumento' +
      's'
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdExportarPagoDocumentos'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 568
    Top = 240
  end
  object adocEstatusCuentaXPagarPagosDoc: TADOCommand
    CommandText = 
      'UPDATE CuentasXPagarPagos'#13#10'SET IdExportarPagoDocumento = :IdArch' +
      'ivo'#13#10'WHERE IdCuentaXPagarPago = :IdCuentaXPagarPagos'
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdArchivo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdCuentaXPagarPagos'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 568
    Top = 304
  end
end
