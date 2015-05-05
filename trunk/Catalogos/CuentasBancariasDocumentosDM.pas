unit CuentasBancariasDocumentosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmCuentasBancariasDocumentos = class(T_dmStandar)
    dsMaster: TDataSource;
    adodsMasterIdCuentaBancariaDocumento: TAutoIncField;
    adodsMasterIdCuentaBancaria: TIntegerField;
    adodsMasterIdDocumento: TIntegerField;
    adodsDocumento: TADODataSet;
    adodsDocumentoTipo: TADODataSet;
    adodsDocumentoClase: TADODataSet;
    adodsMasterDocumento: TStringField;
    actExpedienteDigital: TAction;
    actNuevoDocumento: TAction;
    actEditaDocumento: TAction;
    procedure actExpedienteDigitalExecute(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure actNuevoDocumentoExecute(Sender: TObject);
    procedure actEditaDocumentoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DocumentosDM, CuentasBancariasDocumentosForm;

{$R *.dfm}

procedure TdmCuentasBancariasDocumentos.actEditaDocumentoExecute(
  Sender: TObject);
var
  dmDocumentos: TdmDocumentos;
  Id: Integer;
begin
  inherited;
  dmDocumentos := TdmDocumentos.Create(nil);
  dmDocumentos.FileAllowed:= faAll;
  Id := adodsMasterIdDocumento.AsInteger;
  if Id  <> 0 then
  begin
    dmDocumentos.Edit(Id);
    adodsDocumento.Requery();
  end;
  dmDocumentos.Free;
end;

procedure TdmCuentasBancariasDocumentos.actExpedienteDigitalExecute(
  Sender: TObject);
var
  dmDocumentos: TdmDocumentos;
  Id: Integer;
begin
  inherited;
  dmDocumentos := TdmDocumentos.Create(nil);
  dmDocumentos.FileAllowed:= faAll;
  Id := adodsMasterIdDocumento.AsInteger;
  if Id  <> 0 then
  begin
    dmDocumentos.Edit(Id);
    adodsDocumento.Requery();
  end
  else
  begin
    Id:= dmDocumentos.Add;
    if  Id <> 0 then
    begin
      adodsDocumento.Requery();
      adodsMasterIdDocumento.AsInteger:= Id;
    end;
  end;
  dmDocumentos.Free;
end;

procedure TdmCuentasBancariasDocumentos.actNuevoDocumentoExecute(
  Sender: TObject);
var
  dmDocumentos: TdmDocumentos;
  Id: Integer;
begin
  inherited;
  dmDocumentos := TdmDocumentos.Create(nil);
  dmDocumentos.FileAllowed:= faAll;
  Id := adodsMasterIdDocumento.AsInteger;
  if Id = 0 then
  begin
    Id:= dmDocumentos.Add;
    if  Id <> 0 then
    begin
      adodsDocumento.Requery();
      adodsMasterIdDocumento.AsInteger:= Id;
    end;
  end;
  dmDocumentos.Free;
end;

procedure TdmCuentasBancariasDocumentos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmCuentasBancariasDocumentos.Create(Self);
  gGridForm.DataSet := adodsMaster;
  TfrmCuentasBancariasDocumentos(gGridForm).UpdateFile := actExpedienteDigital;
end;

end.
