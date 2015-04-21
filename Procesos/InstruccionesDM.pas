unit InstruccionesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmInstrucciones = class(T_dmStandar)
    adodsMasterIdInstruccion: TAutoIncField;
    adodsMasterIdInstruccionTipo: TIntegerField;
    adodsMasterIdPersonaSolicita: TIntegerField;
    adodsMasterIdDocumentoAdjunto: TIntegerField;
    adodsMasterConcepto: TStringField;
    adodsMasterFecha: TDateTimeField;
    adodsInstruccionesTipos: TADODataSet;
    adodsMasterIntruccionTipo: TStringField;
    actProcessXLS: TAction;
    actUpdateFile: TAction;
    adodsDocumentosAdjuntos: TADODataSet;
    adodsMasterNombreArchivo: TStringField;
    adodsMasterIdPeriodoTipo: TIntegerField;
    adodsMasterRepetir: TBooleanField;
    adodsMasterRepetirDia: TIntegerField;
    adodsMasterRepetirInicio: TDateTimeField;
    adodsMasterRepetirFinaliza: TIntegerField;
    adodsMasterRepetirFin: TDateTimeField;
    adodsMasterRepetirHasta: TIntegerField;
    adodsPeriodosTipo: TADODataSet;
    adodsMasterPeriodoTipo: TStringField;
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure actProcessXLSExecute(Sender: TObject);
    procedure actUpdateFileExecute(Sender: TObject);
    procedure adodsMasterRepetirChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses InstruccionesForm, ImportXLSDM, DocumentosAdjuntosDM;

{$R *.dfm}

procedure TdmInstrucciones.actProcessXLSExecute(Sender: TObject);
var
  dmImportXLS: TdmImportXLS;
begin
  inherited;
  dmImportXLS := TdmImportXLS.Create(Self);
  try
    dmImportXLS.IdInstruccion:= adodsMasterIdInstruccion.Value;
    dmImportXLS.Execute;
  finally
    dmImportXLS.Free;
  end;
end;

procedure TdmInstrucciones.actUpdateFileExecute(Sender: TObject);
var
  dmDocumentosAdjuntos: TdmDocumentosAdjuntos;
  Id: Integer;
begin
  inherited;
  dmDocumentosAdjuntos:= TdmDocumentosAdjuntos.Create(nil);
  Id:= adodsMasterIdDocumentoAdjunto.AsInteger;
  if Id  <> 0 then
  begin
    dmDocumentosAdjuntos.Edit(Id);
    adodsDocumentosAdjuntos.Requery();
  end
  else
  begin
    Id:= dmDocumentosAdjuntos.Add;
    if  Id <> 0 then
    begin
      adodsDocumentosAdjuntos.Requery();
      adodsMasterIdDocumentoAdjunto.AsInteger:= Id;
    end;
  end;
  dmDocumentosAdjuntos.Free;
end;

procedure TdmInstrucciones.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsMasterIdPersonaSolicita.Value:= 1;
  adodsMasterRepetirFinaliza.Value:= 0;
end;

procedure TdmInstrucciones.adodsMasterRepetirChange(Sender: TField);
begin
  inherited;
//  adodsMasterPeriodoTipo.Clear;
//  adodsMasterRepetirDia.Clear;
////  adodsMasterRepetirInicio.Clear;
////  adodsMasterRepetirFinaliza.Clear;
//  adodsMasterRepetirFinaliza.Value:= 0;
//  adodsMasterRepetirHasta.Clear;
//  adodsMasterRepetirFin.Clear;
end;

procedure TdmInstrucciones.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmInstrucciones.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  TfrmInstrucciones(gGridForm).ProcessXLS:= actProcessXLS;
  TfrmInstrucciones(gGridForm).UpdateFile:= actUpdateFile;
end;

end.
