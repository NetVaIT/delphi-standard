inherited dmExportarPagosDocumentos: TdmExportarPagosDocumentos
  OldCreateOrder = True
  Height = 369
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    BeforeDelete = adodsMasterBeforeDelete
    CommandText = 
      'SELECT        IdExportarPagoDocumento, IdExportarPagoDocumentoEs' +
      'tatus, IdDocumento, IdPeriodo, IdPersona, IdCuentaBancaria, Fech' +
      'a, Observaciones'#13#10'FROM            ExportarPagosDocumentos'#13#10
    Left = 40
    object adodsMasterIdExportarPagoDocumento: TAutoIncField
      FieldName = 'IdExportarPagoDocumento'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdExportarPagoDocumentoEstatus: TIntegerField
      FieldName = 'IdExportarPagoDocumentoEstatus'
      Visible = False
    end
    object adodsMasterIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
      Visible = False
    end
    object adodsMasterIdPeriodo: TIntegerField
      FieldName = 'IdPeriodo'
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdCuentaBancaria: TIntegerField
      FieldName = 'IdCuentaBancaria'
      Visible = False
    end
    object adodsMasterPeriodo: TStringField
      FieldKind = fkLookup
      FieldName = 'Periodo'
      LookupDataSet = adoqPeriodos
      LookupKeyFields = 'IdPeriodo'
      LookupResultField = 'Periodo'
      KeyFields = 'IdPeriodo'
      Size = 100
      Lookup = True
    end
    object adodsMasterEmisor: TStringField
      FieldKind = fkLookup
      FieldName = 'Emisor'
      LookupDataSet = adoqPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersona'
      Size = 300
      Lookup = True
    end
    object adodsMasterCuentaBancaria: TStringField
      DisplayLabel = 'Cuenta bancaria'
      FieldKind = fkLookup
      FieldName = 'CuentaBancaria'
      LookupDataSet = adoqCuentaBancaria
      LookupKeyFields = 'IdCuentaBancaria'
      LookupResultField = 'CuentaBancaria'
      KeyFields = 'IdCuentaBancaria'
      Size = 50
      Lookup = True
    end
    object adodsMasterNombreArchivo: TStringField
      DisplayLabel = 'Archivo'
      FieldKind = fkLookup
      FieldName = 'NombreArchivo'
      LookupDataSet = adodsDocumentos
      LookupKeyFields = 'IdDocumento'
      LookupResultField = 'NombreArchivo'
      KeyFields = 'IdDocumento'
      Size = 200
      Lookup = True
    end
    object adodsMasterEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsEstatus
      LookupKeyFields = 'IdExportarPagoDocumentoEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdExportarPagoDocumentoEstatus'
      Size = 50
      Lookup = True
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
  end
  inherited ActionList: TActionList
    object actUpdateFile: TAction
      Caption = '...'
      Hint = 'Asigna archivo'
      OnExecute = actUpdateFileExecute
    end
    object actExportarBanorte: TAction
      Caption = '&Insertar'
      ImageIndex = 10
      OnExecute = actExportarBanorteExecute
    end
  end
  object adodsEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdExportarPagoDocumentoEstatus, Descripcion from Exportar' +
      'PagosDocumentosEstatus'
    Parameters = <>
    Left = 40
    Top = 80
  end
  object adodsDocumentos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdDocumento, NombreArchivo from Documentos'
    Parameters = <>
    Left = 40
    Top = 144
  end
  object adoqvCXPPagos: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FechaInicio'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'FechaFin'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
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
    SQL.Strings = (
      
        'SELECT IdCuentaXPagarPago, IdBancoCobrador, Referencia, FechaAut' +
        'orizaPago, MontoAutorizado, RFCPagador, Pagador, CuentaBancariaP' +
        'agador, BanorteID, RFCCobrador, Cobrador, BancoCobrador, '
      'CuentaBancariaCobrador, CLABECobrador'
      'FROM vCuentasXPagarPagosExportar'
      'WHERE FechaAutorizaPago BETWEEN :FechaInicio AND :FechaFin'
      'AND IdPersonaPagador = :IdPersona '
      'AND IdCuentaBancariaPagador = :IdCuentaBancaria'
      'ORDER BY BancoCobrador')
    Left = 168
    Top = 72
    object adoqvCXPPagosIdCuentaXPagarPago: TIntegerField
      FieldName = 'IdCuentaXPagarPago'
      Visible = False
    end
    object adoqvCXPPagosIdbancoCobrador: TIntegerField
      FieldName = 'IdbancoCobrador'
      Visible = False
    end
    object adoqvCXPPagosReferencia: TStringField
      FieldName = 'Referencia'
      ReadOnly = True
      Size = 100
    end
    object adoqvCXPPagosFechaAutorizaPago: TDateTimeField
      FieldName = 'FechaAutorizaPago'
      ReadOnly = True
    end
    object adoqvCXPPagosMontoAutorizado: TFMTBCDField
      FieldName = 'MontoAutorizado'
      Precision = 18
      Size = 6
    end
    object adoqvCXPPagosRFCPagador: TStringField
      FieldName = 'RFCPagador'
      Size = 13
    end
    object adoqvCXPPagosPagador: TStringField
      FieldName = 'Pagador'
      Size = 300
    end
    object adoqvCXPPagosCuentaBancariaPagador: TStringField
      FieldName = 'CuentaBancariaPagador'
      Size = 50
    end
    object adoqvCXPPagosBanorteID: TStringField
      FieldName = 'BanorteID'
      Size = 5
    end
    object adoqvCXPPagosRFCCobrador: TStringField
      FieldName = 'RFCCobrador'
      Size = 13
    end
    object adoqvCXPPagosCobrador: TStringField
      FieldName = 'Cobrador'
      Size = 300
    end
    object adoqvCXPPagosBancoCobrador: TStringField
      FieldName = 'BancoCobrador'
      Size = 50
    end
    object adoqvCXPPagosCuentaBancariaCobrador: TStringField
      FieldName = 'CuentaBancariaCobrador'
      Size = 50
    end
    object adoqvCXPPagosCLABECobrador: TStringField
      FieldName = 'CLABECobrador'
      Size = 18
    end
  end
  object adocInsExportarPago: TADOCommand
    CommandText = 
      'INSERT INTO ExportarPagosDocumentos (IdExportarPagoDocumentoEsta' +
      'tus,IdDocumento,IdPeriodo,IdPersona,IdCuentaBancaria,Fecha)'#13#10'   ' +
      '  VALUES (:IdExportarPagoDocumentoEstatus,:IdDocumento,:IdPeriod' +
      'o,:IdPersona,:IdCuentaBancaria,:Fecha);'#13#10#9'SELECT  :IdExportarPag' +
      'oDocumento = @@identity;'#13#10
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdExportarPagoDocumentoEstatus'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IdDocumento'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IdPeriodo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IdPersona'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IdCuentaBancaria'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'Fecha'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'IdExportarPagoDocumento'
        DataType = ftInteger
        Direction = pdOutput
        Size = -1
        Value = Null
      end>
    Left = 176
    Top = 168
  end
  object adocUpdCuentaXPagarPagos: TADOCommand
    CommandText = 
      'UPDATE CuentasXPagarPagos'#13#10'SET IdExportarPagoDocumento = :IdExpo' +
      'rtarPagoDocumento'#13#10'FROM CuentasXPagarPagos '#13#10'INNER JOIN Personas' +
      'Roles ON CuentasXPagarPagos.IdPersonaRol = PersonasRoles.IdPerso' +
      'naRol'#13#10'WHERE CuentasXPagarPagos.IdMetodoPago = 1'#9'/* Tranferencia' +
      '*/ '#13#10'AND CuentasXPagarPagos.IdCuentaXPagarEstatus = 2'#9'/* Pago au' +
      'torizado*/ '#13#10'AND CuentasXPagarPagos.IdExportarPagoDocumento IS N' +
      'ULL'#9'/* Que no sea ya importado*/  '#13#10'AND CuentasXPagarPagos.Fecha' +
      'AutorizaPago BETWEEN :FechaInicio AND :FechaFin'#13#10'AND PersonasRol' +
      'es.IdPersonaRelacionada = :IdPersona'#13#10'AND CuentasXPagarPagos.IdC' +
      'uentaBancariaPagador = :IdCuentaBancaria'#13#10
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdExportarPagoDocumento'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FechaInicio'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'FechaFin'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'IdPersona'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdCuentaBancaria'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 176
    Top = 224
  end
  object adocNullCuentaXPagarPagos: TADOCommand
    CommandText = 
      'UPDATE CuentasXPagarPagos SET IdExportarPagoDocumento = NULL '#13#10'W' +
      'HERE IdExportarPagoDocumento = :IdExportarPagoDocumento;'#13#10
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdExportarPagoDocumento'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 176
    Top = 280
  end
  object adoqPeriodos: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT IdPeriodo, Descripcion AS Periodo FROM Periodos')
    Left = 40
    Top = 200
  end
  object adoqPersonas: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT IdPersona, RazonSocial FROM Personas')
    Left = 40
    Top = 248
  end
  object adoqCuentaBancaria: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT IdCuentaBancaria, CuentaBancaria  FROM CuentasBancarias')
    Left = 40
    Top = 296
  end
  object adoqGetrangoPeriodo: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdPeriodo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT CAST(FechaInicio AS datetime) AS FechaInicio, CAST(FechaF' +
        'in AS datetime) AS FechaFin FROM Periodos WHERE IdPeriodo = :IdP' +
        'eriodo')
    Left = 328
    Top = 176
    object adoqGetrangoPeriodoFechaInicio: TDateTimeField
      FieldName = 'FechaInicio'
      ReadOnly = True
    end
    object adoqGetrangoPeriodoFechaFin: TDateTimeField
      FieldName = 'FechaFin'
      ReadOnly = True
    end
  end
end
