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
    adodsMasterIdDocumento: TIntegerField;
    adodsMasterConcepto: TStringField;
    adodsMasterFecha: TDateTimeField;
    adodsInstruccionesTipos: TADODataSet;
    adodsMasterIntruccionTipo: TStringField;
    actProcessXLS: TAction;
    actUpdateFile: TAction;
    adodsDocumentos: TADODataSet;
    adodsMasterNombreArchivo: TStringField;
    adodsMasterIdPeriodoTipo: TIntegerField;
    adodsMasterRepetir: TBooleanField;
    adodsMasterRepetirInicio: TDateTimeField;
    adodsMasterRepetirFinaliza: TIntegerField;
    adodsMasterRepetirFin: TDateTimeField;
    adodsMasterRepetirHasta: TIntegerField;
    adodsPeriodosTipo: TADODataSet;
    adodsMasterPeriodoTipo: TStringField;
    actCreateMov: TAction;
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure actProcessXLSExecute(Sender: TObject);
    procedure actUpdateFileExecute(Sender: TObject);
    procedure adodsMasterRepetirChange(Sender: TField);
    procedure actCreateMovExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses InstruccionesForm, ImportXLSDM, DocumentosDM,
  InstruccionesPeriodosDM;

{$R *.dfm}

procedure TdmInstrucciones.actCreateMovExecute(Sender: TObject);
var
  dmInstruccionesPeriodos: TdmInstruccionesPeriodos;
begin
  inherited;
  dmInstruccionesPeriodos := TdmInstruccionesPeriodos.Create(Self);
  try
    dmInstruccionesPeriodos.Execute;
  finally
    dmInstruccionesPeriodos.Free;
  end;
end;

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
  dmDocumentos: TdmDocumentos;
  Id: Integer;
begin
  inherited;
  dmDocumentos:= TdmDocumentos.Create(nil);
  Id:= adodsMasterIdDocumento.AsInteger;
  if Id  <> 0 then
  begin
    dmDocumentos.Edit(Id);
    adodsDocumentos.Requery();
  end
  else
  begin
    Id:= dmDocumentos.Add;
    if  Id <> 0 then
    begin
      adodsDocumentos.Requery();
      adodsMasterIdDocumento.AsInteger:= Id;
    end;
  end;
  dmDocumentos.Free;
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
  TfrmInstrucciones(gGridForm).CreateMov:= actCreateMov;
  TfrmInstrucciones(gGridForm).UpdateFile:= actUpdateFile;
end;

end.
