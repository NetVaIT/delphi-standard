(******************************************************************************
 Proyecto Delphi Standard

 Copyright (C) 2008-2015 - Jesus Huante Caballero

 ******************************************************************************)
unit _ConectionDmod;

interface

uses
  SysUtils, Classes, Controls, DB, ADODB, Dialogs, _Utils;

type
  T_dmConection = class(TDataModule)
    ADOConnection: TADOConnection;
    adoqOperadores: TADOQuery;
    adoqOperadoresindice: TAutoIncField;
    adoqOperadoresoperador: TStringField;
    adoqOperadoresnombre: TStringField;
    adoqOperadorespassword: TStringField;
    adoqOperadoresADMIN_PROD: TStringField;
    procedure ADOConnectionConnectComplete(Connection: TADOConnection;
      const Error: Error; var EventStatus: TEventStatus);
    procedure ADOConnectionDisconnect(Connection: TADOConnection;
      var EventStatus: TEventStatus);
  private
    { Private declarations }
    FNombreOperador: String;
    FOperador: String;
    FConectionCaption: String;
    FIndiceOperador: Integer;
    FExePath: string;
    FADMIN_PROD: String;
    procedure SetExePath(const Value: string);
  public
    { Public declarations }
    function TryToConnect: Boolean;
    function Login: Boolean;
    procedure Logout;
    function EnabledAction(pTag: Integer): Boolean;
    property ExePath: string read FExePath write SetExePath;
    property ConectionCaption: String read FConectionCaption;
    property IndiceOperador: Integer read FIndiceOperador;
    property Operador: String read FOperador;
    property NombreOperador: String read FNombreOperador;
    property ADMIN_PROD: String read FADMIN_PROD;
  end;

var
  _dmConection: T_dmConection;

implementation

uses _LoginForm;

{$R *.dfm}

{ T_dmConection }

procedure T_dmConection.ADOConnectionConnectComplete(Connection: TADOConnection;
  const Error: Error; var EventStatus: TEventStatus);
begin
  case EventStatus of
    esOK: FConectionCaption:= 'Conectado a: ' + Connection.DefaultDatabase;
//    begin
//      if adocTME.Connected
//      then FConectionCaption:= 'Conectado a: ' + Connection.DefaultDatabase
//      else FConectionCaption:= 'Desconectado';
//    end;
    esErrorsOccured: FConectionCaption:= 'Error: ' + Error.Description;
    esCantDeny: FConectionCaption:= 'Acceso denegado';
    esCancel: ;
    esUnwantedEvent: ;
  end;
end;

function T_dmConection.TryToConnect: Boolean;
begin
  Result:= True;
  try
    ADOConnection.Open;
    ADOConnection.Close;
  except
    MessageDlg(strNotConnectToDB, mtError, [mbOK], 0);
    Result:= False;
  end;
end;

procedure T_dmConection.ADOConnectionDisconnect(Connection: TADOConnection;
  var EventStatus: TEventStatus);
begin
  case EventStatus of
    esOK: FConectionCaption:= 'Desconectado';
    esErrorsOccured: FConectionCaption:= 'Error';
    esCantDeny: FConectionCaption:= 'Acceso denegado';
    esCancel: ;
    esUnwantedEvent: ;
  end;
end;

function T_dmConection.EnabledAction(pTag: Integer): Boolean;
var
 vValor: String;
begin
  vValor:= Copy(FADMIN_PROD, pTag, 1);
  Result := vValor = '1';
end;

function T_dmConection.Login: Boolean;
var
  frmLogin: T_frmLogin;
  EnterApp: Boolean;

  function LoginCorrect: Boolean;
  begin
//    adoqOperadores.Open;
//    if adoqOperadores.Locate('operador', frmLogin.User, []) then
//      if (frmLogin.Password = Trim(adoqOperadorespassword.Value)) then
//      begin
//        Result:= True;
//        FIndiceOperador:= adoqOperadoresindice.Value;
//        FOperador:= adoqOperadoresoperador.Value;
//        FNombreOperador:= adoqOperadoresnombre.Value;
//        FADMIN_PROD:= adoqOperadoresADMIN_PROD.Value;
//      end
//      else
//      begin
//        MessageDlg(strIncorrectPass, mtInformation, [mbOK], 0);
//        Result:= False;
//      end
//    else
//    begin
//      MessageDlg(strIncorrectUser, mtInformation, [mbOK], 0);
//      Result:= False;
//    end;
//    adoqOperadores.Close;
    Result:= True;
  end;

begin
  try
    Result:= False;
    frmLogin:= T_frmLogin.Create(nil);
    repeat
      if frmLogin.ShowModal = mrOk then
      begin
        ADOConnection.Open;
        if LoginCorrect then
        begin
          EnterApp := True;
          Result   := True;
        end
        else
        begin
          ADOConnection.Close;
          EnterApp := False;
        end;
      end
      else
      begin
        EnterApp := True;
        Result   := False;
      end;
    until EnterApp;
  finally
    FreeAndNil(frmLogin);
  end;
end;

procedure T_dmConection.Logout;
begin
  FOperador:= '';
  FNombreOperador:= '';
  ADOConnection.Close;
end;

procedure T_dmConection.SetExePath(const Value: string);
begin
  FExePath := Value;
  ADOConnection.Close;
  ADOConnection.ConnectionString := strConectionFileName + Value + strConectionADOFile;
end;

end.
