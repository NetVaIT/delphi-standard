inherited dmRptCXPPagos: TdmRptCXPPagos
  inherited adodsMaster: TADODataSet
    CommandText = 
      'select IdCuentaXPagarPago, Estatus, Periodo, Pagador, CuentaBanc' +
      'ariaPagador, ConceptoGenerico, Cobrador, CuentaBancariaCobrador,' +
      ' FechaProgramada, MontoProgramado, FechaAutorizacion, MontoAutor' +
      'izado, FechaPago, MontoPagado from vCuentasXPagarPagos'
  end
end
