unit ExportarPagosBancoDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, System.StrUtils, Vcl.Dialogs, Vcl.ExtDlgs, System.UITypes,
  dxmdaset, Forms, DCPsha512;

type
  TdmExportarPagosBancos = class(T_dmStandar)
    actExportaBanorte: TAction;
    adodsMasterIdCuentaXPagarPago: TIntegerField;
    adodsMasterIdCuentaXPagar: TIntegerField;
    adodsMasterIdCuentaXPagarEstatus: TIntegerField;
    adodsMasterDescripcion: TStringField;
    adodsMasterFechaInicio: TWideStringField;
    adodsMasterFechaFin: TWideStringField;
    adodsMasterIdPersonaRol: TIntegerField;
    adodsMasterFechaAutorizaPago: TDateTimeField;
    adodsMasterMontoAutorizado: TFMTBCDField;
    adodsMasterFechaProgramada: TDateTimeField;
    adodsMasterMontoProgramado: TFMTBCDField;
    adodsMasterFechaPago: TDateTimeField;
    adodsMasterMontoPagado: TFMTBCDField;
    adodsMasterFechaConcilia: TDateTimeField;
    adodsMasterIdCuentaBancariaPagador: TIntegerField;
    adodsMasterIdCuentaBancariaCobrador: TIntegerField;
    adodsMasterIdEstadoCuenta: TIntegerField;
    adodsMasterTotalMonedaNacional: TFMTBCDField;
    adodsMasterCobra: TStringField;
    adodsMasterRFCCobra: TStringField;
    adodsMasterPaga: TStringField;
    adodsMasterRFCPaga: TStringField;
    adodsMasterBancoCobrador: TIntegerField;
    adodsMasterBancoPagador: TIntegerField;
    adodsMasterCtaBanCobrador: TStringField;
    adodsMasterCtaBancariaPagador: TStringField;
    adodsMasterCClabeCobrador: TStringField;
    adodsMasterClabePagador: TStringField;
    stdBancos: TSaveTextFileDialog;
    adodsDocumento: TADODataSet;
    adodsDocumentoIdDocumento: TAutoIncField;
    adodsDocumentoIdDocumentoTipo: TIntegerField;
    adodsDocumentoIdDocumentoClase: TIntegerField;
    adodsDocumentoDescripcion: TStringField;
    adodsDocumentoNombreArchivo: TStringField;
    adodsDocumentoIdArchivo: TGuidField;
    adodsDocumentoArchivo: TBlobField;
    adodsPersonas: TADODataSet;
    adodsPeriodos: TADODataSet;
    adodsCuentaBancaria: TADODataSet;
    adodsEsquemaPago: TADODataSet;
    adodsEsquemaPagoIdEsquemaPago: TAutoIncField;
    adodsEsquemaPagoDescripcion: TStringField;
    mdParams: TdxMemData;
    mdParamsIdPeriodo: TIntegerField;
    mdParamsIdPersona: TIntegerField;
    mdParamsIdCuentaBancaria: TIntegerField;
    mdParamsIdEsquemaPago: TIntegerField;
    dsPersonas: TDataSource;
    adodsPersonasIdPersona: TIntegerField;
    adodsPersonasIdRol: TIntegerField;
    adodsPersonasRazonSocial: TStringField;
    adodsCuentaBancariaIdCuentaBancaria: TAutoIncField;
    adodsCuentaBancariaIdPersona: TIntegerField;
    adodsCuentaBancariaNombre: TStringField;
    adodsCuentaBancariaIdentificador: TStringField;
    adodsCuentaBancariaCuentaBancaria: TStringField;
    mdParamsEmpresa: TStringField;
    mdParamsCuentaBanco: TStringField;
    mdParamsEsquemaPago: TStringField;
    adodsCXPPagos: TADODataSet;
    adodsCXPPagosIdCuentaXPagarPago: TAutoIncField;
    adodsCXPPagosIdCuentaXPagarEstatus: TIntegerField;
    adodsCXPPagosIdExportarPagoDocumento: TIntegerField;
    adodsExportarPagosDocumentos: TADODataSet;
    adodsExportarPagosDocumentosIdExportarPagoDocumento: TAutoIncField;
    adodsExportarPagosDocumentosIdExportarPagoDocumentoEstatus: TIntegerField;
    adodsExportarPagosDocumentosIdDocumento: TIntegerField;
    adodsExportarPagosDocumentosHash: TStringField;
    adodsExportarPagosDocumentosIdPersona: TIntegerField;
    adodsExportarPagosDocumentosIdPeriodo: TIntegerField;
    adodsExportarPagosDocumentosIdEsquemaPago: TIntegerField;
    adodsExportarPagosDocumentosIdBanco: TIntegerField;
    adodsExportarPagosDocumentosIdCuentaBancaria: TIntegerField;
    adodsExportarPagosDocumentosObservaciones: TStringField;
    adodsExportarPagosDocumentosEstatus: TADODataSet;
    adodsExportarPagosDocumentosEstatusIdExportarPagoDocumentoEstatus: TIntegerField;
    adodsExportarPagosDocumentosEstatusDescripcion: TStringField;
    adodsExportarPagosDocumentosExportaPagoDocumentoEstatus: TStringField;
    adodsExportarPagosDocumentosArchivo: TStringField;
    actBajarArchivoPagos: TAction;
    actDescargar: TAction;
    adocEstatusCuentaXPagarPagos: TADOCommand;
    adocExportaPagosDocs: TADOCommand;
    adocEstatusCuentaXPagarPagosDoc: TADOCommand;
    adodsMasterBanorteID: TStringField;
    adodsExportarPagosDocumentosFecha: TDateTimeField;
    procedure actExportaBanorteExecute(Sender: TObject);
    procedure actBajarArchivoPagosExecute(Sender: TObject);
    procedure actDescargarExecute(Sender: TObject);
  private
    { Private declarations }
    function CreaArchivoBanorte(NombreArchivo:String; Per,Emp,Cta,Esq:integer):Boolean;
    function PreparaCadena(Origen,Justifica,Relleno:string;Longitud:integer):String;
    function QuitarCaracter(COrigen,CCaracter: string):String;
    function CortarCadena(COrigen:string;Longitud:integer):String;
    function CargaArchivoaFS(Archivo : string; Describe : string):integer;
    procedure SubirArchivoaFS(FileName: TFileName);
    function DigestToStr(Digest: array of byte): string;
    function GetStringHash(Source: AnsiString): string;
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ConfiguracionDM, ExportarPagosBancoEdit, ExportarPagosBancoForm,
  DocumentosDM;

{$R *.dfm}

procedure TdmExportarPagosBancos.actBajarArchivoPagosExecute(Sender: TObject);
var
  frmExportaPagosBajaArchivo : TfrmExportarPagosBanco;
begin
  inherited;
  frmExportaPagosBajaArchivo := TfrmExportarPagosBanco.Create(Self);
  frmExportaPagosBajaArchivo.DescargarFile := actDescargar;
  adodsExportarPagosDocumentos.Open;
  frmExportaPagosBajaArchivo.ShowModal;
  adodsExportarPagosDocumentos.Close;
end;

procedure TdmExportarPagosBancos.actDescargarExecute(Sender: TObject);
var
  dmDocumentos: TdmDocumentos;
  Id : Integer;
begin
  inherited;
  dmDocumentos := TdmDocumentos.Create(nil);
  dmDocumentos.FileAllowed := faAll;
  Id := adodsExportarPagosDocumentosIdDocumento.AsInteger;
//  ShowMessage(inttostr(Id));
  if Id  <> 0 then
  begin
    dmDocumentos.Edit(Id);
    adodsDocumento.Requery();
    adocExportaPagosDocs.Parameters.ParamByName('IdExportarPagoDocumentos').Value := Id;
    adocExportaPagosDocs.Execute;
  end;
  dmDocumentos.Free;
end;

procedure TdmExportarPagosBancos.actExportaBanorteExecute(Sender: TObject);
var
  Ruta, Empresa : string;
  frmExportaPagos : TfrmExportaPagosBancos;
begin
  inherited;
  adodsPersonas.Open;
  adodsPeriodos.Open;
//  adodsEsquemaPago.Open;
  adodsCuentaBancaria.Open;
  mdParams.Open;
  frmExportaPagos := TfrmExportaPagosBancos.Create(Self);
  frmExportaPagos.dsPeriodos.DataSet := adodsPeriodos;
  frmExportaPagos.dsPersonas.DataSet := adodsPersonas;
  frmExportaPagos.dsCuentaBancaria.DataSet := adodsCuentaBancaria;
//  frmExportaPagos.dsEsquemaPago.DataSet := adodsEsquemaPago;
  frmExportaPagos.dsParams.DataSet := mdParams;
  if frmExportaPagos.ShowModal = mrOk then
  begin
    Screen.Cursor := crHourGlass;
    Empresa := QuitarCaracter(mdParamsEmpresa.AsString,'.');
    Empresa := QuitarCaracter(Empresa,',');
    Ruta := dmConfiguracion.RutaPagos;
    Ruta := Ruta + IntToStr(mdParamsIdPeriodo.Value) + Empresa +
            mdParamsCuentaBanco.AsString + mdParamsEsquemaPago.AsString + '.txt';
//    ShowMessage(IntToStr(mdParamsIdPeriodo.Value) + '---' + IntToStr(mdParamsIdPersona.Value) + '---' + IntToStr(mdParamsIdCuentaBancaria.Value) + '---' + IntToStr(mdParamsIdEsquemaPago.Value));
    if CreaArchivoBanorte(Ruta, mdParamsIdPeriodo.Value, mdParamsIdPersona.Value,mdParamsIdCuentaBancaria.Value,mdParamsIdEsquemaPago.Value) then
    begin
      Screen.Cursor := crDefault;
      ShowMessage('Pagos Exportados');
    end
    else
    begin
      Screen.Cursor := crDefault;
      ShowMessage('No se encontraron Pagos para Exportar');
    end;
  end;
  frmExportaPagos.Free;
  adodsPersonas.Close;
  adodsPeriodos.Close;
//  adodsEsquemaPago.Close;
  adodsCuentaBancaria.Close;
  mdParams.Close;
end;

function TdmExportarPagosBancos.CargaArchivoaFS(Archivo,
  Describe: string): integer;
var
  ArchivoPagos : TFileName;
begin
  ArchivoPagos := Archivo;
  adodsDocumento.Open;
  adodsDocumento.Insert;
  adodsDocumentoIdDocumentoTipo.Value := 2;
  adodsDocumentoIdDocumentoClase.Value := 1;
  adodsDocumentoDescripcion.AsString := Describe;
  adodsDocumentoNombreArchivo.AsString := ExtractFileName(Archivo);
  SubirArchivoaFS(ArchivoPagos);
  adodsDocumento.Post;
  Result := adodsDocumentoIdDocumento.Value;
  adodsDocumento.Close;
end;

function TdmExportarPagosBancos.CortarCadena(COrigen: string;
  Longitud: integer): String;
begin
  if Length(COrigen) > Longitud then
    Delete(COrigen, Longitud + 1, Length(COrigen));
  Result := COrigen
end;

function TdmExportarPagosBancos.CreaArchivoBanorte(NombreArchivo:String; Per,Emp,Cta,Esq:integer):Boolean;
const
  IdBancoBanorte = 18;
var
  Archivo : TextFile;
  Operacion, Dinero : String;
  Registro : String;
  Referencia: String;
  IdDocumento: Integer;
  IdExportarPagoDocumento: Integer;
begin
  Result := False;
  adodsMaster.Parameters.ParamByName('IdPeriodo').Value := Per;
  adodsMaster.Parameters.ParamByName('IdPersona').Value := Emp;
  adodsMaster.Parameters.ParamByName('IdCuentaBancaria').Value := Cta;
//  adodsMaster.Parameters.ParamByName('IdEsquemaPago').Value := Esq;
  adodsMaster.Open;
  System.Assign(Archivo, NombreArchivo);
  Rewrite(Archivo);
  adodsMaster.First;
  if adodsMaster.RecordCount > 0 then
  begin
    Result := True;
    while not adodsMaster.Eof do
    begin
      Registro := '';
      if adodsMasterBancoCobrador.AsInteger = IdBancoBanorte then
        Operacion := '''02'
      else
        Operacion := '''04'; //SPEI
      Registro := Registro + Operacion + Chr(9); // Operacion
      Registro := Registro + PreparaCadena(adodsMasterBanorteID.AsString, 'I',' ',13) + Chr(9); // ClaveId
      Registro := Registro + '''' + PreparaCadena(adodsMasterCtaBancariaPagador.AsString,'D','0',18) + Chr(9); // CuentaOrigen
      if Operacion = '''02' then
        Registro := Registro + '''' + PreparaCadena(adodsMasterCtaBanCobrador.AsString,'D','0',18) + Chr(9) // CuentaDestinoCUENTA
      else
        Registro := Registro + '''' + PreparaCadena(adodsMasterCClabeCobrador.AsString,'D','0',18) + Chr(9); // CuentaDestinoCLABE
      Dinero := QuitarCaracter(FormatFloat('0.00',adodsMasterMontoProgramado.AsFloat),'.');
      Registro := Registro + PreparaCadena(Dinero,'D','0',13) + Chr(9); // Importe
      Referencia := adodsMasterIdCuentaXPagarPago.AsString;
      Registro := Registro + PreparaCadena(Referencia,'D','0',10) + Chr(9); // Referencia
      Registro := Registro + CortarCadena(adodsMasterDescripcion.AsString,29) + Chr(9); // Descripcion
//      Registro := Registro + '1'; // MonedaOrigen
//      Registro := Registro + '1' + Chr(9); // MonedaDestino
      Registro := Registro + PreparaCadena(adodsMasterRFCPaga.AsString,'I',' ',13) + Chr(9); // RFCOrdenante
      Registro := Registro + '0' + Chr(9); // IVA
      if Operacion = '''05' then
        Registro := Registro + adodsMasterFechaProgramada.AsString + Chr(9) // FechaAplicacion
      else
        Registro := Registro + Chr(9);
      if Operacion = '''04' then
        Registro := Registro + adodsMasterCobra.AsString  // NombreBeneficiario
      else
        Registro := Registro + 'X';
      WriteLn(Archivo, Registro);
      adodsMaster.Next;
    end;
    CloseFile(Archivo);

    IdDocumento := CargaArchivoaFS(NombreArchivo,'Archivo de pagos ');
    adodsExportarPagosDocumentos.Open;
    adodsExportarPagosDocumentos.Insert;
    adodsExportarPagosDocumentos.FieldByName('Fecha').Value := Date;
    adodsExportarPagosDocumentos.FieldByName('IdExportarPagoDocumentoEstatus').Value := 0;
    adodsExportarPagosDocumentos.FieldByName('IdDocumento').Value := IdDocumento;
    adodsExportarPagosDocumentos.FieldByName('Hash').Value := GetStringHash(NombreArchivo);
    adodsExportarPagosDocumentos.FieldByName('IdPeriodo').Value := Per;
    adodsExportarPagosDocumentos.FieldByName('IdPersona').Value := Emp;
    adodsExportarPagosDocumentos.FieldByName('IdBanco').Value := IdBancoBanorte;
    adodsExportarPagosDocumentos.FieldByName('IdCuentaBancaria').Value := Cta;
//    adodsExportarPagosDocumentos.FieldByName('IdEsquemaPago').Value := Esq;
    adodsExportarPagosDocumentos.FieldByName('Observaciones').Value := '';
    adodsExportarPagosDocumentos.Post;
    IdExportarPagoDocumento := adodsExportarPagosDocumentosIdExportarPagoDocumento.AsInteger;
    adodsExportarPagosDocumentos.Close;
    adodsMaster.First;
    while not adodsMaster.Eof do
    begin
      adocEstatusCuentaXPagarPagosDoc.Parameters.ParamByName('IdCuentaXPagarPagos').Value := adodsMasterIdCuentaXPagarPago.Value;
      adocEstatusCuentaXPagarPagosDoc.Parameters.ParamByName('IdArchivo').Value := IdExportarPagoDocumento;
      adocEstatusCuentaXPagarPagosDoc.Execute;
      adodsMaster.Next;
    end;

  end;
//  DeleteFile(NombreArchivo);
  adodsCXPPagos.Close;
  adodsMaster.Close;
end;

function TdmExportarPagosBancos.DigestToStr(Digest: array of byte): string;
var
  i: integer;
begin
  Result := '';
  for i := 0 to Length(Digest) do
    Result := Result + LowerCase(IntToHex(Digest[i], 2));
end;

function TdmExportarPagosBancos.GetStringHash(Source: AnsiString): string;
var
  Hash: TDCP_sha512;
  Digest: array [0 .. 63] of byte;
begin
  Hash := TDCP_sha512.Create(nil);
 Hash.Init;
  Hash.UpdateStr(Source);
  Hash.Final(Digest);
  Hash.Free;
  Result := DigestToStr(Digest);
end;

function TdmExportarPagosBancos.PreparaCadena(Origen, Justifica,
  Relleno: string; Longitud: integer): String;
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

function TdmExportarPagosBancos.QuitarCaracter(COrigen,
  CCaracter: string): String;
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

procedure TdmExportarPagosBancos.SubirArchivoaFS(FileName: TFileName);
var
  Blob: TStream;
  Fs: TFileStream;
begin
  Blob:= adodsUpdate.CreateBlobStream(adodsDocumentoArchivo, bmWrite);
  try
    Blob.Seek(0, soFromBeginning);
    Fs := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
    try
      Blob.CopyFrom(Fs, Fs.Size)
    finally
      Fs.Free
    end;
  finally
    Blob.Free
  end;
end;

end.
