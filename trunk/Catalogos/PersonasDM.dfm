inherited dmPersona: TdmPersona
  OldCreateOrder = True
  Height = 765
  Width = 721
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersona, RFC, IdPersonaTipo, IdRazonSocialTipo, IdSexo,' +
      ' IdEstadoCivil, IdPais, IdPoblacion, RazonSocial, Nombre, Apelli' +
      'doPaterno, ApellidoMaterno, FechaNacimiento '#13#10'FROM Personas'
    Left = 48
    Top = 32
    object adodsMasterIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterRFC: TStringField
      FieldName = 'RFC'
      Size = 13
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
    object adodsMasterFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
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
    object adodsMasterRazonSocialTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'RazonSocialTipo'
      LookupDataSet = adodsRazonSocialTipo
      LookupKeyFields = 'IdRazonSocialTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRazonSocialTipo'
      Size = 200
      Lookup = True
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
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPersonaTipo, Descripcion FROM PersonasTipos'
    Parameters = <>
    Left = 136
    Top = 88
  end
  object adodsSexo: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdSexo, Descripcion FROM Sexos'
    Parameters = <>
    Left = 136
    Top = 200
  end
  object adodsEstadoCivil: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdEstadoCivil, Descripcion FROM EstadosCiviles'
    Parameters = <>
    Left = 136
    Top = 256
  end
  object adodsPais: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPais, Descripcion FROM Paises'
    Parameters = <>
    Left = 136
    Top = 312
  end
  object adodsClientes: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersonaRol, IdCtaContable, IdCtaContableNCA, IdCtaConta' +
      'bleNCR, IdCtaContableAnticipo, TotalFacturado, SaldoPendiente, C' +
      'alificacion '#13#10'FROM Clientes'#13#10'WHERE IdPersonaRol = :IdPersonaRol'
    DataSource = dsMaster
    Parameters = <
      item
        Name = 'IdPersonaRol'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 328
    Top = 32
  end
  object adodsPersonasRoles: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersonaRol, IdPersona, IdPersonaRelacionada, IdRol, IdR' +
      'olEsquemaPago, IdRolEstatus, IdRolClase '#13#10'FROM PersonasRoles'#13#10'WH' +
      'ERE IdRol = :IdRol'
    IndexFieldNames = 'IdPersona'
    Parameters = <
      item
        Name = 'IdRol'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 464
    Top = 360
    object adodsPersonasRolesIdPersonaRol: TAutoIncField
      FieldName = 'IdPersonaRol'
      ReadOnly = True
      Visible = False
    end
    object adodsPersonasRolesIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsPersonasRolesIdPersonaRelacionada: TIntegerField
      FieldName = 'IdPersonaRelacionada'
      Visible = False
    end
    object adodsPersonasRolesIdRol: TIntegerField
      FieldName = 'IdRol'
      Visible = False
    end
    object adodsPersonasRolesIdRolEsquemaPago: TIntegerField
      FieldName = 'IdRolEsquemaPago'
      Visible = False
    end
    object adodsPersonasRolesIdRolEstatus: TIntegerField
      FieldName = 'IdRolEstatus'
      Visible = False
    end
    object adodsPersonasRolesIdRolClase: TIntegerField
      FieldName = 'IdRolClase'
      Visible = False
    end
    object adodsPersonasRolesPersonaRelacionada: TStringField
      FieldKind = fkLookup
      FieldName = 'PersonaRelacionada'
      LookupDataSet = adodsPersonaRelacionada
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaRelacionada'
      Size = 300
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
    Left = 224
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
    Left = 136
    Top = 368
  end
  object dsEstado: TDataSource
    DataSet = adodsEstado
    Left = 224
    Top = 312
  end
  object dsMunicipio: TDataSource
    DataSet = adodsMunicipio
    Left = 224
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
    Left = 136
    Top = 424
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
    Left = 136
    Top = 480
  end
  object ADODataSet1: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Left = 576
    Top = 32
  end
  object adodsRolesClases: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdRolClase, Descripcion FROM RolesClases'
    Parameters = <>
    Left = 576
    Top = 528
  end
  object adodsRolesEstatus: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdRolEstatus, Descripcion FROM RolesEstatus'
    Parameters = <>
    Left = 576
    Top = 472
  end
  object adodsProveedores: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersonaRol, IdCtaContable, IdCtaContableNCA, IdCtaConta' +
      'bleNCR, IdCtaContableAnticipo, TotalFacturado, SaldoPendiente, C' +
      'alificacion '#13#10'FROM Proveedores'#13#10'WHERE IdPersonaRol = :IdPersonaR' +
      'ol'
    DataSource = dsMaster
    Parameters = <
      item
        Name = 'IdPersonaRol'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 424
    Top = 32
  end
  object adodsEmpleados: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersonaRol, IdAvisoAccidente, IdCuentaBancaria, IdPerfi' +
      'lPago '#13#10'FROM Empleados'#13#10'WHERE IdPersonaRol = :IdPersonaRol'
    DataSource = dsMaster
    Parameters = <
      item
        Name = 'IdPersonaRol'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 240
    Top = 32
  end
  object adodsPersonaRelacionada: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPersona, RazonSocial FROM Personas'
    Parameters = <>
    Left = 576
    Top = 416
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 136
    Top = 32
  end
  object dsPersonasRoles: TDataSource
    DataSet = adodsPersonasRoles
    Left = 576
    Top = 360
  end
  object adodsRazonSocialTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdRazonSocialTipo, Descripcion FROM RazonesSocialesTipos'
    Parameters = <>
    Left = 136
    Top = 144
  end
end
