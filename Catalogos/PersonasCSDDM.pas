unit PersonasCSDDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmPersonasCSD = class(T_dmStandar)
    adodsDocumento: TADODataSet;
    actUpdateFile: TAction;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdDocumento: TIntegerField;
    adodsMasterClave: TStringField;
    adodsMasterVencimiento: TDateTimeField;
    adodsMasterArchivo: TStringField;
    adodsMasterIdPersonaCSD: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actUpdateFileExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasCSDForm, DocumentosDM;

{$R *.dfm}

procedure TdmPersonasCSD.actUpdateFileExecute(Sender: TObject);
var
  dmDocumentos: TdmDocumentos;
  Id : Integer;
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

procedure TdmPersonasCSD.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmPersonasCSD.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  TfrmPersonasCSD(gGridForm).UpdateFile := actUpdateFile;
end;

end.
