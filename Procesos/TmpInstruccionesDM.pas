unit TmpInstruccionesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, System.UITypes;

resourcestring
  StrSelectInfo     = 'Selecciona los archivos para generar las instrucciones.';

type
  TdmTmpInstrucciones = class(T_dmStandar)
    adodsMasterIdTmpInstruccion: TAutoIncField;
    adodsMasterIdInstruccionTipo: TIntegerField;
    adodsMasterIdDocumento: TIntegerField;
    adodsMasterDescripcion: TStringField;
    adodsMasterInicio: TDateTimeField;
    adodsMasterArchivo: TStringField;
    adodsInstruccionesTipos: TADODataSet;
    adocIniTmpInstrucciones: TADOCommand;
    adodsMasterInstruccionTipo: TStringField;
    actGetFileForGroup: TAction;
    adocInsInstrucciones: TADOCommand;
    procedure DataModuleCreate(Sender: TObject);
    procedure actGetFileForGroupExecute(Sender: TObject);
  private
    FInicio: TDate;
    FIdPersonaSolicita: Integer;
    procedure SetInicio(const Value: TDate);
    procedure SetIdPersonaSolicita(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property Inicio: TDate read FInicio write SetInicio;
    property IdPersonaSolicita: Integer read FIdPersonaSolicita write SetIdPersonaSolicita;
    function Execute: Boolean;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses TmpInstruccionesForm, VerificarForm, DocumentosDM, _Utils;

{$R *.dfm}

procedure TdmTmpInstrucciones.actGetFileForGroupExecute(Sender: TObject);
var
  dmDocumentos: TdmDocumentos;
  Id: Integer;
begin
  inherited;
  dmDocumentos:= TdmDocumentos.Create(nil);
  try
    dmDocumentos.FileAllowed:= faAll;
    Id:= dmDocumentos.SetFile();
    if Id <> 0 then
    begin
      if not (adodsMaster.State in [dsEdit, dsInsert]) then
        adodsMaster.Edit;
      adodsMasterIdDocumento.AsInteger:= Id;
      adodsMaster.Post;
      RefreshADODS(adodsMaster, adodsMasterIdTmpInstruccion);
    end;
  finally
    dmDocumentos.Free;
  end;
end;

procedure TdmTmpInstrucciones.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmTmpInstrucciones.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  TfrmTmpInstrucciones(gGridForm).actGetFileForGroup:= actGetFileForGroup;
end;

function TdmTmpInstrucciones.Execute: Boolean;
var
  frmSelect: TfrmVerificar;
begin
  Result:= False;
  adocIniTmpInstrucciones.Parameters.ParamByName('Inicio').Value:= Inicio;
  adocIniTmpInstrucciones.Execute;
  frmSelect:= TfrmVerificar.Create(Self);
  try
    frmSelect.Info:= StrSelectInfo;
    ShowModule(frmSelect.pnlMaster,'');
    if frmSelect.ShowModal = mrOk then
    begin
      adocInsInstrucciones.Parameters.ParamByName('IdPersonaSolicita').Value:= IdPersonaSolicita;
      adocInsInstrucciones.Execute;
      Result:= True;
    end;
  finally
    frmSelect.Free;
  end;
end;

procedure TdmTmpInstrucciones.SetIdPersonaSolicita(const Value: Integer);
begin
  FIdPersonaSolicita := Value;
end;

procedure TdmTmpInstrucciones.SetInicio(const Value: TDate);
begin
  FInicio := Value;
end;

end.
