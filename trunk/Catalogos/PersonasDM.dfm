inherited dmPersona: TdmPersona
  OldCreateOrder = True
  Height = 791
  Width = 732
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersona, RFC, IdPersonaTipo, IdRazonSocialTipo, IdSexo,' +
      ' IdEstadoCivil, IdPais, IdPoblacion, RazonSocial, Nombre, Apelli' +
      'doPaterno, ApellidoMaterno, FechaNacimiento FROM Personas WHERE ' +
      'IdPersona = :IdPersona'
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 24
    object adodsMasterIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersonaTipo: TIntegerField
      FieldName = 'IdPersonaTipo'
      Visible = False
    end
    object adodsMasterIdRazonSocialTipo: TIntegerField
      FieldName = 'IdRazonSocialTipo'
      Visible = False
    end
    object adodsMasterIdSexo: TIntegerField
      FieldName = 'IdSexo'
      Visible = False
    end
    object adodsMasterIdEstadoCivil: TIntegerField
      FieldName = 'IdEstadoCivil'
      Visible = False
    end
    object adodsMasterIdPais: TIntegerField
      FieldName = 'IdPais'
      Visible = False
    end
    object adodsMasterIdPoblacion: TIntegerField
      FieldName = 'IdPoblacion'
      Visible = False
    end
    object adodsMasterRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object adodsMasterPersonaTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'PersonaTipo'
      LookupDataSet = adodsPersonaTipo
      LookupKeyFields = 'IdPersonaTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPersonaTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adodsMasterNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object adodsMasterApellidoPaterno: TStringField
      FieldName = 'ApellidoPaterno'
      Size = 100
    end
    object adodsMasterApellidoMaterno: TStringField
      FieldName = 'ApellidoMaterno'
      Size = 100
    end
    object adodsMasterSexo: TStringField
      FieldKind = fkLookup
      FieldName = 'Sexo'
      LookupDataSet = adodsSexo
      LookupKeyFields = 'IdSexo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdSexo'
      Size = 50
      Lookup = True
    end
    object adodsMasterFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object adodsMasterEstadoCivil: TStringField
      FieldKind = fkLookup
      FieldName = 'EstadoCivil'
      LookupDataSet = adodsEstadoCivil
      LookupKeyFields = 'IdEstadoCivil'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdEstadoCivil'
      Size = 50
      Lookup = True
    end
    object adodsMasterPais: TStringField
      FieldKind = fkLookup
      FieldName = 'Pais'
      LookupDataSet = adodsPais
      LookupKeyFields = 'IdPais'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPais'
      Size = 100
      Lookup = True
    end
  end
  object adodsPersonaTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPersonaTipo, Descripcion FROM PersonasTipos'
    Parameters = <>
    Left = 144
    Top = 88
  end
  object adodsSexo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdSexo, Descripcion FROM Sexos'
    Parameters = <>
    Left = 144
    Top = 144
  end
  object adodsEstadoCivil: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdEstadoCivil, Descripcion FROM EstadosCiviles'
    Parameters = <>
    Left = 144
    Top = 200
  end
  object adodsPais: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPais, Descripcion FROM Paises'
    Parameters = <>
    Left = 144
    Top = 256
  end
  object adodsClientes: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCliente, IdPersonaRol, IdCtaContable, IdCtaContableNCA,' +
      ' IdCtaContableNCR, IdCtaContableAnticipo, TotalFacturado, SaldoP' +
      'endiente, Calificacion FROM Clientes'
    Parameters = <>
    Left = 640
    Top = 32
    object adodsClientesIdCliente: TAutoIncField
      FieldName = 'IdCliente'
      ReadOnly = True
      Visible = False
    end
    object adodsClientesIdPersonaRol: TIntegerField
      FieldName = 'IdPersonaRol'
      Visible = False
    end
    object adodsClientesIdCtaContable: TIntegerField
      FieldName = 'IdCtaContable'
      Visible = False
    end
    object adodsClientesIdCtaContableNCA: TIntegerField
      FieldName = 'IdCtaContableNCA'
      Visible = False
    end
    object adodsClientesIdCtaContableNCR: TIntegerField
      FieldName = 'IdCtaContableNCR'
      Visible = False
    end
    object adodsClientesIdCtaContableAnticipo: TIntegerField
      FieldName = 'IdCtaContableAnticipo'
      Visible = False
    end
    object adodsClientesTotalFacturado: TFMTBCDField
      FieldName = 'TotalFacturado'
      Precision = 18
      Size = 6
    end
    object adodsClientesSaldoPendiente: TFMTBCDField
      FieldName = 'SaldoPendiente'
      Precision = 18
      Size = 6
    end
    object adodsClientesCalificacion: TIntegerField
      FieldName = 'Calificacion'
    end
  end
  object adodsPersonasRoles: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersonaRol, IdPersona, IdPersonaRelacionada, IdRol, IdR' +
      'olEstatus, IdRolClase FROM PersonasRoles'#13#10'WHERE IdPersona = :IdP' +
      'ersona'#13#10'AND IdRol = :IdRol'
    DataSource = dsMaster
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdRol'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 400
    Top = 528
    object adodsPersonasRolesIdPersonaRol: TIntegerField
      FieldName = 'IdPersonaRol'
    end
    object adodsPersonasRolesIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsPersonasRolesIdPersonaRelacionada: TIntegerField
      FieldName = 'IdPersonaRelacionada'
    end
    object adodsPersonasRolesIdRol: TIntegerField
      FieldName = 'IdRol'
    end
    object adodsPersonasRolesIdRolEstatus: TIntegerField
      FieldName = 'IdRolEstatus'
    end
    object adodsPersonasRolesIdRolClase: TIntegerField
      FieldName = 'IdRolClase'
    end
    object adodsPersonasRolesPersonaRelacionada: TStringField
      FieldKind = fkLookup
      FieldName = 'PersonaRelacionada'
      LookupDataSet = adodsPersonaRelacionada
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaRelacionada'
      Size = 150
      Lookup = True
    end
    object adodsPersonasRolesRol: TStringField
      FieldKind = fkLookup
      FieldName = 'Rol'
      LookupDataSet = adodsRoles
      LookupKeyFields = 'IdRol'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRol'
      Size = 50
      Lookup = True
    end
    object adodsPersonasRolesRolEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'RolEstatus'
      LookupDataSet = adodsRolesEstatus
      LookupKeyFields = 'IdRolEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRolEstatus'
      Size = 50
      Lookup = True
    end
    object adodsPersonasRolesRolClase: TStringField
      FieldKind = fkLookup
      FieldName = 'RolClase'
      LookupDataSet = adodsRolesClases
      LookupKeyFields = 'IdRolClase'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRolClase'
      Size = 50
      Lookup = True
    end
  end
  object dsPais: TDataSource
    DataSet = adodsPais
    Left = 232
    Top = 256
  end
  object adodsEstado: TADODataSet
    Connection = _dmConection.ADOConnection
    CommandText = 
      'SELECT IdEstado, IdPais, Descripcion FROM Estados IdPais = :IdPa' +
      'is'
    DataSource = dsPais
    Parameters = <
      item
        Name = 'IdPais'
        Size = -1
        Value = Null
      end>
    Left = 144
    Top = 312
  end
  object dsEstado: TDataSource
    DataSet = adodsEstado
    Left = 232
    Top = 312
  end
  object dsMunicipio: TDataSource
    DataSet = adodsMunicipio
    Left = 232
    Top = 368
  end
  object adodsMunicipio: TADODataSet
    Connection = _dmConection.ADOConnection
    CommandText = 
      'SELECT IdMunicipio, IdEstado, Descripcion FROM Municipios WHERE ' +
      'IdEstado = :IdEstado'
    DataSource = dsEstado
    Parameters = <
      item
        Name = 'IdEstado'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 144
    Top = 368
  end
  object adodsPoblacion: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPoblacion, IdMunicipio, Descripcion FROM Poblaciones WH' +
      'ERE IdMunicipio = :IdMunicipio'
    DataSource = dsMunicipio
    Parameters = <
      item
        Name = 'IdMunicipio'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 144
    Top = 424
  end
  object ADODataSet1: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Left = 24
    Top = 552
  end
  object adodsRoles: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdRol, Descripcion FROM Roles'
    Parameters = <>
    Left = 264
    Top = 616
  end
  object adodsRolesClases: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdRolClase, Descripcion FROM RolesClases'
    Parameters = <>
    Left = 344
    Top = 616
  end
  object adodsRolesEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdRolEstatus, Descripcion FROM RolesEstatus'
    Parameters = <>
    Left = 440
    Top = 616
  end
  object adodsProveedores: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdProveedor, IdPersonaRol, IdCtaContable, IdCtaContableNC' +
      'A, IdCtaContableNCR, IdCtaContableAnticipo, TotalFacturado, Sald' +
      'oPendiente, Calificacion FROM Proveedores'
    Parameters = <>
    Left = 536
    Top = 32
  end
  object adodsEmpleados: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersona, IdEmpleadoEstatus, IdAvisoAccidente, IdCuentaB' +
      'ancaria, IdPerfilPago FROM Empleados'
    Parameters = <>
    Left = 408
    Top = 32
  end
  object adodsPersonaRelacionada: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPersona, RazonSocial FROM Personas'
    Parameters = <>
    Left = 584
    Top = 616
  end
  object adodsPersonasDomicilios: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersonaDomicilio, IdPersona, IdDomicilio, IdDomicilioTi' +
      'po, Predeterminado FROM PersonasDomicilios'
    Parameters = <>
    Left = 544
    Top = 312
  end
  object dsPersonasRoles: TDataSource
    DataSet = adodsPersonasRoles
    Left = 496
    Top = 528
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 120
    Top = 24
  end
end
