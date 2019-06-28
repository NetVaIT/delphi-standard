inherited dmPersona: TdmPersona
  OldCreateOrder = True
  Height = 460
  Width = 422
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersona, RFC, CURP, IdPersonaTipo, IdRazonSocialTipo, I' +
      'dSexo, IdEstadoCivil, IdPais, IdPoblacion, RazonSocial, Nombre, ' +
      'ApellidoPaterno, ApellidoMaterno, FechaNacimiento, LugarNacimien' +
      'to, IdPersonaTitular, VigenciaFM34 FROM Personas'#13#10#13#10
    Left = 56
    object adodsMasterIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object adodsMasterCURP: TStringField
      FieldName = 'CURP'
      Size = 18
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
    object adodsMasterLugarNacimiento: TStringField
      FieldName = 'LugarNacimiento'
      Size = 100
    end
    object adodsMasterIdPersonaTitular: TIntegerField
      FieldName = 'IdPersonaTitular'
      Visible = False
    end
    object adodsMasterTitular: TStringField
      FieldKind = fkLookup
      FieldName = 'Titular'
      LookupDataSet = adodsPersonaTitular
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaTitular'
      Size = 50
      Lookup = True
    end
    object adodsMasterVigenciaFM34: TDateTimeField
      FieldName = 'VigenciaFM34'
      Visible = False
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 216
  end
  inherited ActionList: TActionList
    Left = 216
    Top = 80
    object actSelecionarRol: TAction
      Caption = 'Seleccionar rol'
      ImageIndex = 13
      OnExecute = actSelecionarRolExecute
    end
  end
  object adodsPersonaTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPersonaTipo, Descripcion FROM PersonasTipos'
    Parameters = <>
    Left = 56
    Top = 72
  end
  object adodsRazonSocialTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdRazonSocialTipo, Descripcion FROM RazonesSocialesTipos'
    Parameters = <>
    Left = 56
    Top = 128
  end
  object adodsSexo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdSexo, Descripcion FROM Sexos'
    Parameters = <>
    Left = 56
    Top = 184
  end
  object adodsEstadoCivil: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdEstadoCivil, Descripcion FROM EstadosCiviles'
    Parameters = <>
    Left = 56
    Top = 240
  end
  object adodsPais: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPais, Descripcion FROM Paises'
    Parameters = <>
    Left = 56
    Top = 296
  end
  object adodsPersonaRoles: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = adodsPersonaRolesNewRecord
    CommandText = 
      'SELECT PersonasRoles.IdPersonaRol, PersonasRoles.IdPersona, Pers' +
      'onasRoles.IdPersonaRelacionada, PersonasRoles.IdRol, '#13#10'         ' +
      '    PersonasRoles.IdRolEsquemaPago, PersonasRoles.IdRolEstatus, ' +
      'PersonasRoles.IdRolClase, PersonasRoles.Calcular, '#13#10'            ' +
      ' PersonasRoles.PorcentajeCalculo, PersonasRoles.RegistroPatronal' +
      'IMSS, PersonasRoles.NSS, PersonasRoles.FechaAltaIMSS, '#13#10'        ' +
      '     PersonasRoles.Facturar, PersonasRoles.FechaIngreso, Persona' +
      'sRoles.FechaBaja, PersonasRoles.PorcentajeRetencion, Roles.IdRol' +
      'Tipo'#13#10'FROM PersonasRoles INNER JOIN Roles ON PersonasRoles.IdRol' +
      ' = Roles.IdRol'#13#10'WHERE PersonasRoles.IdPersona = :IdPersona'#13#10
    DataSource = dsMaster
    MasterFields = 'IdPersona'
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 312
    Top = 77
    object adodsPersonaRolesIdPersonaRol: TAutoIncField
      FieldName = 'IdPersonaRol'
      ReadOnly = True
      Visible = False
    end
    object adodsPersonaRolesIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsPersonaRolesIdPersonaRelacionada: TIntegerField
      FieldName = 'IdPersonaRelacionada'
      Visible = False
    end
    object adodsPersonaRolesIdRol: TIntegerField
      FieldName = 'IdRol'
      Visible = False
    end
    object adodsPersonaRolesIdRolEsquemaPago: TIntegerField
      FieldName = 'IdRolEsquemaPago'
      Visible = False
    end
    object adodsPersonaRolesIdRolEstatus: TIntegerField
      FieldName = 'IdRolEstatus'
      Visible = False
    end
    object adodsPersonaRolesIdRolClase: TIntegerField
      FieldName = 'IdRolClase'
      Visible = False
    end
    object adodsPersonaRolesIdRolTipo: TIntegerField
      FieldKind = fkLookup
      FieldName = 'IdRolTipo'
      LookupDataSet = adodsRol
      LookupKeyFields = 'IdRol'
      LookupResultField = 'IdRolTipo'
      KeyFields = 'IdRol'
      Visible = False
      Lookup = True
    end
    object adodsPersonaRolesRol: TStringField
      FieldKind = fkLookup
      FieldName = 'Rol'
      LookupDataSet = adodsRol
      LookupKeyFields = 'IdRol'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRol'
      Size = 50
      Lookup = True
    end
    object adodsPersonaRolesPersonaRelacionada: TStringField
      DisplayLabel = 'Persona relacionada'
      FieldKind = fkLookup
      FieldName = 'PersonaRelacionada'
      LookupDataSet = adodsPersonaRelacionada
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaRelacionada'
      Size = 300
      Lookup = True
    end
    object adodsPersonaRolesRolEstatus: TStringField
      DisplayLabel = 'Estatus'
      FieldKind = fkLookup
      FieldName = 'RolEstatus'
      LookupDataSet = adodsRolEstatus
      LookupKeyFields = 'IdRolEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRolEstatus'
      Size = 50
      Lookup = True
    end
    object adodsPersonaRolesRolClase: TStringField
      DisplayLabel = 'Clase'
      FieldKind = fkLookup
      FieldName = 'RolClase'
      LookupDataSet = adodsRolClase
      LookupKeyFields = 'IdRolClase'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRolClase'
      Size = 50
      Lookup = True
    end
    object adodsPersonaRolesCalcular: TBooleanField
      FieldName = 'Calcular'
    end
    object adodsPersonaRolesPorcentajeCalculo: TFMTBCDField
      DisplayLabel = 'Porcentaje Calculo'
      FieldName = 'PorcentajeCalculo'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object adodsPersonaRolesFacturar: TBooleanField
      FieldName = 'Facturar'
      Visible = False
    end
    object adodsPersonaRolesPorcentajeRetencion: TFMTBCDField
      DisplayLabel = 'Porcentaje de retenci'#243'n'
      FieldName = 'PorcentajeRetencion'
      Visible = False
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object adodsPersonaRolesNSS: TStringField
      FieldName = 'NSS'
      Size = 15
    end
    object adodsPersonaRolesFechaAltaIMSS: TDateTimeField
      FieldName = 'FechaAltaIMSS'
    end
    object adodsPersonaRolesFechaIngreso: TDateTimeField
      DisplayLabel = 'Fecha de ingreso'
      FieldName = 'FechaIngreso'
    end
    object adodsPersonaRolesFechaBaja: TDateTimeField
      DisplayLabel = 'Fecha de baja'
      FieldName = 'FechaBaja'
    end
    object adodsPersonaRolesRegistroPatronalIMSS: TStringField
      FieldName = 'RegistroPatronalIMSS'
      Size = 15
    end
  end
  object adodsPersonaRelacionada: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT Personas.IdPersona, Personas.RazonSocial, '#13#10'PersonasRoles' +
      '.IdRol, PersonasRoles.IdPersona '#13#10'FROM Personas '#13#10'LEFT JOIN Pers' +
      'onasRoles ON Personas.IdPersona = PersonasRoles.IdPersona'#13#10
    Parameters = <>
    Left = 312
    Top = 133
  end
  object adodsRol: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdRol, IdRolTipo, Descripcion FROM Roles'
    Parameters = <>
    Left = 312
    Top = 189
  end
  object adodsRolEstatus: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdRolEstatus, Descripcion FROM RolesEstatus'
    Parameters = <>
    Left = 312
    Top = 301
  end
  object adodsRolClase: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdRolClase, Descripcion FROM RolesClases'
    Parameters = <>
    Left = 312
    Top = 357
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 144
    Top = 16
  end
  object adodsPersonaTitular: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersona, RazonSocial FROM Personas'#13#10'WHERE IdPersonaTipo' +
      ' = 1'
    Parameters = <>
    Left = 56
    Top = 365
  end
end
