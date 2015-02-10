object _dmConection: T_dmConection
  OldCreateOrder = False
  Height = 180
  Width = 227
  object ADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=as47Pw3K;Persist Security Info=True' +
      ';User ID=sa;Initial Catalog=interva;Data Source=NAS1\COMPAC'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    OnDisconnect = ADOConnectionDisconnect
    OnConnectComplete = ADOConnectionConnectComplete
    Left = 32
    Top = 8
  end
  object adoqOperadores: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     Operadores.indice, Operadores.operador, Operadores.no' +
        'mbre, Operadores.password, operadores_roles.ADMIN_PROD'
      'FROM         Operadores INNER JOIN'
      
        '                      operadores_roles ON Operadores.operador_ro' +
        'l = operadores_roles.indice'
      'WHERE     (Operadores.status = '#39'A'#39')')
    Left = 32
    Top = 72
    object adoqOperadoresindice: TAutoIncField
      FieldName = 'indice'
      ReadOnly = True
    end
    object adoqOperadoresoperador: TStringField
      FieldName = 'operador'
      Size = 10
    end
    object adoqOperadoresnombre: TStringField
      FieldName = 'nombre'
      Size = 30
    end
    object adoqOperadorespassword: TStringField
      FieldName = 'password'
    end
    object adoqOperadoresADMIN_PROD: TStringField
      FieldName = 'ADMIN_PROD'
      Size = 30
    end
  end
end
