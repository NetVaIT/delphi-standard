inherited dmPlazasTurnos: TdmPlazasTurnos
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPlazaTurno, Identificador, Descripcion, HoraEntrada, Ho' +
      'raSalida, HoraAlimentosInicio, HoraAlimentosFin FROM PlazasTurno' +
      's'
    object adodsMasterIdPlazaTurno: TIntegerField
      FieldName = 'IdPlazaTurno'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object adodsMasterHoraEntrada: TWideStringField
      FieldName = 'HoraEntrada'
      Size = 16
    end
    object adodsMasterHoraSalida: TWideStringField
      FieldName = 'HoraSalida'
      Size = 16
    end
    object adodsMasterHoraAlimentosInicio: TWideStringField
      FieldName = 'HoraAlimentosInicio'
      Size = 16
    end
    object adodsMasterHoraAlimentosFin: TWideStringField
      FieldName = 'HoraAlimentosFin'
      Size = 16
    end
  end
end
