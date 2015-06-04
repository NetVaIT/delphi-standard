unit FacturacionDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, VirtualXML, Dialogs, DateUtils, Forms, System.IOUtils;

type
  TdmFacturacion = class(T_dmStandar)
    actListaFacturar: TAction;
    adodsEmisor: TADODataSet;
    adodsReceptor: TADODataSet;
    actProcesarFacturas: TAction;
    adodsMasterIdCuentaXCobrarEstatus: TIntegerField;
    adodsMasterEstatus: TStringField;
    adodsMasterConceptoGenerico: TStringField;
    adodsMasterSumaSubtotal: TFMTBCDField;
    adodsMasterSumaTotal: TFMTBCDField;
    adodsMasterSumaDescuentos: TFMTBCDField;
    adodsMasterTotalIVATrasladado: TFMTBCDField;
    adodsMasterTotalISRTrasladado: TFMTBCDField;
    adodsMasterTotalIEPSTrasladado: TFMTBCDField;
    adodsMasterTotalLocalesTrasladado: TFMTBCDField;
    adodsMasterTotalIVARetenido: TFMTBCDField;
    adodsMasterTotalISRRetenido: TFMTBCDField;
    adodsMasterTotalLocalesRetenido: TFMTBCDField;
    adodsMasterFacturar: TBooleanField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdPersonaRelacionada: TIntegerField;
    adodsEmisorIdPersona: TIntegerField;
    adodsEmisorRFC: TStringField;
    adodsEmisorRazonSocial: TStringField;
    adodsEmisorCalle: TStringField;
    adodsEmisorNoExterior: TStringField;
    adodsEmisorNoInterior: TStringField;
    adodsEmisorCodigoPostal: TStringField;
    adodsEmisorColonia: TStringField;
    adodsEmisorPoblacion: TStringField;
    adodsEmisorMunicipio: TStringField;
    adodsEmisorEstado: TStringField;
    adodsEmisorPais: TStringField;
    adodsReceptorIdPersona: TIntegerField;
    adodsReceptorRFC: TStringField;
    adodsReceptorRazonSocial: TStringField;
    adodsReceptorCalle: TStringField;
    adodsReceptorNoExterior: TStringField;
    adodsReceptorNoInterior: TStringField;
    adodsReceptorCodigoPostal: TStringField;
    adodsReceptorColonia: TStringField;
    adodsReceptorPoblacion: TStringField;
    adodsReceptorMunicipio: TStringField;
    adodsReceptorEstado: TStringField;
    adodsReceptorPais: TStringField;
    adodsCer: TADODataSet;
    adodsKey: TADODataSet;
    adodsCerIdPersona: TIntegerField;
    adodsCerIdRol: TIntegerField;
    adodsCerIdPersonaRol: TIntegerField;
    adodsCerClave: TStringField;
    adodsCerVencimientoDocumento: TWideStringField;
    adodsCerNombreArchivo: TStringField;
    adodsCerArchivo: TBlobField;
    adodsKeyIdPersona: TIntegerField;
    adodsKeyIdRol: TIntegerField;
    adodsKeyIdPersonaRol: TIntegerField;
    adodsKeyClave: TStringField;
    adodsKeyVencimientoDocumento: TWideStringField;
    adodsKeyNombreArchivo: TStringField;
    adodsKeyArchivo: TBlobField;
    adodsMasterRegimenFiscal: TStringField;
    adocFacturaCuenta: TADOCommand;
    adodsMasterIdCuentaXCobrar: TIntegerField;
    procedure actListaFacturarExecute(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure actProcesarFacturasExecute(Sender: TObject);
  private
    { Private declarations }
    procedure ReadFileCER(FileName: TFileName);
    procedure ReadFileKEY(FileName: TFileName);
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FacturacionForm, DocComprobanteFiscal, FacturaTipos;


{$R *.dfm}

procedure TdmFacturacion.actListaFacturarExecute(Sender: TObject);
begin
  inherited;
  adodsMaster.Open;
  gGridForm.ShowModal;

end;

procedure TdmFacturacion.actProcesarFacturasExecute(Sender: TObject);
const
  _SEGUNDOS_A_RESTAR = -30;
var
  DocumentoComprobanteFiscal: TDocumentoComprobanteFiscal;
  Certificado: TFECertificado;
  Emisor, Receptor: TFEContribuyente;
  Impuesto1: TFEImpuestoRetenido;
  Impuesto2 : TFEImpuestoTrasladado;
  ImpuestoLocal: TFEImpuestoLocal;
  Concepto1, Concepto2 : TFEConcepto;
  TimbreCFDI: TTimbreCFDI;
  FileCertificado, FileKey : TFileName;
  NombreFactura : String;
  Clave : String;
  Emision : String;
  Anio, Mes, Dia : Word;
begin
  inherited;
    ScreenCursorProc(-11);
    DecodeDate(Now, Anio, Mes, Dia);
    Emision := IntToStr(Anio) + IntToStr(Mes);
//    adodsMaster.Open;
    adodsMaster.First;
    while not adodsMaster.eof do
    begin
//      adodsMaster.First;
      adodsCer.Close;
      adodsKey.Close;
      adodsEmisor.Close;
      adodsReceptor.Close;
      adodsEmisor.Parameters.ParamByName('IdPersona').Value := adodsMaster.FieldByName('IdPersona').Value;
      adodsReceptor.Parameters.ParamByName('IdPersona').Value := adodsMaster.FieldByName('IdPersonaRelacionada').Value;
      adodsCer.Parameters.ParamByName('IdPersona').Value := adodsMaster.FieldByName('IdPersona').Value;
      adodsKey.Parameters.ParamByName('IdPersona').Value := adodsMaster.FieldByName('IdPersona').Value;
      adodsEmisor.Open;
      adodsReceptor.Open;
      adodsCer.Open;
      adodsKey.Open;

      DocumentoComprobanteFiscal:= TDocumentoComprobanteFiscal.Create;
      try
        Emisor.RFC                    := adodsEmisorRFC.AsString;
        Emisor.Nombre                 := adodsEmisorRazonSocial.AsString;
        Emisor.Direccion.Calle        := adodsEmisorCalle.AsString;
        Emisor.Direccion.NoExterior   := adodsEmisorNoExterior.AsString;
        Emisor.Direccion.NoInterior   := adodsEmisorNoInterior.AsString;
        Emisor.Direccion.CodigoPostal := adodsEmisorCodigoPostal.AsString;
        Emisor.Direccion.Colonia      := adodsEmisorColonia.AsString;
        Emisor.Direccion.Municipio    := adodsEmisorMunicipio.AsString;
        Emisor.Direccion.Estado       := adodsEmisorEstado.AsString;
        Emisor.Direccion.Pais         := adodsEmisorPais.AsString;
        Emisor.Direccion.Localidad    := adodsEmisorPoblacion.AsString;
         // 2. Agregamos los régimenes fiscales (requerido en CFD >= 2.2)
        SetLength(Emisor.Regimenes, 1);
        Emisor.Regimenes[0] := adodsMasterRegimenFiscal.AsString;
        // Asignamos los valores iguales a la direcion del emisor suponiendo que se genera en el mismo lugar que se emitio
        Emisor.ExpedidoEn.Calle        := Emisor.Direccion.Calle;
        Emisor.ExpedidoEn.NoExterior   := Emisor.Direccion.NoExterior;
        Emisor.ExpedidoEn.NoInterior   := Emisor.Direccion.NoInterior;
        Emisor.ExpedidoEn.CodigoPostal := Emisor.Direccion.CodigoPostal;
        Emisor.ExpedidoEn.Colonia      := Emisor.Direccion.Colonia;
        Emisor.ExpedidoEn.Municipio    := Emisor.Direccion.Municipio;
        Emisor.ExpedidoEn.Estado       := Emisor.Direccion.Estado;
        Emisor.ExpedidoEn.Pais         := Emisor.Direccion.Pais;
        Emisor.ExpedidoEn.Localidad    := Emisor.Direccion.Localidad;
        Emisor.ExpedidoEn.Referencia   := Emisor.Direccion.Referencia;

        Receptor.RFC := adodsReceptorRFC.AsString;
        Receptor.Nombre := adodsReceptorRazonSocial.AsString;
    //    Receptor.Direccion.Calle:='Patriotismo';
    //    Receptor.Direccion.NoExterior:='4579';
    //    Receptor.Direccion.NoInterior:='94';
    //    Receptor.Direccion.CodigoPostal:='75489';
    //    Receptor.Direccion.Colonia:='La Añoranza';
    //    Receptor.Direccion.Municipio:='Coyoacán';
    //    Receptor.Direccion.Estado:='Veracruz';
        Receptor.Direccion.Pais := adodsReceptorPais.AsString;
    //    Receptor.Direccion.Localidad:='Boca del Rio';

        // 4. Definimos el certificado junto con su llave privada

        FileCertificado := TPath.GetTempPath + adodsCerNombreArchivo.AsString;
        ReadFileCER(FileCertificado);
        FileKey := TPath.GetTempPath + adodsKeyNombreArchivo.AsString;
        ReadFileKEY(FileKey);
        Clave := adodsKeyClave.AsString;
        Certificado.Ruta := FileCertificado;
        Certificado.LlavePrivada.Ruta := FileKey;
        Certificado.LlavePrivada.Clave := Clave;

    //      // 5. Creamos la clase Factura con los parametros minimos.
    //      WriteLn('Generando factura CFD ...');
    //      Factura:=TFacturaElectronica.Create(Emisor, Receptor, Certificado, tcIngreso);

        DocumentoComprobanteFiscal.Emisor := Emisor;
        DocumentoComprobanteFiscal.Receptor := Receptor;
        DocumentoComprobanteFiscal.Tipo := tcIngreso;
    //    DocumentoComprobanteFiscal.FechaGeneracion:= Now;
        DocumentoComprobanteFiscal.FechaGeneracion := IncSecond(Now, _SEGUNDOS_A_RESTAR);

        DocumentoComprobanteFiscal.MetodoDePago := 'Transferencia Electronica de Fondos';
        //DocumentoComprobanteFiscal..NumeroDeCuenta:='1234';
        // Asignamos el lugar de expedición (requerido en  CFD >= 2.2)
        DocumentoComprobanteFiscal.LugarDeExpedicion := adodsEmisorPoblacion.AsString + ', ' + adodsEmisorMunicipio.AsString;
        // Definimos todos los conceptos que incluyo la factura
        Concepto1.Cantidad := 1;
        Concepto1.Unidad := 'Servicio';
        Concepto1.Descripcion := adodsMasterConceptoGenerico.AsString;
        Concepto1.ValorUnitario := adodsMasterSumaSubtotal.AsCurrency;
//        Concepto1.NoIdentificacion := ADOdsConceptocdsNoidentifica.Value;
//        Concepto1.CuentaPredial := ADOdsConceptocdsCuentaPredial.Value;
        DocumentoComprobanteFiscal.AgregarConcepto(Concepto1);

        // Agregamos, para fines de ejemplo, un impuesto retenido
    //    Impuesto1.Nombre:='ISR';
    //    Impuesto1.Importe:=(Concepto2.ValorUnitario * Concepto2.Cantidad);
    //    DocumentoComprobanteFiscal.AgregarImpuestoRetenido(Impuesto1);

        Impuesto2.Nombre := 'IVA';
        Impuesto2.Tasa := 16;
        Impuesto2.Importe := adodsMasterTotalIVATrasladado.AsCurrency;
        DocumentoComprobanteFiscal.AgregarImpuestoTrasladado(Impuesto2);

        // Si queremos agregar un impuesto local lo hacemos de la siguiente manera:
    //    ImpuestoLocal.Nombre := 'ISH';
    //    ImpuestoLocal.Tipo := tiTrasladado;
    //    ImpuestoLocal.Tasa := 3;
    //    ImpuestoLocal.Importe := ((Concepto1.ValorUnitario * Concepto1.Cantidad) + (Concepto2.ValorUnitario * Concepto2.Cantidad)) * (ImpuestoLocal.Tasa/100);
    //    DocumentoComprobanteFiscal.AgregarImpuestoLocal(ImpuestoLocal);

        // Le damos un descuento
        //DocumentoComprobanteFiscal.AsignarDescuento(5, 'Por pronto pago');

        NombreFactura := 'C:\Temp\' + adodsEmisorRFC.AsString + Emision + '\' + adodsEmisorRFC.AsString + '.xml';

        if GenerarCFDI(DocumentoComprobanteFiscal, Certificado, TimbreCFDI, False) then
        begin
          //ShowMessage('Archivo creado: ' + TimbreCFDI.NombreArchivo)
          adocFacturaCuenta.Parameters.ParamByName('IdCuentaXCobrar').Value := adodsMasterIdCuentaXCobrar.Value;
          adocFacturaCuenta.Execute;
        end
        else
          //ShowMessage('Error: ' + TimbreCFDI.MensajeError);
      finally
        DocumentoComprobanteFiscal.Free;
        ScreenCursorProc(0);
      end;
      adodsMaster.Next;
    end;
    adodsMaster.Close;
    adodsMaster.Open;
    ShowMessage('Facturas Generadas');
end;

procedure TdmFacturacion.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmFacturacion.Create(Self);
  gGridForm.DataSet := adodsMaster;
  TfrmFacturacion(gGridForm).FacturarCtas := actProcesarFacturas;
end;

procedure TdmFacturacion.ReadFileCER(FileName: TFileName);
var
  Blob : TStream;
  Fs: TFileStream;
begin
  Blob:= adodsCer.CreateBlobStream(adodsCerArchivo, bmRead);
  try
    Blob.Seek(0, soFromBeginning);
    Fs:= TFileStream.Create(FileName, fmCreate);
    try
      Fs.CopyFrom(Blob, Blob.Size);
    finally
      Fs.Free;
    end;
  finally
    Blob.Free
  end;
end;

procedure TdmFacturacion.ReadFileKEY(FileName: TFileName);
var
  Blob : TStream;
  Fs: TFileStream;
begin
  Blob:= adodsKey.CreateBlobStream(adodsKeyArchivo, bmRead);
  try
    Blob.Seek(0, soFromBeginning);
    Fs:= TFileStream.Create(FileName, fmCreate);
    try
      Fs.CopyFrom(Blob, Blob.Size);
    finally
      Fs.Free;
    end;
  finally
    Blob.Free
  end;
end;

end.
