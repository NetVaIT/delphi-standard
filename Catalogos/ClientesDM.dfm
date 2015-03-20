inherited dmClientes: TdmClientes
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCliente, IdPersonaRol, IdCtaContable, IdCtaContableNCA,' +
      ' IdCtaContableNCR, IdCtaContableAnticipo, TotalFacturado, SaldoP' +
      'endiente, Calificacion FROM Clientes'
    Left = 32
    Top = 24
    object adodsMasterIdCliente: TAutoIncField
      FieldName = 'IdCliente'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersonaRol: TIntegerField
      FieldName = 'IdPersonaRol'
      Visible = False
    end
    object adodsMasterIdCtaContable: TIntegerField
      FieldName = 'IdCtaContable'
      Visible = False
    end
    object adodsMasterIdCtaContableNCA: TIntegerField
      FieldName = 'IdCtaContableNCA'
      Visible = False
    end
    object adodsMasterIdCtaContableNCR: TIntegerField
      FieldName = 'IdCtaContableNCR'
      Visible = False
    end
    object adodsMasterIdCtaContableAnticipo: TIntegerField
      FieldName = 'IdCtaContableAnticipo'
      Visible = False
    end
    object adodsMasterTotalFacturado: TFMTBCDField
      FieldName = 'TotalFacturado'
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldoPendiente: TFMTBCDField
      FieldName = 'SaldoPendiente'
      Precision = 18
      Size = 6
    end
    object adodsMasterCalificacion: TIntegerField
      FieldName = 'Calificacion'
    end
  end
end
