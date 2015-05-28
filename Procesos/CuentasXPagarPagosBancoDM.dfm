inherited dmCuentasXPagarPagosBancos: TdmCuentasXPagarPagosBancos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaXPagarPago, IdCuentaXPagar, IdCuentaXPagarEstatus' +
      ', Descripcion, FechaInicio, FechaFin, IdPersonaRol, FechaAutoriz' +
      'aPago, MontoAutorizado, FechaProgramada, MontoProgramado, FechaP' +
      'ago, MontoPagado, FechaConcilia, IdCuentaBancariaPagador, IdCuen' +
      'taBancariaCobrador, IdEstadoCuenta, TotalMonedaNacional, Cobra, ' +
      'Paga, CtaBanCobrador, CtaBancariaPagador, CClabeCobrador, ClabeP' +
      'agador FROM vCuentasXPagarArchivosBancos'
    Left = 56
    Top = 32
    object adodsMasterIdCuentaXPagarPago: TIntegerField
      FieldName = 'IdCuentaXPagarPago'
    end
    object adodsMasterIdCuentaXPagar: TIntegerField
      FieldName = 'IdCuentaXPagar'
    end
    object adodsMasterIdCuentaXPagarEstatus: TIntegerField
      FieldName = 'IdCuentaXPagarEstatus'
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
    end
    object adodsMasterIdCuentaBancariaCobrador: TIntegerField
      FieldName = 'IdCuentaBancariaCobrador'
    end
    object adodsMasterIdEstadoCuenta: TIntegerField
      FieldName = 'IdEstadoCuenta'
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
    object adodsMasterPaga: TStringField
      FieldName = 'Paga'
      Size = 300
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
  end
end
