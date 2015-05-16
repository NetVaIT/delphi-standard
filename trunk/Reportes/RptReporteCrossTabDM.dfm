inherited dmReporteCrossTab: TdmReporteCrossTab
  inherited adodsMaster: TADODataSet
    CommandText = 'SELECT IdMovimientoTipo, Descripcion FROM MovimientosTipos'
  end
  inherited ActionList: TActionList
    object actReporte: TAction
      Caption = 'Reporte'
      ImageIndex = 13
      OnExecute = actReporteExecute
    end
  end
  object adostReporte: TADOStoredProc
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'MuestraTabla;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@IdPeriodo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 70
      end
      item
        Name = '@Columna'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 128
        Value = 'Tipo'
      end>
    Left = 272
    Top = 224
  end
  object adoqryMovimientoTipo: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdMovimientoTipo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT IdMovimientoTipoCategoria AS Categoria, Descripcion AS Ti' +
        'po'
      'FROM MovimientosTipos'
      'WHERE (IdMovimientoTipo = :IdMovimientoTipo)')
    Left = 136
    Top = 224
  end
end
