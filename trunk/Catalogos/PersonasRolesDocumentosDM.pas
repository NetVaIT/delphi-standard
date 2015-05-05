unit PersonasRolesDocumentosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmPersonasRolesDocumentos = class(T_dmStandar)
    adodsMasterIdPersonaRolDocumento: TAutoIncField;
    adodsMasterIdPersonaRol: TIntegerField;
    adodsDocumento: TADODataSet;
    adodsDocumentoTipo: TADODataSet;
    adodsDocumentoClase: TADODataSet;
    adodsMasterIdDocumento: TIntegerField;
    adodsMasterDocumento: TStringField;
    dsMaster: TDataSource;
    actExpedienteDigital: TAction;
    procedure DataModuleCreate(Sender: TObject);
    procedure actExpedienteDigitalExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasRolesDocumentosForm, DocumentosDM;

{$R *.dfm}

{ TdmPersonasRolesDocumentos }

procedure TdmPersonasRolesDocumentos.actExpedienteDigitalExecute(Sender: TObject);
var
  dmDocumentos: TdmDocumentos;
  Id: Integer;
begin
  inherited;
  dmDocumentos := TdmDocumentos.Create(nil);
  dmDocumentos.FileAllowed := faAll;
  Id := adodsMasterIdDocumento.AsInteger;
  if Id  <> 0 then
  begin
    dmDocumentos.Edit(Id);
    adodsDocumento.Requery();
  end
  else
  begin
    Id := dmDocumentos.Add;
    if  Id <> 0 then
    begin
      adodsDocumento.Requery();
      adodsMasterIdDocumento.AsInteger := Id;
    end;
  end;
  dmDocumentos.Free;
end;

procedure TdmPersonasRolesDocumentos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmPersonasRolesDocumentos.Create(Self);
  gGridForm.DataSet := adodsMaster;
  TfrmPersonasRolesDocumentos(gGridForm).UpdateFile := actExpedienteDigital;
end;

end.
