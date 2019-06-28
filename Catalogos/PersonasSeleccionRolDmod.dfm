inherited dmPersonasSeleccionRol: TdmPersonasSeleccionRol
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT        PR.IdPersonaRol, PR.IdPersona, PR.IdRol, PR.IdPers' +
      'onaRelacionada, P1.RazonSocial AS Persona, Roles.Descripcion AS ' +
      'Rol, Personas.RazonSocial AS PersonaRelacionada, RolesEstatus.De' +
      'scripcion AS Estatus, '#13#10'                         RolesClases.Des' +
      'cripcion AS Clase, PR.Calcular, PR.PorcentajeCalculo'#13#10'FROM      ' +
      '      PersonasRoles AS PR INNER JOIN'#13#10'                         P' +
      'ersonas AS P1 ON PR.IdPersona = P1.IdPersona INNER JOIN'#13#10'       ' +
      '                  Personas ON PR.IdPersonaRelacionada = Personas' +
      '.IdPersona INNER JOIN'#13#10'                         Roles ON PR.IdRo' +
      'l = Roles.IdRol INNER JOIN'#13#10'                         RolesEstatu' +
      's ON PR.IdRolEstatus = RolesEstatus.IdRolEstatus INNER JOIN'#13#10'   ' +
      '                      RolesClases ON PR.IdRolClase = RolesClases' +
      '.IdRolClase'#13#10'WHERE        (P1.IdPersonaTitular IS NULL) AND (PR.' +
      'IdRolEstatus = 1) AND (PR.IdRolClase = 2) AND (Roles.IdRolTipo =' +
      ' 4)'#13#10'ORDER BY Persona'#13#10
    object adodsMasterIdPersonaRol: TAutoIncField
      FieldName = 'IdPersonaRol'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdRol: TIntegerField
      FieldName = 'IdRol'
      Visible = False
    end
    object adodsMasterIdPersonaRelacionada: TIntegerField
      FieldName = 'IdPersonaRelacionada'
      Visible = False
    end
    object adodsMasterPersona: TStringField
      FieldName = 'Persona'
      Size = 300
    end
    object adodsMasterRol: TStringField
      FieldName = 'Rol'
      Size = 50
    end
    object adodsMasterPersonaRelacionada: TStringField
      DisplayLabel = 'Persona relacionada'
      FieldName = 'PersonaRelacionada'
      Size = 300
    end
    object adodsMasterEstatus: TStringField
      FieldName = 'Estatus'
      Visible = False
      Size = 50
    end
    object adodsMasterClase: TStringField
      FieldName = 'Clase'
      Visible = False
      Size = 50
    end
    object adodsMasterCalcular: TBooleanField
      FieldName = 'Calcular'
    end
    object adodsMasterPorcentajeCalculo: TFMTBCDField
      DisplayLabel = 'Porcentaje'
      FieldName = 'PorcentajeCalculo'
      Precision = 18
      Size = 6
    end
  end
  inherited ActionList: TActionList
    object actDispersion: TAction
      Caption = 'Dispersi'#243'n'
      ImageIndex = 13
      OnExecute = actDispersionExecute
    end
  end
  object adopUpdIntercambiarRol: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_UpdIntercambiarRol;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdRol'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdPersonaRelacionada'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 104
    Top = 88
  end
end
