inherited dmConfiguracion: TdmConfiguracion
  object adoqGetIdPeriodoActual: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT dbo.GetIdPeriodoActual() AS Valor')
    Left = 88
    Top = 216
    object adoqGetIdPeriodoActualValor: TIntegerField
      FieldName = 'Valor'
      ReadOnly = True
    end
  end
end
