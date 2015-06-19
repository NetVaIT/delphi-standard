unit XMLtoPDFDmod;

interface

uses
  SysUtils, Classes, xmldom, DB, DBClient, Xmlxform, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, Provider, ppBands, ppCache, ppEndUsr,
  ppMemo, ppStrtch, ppVar, ppCtrls, jpeg, ppPrnabl, ppParameter, ppModule,
  raCodMod, ppSubRpt, ADODB, Dialogs, Forms, ppDesignLayer, MidasLib,
  ppBarCode2D;

const
  fePDF = '.PDF';
  fePNG = '.PNG';

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
    cdsXMLfechahora: TDateTimeField;
    cdsRegimenFiscal: TClientDataSet;
    dsRegimenFiscal: TDataSource;
    ppDBPipelineRegimenFiscal: TppDBPipeline;
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
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape13: TppShape;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine1: TppLine;
    ppLabel22: TppLabel;
    ppLine3: TppLine;
    ppLabel25: TppLabel;
    ppDBText36: TppDBText;
    ppLine4: TppLine;
    ppLabel23: TppLabel;
    ppDBText12: TppDBText;
    ppLine5: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLine6: TppLine;
    ppDBText13: TppDBText;
    ppLine8: TppLine;
    ppLabel36: TppLabel;
    ppDBText14: TppDBText;
    ppLine12: TppLine;
    ppLabel37: TppLabel;
    ppDBText15: TppDBText;
    ppLine13: TppLine;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppDBText16: TppDBText;
    ppLabel10: TppLabel;
    ppDBText8: TppDBText;
    ppLabel18: TppLabel;
    ppShape1: TppShape;
    ppLine2: TppLine;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLine10: TppLine;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLine11: TppLine;
    ppDBText2: TppDBText;
    ppLine15: TppLine;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLine16: TppLine;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppLine17: TppLine;
    ppLabel24: TppLabel;
    ppLabel35: TppLabel;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLabel4: TppLabel;
    ppDBText21: TppDBText;
    ppLabel40: TppLabel;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLabel26: TppLabel;
    ppDBText25: TppDBText;
    ppShape4: TppShape;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel41: TppLabel;
    ppDBText26: TppDBText;
    ppLine21: TppLine;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLine22: TppLine;
    ppDBText27: TppDBText;
    ppLine23: TppLine;
    ppLabel44: TppLabel;
    ppDBText34: TppDBText;
    ppLine24: TppLine;
    ppLabel45: TppLabel;
    ppDBText35: TppDBText;
    ppLine25: TppLine;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppDBText37: TppDBText;
    ppDBText39: TppDBText;
    ppLabel48: TppLabel;
    ppDBText40: TppDBText;
    ppLabel49: TppLabel;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppLabel50: TppLabel;
    ppDBText43: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText24: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppDBText9: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppShape9: TppShape;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText30: TppDBText;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText33: TppDBText;
    ppLabel20: TppLabel;
    ppDBImage1: TppDBImage;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppLabel2: TppLabel;
    ppLine14: TppLine;
    ppDBMemo1: TppDBMemo;
    ppLabel9: TppLabel;
    ppDBText7: TppDBText;
    ppDBText10: TppDBText;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppDBText11: TppDBText;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBMemo3: TppDBMemo;
    ppDBMemo4: TppDBMemo;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppDBText17: TppDBText;
    ppImageCBB: TppImage;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppPageStyle1: TppPageStyle;
    ppDesignLayer2: TppDesignLayer;
    procedure cdsXMLCalcFields(DataSet: TDataSet);
    procedure ppReportFileDeviceCreate(Sender: TObject);
    procedure ppImageCBBPrint(Sender: TObject);
  private
    { Private declarations }
    FFileXTR: string;
    FFileRTM: string;
    FCadenaOriginal: string;
    FFileIMG: string;
//    FDocumentType: Integer;
    procedure SetFileRTM(const Value: string);
    procedure SetFileXTR(const Value: string);
    procedure SetFileIMG(const Value: string);
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
    property FileIMG: string read FFileIMG write SetFileIMG;
//    property DocumentType: Integer read FDocumentType write SetDocumentType;
  end;

implementation

//uses ParametrosDmod, _Utils;


uses _Utils;

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
  Centavos : String;
begin
  vTotal:= StrToFloat(FormatFloat('0.00',cdsXMLtotal.Value));
//  cdsXMLImporteConLetra.AsString:= NumToLetter(vTotal, nlcPesos);
  Centavos := FormatFloat('.00',Frac(vTotal));
  Delete(Centavos,1,1);
  cdsXMLImporteConLetra.AsString := xIntToLletras(Trunc(vTotal)) + ' PESOS ' + Centavos + '/100 M. N. ';
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
//  cdsXML.CreateDataSet;
//  cdsXML.Open;
//  ShowMessage(IntToStr(cdsXML.RecordCount));
//  cdsXML.Edit;
//  (cdsXML.FieldByName('CBB' as TGraphicField)).LoadFromFile(FileIMG);
//  cdsXMLCBB.LoadFromFile(FileIMG);
//  cdsXML.Post;
//  cdsXML.Close;
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

procedure TdmodXMLtoPDF.ppImageCBBPrint(Sender: TObject);
begin
  ppImageCBB.Picture.LoadFromFile(FileIMG);
end;

procedure TdmodXMLtoPDF.ppReportFileDeviceCreate(Sender: TObject);
begin
//  If ppReport.FindComponent('') then
    ppImageCBB.OnPrint:= ppImageCBBPrint
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

procedure TdmodXMLtoPDF.SetFileIMG(const Value: string);
begin
  FFileIMG := Value;
end;

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
