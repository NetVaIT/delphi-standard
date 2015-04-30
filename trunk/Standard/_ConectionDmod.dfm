object _dmConection: T_dmConection
  OldCreateOrder = False
  Height = 180
  Width = 227
  object ADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=as47Pw3K;Persist Security Info=True' +
      ';User ID=sa;Initial Catalog=IntervaRH;Data Source=NAS1\COMPAC'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    OnDisconnect = ADOConnectionDisconnect
    OnConnectComplete = ADOConnectionConnectComplete
    Left = 32
    Top = 8
  end
  object adoqUsuarios: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Usuarios.IdUsuario, Personas.RazonSocial, Usuarios.Login,' +
        ' Usuarios.Password'
      'FROM Usuarios'
      'INNER JOIN Personas ON Usuarios.IdPersona = Personas.IdPersona'
      'WHERE Usuarios.IdUsuarioEstatus = 1')
    Left = 32
    Top = 72
    object adoqUsuariosIdUsuario: TAutoIncField
      FieldName = 'IdUsuario'
      ReadOnly = True
    end
    object adoqUsuariosRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adoqUsuariosLogin: TStringField
      FieldName = 'Login'
      Size = 15
    end
    object adoqUsuariosPassword: TStringField
      FieldName = 'Password'
      Size = 15
    end
  end
end
