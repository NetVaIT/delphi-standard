unit ExportarPagosBancoDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, System.StrUtils, Vcl.Dialogs, Vcl.ExtDlgs;

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
    procedure actExportaBanorteExecute(Sender: TObject);
  private
    { Private declarations }
    procedure CreaArchivoBanorte(NombreArchivo:String);
    function PreparaCadena(Origen,Justifica,Relleno:string;Longitud:integer):String;
    function QuitarCaracter(COrigen,CCaracter: string):String;
    function CortarCadena(COrigen:string;Longitud:integer):String;
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmExportarPagosBancos.actExportaBanorteExecute(Sender: TObject);
begin
  inherited;
  stdBancos.Execute;
  if (Pos('.txt',stdBancos.FileName) = 0) And (Pos('.TXT',stdBancos.FileName) = 0) then
     stdBancos.FileName := stdBancos.FileName + '.txt';
  CreaArchivoBanorte(stdBancos.FileName);
  ShowMessage('Pagos Exportados');
end;

function TdmExportarPagosBancos.CortarCadena(COrigen: string;
  Longitud: integer): String;
begin
  if Length(COrigen) > Longitud then
    Delete(COrigen, Longitud + 1, Length(COrigen));
  Result := COrigen
end;

procedure TdmExportarPagosBancos.CreaArchivoBanorte(NombreArchivo:String);
var
  Archivo : TextFile;
  Operacion, Dinero : String;
  Registro : String;
begin
  adodsMaster.Open;
  System.Assign(Archivo, NombreArchivo);
  Rewrite(Archivo);
  adodsMaster.First;
  while not adodsMaster.Eof do
  begin
    Registro := '';
    if adodsMasterBancoCobrador.AsInteger = 18 then
      Operacion := '''05'
    else
      Operacion := '''04'; //SPEI
    Registro := Registro + Operacion + Chr(9); // Operacion
    Registro := Registro + '''0123456789AB' + Chr(9); // ClaveId
    Registro := Registro + '''' + PreparaCadena(adodsMasterCtaBancariaPagador.AsString,'D','0',18) + Chr(9); // CuentaOrigen
    if Operacion = '''05' then
      Registro := Registro + '''' + PreparaCadena(adodsMasterCtaBanCobrador.AsString,'D','0',18) + Chr(9) // CuentaDestinoCUENTA
    else
      Registro := Registro + '''' + PreparaCadena(adodsMasterCClabeCobrador.AsString,'D','0',18) + Chr(9); // CuentaDestinoCLABE
    Dinero := QuitarCaracter(FormatFloat('0.00',adodsMasterMontoProgramado.AsFloat),'.');
    Registro := Registro + PreparaCadena(Dinero,'D','0',13) + Chr(9); // Importe
    Registro := Registro + '0123456789ABC' + Chr(9); // Referencia
    Registro := Registro + CortarCadena(adodsMasterDescripcion.AsString,29) + Chr(9); // Descripcion
    Registro := Registro + '1'; // MonedaOrigen
    Registro := Registro + '1' + Chr(9); // MonedaDestino
    Registro := Registro + PreparaCadena(adodsMasterRFCPaga.AsString,'I',' ',13) + Chr(9); // RFCOrdenante
    Registro := Registro + '0' + Chr(9); // IVA
    Registro := Registro + adodsMasterFechaProgramada.AsString + Chr(9); // FechaAplicacion
    if Operacion = '''05' then
      Registro := Registro + 'X' + Chr(9) // NombreBeneficiario
    else
      Registro := Registro + adodsMasterCobra.AsString + Chr(9); // NombreBeneficiario

    WriteLn(Archivo, Registro);
    adodsMaster.Next;
  end;
  CloseFile(Archivo);
  adodsMaster.Close;
//    Registro := Registro + '0123456789ABC' + Chr(9); //
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

end.
