inherited dmMovimientosTipo: TdmMovimientosTipo
  OldCreateOrder = True
  Height = 370
  Width = 399
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    AfterScroll = adodsMasterAfterScroll
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select IdMovimientoTipo, IdMovimientoTipoCategoria, IdMovimiento' +
      'TipoEfecto, IdMovimientoTipoAcumular, IdPersonaRolPagadora1, Idp' +
      'ersonaRolPagadora2, IdVariable, Identificador, Descripcion, Prod' +
      'uceCXC, ProduceCXP, AgruparTipo, AplicarISRProvisional, Porcenta' +
      'jePagadora1, PorcentajePagadora2 from MovimientosTipos'
    Left = 48
    object adodsMasterIdMovimientoTipo: TAutoIncField
      FieldName = 'IdMovimientoTipo'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdMovimientoTipoCategoria: TIntegerField
      FieldName = 'IdMovimientoTipoCategoria'
      Visible = False
      OnChange = adodsMasterIdMovimientoTipoCategoriaChange
    end
    object adodsMasterIdMovimientoTipoEfecto: TIntegerField
      FieldName = 'IdMovimientoTipoEfecto'
      Visible = False
    end
    object adodsMasterIdMovimientoTipoAcumular: TIntegerField
      FieldName = 'IdMovimientoTipoAcumular'
      Visible = False
    end
    object adodsMasterIdPersonaRolPagadora1: TIntegerField
      FieldName = 'IdPersonaRolPagadora1'
    end
    object adodsMasterIdpersonaRolPagadora2: TIntegerField
      FieldName = 'IdpersonaRolPagadora2'
    end
    object adodsMasterIdImpuesto: TIntegerField
      FieldName = 'IdVariable'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Required = True
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Required = True
      Size = 100
    end
    object adodsMasterMovimientoTipoCategoria: TStringField
      DisplayLabel = 'Categor'#237'a'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoCategoria'
      LookupDataSet = adodsMovimientoTipoCategoria
      LookupKeyFields = 'IdMovimientoTipoCategoria'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoCategoria'
      Required = True
      Size = 100
      Lookup = True
    end
    object adodsMasterMovimientoTipoEfecto: TStringField
      DisplayLabel = 'Efecto'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoEfecto'
      LookupDataSet = adodsMovimientoTipoEfecto
      LookupKeyFields = 'IdMovimientoTipoEfecto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoEfecto'
      Required = True
      Size = 100
      Lookup = True
    end
    object adodsMasterProduceCXC: TBooleanField
      DisplayLabel = 'Produce CXC'
      FieldName = 'ProduceCXC'
    end
    object adodsMasterProduceCXP: TBooleanField
      DisplayLabel = 'Produce CXP'
      FieldName = 'ProduceCXP'
    end
    object adodsMasterVariable: TStringField
      FieldKind = fkLookup
      FieldName = 'Variable'
      LookupDataSet = adodsVariables
      LookupKeyFields = 'IdVariable'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdVariable'
      Size = 50
      Lookup = True
    end
    object adodsMasterAgruparTipo: TBooleanField
      DisplayLabel = 'Agrupar por tipo de movimiento'
      FieldName = 'AgruparTipo'
    end
    object adodsMasterMovimientoTipo: TStringField
      DisplayLabel = 'Acumular a movimiento'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipo'
      LookupDataSet = adodsMovimientoTipo
      LookupKeyFields = 'IdMovimientoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoAcumular'
      Size = 100
      Lookup = True
    end
    object adodsMasterAplicarISRProvisional: TBooleanField
      DisplayLabel = 'Aplicar ISR Mensual'
      FieldName = 'AplicarISRProvisional'
    end
    object adodsMasterPagadora1: TStringField
      FieldKind = fkLookup
      FieldName = 'Pagadora1'
      LookupDataSet = adodsPersonaRol1
      LookupKeyFields = 'IdPersonaRol'
      LookupResultField = 'Pagadora'
      KeyFields = 'IdPersonaRolPagadora1'
      Size = 500
      Lookup = True
    end
    object adodsMasterPorcentajePagador1: TFMTBCDField
      DisplayLabel = 'Porcentaje pago 1'
      FieldName = 'PorcentajePagadora1'
      Precision = 18
      Size = 6
    end
    object adodsMasterPagadora2: TStringField
      FieldKind = fkLookup
      FieldName = 'Pagadora2'
      LookupDataSet = adodsPersonaRol2
      LookupKeyFields = 'IdPersonaRol'
      LookupResultField = 'Pagadora'
      KeyFields = 'IdpersonaRolPagadora2'
      Size = 500
      Lookup = True
    end
    object adodsMasterPorcentajePagadora2: TFMTBCDField
      DisplayLabel = 'Porcentaje pago 2'
      FieldName = 'PorcentajePagadora2'
      Precision = 18
      Size = 6
    end
  end
  inherited adodsUpdate: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdMovimientoTipo, IdMovimientoTipoCategoria, IdMovimiento' +
      'TipoEfecto, IdMovimientoTipoAcumular, IdPersonaRolPagadora1, Idp' +
      'ersonaRolPagadora2, IdVariable, Identificador, Descripcion, Prod' +
      'uceCXC, ProduceCXP, AgruparTipo, AplicarISRProvisional, Porcenta' +
      'jePagadora1, PorcentajePagadora2 from MovimientosTipos'#13#10'WHERE Id' +
      'MovimientoTipo = :IdMovimientoTipo'
    Parameters = <
      item
        Name = 'IdMovimientoTipo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    object adodsUpdateIdMovimientoTipo: TAutoIncField
      FieldName = 'IdMovimientoTipo'
      ReadOnly = True
      Visible = False
    end
    object adodsUpdateIdMovimientoTipoCategoria: TIntegerField
      FieldName = 'IdMovimientoTipoCategoria'
      Visible = False
    end
    object adodsUpdateIdMovimientoTipoEfecto: TIntegerField
      FieldName = 'IdMovimientoTipoEfecto'
      Visible = False
    end
    object adodsUpdateIdMovimientoTipoAcumular: TIntegerField
      FieldName = 'IdMovimientoTipoAcumular'
      Visible = False
    end
    object adodsUpdateIdPersonaRolPagadora1: TIntegerField
      FieldName = 'IdPersonaRolPagadora1'
    end
    object adodsUpdateIdpersonaRolPagadora2: TIntegerField
      FieldName = 'IdpersonaRolPagadora2'
    end
    object adodsUpdateIdVariable: TIntegerField
      FieldName = 'IdVariable'
      Visible = False
    end
    object adodsUpdateIdentificador: TStringField
      FieldName = 'Identificador'
      Required = True
    end
    object adodsUpdateDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Required = True
      Size = 100
    end
    object adodsUpdateMovimientoTipoCategoria: TStringField
      DisplayLabel = 'Categor'#237'a'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoCategoria'
      LookupDataSet = adodsMovimientoTipoCategoria
      LookupKeyFields = 'IdMovimientoTipoCategoria'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoCategoria'
      Required = True
      Size = 100
      Lookup = True
    end
    object adodsUpdateMovimientoTipoEfecto: TStringField
      DisplayLabel = 'Efecto'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoEfecto'
      LookupDataSet = adodsMovimientoTipoEfecto
      LookupKeyFields = 'IdMovimientoTipoEfecto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoEfecto'
      Required = True
      Size = 100
      Lookup = True
    end
    object adodsUpdateProduceCXC: TBooleanField
      DisplayLabel = 'Produce CXC'
      FieldName = 'ProduceCXC'
    end
    object adodsUpdateProduceCXP: TBooleanField
      DisplayLabel = 'Produce CXP'
      FieldName = 'ProduceCXP'
    end
    object adodsUpdateVariable: TStringField
      FieldKind = fkLookup
      FieldName = 'Variable'
      LookupDataSet = adodsVariables
      LookupKeyFields = 'IdVariable'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdVariable'
      Size = 50
      Lookup = True
    end
    object adodsUpdateAgruparTipo: TBooleanField
      DisplayLabel = 'Agrupar por tipo de movimiento'
      FieldName = 'AgruparTipo'
    end
    object adodsUpdateMovimientoTipo: TStringField
      DisplayLabel = 'Acumular a movimiento'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipo'
      LookupDataSet = adodsMovimientoTipo
      LookupKeyFields = 'IdMovimientoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoAcumular'
      Size = 100
      Lookup = True
    end
    object adodsUpdateAplicarISRProvisional: TBooleanField
      DisplayLabel = 'Aplicar ISR Mensual'
      FieldName = 'AplicarISRProvisional'
    end
    object adodsUpdatePagadora1: TStringField
      FieldKind = fkLookup
      FieldName = 'Pagadora1'
      LookupDataSet = adodsPersonaRol1
      LookupKeyFields = 'IdPersonaRol'
      LookupResultField = 'Pagadora'
      KeyFields = 'IdPersonaRolPagadora1'
      Size = 500
      Lookup = True
    end
    object adodsUpdatePorcentajePagadora1: TFMTBCDField
      DisplayLabel = 'Porcentaje pago 1'
      FieldName = 'PorcentajePagadora1'
      Precision = 18
      Size = 6
    end
    object adodsUpdatePagadora2: TStringField
      FieldKind = fkLookup
      FieldName = 'Pagadora2'
      LookupDataSet = adodsPersonaRol2
      LookupKeyFields = 'IdPersonaRol'
      LookupResultField = 'Pagadora'
      KeyFields = 'IdpersonaRolPagadora2'
      Size = 500
      Lookup = True
    end
    object adodsUpdatePorcentajePagadora2: TFMTBCDField
      DisplayLabel = 'Porcentaje pago 2'
      FieldName = 'PorcentajePagadora2'
      Precision = 18
      Size = 6
    end
  end
  object adodsMovimientoTipoCategoria: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdMovimientoTipoCategoria, Descripcion FROM MovimientosTi' +
      'posCategorias'#13#10'order by Descripcion'
    Parameters = <>
    Left = 120
    Top = 72
  end
  object adodsMovimientoTipoEfecto: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdMovimientoTipoEfecto, Descripcion FROM MovimientosTipos' +
      'Efectos'#13#10'order by Descripcion'
    Parameters = <>
    Left = 120
    Top = 128
  end
  object adodsMovimientoTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMovimientoTipo, Descripcion from MovimientosTipos'#13#10'orde' +
      'r by Descripcion'
    Parameters = <>
    Left = 120
    Top = 184
  end
  object adodsPersonaRol1: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        PersonasRoles.IdPersonaRol, Personas.RazonSocial A' +
      'S Receptora, Personas_1.RazonSocial AS Pagadora'#13#10'FROM           ' +
      ' PersonasRoles INNER JOIN'#13#10'                         Personas ON ' +
      'PersonasRoles.IdPersona = Personas.IdPersona INNER JOIN'#13#10'       ' +
      '                  Personas AS Personas_1 ON PersonasRoles.IdPers' +
      'onaRelacionada = Personas_1.IdPersona INNER JOIN'#13#10'              ' +
      '           Roles ON PersonasRoles.IdRol = Roles.IdRol INNER JOIN' +
      #13#10'                         RolesTipos ON Roles.IdRolTipo = Roles' +
      'Tipos.IdRolTipo'#13#10'WHERE        (RolesTipos.IdRolTipo = 2)'#13#10
    Parameters = <>
    Left = 120
    Top = 240
  end
  object adodsVariables: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdVariable, Descripcion from Variables'#13#10'order by Descripc' +
      'ion'
    Parameters = <>
    Left = 120
    Top = 304
  end
  object adodsPersonaRol2: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        PersonasRoles.IdPersonaRol, Personas.RazonSocial A' +
      'S Receptora, Personas_1.RazonSocial AS Pagadora'#13#10'FROM           ' +
      ' PersonasRoles INNER JOIN'#13#10'                         Personas ON ' +
      'PersonasRoles.IdPersona = Personas.IdPersona INNER JOIN'#13#10'       ' +
      '                  Personas AS Personas_1 ON PersonasRoles.IdPers' +
      'onaRelacionada = Personas_1.IdPersona INNER JOIN'#13#10'              ' +
      '           Roles ON PersonasRoles.IdRol = Roles.IdRol INNER JOIN' +
      #13#10'                         RolesTipos ON Roles.IdRolTipo = Roles' +
      'Tipos.IdRolTipo'#13#10'WHERE        (RolesTipos.IdRolTipo = 2)'#13#10
    Parameters = <>
    Left = 240
    Top = 240
  end
  object adodsMovimientoTipoLkp: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMovimientoTipo, Descripcion from MovimientosTipos'#13#10'wher' +
      'e IdMovimientoTipoCategoria = :IdMovimientoTipoCategoria'#13#10'order ' +
      'by Descripcion '
    Parameters = <
      item
        Name = 'IdMovimientoTipoCategoria'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 248
    Top = 184
  end
end
