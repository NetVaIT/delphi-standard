unit ExportarPagosDocumentosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, System.StrUtils, Vcl.Dialogs, System.UITypes,
  dxmdaset;

const
  TAB_CHAR        = #9;
  IdBancoBanorte  = 18;
  TXTExt          = '.TXT';

resourcestring
  strCreateFile    = 'Se creo el archivo %s, con %d pagos.';
  strNotCreateFile = 'No se encontraron pagos, por lo que no se genero el archivo.';

type
  TdmExportarPagosDocumentos = class(T_dmStandar)
    adodsEstatus: TADODataSet;
    adodsMasterIdExportarPagoDocumento: TAutoIncField;
    adodsMasterIdExportarPagoDocumentoEstatus: TIntegerField;
    adodsMasterIdDocumento: TIntegerField;
    adodsMasterIdPeriodo: TIntegerField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdCuentaBancaria: TIntegerField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterObservaciones: TStringField;
    adodsMasterEstatus: TStringField;
    actUpdateFile: TAction;
    adodsDocumentos: TADODataSet;
    adodsMasterNombreArchivo: TStringField;
    adoqvCXPPagos: TADOQuery;
    adoqvCXPPagosIdCuentaXPagarPago: TIntegerField;
    adoqvCXPPagosIdbancoCobrador: TIntegerField;
    adoqvCXPPagosPeriodo: TStringField;
    adoqvCXPPagosFechaAutorizacion: TDateTimeField;
    adoqvCXPPagosMontoAutorizado: TFMTBCDField;
    adoqvCXPPagosRFCPagador: TStringField;
    adoqvCXPPagosPagador: TStringField;
    adoqvCXPPagosCuentaBancariaPagador: TStringField;
    adoqvCXPPagosBanorteID: TStringField;
    adoqvCXPPagosCobrador: TStringField;
    adoqvCXPPagosBancoCobrador: TStringField;
    adoqvCXPPagosCuentaBancariaCobrador: TStringField;
    adoqvCXPPagosCLABECobrador: TStringField;
    actExportarBanorte: TAction;
    adocInsExportarPago: TADOCommand;
    adocUpdCuentaXPagarPagos: TADOCommand;
    adocNullCuentaXPagarPagos: TADOCommand;
    adoqPeriodos: TADOQuery;
    adoqPersonas: TADOQuery;
    adoqCuentaBancaria: TADOQuery;
    adodsMasterPeriodo: TStringField;
    adodsMasterEmisor: TStringField;
    adodsMasterCuentaBancaria: TStringField;
    adoqvCXPPagosRFCCobrador: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actUpdateFileExecute(Sender: TObject);
    procedure actExportarBanorteExecute(Sender: TObject);
    procedure adodsMasterBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    function CrearArchivoBanorte(IdPeriodo, IdPersona,
      IdCuentaBancaria: Integer; FileName: TFileName): Integer;
      procedure FiltrarPagos(IdPeriodo, IdPersona, IdCuentaBancaria: Integer);
  public
    { Public declarations }
    procedure ExportarBanorte;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ExportarPagosDocumentosForm, DocumentosDM, ConfiguracionDM,
  ExportarPagosFiltroForm, _Utils;

{$R *.dfm}

procedure TdmExportarPagosDocumentos.actExportarBanorteExecute(Sender: TObject);
begin
  inherited;
  ExportarBanorte;
end;

procedure TdmExportarPagosDocumentos.actUpdateFileExecute(Sender: TObject);
var
  dmDocumentos: TdmDocumentos;
  Id: Integer;
begin
  inherited;
  dmDocumentos:= TdmDocumentos.Create(nil);
  dmDocumentos.FileAllowed:= faTXT;
  dmDocumentos.LoadFileAllowed:= False;
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

procedure TdmExportarPagosDocumentos.adodsMasterBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  adocNullCuentaXPagarPagos.Parameters.ParamByName('IdExportarPagoDocumento').Value := adodsMasterIdExportarPagoDocumento.Value;
  adocNullCuentaXPagarPagos.Execute;
end;

function TdmExportarPagosDocumentos.CrearArchivoBanorte(
  IdPeriodo, IdPersona, IdCuentaBancaria: Integer; FileName: TFileName): Integer;
var
  dmDocumentos: TdmDocumentos;
  TXTArchivo : TextFile;
  Operacion, Dinero : String;
  Registro : String;
  Referencia: String;
  Registros: Integer;
  IdDocumento: Integer;
  IdExportarPagoDocumento: Integer;

function PreparaCadena(Origen, Justifica, Relleno: string; Longitud: integer): String;
var
  Falta : integer;
  Nueva : string;
begin
  if Length(Origen) <> Longitud then
  begin
    Falta := Longitud - Length(Origen);
    if Justifica = 'I' then
      Nueva := Origen + DupeString(Relleno,Falta);
    if Justifica = 'D' then
      Nueva := DupeString(Relleno,Falta) + Origen;
  end
  else
    Nueva := Origen;
  Result := Nueva;
end;

function QuitarCaracter(COrigen, CCaracter: string): String;
var
  i, L : integer;
  Cadena, Aux : string;
begin
  Cadena := '';
  Aux := '';
  L := Length(COrigen);
  for i := 1 to L do
  begin
    Aux := Copy(COrigen,i,1);
    if Aux <> CCaracter then
      Cadena := Cadena + Aux;
  end;
  Result := Cadena;
end;

function CortarCadena(COrigen: string; Longitud: integer): String;
begin
  if Length(COrigen) > Longitud then
    Delete(COrigen, Longitud + 1, Length(COrigen));
  Result := COrigen
end;

begin
  Registros:= 0;
  FiltrarPagos(IdPeriodo, IdPersona, IdCuentaBancaria);
  if adoqvCXPPagos.RecordCount > 0 then
  begin
    AssignFile(TXTArchivo, FileName);
    Rewrite(TXTArchivo);
    while not adoqvCXPPagos.Eof do
    begin
      Registro := '';
      if adoqvCXPPagosIdBancoCobrador.Value = IdBancoBanorte then
        Operacion := '02'
      else
        Operacion := '04'; //SPEI
      Registro := Registro + Operacion + Chr(9); // Operacion
//      Registro := Registro + PreparaCadena(adoqvCXPPagosBanorteID.AsString, 'I',' ',13) + Chr(9); // ClaveId
      Registro := Registro + adoqvCXPPagosBanorteID.AsString + Chr(9); // ClaveId
      Registro := Registro + PreparaCadena(adoqvCXPPagosCuentaBancariaPagador.AsString,'D','0',10) + Chr(9); // CuentaOrigen
      if Operacion = '02' then
        Registro := Registro + PreparaCadena(adoqvCXPPagosCuentaBancariaCobrador.AsString,'D','0',10) + Chr(9) // CuentaDestinoCUENTA
      else
        Registro := Registro + PreparaCadena(adoqvCXPPagosCLABECobrador.AsString,'D','0',18) + Chr(9); // CuentaDestinoCLABE
      Dinero := FormatFloat('0.00',adoqvCXPPagosMontoAutorizado.AsFloat);
//      Registro := Registro + PreparaCadena(Dinero,'D','0',13) + Chr(9); // Importe
      Registro := Registro + Dinero + Chr(9); // Importe
      Referencia := PreparaCadena(adoqvCXPPagosIdCuentaXPagarPago.AsString,'D','0',10);
      Registro := Registro + Referencia + Chr(9); // Referencia
      Registro := Registro + CortarCadena(adoqvCXPPagosPeriodo.AsString,29) + Chr(9); // Descripcion
      if Operacion = '04' then
        Registro := Registro + PreparaCadena(adoqvCXPPagosRFCCobrador.AsString,'I',' ',13) + Chr(9) // RFCOrdenante
      else
        Registro := Registro + Chr(9);
      if Operacion = '04' then
        Registro := Registro + '0' + Chr(9) // IVA
      else
        Registro := Registro + Chr(9);
      if Operacion = '05' then
        Registro := Registro + adoqvCXPPagosFechaAutorizacion.AsString + Chr(9) // FechaAplicacion
      else
        Registro := Registro + Chr(9);
      if Operacion = '04' then
        Registro := Registro + adoqvCXPPagosCobrador.AsString  // NombreBeneficiario
      else
        Registro := Registro + 'x';
      WriteLn(TXTArchivo, Registro);
      Inc(Registros);
      adoqvCXPPagos.Next;
    end;
    CloseFile(TXTArchivo);
    // Agrega documento
    dmDocumentos := TdmDocumentos.Create(Self);
    try
      IdDocumento:= dmDocumentos.SetFile(FileName);
    finally
      dmDocumentos.Free;
    end;
  end
  else
    IdDocumento:= 0;
  // Agrega registro exportado
  if IdDocumento<>0 then
  begin
    adocInsExportarPago.Parameters.ParamByName('IdExportarPagoDocumentoEstatus').Value:= 1;
    adocInsExportarPago.Parameters.ParamByName('IdDocumento').Value:= IdDocumento;
    adocInsExportarPago.Parameters.ParamByName('IdPeriodo').Value:= IdPeriodo;
    adocInsExportarPago.Parameters.ParamByName('IdPersona').Value:= IdPersona;
    adocInsExportarPago.Parameters.ParamByName('IdCuentaBancaria').Value:= IdCuentaBancaria;
    adocInsExportarPago.Parameters.ParamByName('Fecha').Value:= Date;
    adocInsExportarPago.Execute;
    IdExportarPagoDocumento:= adocInsExportarPago.Parameters.ParamByName('IdExportarPagoDocumento').Value;
    adoqvCXPPagos.First;
    while not adoqvCXPPagos.Eof do
    begin
      adocUpdCuentaXPagarPagos.Parameters.ParamByName('IdCuentaXPagarPagos').Value := adoqvCXPPagosIdCuentaXPagarPago.Value;
      adocUpdCuentaXPagarPagos.Parameters.ParamByName('IdExportarPagoDocumento').Value := IdExportarPagoDocumento;
      adocUpdCuentaXPagarPagos.Execute;
      adoqvCXPPagos.Next;
    end;
  end;
  adoqvCXPPagos.Close;
  Result:= Registros;
//  DeleteFile(NombreArchivo);
end;

procedure TdmExportarPagosDocumentos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmExportarPagosDocumentos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  TfrmExportarPagosDocumentos(gGridForm).UpdateFile:= actUpdateFile;
  TfrmExportarPagosDocumentos(gGridForm).actExpotarBanorte:= actExportarBanorte;
end;

procedure TdmExportarPagosDocumentos.ExportarBanorte;
var
  frmPagos: TfrmExportarPagosFiltro;
  NobreArchivo: TFileName;
  NoRegistros: Integer;
begin
  frmPagos := TfrmExportarPagosFiltro.Create(Self);
  try
    frmPagos.IdPeriodo:= dmConfiguracion.IdPeridoActual;
    if frmPagos.Execute then
    begin
      NobreArchivo:= dmConfiguracion.RutaPagos + frmPagos.Codigo + TXTExt;
      NoRegistros:= CrearArchivoBanorte(frmPagos.IdPeriodo, frmPagos.IdPersona, frmPagos.IdCuentaBancaria, NobreArchivo);
      if NoRegistros>0 then
      begin
        RefreshADODS(adodsMaster, adodsMasterIdExportarPagoDocumento);
        MessageDlg(Format(strCreateFile, [NobreArchivo, NoRegistros]), mtInformation, [mbOK], 0);
      end
      else
        MessageDlg(Format(strNotCreateFile, []), mtInformation, [mbOK], 0);
    end;
  finally
    frmPagos.Free;
  end;
end;

procedure TdmExportarPagosDocumentos.FiltrarPagos(IdPeriodo, IdPersona,
  IdCuentaBancaria: Integer);
begin
  adoqvCXPPagos.Close;
  adoqvCXPPagos.Parameters.ParamByName('IdPeriodo').Value := IdPeriodo;
  adoqvCXPPagos.Parameters.ParamByName('IdPersona').Value := IdPersona;
  adoqvCXPPagos.Parameters.ParamByName('IdCuentaBancaria').Value := IdCuentaBancaria;
  adoqvCXPPagos.Open;
end;

end.
