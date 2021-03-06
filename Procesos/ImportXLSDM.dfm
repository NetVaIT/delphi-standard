inherited dmImportXLS: TdmImportXLS
  OldCreateOrder = True
  Height = 429
  object adoqInstrucciones: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdInstruccion'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT IdInstruccion, IdInstruccionTipo, IdDocumento'
      'FROM Instrucciones'
      'WHERE IdInstruccion = :IdInstruccion')
    Left = 40
    Top = 72
    object adoqInstruccionesIdInstruccion: TAutoIncField
      FieldName = 'IdInstruccion'
      ReadOnly = True
    end
    object adoqInstruccionesIdInstruccionTipo: TIntegerField
      FieldName = 'IdInstruccionTipo'
    end
    object adoqInstruccionesIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
    end
  end
  object QImport3XLS: TQImport3XLS
    DataSet = dxmdImportar
    Formats.DecimalSeparator = '.'
    Formats.ThousandSeparator = ','
    Formats.DateSeparator = '/'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue.Strings = (
      'True')
    Formats.BooleanFalse.Strings = (
      'False')
    Formats.NullValues.Strings = (
      'Null')
    Formats.ShortDateFormat = 'dd/MM/yyyy'
    Formats.LongDateFormat = 'dddd, d'#39' de '#39'MMMM'#39' de '#39'yyyy'
    Formats.ShortTimeFormat = 'hh:mm AMPM'
    Formats.LongTimeFormat = 'hh:mm:ss AMPM'
    FieldFormats = <>
    ErrorLogFileName = 'error.log'
    AddType = qatInsert
    OnBeforePost = QImport3XLSBeforePost
    Left = 152
    Top = 160
  end
  object dxmdImportar: TdxMemData
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F04000000FF000000010007004E6F6D627265000800
      00000600060056616C6F72000400000003000A004964506572736F6E61000400
      00000300110049644D6F76696D69656E746F5469706F00}
    SortOptions = []
    SortedField = 'Nombre'
    OnNewRecord = dxmdImportarNewRecord
    Left = 320
    Top = 176
    object dxmdImportarIdMovimientoTipo: TIntegerField
      FieldName = 'IdMovimientoTipo'
    end
    object dxmdImportarIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
    object dxmdImportarNombre: TStringField
      DisplayWidth = 50
      FieldName = 'Nombre'
      Size = 255
    end
    object dxmdImportarValor: TFloatField
      FieldName = 'Valor'
      currency = True
    end
    object dxmdImportarIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object dxmdImportarMovimientoTipo: TStringField
      DisplayLabel = 'Tipo de movimiento'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipo'
      LookupDataSet = adodsMovimientosTipos
      LookupKeyFields = 'IdMovimientoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipo'
      Size = 50
      Lookup = True
    end
    object dxmdImportarEncontrada: TBooleanField
      FieldName = 'Encontrada'
    end
    object dxmdImportarGenerada: TBooleanField
      FieldName = 'Generada'
    end
  end
  object adoqInstrucionesTipos: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdInstruccionTipo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT InstruccionesTiposDetalle.IdInstruccionTipoDetalle, Instr' +
        'uccionesTiposDetalle.IdMovimientoTipo, InstruccionesTiposDetalle' +
        '.Nombre, InstruccionesTiposDetalle.Valor, InstruccionesTiposDeta' +
        'lle.IdMoneda'
      'FROM InstruccionesTiposDetalle'
      
        'INNER JOIN InstruccionesTipos ON InstruccionesTiposDetalle.IdIns' +
        'truccionTipo = InstruccionesTipos.IdInstruccionTipo'
      
        'WHERE InstruccionesTiposDetalle.IdInstruccionTipo = :IdInstrucci' +
        'onTipo')
    Left = 160
    Top = 72
    object adoqInstrucionesTiposIdInstruccionTipoDetalle: TAutoIncField
      FieldName = 'IdInstruccionTipoDetalle'
      ReadOnly = True
    end
    object adoqInstrucionesTiposIdMovimientoTipo: TIntegerField
      FieldName = 'IdMovimientoTipo'
    end
    object adoqInstrucionesTiposNombre: TStringField
      FieldName = 'Nombre'
      Size = 255
    end
    object adoqInstrucionesTiposValor: TStringField
      FieldName = 'Valor'
      Size = 255
    end
    object adoqInstrucionesTiposIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
  end
  object adocSetIncidencias: TADOCommand
    CommandText = 
      'DECLARE @IdInstruccion int;'#13#10'DECLARE @IdPersona int;'#13#10'DECLARE @I' +
      'dIncidencia int;'#13#10'SET @IdInstruccion = :IdInstruccion;'#13#10'SET @IdP' +
      'ersona = :IdPersona;'#13#10'IF NOT EXISTS (SELECT * FROM Incidencias W' +
      'HERE IdInstruccion = @IdInstruccion AND IdPersona = @IdPersona) ' +
      #13#10'BEGIN'#13#10'  INSERT INTO Incidencias (IdInstruccion, IdPersona) VA' +
      'LUES (@IdInstruccion, @IdPersona);'#13#10'  SELECT  @IdIncidencia = @@' +
      'identity;'#13#10'END'#13#10'ELSE'#13#10'BEGIN'#13#10'  SELECT @IdIncidencia = IdIncidenc' +
      'ia FROM Incidencias WHERE IdInstruccion = @IdInstruccion AND IdP' +
      'ersona = @IdPersona;'#13#10'END;'#13#10'SET :IdIncidencia  = @IdIncidencia;'#13 +
      #10
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdInstruccion'
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
        Name = 'IdIncidencia'
        DataType = ftInteger
        Direction = pdOutput
        Size = -1
        Value = Null
      end>
    Left = 160
    Top = 232
  end
  object adocGetPersona: TADOCommand
    CommandText = 'SELECT :IdPersona = IdPersona FROM Personas WHERE RFC= :Nombre;'
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdPersona'
        DataType = ftInteger
        Direction = pdOutput
        Size = -1
        Value = Null
      end
      item
        Name = 'Nombre'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 56
    Top = 232
  end
  object adocSetIncidenciasDetalle: TADOCommand
    CommandText = 
      'DECLARE @IdIncidencia int;'#13#10'DECLARE @IdMovimientoTipo int;'#13#10'DECL' +
      'ARE @IdMoneda int;'#13#10'DECLARE @Importe decimal(18,6);'#13#10'SET @IdInci' +
      'dencia = :IdIncidencia;'#13#10'SET @IdMovimientoTipo = :IdMovimientoTi' +
      'po;'#13#10'SET @IdMoneda = :IdMoneda ;'#13#10'SET @Importe = :Importe;'#13#10'IF N' +
      'OT EXISTS (SELECT * FROM IncidenciasDetalle WHERE IdIncidencia =' +
      ' @IdIncidencia AND IdMovimientoTipo = @IdMovimientoTipo) '#13#10'BEGIN' +
      #13#10'  INSERT INTO IncidenciasDetalle (IdIncidencia, IdIncidenciaTi' +
      'po, IdMovimientoTipo, IdMoneda, Importe, IdIncidenciaEstatus) VA' +
      'LUES (@IdIncidencia, 1, @IdMovimientoTipo, @IdMoneda, @Importe, ' +
      '1);'#13#10'END'#13#10'ELSE'#13#10'BEGIN'#13#10'  UPDATE IncidenciasDetalle SET IdMoneda ' +
      '= @IdMoneda, Importe = @Importe, IdIncidenciaEstatus = 1 WHERE I' +
      'dIncidencia = @IdIncidencia AND IdMovimientoTipo = @IdMovimiento' +
      'Tipo;'#13#10'END;'#13#10
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdIncidencia'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IdMovimientoTipo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IdMoneda'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'Importe'
        DataType = ftFloat
        Size = -1
        Value = Null
      end>
    Left = 184
    Top = 296
  end
  object adodsMovimientosTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMovimientoTipo, Descripcion from MovimientosTipos'
    Parameters = <>
    Left = 312
    Top = 232
  end
  object QImport3Xlsx: TQImport3Xlsx
    DataSet = dxmdImportar
    Formats.DecimalSeparator = '.'
    Formats.ThousandSeparator = ','
    Formats.DateSeparator = '/'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue.Strings = (
      'True')
    Formats.BooleanFalse.Strings = (
      'False')
    Formats.NullValues.Strings = (
      'Null')
    Formats.ShortDateFormat = 'dd/MM/yyyy'
    Formats.LongDateFormat = 'dddd, d'#39' de '#39'MMMM'#39' de '#39'yyyy'
    Formats.ShortTimeFormat = 'hh:mm AMPM'
    Formats.LongTimeFormat = 'hh:mm:ss AMPM'
    FieldFormats = <>
    ErrorLogFileName = 'error.log'
    AddType = qatInsert
    OnImportRecord = QImport3XlsxImportRecord
    OnBeforePost = QImport3XlsxBeforePost
    Left = 64
    Top = 160
  end
  object adocGetTipoNombre: TADOCommand
    CommandText = 
      'SELECT :TipoNombre = TipoNombre  FROM InstruccionesTipos WHERE I' +
      'dInstruccionTipo = :IdInstruccionTipo;'
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'TipoNombre'
        DataType = ftInteger
        Direction = pdOutput
        Size = -1
        Value = Null
      end
      item
        Name = 'IdInstruccionTipo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 56
    Top = 296
  end
  object adocDeleteIncidencias: TADOCommand
    CommandText = 
      'DECLARE @IdInstruccion int'#13#10'SET @IdInstruccion = :IdInstruccion ' +
      ' '#13#10'DELETE IncidenciasDetalle WHERE IdIncidencia IN (SELECT IdInc' +
      'idencia FROM Incidencias WHERE IdInstruccion = @IdInstruccion );' +
      #13#10'DELETE Incidencias WHERE IdInstruccion = @IdInstruccion ;'#13#10
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdInstruccion'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 320
    Top = 352
  end
  object adoqVerificaIncedencias: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdInstruccion'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT COUNT(IncidenciasDetalle.IdIncidenciaDetalle) AS Movimien' +
        'tos'
      'FROM IncidenciasDetalle '
      
        'INNER JOIN Incidencias ON IncidenciasDetalle.IdIncidencia = Inci' +
        'dencias.IdIncidencia '
      
        'INNER JOIN MovimientosDetalle ON IncidenciasDetalle.IdIncidencia' +
        'Detalle = MovimientosDetalle.IdIncidenciaDetalle'
      'WHERE Incidencias.IdInstruccion = :IdInstruccion '
      '')
    Left = 320
    Top = 288
    object adoqVerificaIncedenciasMovimientos: TIntegerField
      FieldName = 'Movimientos'
      ReadOnly = True
    end
  end
end
