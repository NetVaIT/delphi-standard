unit RolesDocumentosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmRolesDocumentos = class(T_dmStandar)
    adodsMasterIdRolDocumento: TAutoIncField;
    adodsMasterIdPersonaRol: TIntegerField;
    adodsDocumentoAdjunto: TADODataSet;
    adodsDocumentoAdjuntoIdDocumentoAdjunto: TAutoIncField;
    adodsDocumentoAdjuntoIdDocumentoTipo: TIntegerField;
    adodsDocumentoAdjuntoIdDocumentoClase: TIntegerField;
    adodsDocumentoAdjuntoDescripcion: TStringField;
    adodsDocumentoAdjuntoNombreArchivo: TStringField;
    adodsDocumentoAdjuntoIdArchivo: TGuidField;
    adodsDocumentoAdjuntoArchivo: TBlobField;
    adodsDocumentoTipo: TADODataSet;
    adodsDocumentoClase: TADODataSet;
    adodsDocumentoAdjuntoDocumentoTipo: TStringField;
    adodsDocumentoAdjuntoDocumentoClase: TStringField;
    adodsMasterIdDocumentoAdjunto: TIntegerField;
    adodsMasterDocumentoAdjunto: TStringField;
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

uses RolesDocumentosForm, DocumentosAdjuntosDM;

{$R *.dfm}

{ TdmRolesDocumentos }

procedure TdmRolesDocumentos.actExpedienteDigitalExecute(Sender: TObject);
var
  dmDocumentosAdjuntos: TdmDocumentosAdjuntos;
  Id: Integer;
begin
  inherited;
  dmDocumentosAdjuntos := TdmDocumentosAdjuntos.Create(nil);
  dmDocumentosAdjuntos.FileAllowed:= faAll;
  Id := adodsMasterIdDocumentoAdjunto.AsInteger;
  if Id  <> 0 then
  begin
    dmDocumentosAdjuntos.Edit(Id);
    adodsDocumentoAdjunto.Requery();
  end
  else
  begin
    Id:= dmDocumentosAdjuntos.Add;
    if  Id <> 0 then
    begin
      adodsDocumentoAdjunto.Requery();
      adodsMasterIdDocumentoAdjunto.AsInteger:= Id;
    end;
  end;
  dmDocumentosAdjuntos.Free;
end;

procedure TdmRolesDocumentos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmRolesDocumentos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  TfrmRolesDocumentos(gGridForm).UpdateFile := actExpedienteDigital;
end;

end.
