inherited dmCFDI: TdmCFDI
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select ID, FechaHora, frfcemisor, frfcreceptor, fTotal from CFDC' +
      'FDI'
    object adodsMasterID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adodsMasterFechaHora: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FechaHora'
    end
    object adodsMasterfrfcemisor: TWideStringField
      DisplayLabel = 'Emisor'
      FieldName = 'frfcemisor'
      FixedChar = True
      Size = 13
    end
    object adodsMasterfrfcreceptor: TWideStringField
      DisplayLabel = 'Receptor'
      FieldName = 'frfcreceptor'
      FixedChar = True
      Size = 13
    end
    object adodsMasterfTotal: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'fTotal'
      Precision = 19
    end
  end
end
