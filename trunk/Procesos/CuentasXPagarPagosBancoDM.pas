unit CuentasXPagarPagosBancoDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmCuentasXPagarPagosBancos = class(T_dmStandar)
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
    adodsMasterPaga: TStringField;
    adodsMasterCtaBanCobrador: TStringField;
    adodsMasterCtaBancariaPagador: TStringField;
    adodsMasterCClabeCobrador: TStringField;
    adodsMasterClabePagador: TStringField;
  private
    { Private declarations }
    procedure CrearArchivoPagos(NombreArchivo:String);
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmCuentasXPagarPagosBancos.CrearArchivoPagos(NombreArchivo: String);
var
  Archivo : TextFile;
  ID : String;
  Folio, Serie, CtaCont : String;
  Registro : String;
begin
{
  Assign(Archivo, NombreArchivo);
  Rewrite(Archivo);
  TablaE.First;
  TablaD.First;
  while not TablaE.Eof do
  begin
    Registro := '';
    ID := TablaE.FieldByName('id').AsString;
    Registro := TablaE.FieldByName('Poliza').AsString + ' ';
    Registro := Registro + TablaE.FieldByName('Fecha').AsString + ' ';
    Registro := Registro + TablaE.FieldByName('TipoPol').AsString + ' ';
    Registro := Registro + TablaE.FieldByName('Folio').AsString + ' ';
    Registro := Registro + TablaE.FieldByName('Clase').AsString + ' ';
    Registro := Registro + TablaE.FieldByName('IdDiario').AsString + ' ';
    if TablaE.FieldByName('Concepto').AsString = '' then
      Registro := Registro + DupeString(' ',101)
    else
      Registro := Registro + TablaE.FieldByName('Concepto').AsString + ' ';
    if TablaE.FieldByName('SistOrigen').AsString = '' then
      Registro := Registro + DupeString(' ',4)
    else
      Registro := Registro + TablaE.FieldByName('SistOrigen').AsString + ' ';
    if TablaE.FieldByName('Impresa').AsString = '' then
      Registro := Registro + DupeString(' ',2)
    else
      Registro := Registro + TablaE.FieldByName('Impresa').AsString + ' ';
    if TablaE.FieldByName('Ajuste').AsString = '' then
      Registro := Registro + DupeString(' ',2)
    else
      Registro := Registro + TablaE.FieldByName('Ajuste').AsString + ' ';
    if TablaE.FieldByName('Guid').AsString = '' then
      Registro := Registro + DupeString(' ',36)
    else
      Registro := Registro + TablaE.FieldByName('Guid').AsString + ' ';
    WriteLn(Archivo, Registro);
    while (not TablaD.Eof) and (TablaD.FieldByName('id').Value = ID) do
    begin
      if TablaD.FieldByName('id').Value = ID then
      begin
        Registro := '';
        Registro := TablaD.FieldByName('MovtoPoliza').AsString + ' ';
        Registro := Registro + TablaD.FieldByName('IdCuenta').AsString + ' ';
        Registro := Registro + TablaD.FieldByName('Referencia').AsString + ' ';
        Registro := Registro + TablaD.FieldByName('TipoMovto').AsString + ' ';
        Registro := Registro + TablaD.FieldByName('Importe').AsString + ' ';
        if TablaD.FieldByName('IdDiario').AsString = '' then
          Registro := Registro + DupeString(' ',11)
        else
          Registro := Registro + TablaD.FieldByName('IdDiario').AsString + ' ';
        if TablaD.FieldByName('ImporteME').AsString = '' then
          Registro := Registro + DupeString(' ',21)
        else
          Registro := Registro + TablaD.FieldByName('ImporteME').AsString + ' ';
        Registro := Registro + TablaD.FieldByName('Concepto').AsString + ' ';
        if TablaD.FieldByName('IdSegNeg').AsString = '' then
          Registro := Registro + DupeString(' ',5)
        else
          Registro := Registro + TablaD.FieldByName('IdSegNeg').AsString;
        WriteLn(Archivo, Registro);
        if TablaD.FieldByName('UUID').AsString <> '' then
        begin
          Registro := 'AM ';
          if TablaD.FieldByName('UUID').AsString = '' then
            Registro := Registro + DupeString(' ',38)
          else
            Registro := Registro + TablaD.FieldByName('UUID').AsString + ' ';
          WriteLn(Archivo, Registro);
        end;
      end;
      TablaD.Next;
    end;
    TablaE.Next;
  end;
  CloseFile(Archivo);
}
end;

end.
