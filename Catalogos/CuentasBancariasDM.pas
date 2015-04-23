unit CuentasBancariasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

const
  IdMoneda_Predeterminado = 106;

type
  TdmCuentasBancarias = class(T_dmStandar)
    adodsMasterIdCuentaBancaria: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdCuentaBancariaTipo: TIntegerField;
    adodsMasterIdBanco: TIntegerField;
    adodsMasterCuentaBancaria: TStringField;
    adodsMasterClabeInterbancaria: TStringField;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterSaldoCuenta: TBCDField;
    adodsUsuariosXCtaBan: TADODataSet;
    dsMaster: TDataSource;
    adodsUsuariosXCtaBanIdCuentaBancariaUsuario: TIntegerField;
    adodsUsuariosXCtaBanIdPersona: TIntegerField;
    adodsUsuariosXCtaBanIdCuentaBancaria: TIntegerField;
    adodsUsuariosXCtaBanNumeroSerieToken: TStringField;
    adodsPersona: TADODataSet;
    adodsCuentaBancariaTipo: TADODataSet;
    adodsBanco: TADODataSet;
    adodsMoneda: TADODataSet;
    adodsPersonaIdPersona: TAutoIncField;
    adodsPersonaRFC: TStringField;
    adodsPersonaRazonSocial: TStringField;
    adodsPersonaNombre: TStringField;
    adodsPersonaApellidoPaterno: TStringField;
    adodsPersonaApellidoMaterno: TStringField;
    adodsMonedaIdMoneda: TAutoIncField;
    adodsMonedaDescripcion: TStringField;
    adodsBancoIdBanco: TAutoIncField;
    adodsBancoNombre: TStringField;
    adodsMasterBanco: TStringField;
    adodsMasterMoneda: TStringField;
    adodsPersonaUsuario: TADODataSet;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    adodsPersonaUsuarioNombreCompleto: TStringField;
    adodsMasterEstructuraEstadoCuenta: TStringField;
    adodsUsuariosXCtaBanObservaciones1: TStringField;
    adodsUsuariosXCtaBanObservaciones2: TStringField;
    adodsUsuariosXCtaBanPersona: TStringField;
    adodsMasterCuentaBancariaTipo: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure adodsUpdateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    fFiltroPersona:String; //Mar 25/15
    FRFC: String;
    procedure SetRFC(const Value: string);
  public
    { Public declarations }
    property FiltroPersona:String read ffiltroPersona write fFiltroPersona;
    property RFCAct:String read FRFC write SetRFC;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CuentasBancariasForm, UsuariosXCuentaBancariaForm;

{$R *.dfm}

procedure TdmCuentasBancarias.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsMasterIdMoneda.Value := IdMoneda_Predeterminado;
end;

procedure TdmCuentasBancarias.adodsUpdateNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsMasterIdMoneda.Value := IdMoneda_Predeterminado;
end;

procedure TdmCuentasBancarias.DataModuleCreate(Sender: TObject);
begin
  inherited;
  //AdodsPersona.Parameters.ParamByName('XRFC').Value:=CRFCActual;
//  AdoDSPersona.Open;

//  if adodsUsuariosXCtaBan.CommandText <> EmptyStr then
    adodsUsuariosXCtaBan.Open;
//  ADODSBanco.Open;
//
//  ADODSMoneda.Open;
//  ADODSTipoCtaBancaria.Open;


  gGridForm:= TfrmCuentasBancarias.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gFormDeatil1:= TfrmUsuariosXCuentaBancaria.Create(Self);
  gFormDeatil1.DataSet:= adodsUsuariosXCtaBan;
//  TfrmUsuariosXCuentaBancaria(gFormDeatil1).Cuenta := adodsMasterCuentaBancaria.AsString; //JCRC 20/04/2015 Inhabilite
end;


procedure TdmCuentasBancarias.SetRFC(const Value: string);
var ParamRFC:Tparameter;
begin
  FRFC := Value;
  if FiltroPersona<>'' then
  begin
    AdodsPersona.Close;

    adodsPersona.Filter:='RFC ='''+FRFC+'''';
    adodsPersona.Filtered:=True;
    AdodsPersona.Open;
    adodsMaster.Close;//
    adodsMaster.Filter:='IDPersona='+adodsPersona.FieldByName('IDPersona').AsString;
    adodsMaster.Filtered:=True;
  //  adodsUsuariosXCtaBan.Parameters.ParamByName('idcuentaBAncaria').value:=adodsMaster.fieldbyname('IDcuentabancaria').AsInteger;
    adodsUsuariosXCtaBan.Open;
  end
  else
  begin
    adodsPersona.Filter:='';
    adodsPersona.Filtered:=False;
    adodsMaster.Filter:='';
    adodsMaster.Filtered:=False;
    AdodsPersona.Open;

  end;
  ADODSPersonaUsuario.Open;
  adodsMaster.Open;
end;




end.
