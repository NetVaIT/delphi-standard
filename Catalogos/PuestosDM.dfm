inherited dmPuestos: TdmPuestos
  OldCreateOrder = True
  Height = 426
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdUnidadNegocio, Identificador, Descripcion FROM Unidades' +
      'DeNegocio'
    Left = 48
    object adodsMasterIdUnidadNegocio: TIntegerField
      FieldName = 'IdUnidadNegocio'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
  end
  object adodsGerencias: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdGerencia, IdUnidadNegocio, Identificador, Descripcion F' +
      'ROM Gerencias WHERE IdUnidadNegocio = :IdUnidadNegocio'
    DataSource = dsMaster
    MasterFields = 'IdUnidadNegocio'
    Parameters = <
      item
        Name = 'IdUnidadNegocio'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 48
    Top = 80
    object adodsGerenciasIdGerencia: TIntegerField
      FieldName = 'IdGerencia'
      Visible = False
    end
    object adodsGerenciasIdUnidadNegocio: TIntegerField
      FieldName = 'IdUnidadNegocio'
      Visible = False
    end
    object adodsGerenciasIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsGerenciasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 144
    Top = 16
  end
  object adodsDepartamentos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdDepartamento, IdGerencia, Identificador, Descripcion FR' +
      'OM Departamentos WHERE IdGerencia = :IdGerencia'
    DataSource = dsGerencias
    MasterFields = 'IdGerencia'
    Parameters = <
      item
        Name = 'IdGerencia'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 48
    Top = 144
    object adodsDepartamentosIdDepartamento: TIntegerField
      FieldName = 'IdDepartamento'
      Visible = False
    end
    object adodsDepartamentosIdGerencia: TIntegerField
      FieldName = 'IdGerencia'
      Visible = False
    end
    object adodsDepartamentosIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsDepartamentosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
  end
  object adodsPuestos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPuesto, IdDepartamento, Identificacion, Descripcion, Fe' +
      'chaCreacionPuesto, IdPuestoSuperior, IdPuestoCategoria FROM Pues' +
      'tos WHERE IdDepartamento = :IdDepartamento'
    DataSource = dsDepartamentos
    MasterFields = 'IdDepartamento'
    Parameters = <
      item
        Name = 'IdDepartamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 288
    object adodsPuestosIdPuesto: TAutoIncField
      FieldName = 'IdPuesto'
      ReadOnly = True
      Visible = False
    end
    object adodsPuestosIdDepartamento: TIntegerField
      FieldName = 'IdDepartamento'
      Visible = False
    end
    object adodsPuestosIdentificacion: TStringField
      FieldName = 'Identificacion'
      Size = 100
    end
    object adodsPuestosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object adodsPuestosFechaCreacionPuesto: TWideStringField
      FieldName = 'FechaCreacionPuesto'
      Size = 10
    end
    object adodsPuestosIdPuestoSuperior: TIntegerField
      FieldName = 'IdPuestoSuperior'
      Visible = False
    end
    object adodsPuestosPuestoSuperior: TStringField
      FieldKind = fkLookup
      FieldName = 'PuestoSuperior'
      LookupDataSet = adodsPuestoSuperior
      LookupKeyFields = 'IdPuesto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPuestoSuperior'
      Size = 50
      Lookup = True
    end
    object adodsPuestosIdPuestoCategoria: TIntegerField
      FieldName = 'IdPuestoCategoria'
      Visible = False
    end
    object adodsPuestosPuestoCategoria: TStringField
      FieldKind = fkLookup
      FieldName = 'PuestoCategoria'
      LookupDataSet = adodsPuestosCategorias
      LookupKeyFields = 'IdPuestoCategoria'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPuestoCategoria'
      Size = 100
      Lookup = True
    end
  end
  object dsGerencias: TDataSource
    DataSet = adodsGerencias
    Left = 144
    Top = 80
  end
  object dsDepartamentos: TDataSource
    DataSet = adodsDepartamentos
    Left = 144
    Top = 144
  end
  object adodsPuestosCategorias: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPuestoCategoria, Descripcion FROM PuestosCategorias'
    Parameters = <>
    Left = 176
    Top = 328
  end
  object adodsPuestoSuperior: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPuesto, Descripcion FROM Puestos'
    Parameters = <>
    Left = 176
    Top = 280
  end
end
