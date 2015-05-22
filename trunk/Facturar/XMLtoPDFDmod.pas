unit XMLtoPDFDmod;

interface

uses
  SysUtils, Classes, xmldom, DB, DBClient, Xmlxform, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, Provider, ppBands, ppCache, ppEndUsr,
  ppMemo, ppStrtch, ppVar, ppCtrls, jpeg, ppPrnabl, ppParameter, ppModule,
  raCodMod, ppSubRpt, ADODB, Dialogs, Forms, ppDesignLayer, MidasLib;

const
  fePDF = '.PDF';

type
  TNLCurrency = (nlcPesos, nlcDolares);

  TdmodXMLtoPDF = class(TDataModule)
    XMLTransform: TXMLTransform;
    cdsXML: TClientDataSet;
    XMLTransformProvider: TXMLTransformProvider;
    ppReport: TppReport;
    ppDBPipelineDatosFactura: TppDBPipeline;
    dsXML: TDataSource;
    ppDBPipelineDatosDetalleFactura: TppDBPipeline;
    dsConcepto: TDataSource;
    ppDBPipelineDatosRetencion: TppDBPipeline;
    dsRetencion: TDataSource;
    ppDBPipelineDatosTraslado: TppDBPipeline;
    dsTraslado: TDataSource;
    ppDesigner: TppDesigner;
    cdsXMLImporteConLetra: TStringField;
    cdsXMLCadenaOriginal: TStringField;
    adosp_GetTipoDocumento: TADOStoredProc;
    cdsConcepto: TClientDataSet;
    dsInfoAduanera: TDataSource;
    ppDBPipelineInfoAduanera: TppDBPipeline;
    cdsRetencion: TClientDataSet;
    cdsTraslado: TClientDataSet;
    cdsInfoAduanera: TClientDataSet;
    OpenDialogXML: TOpenDialog;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    cdsXMLfechahora: TDateTimeField;
    cdsRegimenFiscal: TClientDataSet;
    dsRegimenFiscal: TDataSource;
    ppDBPipelineRegimenFiscal: TppDBPipeline;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    cdsXMLversion: TStringField;
    cdsXMLserie: TStringField;
    cdsXMLfolio: TStringField;
    cdsXMLfecha: TDateField;
    cdsXMLsello: TStringField;
    cdsXMLformaDePago: TStringField;
    cdsXMLnoCertificado: TStringField;
    cdsXMLcertificado: TStringField;
    cdsXMLcondicionesDePago: TStringField;
    cdsXMLsubTotal: TBCDField;
    cdsXMLdescuento: TBCDField;
    cdsXMLmotivoDescuento: TStringField;
    cdsXMLTipoCambio: TStringField;
    cdsXMLMoneda: TStringField;
    cdsXMLtotal: TBCDField;
    cdsXMLtipoDeComprobante: TStringField;
    cdsXMLmetodoDePago: TStringField;
    cdsXMLLugarExpedicion: TStringField;
    cdsXMLNumCtaPago: TStringField;
    cdsXMLFolioFiscalOrig: TStringField;
    cdsXMLSerieFolioFiscalOrig: TStringField;
    cdsXMLFechaFolioFiscalOrig: TStringField;
    cdsXMLMontoFolioFiscalOrig: TBCDField;
    cdsXMLEmisor_rfc: TStringField;
    cdsXMLEmisor_nombre: TStringField;
    cdsXMLDomicilioFiscal_calle: TStringField;
    cdsXMLDomicilioFiscal_noExterior: TStringField;
    cdsXMLDomicilioFiscal_noInterior: TStringField;
    cdsXMLDomicilioFiscal_colonia: TStringField;
    cdsXMLDomicilioFiscal_localidad: TStringField;
    cdsXMLDomicilioFiscal_referencia: TStringField;
    cdsXMLDomicilioFiscal_municipio: TStringField;
    cdsXMLDomicilioFiscal_estado: TStringField;
    cdsXMLDomicilioFiscal_pais: TStringField;
    cdsXMLDomicilioFiscal_codigoPostal: TStringField;
    cdsXMLExpedidoEn_calle: TStringField;
    cdsXMLExpedidoEn_noExterior: TStringField;
    cdsXMLExpedidoEn_noInterior: TStringField;
    cdsXMLExpedidoEn_colonia: TStringField;
    cdsXMLExpedidoEn_localidad: TStringField;
    cdsXMLExpedidoEn_referencia: TStringField;
    cdsXMLExpedidoEn_municipio: TStringField;
    cdsXMLExpedidoEn_estado: TStringField;
    cdsXMLExpedidoEn_pais: TStringField;
    cdsXMLExpedidoEn_codigoPostal: TStringField;
    cdsXMLReceptor_rfc: TStringField;
    cdsXMLReceptor_nombre: TStringField;
    cdsXMLDomicilio_calle: TStringField;
    cdsXMLDomicilio_noExterior: TStringField;
    cdsXMLDomicilio_noInterior: TStringField;
    cdsXMLDomicilio_colonia: TStringField;
    cdsXMLDomicilio_localidad: TStringField;
    cdsXMLDomicilio_referencia: TStringField;
    cdsXMLDomicilio_municipio: TStringField;
    cdsXMLDomicilio_estado: TStringField;
    cdsXMLDomicilio_pais: TStringField;
    cdsXMLDomicilio_codigoPostal: TStringField;
    cdsXMLtotalImpuestosRetenidos: TBCDField;
    cdsXMLtotalImpuestosTrasladados: TBCDField;
    cdsXMLversion2: TStringField;
    cdsXMLUUID: TStringField;
    cdsXMLFechaTimbrado: TStringField;
    cdsXMLselloCFD: TStringField;
    cdsXMLnoCertificadoSAT: TStringField;
    cdsXMLselloSAT: TStringField;
    cdsXMLRegimenFiscal: TDataSetField;
    cdsXMLConcepto: TDataSetField;
    cdsXMLRetencion: TDataSetField;
    cdsXMLTraslado: TDataSetField;
    cdsConceptocantidad: TBCDField;
    cdsConceptounidad: TStringField;
    cdsConceptonoIdentificacion: TStringField;
    cdsConceptodescripcion: TStringField;
    cdsConceptovalorUnitario: TBCDField;
    cdsConceptoimporte: TBCDField;
    cdsConceptonumero: TStringField;
    cdsConceptoInformacionAduanera: TDataSetField;
    cdsConceptoParte: TDataSetField;
    cdsRetencionimpuesto: TStringField;
    cdsRetencionimporte: TBCDField;
    cdsTrasladoimpuesto: TStringField;
    cdsTrasladotasa: TBCDField;
    cdsTrasladoimporte: TBCDField;
    cdsInfoAduaneranumero: TStringField;
    cdsInfoAduanerafecha: TDateField;
    cdsInfoAduaneraaduana: TStringField;
    cdsRegimenFiscalRegimen: TStringField;
    procedure cdsXMLCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    FFileXTR: string;
    FFileRTM: string;
    FCadenaOriginal: string;
//    FDocumentType: Integer;
    procedure SetFileRTM(const Value: string);
    procedure SetFileXTR(const Value: string);
//    procedure SetDocumentType(const Value: Integer);
  protected
    property CadenaOriginal: string read FCadenaOriginal write FCadenaOriginal;
  public
    { Public declarations }
    function GeneratePDFFile(pXMLFileName: TFileName): TFileName;
    procedure PrintPDFFile(pXMLFileName: TFileName);
    procedure ModifyDocument;
    property FileRTM: string read FFileRTM write SetFileRTM;
    property FileXTR: string read FFileXTR write SetFileXTR;
//    property DocumentType: Integer read FDocumentType write SetDocumentType;
  end;

implementation

//uses ParametrosDmod, _Utils;

{$R *.dfm}

function NumToLetter(Value: Double; pCurrency: TNLCurrency): String;
begin
  Result:= '';
end;

function GetCadenaOriginal22(pXMLFileName: string): string;
begin
  Result:= '';
end;

{ TdmodXMLtoPDF }

procedure TdmodXMLtoPDF.cdsXMLCalcFields(DataSet: TDataSet);
var
  vFechaSTR: String;
  vPos: Integer;
  vTotal: Double;
begin
  vTotal:= StrToFloat(FormatFloat('0.00',cdsXMLtotal.Value));
  cdsXMLImporteConLetra.AsString:= NumToLetter(vTotal, nlcPesos);
  vFechaSTR := FormatDateTime('yyyy-mm-dd', cdsXMLfecha.Value);
  vPos:= Pos(vFechaSTR, CadenaOriginal);
  if vPos <> 0 then
//    cdsXMLfechahora.Value := DateISO8601ToDateTime(Copy(CadenaOriginal, vPos, 19));
  { TODO -oJHC : Se agrega un TRY porque con la factura ZIN332 mando un AV sin razon, habra que cambiar esto. }
  try
  cdsXMLCadenaOriginal.AsString:= CadenaOriginal;
  except on E: Exception do
  end;
end;

function TdmodXMLtoPDF.GeneratePDFFile(pXMLFileName: TFileName): TFileName;
var
  vPDFFileName: TFileName;
begin
  Result:= EmptyStr;
  if FileExists(pXMLFileName) then
  begin
    //Configura el XML
    vPDFFileName:= ChangeFileExt(pXMLFileName, fePDF);
    FCadenaOriginal:= GetCadenaOriginal22(pXMLFileName);
    XMLTransform.SourceXMLFile:= pXMLFileName;
    cdsXML.XMLData:= XMLTransform.Data;
    // Configura el reporte
    ppReport.ShowPrintDialog := False;
    ppReport.ShowCancelDialog := False;
    ppReport.DeviceType:= 'PDF';
    ppReport.PDFSettings.OpenPDFFile := False;
    ppReport.TextFileName:= vPDFFileName;
    ppReport.Print;
    Result:= vPDFFileName;
  end
//  else
//    raise Exception.Create(smNotExistFile);
end;

procedure TdmodXMLtoPDF.ModifyDocument;
var
  vXMLFileName: TFileName;
begin
  if OpenDialogXML.Execute then
  begin
    //Configura el XML
    vXMLFileName:= OpenDialogXML.FileName;
    FCadenaOriginal:= GetCadenaOriginal22(vXMLFileName);
    XMLTransform.SourceXMLFile:= vXMLFileName;
    cdsXML.XMLData:= XMLTransform.Data;
    // Configura el reporte
//    ppReport.Parameters['RAP'].Value := True;
    ppDesigner.Menu.Items[4].Visible := False;
    ppDesigner.ShowModal;
  end;
end;

procedure TdmodXMLtoPDF.PrintPDFFile(pXMLFileName: TFileName);
var
  vPDFFileName: TFileName;
begin
  if FileExists(pXMLFileName) then
  begin
    //Configura el XML
    vPDFFileName:= ChangeFileExt(pXMLFileName, fePDF);
    FCadenaOriginal:= GetCadenaOriginal22(pXMLFileName);
    XMLTransform.SourceXMLFile:= pXMLFileName;
    cdsXML.XMLData:= XMLTransform.Data;
    // Configura el reporte
    ppReport.ShowPrintDialog:= False;
    ppReport.ShowCancelDialog:= False;
    ppReport.AllowPrintToArchive:= False;
    ppReport.DeviceType:= 'printer';
//    ppReport.PrinterSetup.Copies:= 1;
    ppReport.PrinterSetup.DocumentName:= ExtractFileName(vPDFFileName);
    ppReport.Print;
  end
//  else
//    raise Exception.Create(smNotExistFile);
end;

//procedure TdmodXMLtoPDF.SetDocumentType(const Value: Integer);
//begin
//  FDocumentType := Value;
//  adosp_GetTipoDocumento.Parameters.ParamByName('@TIPO_DOCUMENTO').Value  := Value;
//  adosp_GetTipoDocumento.ExecProc;
//  FileRTM:= adosp_GetTipoDocumento.Parameters.ParamByName('@ARCHIVO_RTM').Value;
//end;

procedure TdmodXMLtoPDF.SetFileRTM(const Value: string);
begin
  FFileRTM := Value;
  ppReport.Template.FileName := Value;
  ppReport.Template.LoadFromFile;
end;

procedure TdmodXMLtoPDF.SetFileXTR(const Value: string);
begin
  FFileXTR := Value;
  XMLTransform.TransformationFile := Value;
end;

end.
