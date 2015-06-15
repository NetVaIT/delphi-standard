unit CFDIXMLDM;

interface

uses
  System.SysUtils, System.Classes, Xml.xmldom, Xml.XMLIntf, Xml.Win.msxmldom,
  Xml.XMLDoc, Variants, Data.DB, Datasnap.DBClient, ppDB, ppDBPipe, ppParameter,
  ppComm, ppRelatv, ppProd, ppClass, ppReport, ppDesignLayer, ppCtrls, ppBands,
  ppStrtch, ppMemo, ppPrnabl, ppCache, XSLProd;

type
  TDMXMLCFDI = class(TDataModule)
    XMLDocument: TXMLDocument;
    ClientDataSetCFDConceptos: TClientDataSet;
    ClientDataSetCFDConceptosCFDLINK: TIntegerField;
    ClientDataSetCFDConceptosUNIDAD: TWideStringField;
    ClientDataSetCFDConceptosCLAVE: TWideStringField;
    ClientDataSetCFDConceptosVALORUNITARIO: TBCDField;
    ClientDataSetCFDConceptosIMPORTE: TBCDField;
    ClientDataSetCFDConceptosDESCRIPCION: TWideStringField;
    ClientDataSetCFDConceptosDESCRIPCION2: TMemoField;
    ClientDataSetCFDConceptosADUANANUMERO: TWideStringField;
    ClientDataSetCFDConceptosADUANANOMBRE: TWideStringField;
    ClientDataSetCFDConceptosADUANAFECHA: TDateTimeField;
    ClientDataSetCFDConceptosDESCRIPCIONV: TWideStringField;
    ClientDataSetCFDConceptosID: TAutoIncField;
    ClientDataSetCFD: TClientDataSet;
    ClientDataSetCFDVERSION: TWideStringField;
    ClientDataSetCFDSERIE: TWideStringField;
    ClientDataSetCFDFOLIO: TWideStringField;
    ClientDataSetCFDSELLO: TWideStringField;
    ClientDataSetCFDNUMEROAPROBACION: TIntegerField;
    ClientDataSetCFDAGNOAPROBACION: TIntegerField;
    ClientDataSetCFDFORMADEPAGO: TWideStringField;
    ClientDataSetCFDNOCERTIFICADO: TWideStringField;
    ClientDataSetCFDCONDICIONESDEPAGO: TWideStringField;
    ClientDataSetCFDSUBTOTAL: TBCDField;
    ClientDataSetCFDDESCUENTO: TBCDField;
    ClientDataSetCFDMOTIVODESCUENTO: TWideStringField;
    ClientDataSetCFDTOTAL: TBCDField;
    ClientDataSetCFDMETODODEPAGO: TWideStringField;
    ClientDataSetCFDTIPODECOMPROBANTE: TWideStringField;
    ClientDataSetCFDRFCEMISOR: TWideStringField;
    ClientDataSetCFDCALLEDMEMISOR: TWideStringField;
    ClientDataSetCFDNUMEXTDMEMISOR: TWideStringField;
    ClientDataSetCFDNUMINTDMEMISOR: TWideStringField;
    ClientDataSetCFDCOLONIADMEMISOR: TWideStringField;
    ClientDataSetCFDLOCALIDADDMEMISOR: TWideStringField;
    ClientDataSetCFDREFERENCIADMEMISOR: TWideStringField;
    ClientDataSetCFDMUNICIPIODMEMISOR: TWideStringField;
    ClientDataSetCFDESTADODMEMISOR: TWideStringField;
    ClientDataSetCFDPAISDMEMISOR: TWideStringField;
    ClientDataSetCFDCODIGOPOSTALDMEMISOR: TWideStringField;
    ClientDataSetCFDCALLEDMEXPEDICION: TWideStringField;
    ClientDataSetCFDNUMEXTDMEXPEDICION: TWideStringField;
    ClientDataSetCFDNUMINTDMEXPEDICION: TWideStringField;
    ClientDataSetCFDCOLONIADMEXPEDICION: TWideStringField;
    ClientDataSetCFDLOCALIDADDMEXPEDICION: TWideStringField;
    ClientDataSetCFDREFERENCIADMEXPEDICION: TWideStringField;
    ClientDataSetCFDMUNICIPIODMEXPEDICION: TWideStringField;
    ClientDataSetCFDESTADODMEXPEDICION: TWideStringField;
    ClientDataSetCFDPAISDMEXPEDICION: TWideStringField;
    ClientDataSetCFDCODIGOPOSTALDMEXPEDICION: TWideStringField;
    ClientDataSetCFDRFCRECEPTOR: TWideStringField;
    ClientDataSetCFDRAZONSOCIALRECEPTOR: TWideStringField;
    ClientDataSetCFDCALLEDMRECEPTOR: TWideStringField;
    ClientDataSetCFDNUMEXTDMRECEPTOR: TWideStringField;
    ClientDataSetCFDNUMINTDMRECEPTOR: TWideStringField;
    ClientDataSetCFDCOLONIADMRECEPTOR: TWideStringField;
    ClientDataSetCFDLOCALIDADDMRECEPTOR: TWideStringField;
    ClientDataSetCFDREFERENCIADMRECEPTOR: TWideStringField;
    ClientDataSetCFDMUNICIPIODMRECEPTOR: TWideStringField;
    ClientDataSetCFDESTADODMRECEPTOR: TWideStringField;
    ClientDataSetCFDPAISDMRECEPTOR: TWideStringField;
    ClientDataSetCFDCODIGOPOSTALDMRECEPTOR: TWideStringField;
    ClientDataSetCFDTOTALIMPUESTORETENIDO: TBCDField;
    ClientDataSetCFDTOTALIMPUESTOTRASLADADO: TBCDField;
    ClientDataSetCFDRAZONSOCIALEMISOR: TWideStringField;
    ClientDataSetCFDFECHA: TDateTimeField;
    ClientDataSetCFDCERTIFICADO: TWideStringField;
    ClientDataSetCFDCADENAORIGINAL: TWideStringField;
    ClientDataSetCFDCANTIDADCONLETRA: TWideStringField;
    ClientDataSetCFDESTADODELCOMPROBANTE: TWideStringField;
    ClientDataSetCFDUUID: TWideStringField;
    ClientDataSetCFDNOCERTIFICADOSAT: TWideStringField;
    ClientDataSetCFDSELLOSAT: TWideStringField;
    ClientDataSetCFDCBB: TBlobField;
    ClientDataSetCFDACUSE: TWideStringField;
    ClientDataSetCFDRECEPTOR_DIRECCION: TStringField;
    ClientDataSetCFDRECEPTOR_CIUDADEDOPAIS: TStringField;
    ClientDataSetCFDFECHATIMBRADO: TDateTimeField;
    ClientDataSetCFDNUMCTAPAGO: TWideStringField;
    ClientDataSetCFDREGIMENFISCAL: TWideStringField;
    ClientDataSetCFDCANCELADO: TWideStringField;
    ClientDataSetCFDBANCO: TWideStringField;
    ClientDataSetCFDTIMBREVERSION: TStringField;
    ClientDataSetCFDID: TAutoIncField;
    ClientDataSetCFDRetenciones: TClientDataSet;
    ClientDataSetCFDRetencionesCFDLINK: TIntegerField;
    ClientDataSetCFDRetencionesIMPUESTO: TWideStringField;
    ClientDataSetCFDRetencionesIMPORTE: TBCDField;
    ClientDataSetCFDRetencionesID: TAutoIncField;
    ClientDataSetTraslados: TClientDataSet;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    BCDField1: TBCDField;
    AutoIncField1: TAutoIncField;
    ClientDataSetCFDConceptosCANTIDAD: TFloatField;
    ClientDataSetTrasladosTASA: TFloatField;
    ClientDataSetCFDRetencionesTASA: TFloatField;
    ClientDataSetCFDMONEDA: TStringField;
    ClientDataSetCFDTIPOCAMBIO: TStringField;
    ppReportCFDI: TppReport;
    ppParameterList1: TppParameterList;
    ppDBPipelineCFD: TppDBPipeline;
    ppDBPipelineConceptos: TppDBPipeline;
    ppDBPipelineTraslados: TppDBPipeline;
    ppDBPipelineRetenciones: TppDBPipeline;
    DataSourceCFD: TDataSource;
    DataSourceConceptos: TDataSource;
    DataSourceTraslados: TDataSource;
    DataSourceRetenciones: TDataSource;
    ppHeaderBand1: TppHeaderBand;
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
    ppDBText16: TppDBText;
    ppShape2: TppShape;
    ppLabel10: TppLabel;
    ppDBText8: TppDBText;
    ppLabel18: TppLabel;
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
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
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
    XSLTCFD2: TXMLDocument;
    XSLTCFD22: TXMLDocument;
    XSLTCFDI3: TXMLDocument;
    XSLTCFDI32: TXMLDocument;
    XSLTTFD1: TXMLDocument;
    XSLPageProducer: TXSLPageProducer;
    ppDBText18: TppDBText;
    ppLabel39: TppLabel;
    ppLabel51: TppLabel;
    ppDBText38: TppDBText;
  private
    { Private declarations }
    function getVersion: String;
    procedure setVersion(const Value: String);
    function getSerie: String;
    procedure SetSerie(const Value: String);
    function getFolio: String;
    procedure setFolio(const Value: String);
    function getFecha: TDateTime;
    procedure setFecha(const Value: TDateTime);
    function getSello: String;
    function getNoAprobacion: Integer;
    procedure setNoAprobacion(const Value: Integer);
    function getAnoAprobacion: integer;
    procedure setAnoAprobacion(const Value: integer);
    function getFormadePago: String;
    procedure setFormadePago(const Value: String);
    function getNoCertificado: String;
    procedure setNoCertificado(const Value: String);
    function getCertificado: String;
    procedure setCertificado(const Value: String);
    function getCondicionesDePago: String;
    procedure SetCondicionesdePago(const Value: String);
    function getSubTotal: Currency;
    procedure setSubTotal(const Value: Currency );
    function getDescuento: Currency;
    procedure setDescuento(const Value: Currency);
    function getMotivoDescuento: string;
    procedure setMotivoDescuento(const Value: string);
    function getTotal: Currency;
    procedure setTotal(const Value: Currency);
    function getMetododePago: string;
    procedure setMetododePago(const Value: string);
    function getTipodeComprobante: string;
    procedure setTipodeComprobante(const Value: string);
    function getEmisor_rfc: String;
    procedure setEmisor_rfc(const Value: String);
    function getEmisor_Nombre: String;
    procedure setEmisor_Nombre(const Value: String);
    function getEmisor_domiciliofiscal_calle: string;
    procedure setEmisor_domiciliofiscal_calle(const Value: string);
    function getEmisor_domiciliofiscal_noExterior: string;
    procedure setEmidor_domiciliofiscal_noExterior(const Value: string);
    function getEmisor_domiciliofiscal_noInterior: string;
    procedure setEmidor_domiciliofiscal_noInterior(const Value: string);
    function getEmisor_domiciliofiscal_colonia: string;
    procedure setEmisor_domiciliofiscal_colonia(const Value: string);
    function getEmisor_domiciliofiscal_localidad: string;
    procedure setEmisor_domiciliofiscal_localidad(const Value: string);
    function getEmisor_domiciliofiscal_estado: string;
    function getEmisor_domiciliofiscal_municipio: string;
    function getEmisor_domiciliofiscal_pais: string;
    function getEmisor_domiciliofiscal_referencia: string;
    procedure setEmisor_domiciliofiscal_estado(const Value: string);
    procedure setEmisor_domiciliofiscal_municipio(const Value: string);
    procedure setEmisor_domiciliofiscal_pais(const Value: string);
    procedure setEmisor_domiciliofiscal_referencia(const Value: string);
    function getEmisor_domiciliofiscal_codigoPostal: string;
    procedure setEmisor_domiciliofiscal_codigoPostal(const Value: string);
    function getEmisor_ExpedidoEn_calle: string;
    function getEmisor_ExpedidoEn_codigoPostal: string;
    function getEmisor_ExpedidoEn_colonia: string;
    function getEmisor_ExpedidoEn_estado: string;
    function getEmisor_ExpedidoEn_localidad: string;
    function getEmisor_ExpedidoEn_municipio: string;
    function getEmisor_ExpedidoEn_noExterior: string;
    function getEmisor_ExpedidoEn_noInterior: string;
    function getEmisor_ExpedidoEn_pais: string;
    function getEmisor_ExpedidoEn_referencia: string;
    procedure setEmidor_ExpedidoEn_noExterior(const Value: string);
    procedure setEmidor_ExpedidoEn_noInterior(const Value: string);
    procedure setEmisor_ExpedidoEn_calle(const Value: string);
    procedure setEmisor_ExpedidoEn_codigoPostal(const Value: string);
    procedure setEmisor_ExpedidoEn_colonia(const Value: string);
    procedure setEmisor_ExpedidoEn_estado(const Value: string);
    procedure setEmisor_ExpedidoEn_localidad(const Value: string);
    procedure setEmisor_ExpedidoEn_municipio(const Value: string);
    procedure setEmisor_ExpedidoEn_pais(const Value: string);
    procedure setEmisor_ExpedidoEn_referencia(const Value: string);
    function getReceptor_domicilio_calle: string;
    function getReceptor_domicilio_codigoPostal: string;
    function getReceptor_domicilio_colonia: string;
    function getReceptor_domicilio_estado: string;
    function getReceptor_domicilio_localidad: string;
    function getReceptor_domicilio_municipio: string;
    function getReceptor_domicilio_noExterior: string;
    function getReceptor_domicilio_noInterior: string;
    function getReceptor_domicilio_pais: string;
    function getReceptor_domicilio_referencia: string;
    function getReceptor_Nombre: String;
    function getReceptor_rfc: String;
    procedure setReceptor_domicilio_calle(const Value: string);
    procedure setReceptor_domicilio_codigoPostal(const Value: string);
    procedure setReceptor_domicilio_colonia(const Value: string);
    procedure setReceptor_domicilio_estado(const Value: string);
    procedure setReceptor_domicilio_localidad(const Value: string);
    procedure setReceptor_domicilio_municipio(const Value: string);
    procedure setReceptor_domicilio_noExterior(const Value: string);
    procedure setReceptor_domicilio_noInterior(const Value: string);
    procedure setReceptor_domicilio_pais(const Value: string);
    procedure setReceptor_domicilio_referencia(const Value: string);
    procedure setReceptor_Nombre(const Value: String);
    procedure setReceptor_rfc(const Value: String);
    function getTotalImpuestosTrasladados: Currency;
    procedure setTotalImpuestosTrasladados(const Value: Currency);
    function getComplemento_Timbrado_FechaTimbrado: TDateTime;
    function getComplemento_Timbrado_noCertificadoSAT: String;
    function getComplemento_Timbrado_selloSAT: string;
    function getComplemento_Timbrado_UUID: string;
    function getComplemento_Timbrado_version: string;
    procedure set_Complemento_Timbrado_noCertificadoSAT(
      const Value: String);
    procedure setComplemento_Timbrado_FechaTimbrado(
      const Value: TDateTime);
    procedure setComplemento_Timbrado_UUID(const Value: string);
    procedure setComplemento_Timbrado_version(const Value: string);
    procedure setComplemento_Timbre_selloSAT(const Value: string);
    function getLugarExpedicion: string;
    procedure setLugarExpedicion(const Value: string);
    function getNumCtaPago: String;
    procedure setNumCtaPago(const Value: String);
    function getEmisor_RegimenFiscal: String;
    procedure setEmisor_RegimenFiscal(const Value: String);
    function CambiaEgniesyAcentos(xCadena: String): String;
    function getTotalImpuestosRetenidos: Currency;
    procedure setTotalImpuestosRetenidos(const Value: Currency);
    function getMoneda: String;
    procedure setMoneda(const Value: String);
    function getTipoCambio: String;
    procedure setTipoCambio(const Value: String);
  public
    { Public declarations }
    procedure CFDI2DB;                                                                                     //Adicional par que no repita los CFDs  Mar 2/15
    procedure CFDI2DataSet( DataSetCFD, DataSetCFDConceptos, DataSetCFDImpuestos : TDataSet; xID : Integer; CFDExistente:Integer = -1 );
    function XMLCheck( sNodos, sAttributos : AnsiString):Boolean;
    function getCadenaOriginal:String;


    property version : String read getVersion write setVersion;
    property serie : String read getSerie write SetSerie;
    property folio : String read getFolio write setFolio;
    property fecha : TDateTime read getFecha write setFecha;
    property sello : String read getSello;
    property noAprobacion : Integer read getNoAprobacion write setNoAprobacion;
    property anoAprobacion : integer read getAnoAprobacion write setAnoAprobacion;
    property formaDePago : String read getFormadePago write setFormadePago;
    property noCertificado : String read getNoCertificado write setNoCertificado;
    property certificado : String read getCertificado write setCertificado;
    property condicionesDePago : String read getCondicionesDePago write SetCondicionesdePago;
    property subTotal : Currency  read getSubTotal write setSubTotal;
    property descuento : Currency read getDescuento write setDescuento;
    property motivoDescuento : string read getMotivoDescuento write setMotivoDescuento;
    property total : Currency read getTotal write setTotal;
    property metodoDePago : string read getMetododePago write setMetododePago;
    property tipoDeComprobante : string read getTipodeComprobante write setTipodeComprobante;
    property totalImpuestosRetenidos : Currency read getTotalImpuestosRetenidos write setTotalImpuestosRetenidos;
    property totalImpuestosTrasladados : Currency read getTotalImpuestosTrasladados write setTotalImpuestosTrasladados;
    property LugarExpedicion : string read getLugarExpedicion write setLugarExpedicion;
    property numCtaPago : String read getNumCtaPago write setNumCtaPago;
    property moneda : String read getMoneda write setMoneda;
    property TipoCambio : String read getTipoCambio write setTipoCambio;
    property emisor_rfc : String read getEmisor_rfc write setEmisor_rfc;
    property emisor_nombre : String read getEmisor_Nombre write setEmisor_Nombre;
    property emisor_RegimenFiscal : String read getEmisor_RegimenFiscal write setEmisor_RegimenFiscal;
    property emisor_domiciliofiscal_calle : string read getEmisor_domiciliofiscal_calle write setEmisor_domiciliofiscal_calle;
    property emisor_domiciliofiscal_noExterior : string read getEmisor_domiciliofiscal_noExterior write setEmidor_domiciliofiscal_noExterior;
    property emisor_domiciliofiscal_noInterior : string read getEmisor_domiciliofiscal_noInterior write setEmidor_domiciliofiscal_noInterior;
    property emisor_domiciliofiscal_colonia : string read getEmisor_domiciliofiscal_colonia write setEmisor_domiciliofiscal_colonia;
    property emisor_domiciliofiscal_localidad : string read getEmisor_domiciliofiscal_localidad write setEmisor_domiciliofiscal_localidad;
    property emisor_domiciliofiscal_referencia : string read getEmisor_domiciliofiscal_referencia write setEmisor_domiciliofiscal_referencia;
    property emisor_domiciliofiscal_municipio : string read getEmisor_domiciliofiscal_municipio write setEmisor_domiciliofiscal_municipio;
    property emisor_domiciliofiscal_estado : string read getEmisor_domiciliofiscal_estado write setEmisor_domiciliofiscal_estado;
    property emisor_domiciliofiscal_pais: string read getEmisor_domiciliofiscal_pais write setEmisor_domiciliofiscal_pais;
    property emisor_domiciliofiscal_codigoPostal: string read getEmisor_domiciliofiscal_codigoPostal write setEmisor_domiciliofiscal_codigoPostal;
    property emisor_ExpedidoEn_calle : string read getEmisor_ExpedidoEn_calle write setEmisor_ExpedidoEn_calle;
    property emisor_ExpedidoEn_noExterior : string read getEmisor_ExpedidoEn_noExterior write setEmidor_ExpedidoEn_noExterior;
    property emisor_ExpedidoEn_noInterior : string read getEmisor_ExpedidoEn_noInterior write setEmidor_ExpedidoEn_noInterior;
    property emisor_ExpedidoEn_colonia : string read getEmisor_ExpedidoEn_colonia write setEmisor_ExpedidoEn_colonia;
    property emisor_ExpedidoEn_localidad : string read getEmisor_ExpedidoEn_localidad write setEmisor_ExpedidoEn_localidad;
    property emisor_ExpedidoEn_referencia : string read getEmisor_ExpedidoEn_referencia write setEmisor_ExpedidoEn_referencia;
    property emisor_ExpedidoEn_municipio : string read getEmisor_ExpedidoEn_municipio write setEmisor_ExpedidoEn_municipio;
    property emisor_ExpedidoEn_estado : string read getEmisor_ExpedidoEn_estado write setEmisor_ExpedidoEn_estado;
    property emisor_ExpedidoEn_pais: string read getEmisor_ExpedidoEn_pais write setEmisor_ExpedidoEn_pais;
    property emisor_ExpedidoEn_codigoPostal: string read getEmisor_ExpedidoEn_codigoPostal write setEmisor_ExpedidoEn_codigoPostal;
    property Receptor_rfc : String read getReceptor_rfc write setReceptor_rfc;
    property Receptor_nombre : String read getReceptor_Nombre write setReceptor_Nombre;
    property Receptor_domicilio_calle : string read getReceptor_domicilio_calle write setReceptor_domicilio_calle;
    property Receptor_domicilio_noExterior : string read getReceptor_domicilio_noExterior write setReceptor_domicilio_noExterior;
    property Receptor_domicilio_noInterior : string read getReceptor_domicilio_noInterior write setReceptor_domicilio_noInterior;
    property Receptor_domicilio_colonia : string read getReceptor_domicilio_colonia write setReceptor_domicilio_colonia;
    property Receptor_domicilio_localidad : string read getReceptor_domicilio_localidad write setReceptor_domicilio_localidad;
    property Receptor_domicilio_referencia : string read getReceptor_domicilio_referencia write setReceptor_domicilio_referencia;
    property Receptor_domicilio_municipio : string read getReceptor_domicilio_municipio write setReceptor_domicilio_municipio;
    property Receptor_domicilio_estado : string read getReceptor_domicilio_estado write setReceptor_domicilio_estado;
    property Receptor_domicilio_pais: string read getReceptor_domicilio_pais write setReceptor_domicilio_pais;
    property Receptor_domicilio_codigoPostal: string read getReceptor_domicilio_codigoPostal write setReceptor_domicilio_codigoPostal;
    property Complemento_Timbrado_version : string read getComplemento_Timbrado_version write setComplemento_Timbrado_version;
    property Complemento_Timbrado_UUID : string read getComplemento_Timbrado_UUID write setComplemento_Timbrado_UUID;
    property Complemento_Timbrado_FechaTimbrado : TDateTime read getComplemento_Timbrado_FechaTimbrado write setComplemento_Timbrado_FechaTimbrado;
    property Complemento_Timbrado_noCertificadoSAT : String read getComplemento_Timbrado_noCertificadoSAT write set_Complemento_Timbrado_noCertificadoSAT;
    property Complemento_Timbrado_selloSAT : string read getComplemento_Timbrado_selloSAT write setComplemento_Timbre_selloSAT;
  end;
  function DateTimeToXSDDateTime( xFecha : TDateTime):String;

var
  DMXMLCFDI: TDMXMLCFDI;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

 function xIntToLletras(Numero:LongInt):String;

   function xxIntToLletras(Valor:LongInt):String;
   const
    aUnidad : array[1..15] of String =
      ('UN','DOS','TRES','CUATRO','CINCO','SEIS',
       'SIETE','OCHO','NUEVE','DIEZ','ONCE','DOCE',
       'TRECE','CATORCE','QUINCE');
    aCentena: array[1..9]  of String =
      ('CIENTO','DOSCIENTOS','TRESCIENTOS',
       'CUATROCIENTOS','QUINIENTOS','SEISCIENTOS',
       'SETECIENTOS','OCHOCIENTOS','NOVECIENTOS');
    aDecena : array[1..9]  of String =
     ('DIECI','VEINTI','TREINTA','CUARENTA','CINCUENTA',
      'SESENTA','SETENTA','OCHENTA','NOVENTA');
   var
    Centena, Decena, Unidad, Doble: LongInt;
    Linea: String;
   begin
    if valor=100 then Linea:=' CIEN '
    else begin
      Linea:='';
      Centena := Valor div 100;
      Doble   := Valor - (Centena*100);
      Decena  := (Valor div 10) - (Centena*10);
      Unidad  := Valor - (Decena*10) - (Centena*100);

      if Centena>0 then Linea := Linea + Acentena[centena]+' ';

      if Doble>0 then begin
        if Doble=20 then Linea := Linea +' VEINTE '
          else begin
           if doble<16 then Linea := Linea + aUnidad[Doble]
             else begin
                  Linea := Linea +' '+ Adecena[Decena];
                  if (Decena>2) and (Unidad<>0) then Linea := Linea+' Y ';
                  if Unidad>0 then Linea := Linea + aUnidad[Unidad];
             end;
          end;
      end;
    end;
    Result := Linea;
   end;

 var
    Millones,Miles,Unidades: Longint;
    Linea : String;
 begin
   {Inicializamos el string que contendrá las letras según el valor
   numérico}
   if numero=0 then Linea := 'CERO'
   else if numero<0 then Linea := 'MENOS '
        else if numero=1 then
             begin
               Linea := 'UN';
               xIntToLletras := Linea;
               exit
             end
             else if numero>1 then Linea := '';

   {Determinamos el Nº de millones, miles y unidades de numero en
   positivo}
   Numero   := Abs(Numero);
   Millones := numero div 1000000;
   Miles     := (numero - (Millones*1000000)) div 1000;
   Unidades  := numero - ((Millones*1000000)+(Miles*1000));

   {Vamos poniendo en el string las cadenas de los números(llamando
   a subfuncion)}
   if Millones=1 then Linea:= Linea + ' UN MILLON '
   else if Millones>1 then Linea := Linea + xxIntToLletras(Millones)
                                    + ' MILLONES ';

   if Miles =1 then Linea:= Linea + ' MIL '
   else if Miles>1 then Linea := Linea + xxIntToLletras(Miles)+
                                 ' MIL ';

   if Unidades >0 then Linea := Linea + xxIntToLletras(Unidades);

   xIntToLletras := Linea;
 end;

function XSDDateTimeToTDateTime( xDateTime : String ):TDateTime;
var
  sFecha, sHora,
  sValue : String;
  xFormat: String;
begin
  // Regresa la fecha y hora del CFD

  xFormat := FormatSettings.ShortDateFormat;
  FormatSettings.ShortDateFormat := 'yyyy/mm/dd hh:nn:ss';
  sValue := xDateTime;
  // separo la fecha y la hora
  sFecha := Copy( sValue, 1, Pos('T', sValue )-1 );
  sFecha := StringReplace( sFecha, '-', '/', [rfReplaceAll] );
  sHora  := Copy( sValue, Pos('T', sValue )+1, Length( sValue ));
  Result := StrToDateTime( sFecha + ' ' + sHora );
  FormatSettings.ShortDateFormat := xFormat;
end;

function DateTimeToXSDDateTime( xFecha : TDateTime):String;
var
  sValue : String;
  xFormat: String;
begin
  // establece la fecha y hora del CFD
  xFormat := FormatSettings.ShortDateFormat;
  FormatSettings.ShortDateFormat := 'yyyy-mm-ddThh:nn:ss';

  sValue := FormatDateTime('yyyy-mm-dd', xFecha );
  sValue := sValue + 'T'+  FormatDateTime('hh:nn:ss', xFecha);
  Result := sValue;
  FormatSettings.ShortDateFormat := xFormat;
end;

procedure TDMXMLCFDI.CFDI2DataSet(DataSetCFD, DataSetCFDConceptos,
  DataSetCFDImpuestos : TDataSet; xID : Integer; CFDExistente:Integer = -1  );
var
  xmlConcepto,
  xmlConceptos : IXMLNode;
  iConceptos,
  i: integer;
begin
  // Descompone el xml en las tablas de encabezado, conceptos e impuestos

    // Meto el XML en el documento
    XMLDocument.Active := True;

    //if DataSetCFD.Active then
    //  DataSetCFD.Close;
    //DataSetCFD.CreateDataSet;
    if CFDExistente=-1 then   //Mar 2/15
    begin
      DataSetCFD.Append;
      DataSetCFD.FieldByName('Version').AsString        := version;
      DataSetCFD.FieldByName('Serie').AsString          := serie;
      DataSetCFD.FieldByName('Folio').AsString          := folio;
      DataSetCFD.FieldByName('Sello').AsString          := sello;
      DataSetCFD.FieldByName('CFDCFDILink').AsInteger   := xID;
      DataSetCFD.FieldByName('NumeroAprobacion').AsInteger := noAprobacion;
      DataSetCFD.FieldByName('AgnoAprobacion').AsInteger   := anoAprobacion;
      DataSetCFD.FieldByName('FormaDePago').AsString       := formaDePago;
      DataSetCFD.FieldByName('NoCertificado').AsString     := noCertificado;
      DataSetCFD.FieldByName('CondicionesDePago').AsString := condicionesDePago;
      DataSetCFD.FieldByName('SubTotal').AsCurrency        := subTotal;
      DataSetCFD.FieldByName('Descuento').AsCurrency       := descuento;
      DataSetCFD.FieldByName('MotivoDescuento').AsString   := motivoDescuento;
      DataSetCFD.FieldByName('Total').AsCurrency           := total;
      DataSetCFD.FieldByName('MetodoDePago').AsString      := metodoDePago;
      DataSetCFD.FieldByName('TipoDeComprobante').AsString := tipoDeComprobante;
      DataSetCFD.FieldByName('RFCEmisor').AsString         := emisor_rfc;
      DataSetCFD.FieldByName('CalleDMEmisor').AsString     := emisor_domiciliofiscal_calle;
      DataSetCFD.FieldByName('NumExtDMEmisor').AsString    := emisor_domiciliofiscal_noExterior;
      DataSetCFD.FieldByName('NumIntDMEmisor').AsString    := emisor_domiciliofiscal_noInterior;
      DataSetCFD.FieldByName('ColoniaDMEmisor').AsString   := emisor_domiciliofiscal_colonia;
      DataSetCFD.FieldByName('LocalidadDMEmisor').AsString := emisor_domiciliofiscal_localidad;
      DataSetCFD.FieldByName('ReferenciaDMEmisor').AsString:= emisor_domiciliofiscal_referencia;
      DataSetCFD.FieldByName('MunicipioDMEmisor').AsString := emisor_domiciliofiscal_municipio;
      DataSetCFD.FieldByName('EstadoDMEmisor').AsString    := emisor_domiciliofiscal_estado;
      DataSetCFD.FieldByName('PaisDMEmisor').AsString      := emisor_domiciliofiscal_pais;
      DataSetCFD.FieldByName('CodigoPostalDMEmisor').AsString := emisor_domiciliofiscal_codigoPostal;
      DataSetCFD.FieldByName('CalleDMExpedicion').AsString    := emisor_ExpedidoEn_calle;
      DataSetCFD.FieldByName('NumExtDMExpedicion').AsString   := emisor_ExpedidoEn_noExterior;
      DataSetCFD.FieldByName('NumIntDMExpedicion').AsString   := emisor_ExpedidoEn_noInterior;
      DataSetCFD.FieldByName('ColoniaDMExpedicion').AsString  := emisor_ExpedidoEn_colonia;
      DataSetCFD.FieldByName('LocalidadDMExpedicion').AsString := emisor_ExpedidoEn_localidad;
      DataSetCFD.FieldByName('ReferenciaDMExpedicion').AsString := emisor_ExpedidoEn_referencia;
      DataSetCFD.FieldByName('MunicipioDMExpedicion').AsString  := emisor_ExpedidoEn_municipio;
      DataSetCFD.FieldByName('EstadoDMExpedicion').AsString     := emisor_ExpedidoEn_estado;
      DataSetCFD.FieldByName('PaisDMExpedicion').AsString       := emisor_ExpedidoEn_pais;
      DataSetCFD.FieldByName('CodigoPostalDMExpedicion').AsString := emisor_ExpedidoEn_codigoPostal;
      DataSetCFD.FieldByName('RFCReceptor').AsString         := Receptor_rfc;
      DataSetCFD.FieldByName('RazonSocialReceptor').AsString := Receptor_nombre;
      DataSetCFD.FieldByName('CalleDMReceptor').AsString     := Receptor_domicilio_calle;
      DataSetCFD.FieldByName('NumExtDMReceptor').AsString    := Receptor_domicilio_noExterior;
      DataSetCFD.FieldByName('NumIntDMReceptor').AsString    := receptor_domicilio_noInterior;
      DataSetCFD.FieldByName('ColoniaDMReceptor').AsString   := receptor_domicilio_colonia;
      DataSetCFD.FieldByName('LocalidadDMReceptor').AsString := receptor_domicilio_localidad;
      DataSetCFD.FieldByName('ReferenciaDMReceptor').AsString:= receptor_domicilio_referencia;
      DataSetCFD.FieldByName('MunicipioDMReceptor').AsString := receptor_domicilio_municipio;
      DataSetCFD.FieldByName('EstadoDMReceptor').AsString    := receptor_domicilio_estado;
      DataSetCFD.FieldByName('PaisDMReceptor').AsString      := receptor_domicilio_pais;
      DataSetCFD.FieldByName('CodigoPostalDMReceptor').AsString := receptor_domicilio_codigoPostal;
      DataSetCFD.FieldByName('TotalImpuestoRetenido').AsCurrency := totalImpuestosRetenidos;
      DataSetCFD.FieldByName('TotalImpuestoTrasladado').AsCurrency := totalImpuestosTrasladados;
      DataSetCFD.FieldByName('RazonSocialEmisor').AsString         := emisor_nombre;
      DataSetCFD.FieldByName('Fecha').AsDateTime                   := fecha;
      DataSetCFD.FieldByName('Certificado').AsString               := certificado;
      DataSetCFD.FieldByName('Moneda').AsString               := moneda;
      DataSetCFD.FieldByName('TipoCambio').AsString               := TipoCambio;
      DataSetCFD.FieldByName('CadenaOriginal').AsString            := '';
      DataSetCFD.FieldByName('CantidadConLetra').AsString          := '';


      // si es version 2.2 o es 3.2
      if Copy(version, 3, 1 ) = '2' then begin
        DataSetCFD.FieldByName('NumCtaPago').AsString                := numCtaPago;
        DataSetCFD.FieldByName('RegimenFiscal').AsString             := emisor_RegimenFiscal;
      end;

      // Si es version 3.0 o 3.2
      if Copy( version, 1, 1 ) = '3' then begin
        DataSetCFD.FieldByName('UUID').AsString                      := Complemento_Timbrado_UUID;
        DataSetCFD.FieldByName('NoCertificadoSAT').AsString          := Complemento_Timbrado_noCertificadoSAT;
        DataSetCFD.FieldByName('SelloSAT').AsString                  := Complemento_Timbrado_selloSAT;
        //DataSetCFD.FieldByName('TimbreVersion').AsString             := Complemento_Timbrado_version;
        DataSetCFD.FieldByName('FechaTimbrado').AsDateTime           := Complemento_Timbrado_FechaTimbrado;
      end;
      DataSetCFD.Post;
      CFDExistente:=DataSetCFD.FieldByName('id').AsInteger; //MAr 2/15
    end;

    // Ahora el detalle de los conceptos
    xmlConceptos := XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Conceptos');
    if xmlConceptos<>nil then begin
      //if DataSetCFDConceptos.Active then
      //  DataSetCFDConceptos.Close;
      //DataSetCFDConceptos.CreateDataSet;
      for i := 0 to xmlConceptos.ChildNodes.Count-1 do begin
        xmlConcepto := xmlConceptos.ChildNodes.Get(i);
        DataSetCFDConceptos.Append;
        DataSetCFDConceptos.FieldByName('CFDLink').AsInteger         := CFDExistente;// MAR 2/15 DataSetCFD.FieldByName('id').AsInteger;
        DataSetCFDConceptos.FieldByName('cantidad').AsFloat          := xmlConcepto.Attributes['cantidad'];
        DataSetCFDConceptos.FieldByName('descripcion').AsString      := VarToStrDef( xmlConcepto.Attributes['descripcion'], '' );
        DataSetCFDConceptos.FieldByName('valorUnitario').AsCurrency  := xmlConcepto.Attributes['valorUnitario'];
        DataSetCFDConceptos.FieldByName('importe').AsCurrency        := xmlConcepto.Attributes['importe'];
        if XMLCheck('Comprobante,Conceptos,Concepto', 'noIdentificacion') then
          DataSetCFDConceptos.FieldByName('Clave').AsString := VarToStrDef( xmlConcepto.Attributes['noIdentificacion'], '' );
        if XMLCheck('Comprobante,Conceptos,Concepto', 'unidad') then
          DataSetCFDConceptos.FieldByName('unidad').AsString := VarToStrDef( xmlConcepto.Attributes['unidad'], '' );
        DataSetCFDConceptos.Post;
  //      ClientDataSetCFDConceptos.FieldByName('').AsString := VarToStrDef( xmlConcepto.Attributes[''], '' );
      end;
      DataSetCFDConceptos.First;
    end;

    // Ahora el detalle de los impuestos trasladados
    xmlConceptos := XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Impuestos').ChildNodes.FindNode('Traslados');
    if xmlConceptos<>nil then begin
      //if DataSetCFDTraslados.Active then
      //  DataSetCFDTraslados.Close;
      //DataSetCFDTraslados.CreateDataSet;
      for i := 0 to xmlConceptos.ChildNodes.Count-1 do begin
        xmlConcepto := xmlConceptos.ChildNodes.Get(i);
        DataSetCFDImpuestos.Append;
        DataSetCFDImpuestos.FieldByName('CFDLink').AsInteger  := CFDExistente;// mar 2/15 DataSetCFD.FieldByName('id').AsInteger;
        DataSetCFDImpuestos.FieldByName('Impuesto').AsString  := VarToStrDef( xmlConcepto.Attributes['impuesto'], '' );
        DataSetCFDImpuestos.FieldByName('Traslado').AsString  := 'T';
        DataSetCFDImpuestos.FieldByName('Retencion').AsString  := 'F';
        DataSetCFDImpuestos.FieldByName('tasa').AsFloat       := xmlConcepto.Attributes['tasa'];
        DataSetCFDImpuestos.FieldByName('importe').AsCurrency := xmlConcepto.Attributes['importe'];
        //ClientDataSetTraslados.FieldByName('').AsString := VarToStrDef( xmlConcepto.Attributes[''], '' );
      end;
      DataSetCFDImpuestos.First;
    end;

    // Ahora el detalle de los impuestos retenidos
    xmlConceptos := XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Impuestos').ChildNodes.FindNode('Retenciones');
    if xmlConceptos<>nil then begin
      //if DataSetCFDRetenciones.Active then
      //  DataSetCFDRetenciones.Close;
      //DataSetCFDRetenciones.CreateDataSet;
      for i := 0 to xmlConceptos.ChildNodes.Count-1 do begin
        xmlConcepto := xmlConceptos.ChildNodes.Get(i);
        DataSetCFDImpuestos.Append;
        DataSetCFDImpuestos.FieldByName('CFDLink').AsInteger  :=  CFDExistente;// mar 2/15 DataSetCFD.FieldByName('id').AsInteger;
        DataSetCFDImpuestos.FieldByName('impuesto').AsString := VarToStrDef( xmlConcepto.Attributes['impuesto'], '' );
        DataSetCFDImpuestos.FieldByName('Traslado').AsString  := 'F';
        DataSetCFDImpuestos.FieldByName('Retencion').AsString  := 'T';
        DataSetCFDImpuestos.FieldByName('importe').AsCurrency := xmlConcepto.Attributes['importe'];
      end;
      DataSetCFDImpuestos.First;
    end;

end;

procedure TDMXMLCFDI.CFDI2DB;
var
  xmlConcepto,
  xmlConceptos : IXMLNode;
  Centavos : String;
  iConceptos,
  i: integer;
begin
  // Descompone el xml en las tablas de encabezado, conceptos e impuestos

    // Meto el XML en el documento
    XMLDocument.Active := True;

    if ClientDataSetCFD.Active then
      ClientDataSetCFD.Close;
    ClientDataSetCFD.CreateDataSet;
    ClientDataSetCFD.Append;
    ClientDataSetCFD.FieldByName('Version').AsString        := version;
    ClientDataSetCFD.FieldByName('Serie').AsString          := serie;
    ClientDataSetCFD.FieldByName('Folio').AsString          := folio;
    ClientDataSetCFD.FieldByName('Sello').AsString          := sello;
    ClientDataSetCFD.FieldByName('NumeroAprobacion').AsInteger := noAprobacion;
    ClientDataSetCFD.FieldByName('AgnoAprobacion').AsInteger   := anoAprobacion;
    ClientDataSetCFD.FieldByName('FormaDePago').AsString       := formaDePago;
    ClientDataSetCFD.FieldByName('NoCertificado').AsString     := noCertificado;
    ClientDataSetCFD.FieldByName('CondicionesDePago').AsString := condicionesDePago;
    ClientDataSetCFD.FieldByName('SubTotal').AsCurrency        := subTotal;
    ClientDataSetCFD.FieldByName('Descuento').AsCurrency       := descuento;
    ClientDataSetCFD.FieldByName('MotivoDescuento').AsString   := motivoDescuento;
    ClientDataSetCFD.FieldByName('Total').AsCurrency           := total;
    ClientDataSetCFD.FieldByName('MetodoDePago').AsString      := metodoDePago;
    ClientDataSetCFD.FieldByName('TipoDeComprobante').AsString := tipoDeComprobante;
    ClientDataSetCFD.FieldByName('RFCEmisor').AsString         := emisor_rfc;
    ClientDataSetCFD.FieldByName('CalleDMEmisor').AsString     := emisor_domiciliofiscal_calle;
    ClientDataSetCFD.FieldByName('NumExtDMEmisor').AsString    := emisor_domiciliofiscal_noExterior;
    ClientDataSetCFD.FieldByName('NumIntDMEmisor').AsString    := emisor_domiciliofiscal_noInterior;
    ClientDataSetCFD.FieldByName('ColoniaDMEmisor').AsString   := emisor_domiciliofiscal_colonia;
    ClientDataSetCFD.FieldByName('LocalidadDMEmisor').AsString := emisor_domiciliofiscal_localidad;
    ClientDataSetCFD.FieldByName('ReferenciaDMEmisor').AsString:= emisor_domiciliofiscal_referencia;
    ClientDataSetCFD.FieldByName('MunicipioDMEmisor').AsString := emisor_domiciliofiscal_municipio;
    ClientDataSetCFD.FieldByName('EstadoDMEmisor').AsString    := emisor_domiciliofiscal_estado;
    ClientDataSetCFD.FieldByName('PaisDMEmisor').AsString      := emisor_domiciliofiscal_pais;
    ClientDataSetCFD.FieldByName('CodigoPostalDMEmisor').AsString := emisor_domiciliofiscal_codigoPostal;
    ClientDataSetCFD.FieldByName('CalleDMExpedicion').AsString    := emisor_ExpedidoEn_calle;
    ClientDataSetCFD.FieldByName('NumExtDMExpedicion').AsString   := emisor_ExpedidoEn_noExterior;
    ClientDataSetCFD.FieldByName('NumIntDMExpedicion').AsString   := emisor_ExpedidoEn_noInterior;
    ClientDataSetCFD.FieldByName('ColoniaDMExpedicion').AsString  := emisor_ExpedidoEn_colonia;
    ClientDataSetCFD.FieldByName('LocalidadDMExpedicion').AsString := emisor_ExpedidoEn_localidad;
    ClientDataSetCFD.FieldByName('ReferenciaDMExpedicion').AsString := emisor_ExpedidoEn_referencia;
    ClientDataSetCFD.FieldByName('MunicipioDMExpedicion').AsString  := emisor_ExpedidoEn_municipio;
    ClientDataSetCFD.FieldByName('EstadoDMExpedicion').AsString     := emisor_ExpedidoEn_estado;
    ClientDataSetCFD.FieldByName('PaisDMExpedicion').AsString       := emisor_ExpedidoEn_pais;
    ClientDataSetCFD.FieldByName('CodigoPostalDMExpedicion').AsString := emisor_ExpedidoEn_codigoPostal;
    ClientDataSetCFD.FieldByName('RFCReceptor').AsString         := Receptor_rfc;
    ClientDataSetCFD.FieldByName('RazonSocialReceptor').AsString := Receptor_nombre;
    ClientDataSetCFD.FieldByName('CalleDMReceptor').AsString     := Receptor_domicilio_calle;
    ClientDataSetCFD.FieldByName('NumExtDMReceptor').AsString    := Receptor_domicilio_noExterior;
    ClientDataSetCFD.FieldByName('NumIntDMReceptor').AsString    := receptor_domicilio_noInterior;
    ClientDataSetCFD.FieldByName('ColoniaDMReceptor').AsString   := receptor_domicilio_colonia;
    ClientDataSetCFD.FieldByName('LocalidadDMReceptor').AsString := receptor_domicilio_localidad;
    ClientDataSetCFD.FieldByName('ReferenciaDMReceptor').AsString:= receptor_domicilio_referencia;
    ClientDataSetCFD.FieldByName('MunicipioDMReceptor').AsString := receptor_domicilio_municipio;
    ClientDataSetCFD.FieldByName('EstadoDMReceptor').AsString    := receptor_domicilio_estado;
    ClientDataSetCFD.FieldByName('PaisDMReceptor').AsString      := receptor_domicilio_pais;
    ClientDataSetCFD.FieldByName('CodigoPostalDMReceptor').AsString := receptor_domicilio_codigoPostal;
    ClientDataSetCFD.FieldByName('TotalImpuestoRetenido').AsCurrency := totalImpuestosRetenidos;
    ClientDataSetCFD.FieldByName('TotalImpuestoTrasladado').AsCurrency := totalImpuestosTrasladados;
    ClientDataSetCFD.FieldByName('RazonSocialEmisor').AsString         := emisor_nombre;
    ClientDataSetCFD.FieldByName('Fecha').AsDateTime                   := fecha;
    ClientDataSetCFD.FieldByName('Certificado').AsString               := certificado;
    ClientDataSetCFD.FieldByName('Moneda').AsString               := moneda;
    ClientDataSetCFD.FieldByName('TipoCambio').AsString               := TipoCambio;
    Centavos := IntToStr(
                  Round(((
                    Round( ClientDataSetCFD.FieldByName('Total').AsCurrency * 100 )/100)-Trunc(ClientDataSetCFD.FieldByName('Total').AsCurrency))*100));
    ClientDataSetCFD.FieldByName('CantidadConLetra').AsString := xIntToLletras( Trunc( ClientDataSetCFD.FieldByName('Total').AsCurrency  )) +
        ' PESOS ' + Centavos + '/100 M. N. ';

    // si es version 2.2 o es 3.2
    if Copy(version, 3, 1 ) = '2' then begin
      ClientDataSetCFD.FieldByName('NumCtaPago').AsString                := numCtaPago;
      ClientDataSetCFD.FieldByName('RegimenFiscal').AsString             := emisor_RegimenFiscal;
    end;

    // Si es version 3.0 o 3.2
    if Copy( version, 1, 1 ) = '3' then begin
      ClientDataSetCFD.FieldByName('UUID').AsString                      := Complemento_Timbrado_UUID;
      ClientDataSetCFD.FieldByName('NoCertificadoSAT').AsString          := Complemento_Timbrado_noCertificadoSAT;
      ClientDataSetCFD.FieldByName('SelloSAT').AsString                  := Complemento_Timbrado_selloSAT;
      ClientDataSetCFD.FieldByName('TimbreVersion').AsString             := Complemento_Timbrado_version;
      ClientDataSetCFD.FieldByName('FechaTimbrado').AsDateTime           := Complemento_Timbrado_FechaTimbrado;
    end;
    ClientDataSetCFD.Post;

    // Ahora el detalle de los conceptos
    xmlConceptos := XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Conceptos');
    if xmlConceptos<>nil then begin
      if ClientDataSetCFDConceptos.Active then
        ClientDataSetCFDConceptos.Close;
      ClientDataSetCFDConceptos.CreateDataSet;
      for i := 0 to xmlConceptos.ChildNodes.Count-1 do begin
        xmlConcepto := xmlConceptos.ChildNodes.Get(i);
        ClientDataSetCFDConceptos.Append;
        ClientDataSetCFDConceptos.FieldByName('CFDLink').AsInteger         := ClientDataSetCFD.FieldByName('id').AsInteger;
        ClientDataSetCFDConceptos.FieldByName('cantidad').AsFloat          := xmlConcepto.Attributes['cantidad'];
        ClientDataSetCFDConceptos.FieldByName('descripcion').AsString      := VarToStrDef( xmlConcepto.Attributes['descripcion'], '' );
        ClientDataSetCFDConceptos.FieldByName('valorUnitario').AsCurrency  := xmlConcepto.Attributes['valorUnitario'];
        ClientDataSetCFDConceptos.FieldByName('importe').AsCurrency        := xmlConcepto.Attributes['importe'];
        if XMLCheck('Comprobante,Conceptos,Concepto', 'noIdentificacion') then
          ClientDataSetCFDConceptos.FieldByName('Clave').AsString := VarToStrDef( xmlConcepto.Attributes['noIdentificacion'], '' );
        if XMLCheck('Comprobante,Conceptos,Concepto', 'unidad') then
          ClientDataSetCFDConceptos.FieldByName('unidad').AsString := VarToStrDef( xmlConcepto.Attributes['unidad'], '' );
        ClientDataSetCFDConceptos.Post;
  //      ClientDataSetCFDConceptos.FieldByName('').AsString := VarToStrDef( xmlConcepto.Attributes[''], '' );
      end;
      ClientDataSetCFDConceptos.First;
    end;

    // Ahora el detalle de los impuestos trasladados
    xmlConceptos := XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Impuestos').ChildNodes.FindNode('Traslados');
    if xmlConceptos<>nil then begin
      if ClientDataSetTraslados.Active then
        ClientDataSetTraslados.Close;
      ClientDataSetTraslados.CreateDataSet;
      for i := 0 to xmlConceptos.ChildNodes.Count-1 do begin
        xmlConcepto := xmlConceptos.ChildNodes.Get(i);
        ClientDataSetTraslados.Append;
        ClientDataSetTraslados.FieldByName('CFDLink').AsInteger  := ClientDataSetCFD.FieldByName('id').AsInteger;
        ClientDataSetTraslados.FieldByName('impuesto').AsString  := VarToStrDef( xmlConcepto.Attributes['impuesto'], '' );
        ClientDataSetTraslados.FieldByName('tasa').AsFloat       := xmlConcepto.Attributes['tasa'];
        ClientDataSetTraslados.FieldByName('importe').AsCurrency := xmlConcepto.Attributes['importe'];
        //ClientDataSetTraslados.FieldByName('').AsString := VarToStrDef( xmlConcepto.Attributes[''], '' );
      end;
      ClientDataSetTraslados.First;
    end;

    // Ahora el detalle de los impuestos retenidos
    xmlConceptos := XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Impuestos').ChildNodes.FindNode('Retenciones');
    if xmlConceptos<>nil then begin
      if ClientDataSetCFDRetenciones.Active then
        ClientDataSetCFDRetenciones.Close;
      ClientDataSetCFDRetenciones.CreateDataSet;
      for i := 0 to xmlConceptos.ChildNodes.Count-1 do begin
        xmlConcepto := xmlConceptos.ChildNodes.Get(i);
        ClientDataSetCFDRetenciones.Append;
        ClientDataSetCFDRetenciones.FieldByName('CFDLink').AsInteger  := ClientDataSetCFD.FieldByName('id').AsInteger;
        ClientDataSetCFDRetenciones.FieldByName('impuesto').AsString := VarToStrDef( xmlConcepto.Attributes['impuesto'], '' );
        //ClientDataSetTraslados.FieldByName('tasa').AsString := VarToStrDef( xmlConcepto.Attributes['tasa'], '' );
        ClientDataSetCFDRetenciones.FieldByName('importe').AsCurrency := xmlConcepto.Attributes['importe'];
        //ClientDataSetTraslados.FieldByName('').AsString := VarToStrDef( xmlConcepto.Attributes[''], '' );
      end;
      ClientDataSetCFDRetenciones.First;
    end;

end;

function TDMXMLCFDI.getAnoAprobacion: integer;
begin
  if XMLCheck('Comprobante', 'anoAprobacion') then
    Result := XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['anoAprobacion']
  else
    Result :=0; // ABAN FEB 9/15 Si no lo encuentra para que no mande basura
end;

function TDMXMLCFDI.getCadenaOriginal: String;
var
  xVersion : String;
begin
  try
    xVersion := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['version'], '');

    // Genera la cadena original
    if xVersion = '2.0' then begin
      XSLPageProducer.XML.Text := XSLTCFD2.XML.Text;
    end;
    if xVersion = '2.2' then begin
      XSLPageProducer.XML.Text := XSLTCFD22.XML.Text;
    end;
    if xVersion = '3.0' then begin
      XSLPageProducer.XML.Text := XSLTCFDI3.XML.Text;
    end;
    if xVersion = '3.2' then begin
      XSLPageProducer.XML.Text := XSLTCFDI32.XML.Text;
    end;
    //XMLDocCopy.Active := True;
    XSLPageProducer.XMLData := XMLDocument;
    Result := Utf8Encode( XSLPageProducer.Content ); // Transform!!
  finally

  end;

end;

function TDMXMLCFDI.getCertificado: String;
begin
  if XMLCheck('Comprobante', 'certificado') then
    Result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['certificado'], '');
end;

function TDMXMLCFDI.getCondicionesDePago: String;
begin
  if XMLCheck('Comprobante', 'condicionesDePago') then
  Result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['condicionesDePago'], '');
end;

function TDMXMLCFDI.getDescuento: Currency;
var
  sValue :String;
begin
  if XMLCheck('Comprobante', 'descuento') then
  sValue := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['descuento'], '');
  Result := StrToCurrDef( sValue, 0 );
end;

function TDMXMLCFDI.getEmisor_domiciliofiscal_calle: string;
begin
  if XMLCheck('Comprobante,Emisor,DomicilioFiscal', 'calle') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('DomicilioFiscal').Attributes['calle'], '');
end;

function TDMXMLCFDI.getEmisor_domiciliofiscal_codigoPostal: string;
begin
  if XMLCheck('Comprobante,Emisor,DomicilioFiscal', 'codigoPostal') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('DomicilioFiscal').Attributes['codigoPostal'], '');
end;

function TDMXMLCFDI.getEmisor_domiciliofiscal_colonia: string;
begin
  if XMLCheck('Comprobante,Emisor,DomicilioFiscal', 'colonia') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('DomicilioFiscal').Attributes['colonia'], '');
end;

function TDMXMLCFDI.getEmisor_domiciliofiscal_estado: string;
begin
  if XMLCheck('Comprobante,Emisor,DomicilioFiscal', 'estado') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('DomicilioFiscal').Attributes['estado'], '');
end;

function TDMXMLCFDI.getEmisor_domiciliofiscal_localidad: string;
begin
  if XMLCheck('Comprobante,Emisor,DomicilioFiscal', 'localidad') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('DomicilioFiscal').Attributes['localidad'], '');
end;

function TDMXMLCFDI.getEmisor_domiciliofiscal_municipio: string;
begin
  if XMLCheck('Comprobante,Emisor,DomicilioFiscal', 'municipio') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('DomicilioFiscal').Attributes['municipio'], '');
end;

function TDMXMLCFDI.getEmisor_domiciliofiscal_noExterior: string;
begin
  if XMLCheck('Comprobante,Emisor,DomicilioFiscal', 'noExterior') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('DomicilioFiscal').Attributes['noExterior'], '');
end;

function TDMXMLCFDI.getEmisor_domiciliofiscal_noInterior: string;
begin
  if XMLCheck('Comprobante,Emisor,DomicilioFiscal', 'noInterior') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('DomicilioFiscal').Attributes['noInterior'], '');
end;

function TDMXMLCFDI.getEmisor_domiciliofiscal_pais: string;
begin
  if XMLCheck('Comprobante,Emisor,DomicilioFiscal', 'pais') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('DomicilioFiscal').Attributes['pais'], '');
end;

function TDMXMLCFDI.getEmisor_domiciliofiscal_referencia: string;
begin
  if XMLCheck('Comprobante,Emisor,DomicilioFiscal', 'referencia') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('DomicilioFiscal').Attributes['referencia'], '');
end;

function TDMXMLCFDI.getEmisor_ExpedidoEn_calle: string;
begin
  if XMLCheck('Comprobante,Emisor,ExpedidoEn', 'calle') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('ExpedidoEn').Attributes['calle'], '');
end;

function TDMXMLCFDI.getEmisor_ExpedidoEn_codigoPostal: string;
begin
  if XMLCheck('Comprobante,Emisor,ExpedidoEn', 'codigoPostal') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('ExpedidoEn').Attributes['codigoPostal'], '');
end;

function TDMXMLCFDI.getEmisor_ExpedidoEn_colonia: string;
begin
  if XMLCheck('Comprobante,Emisor,ExpedidoEn', 'colonia') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('ExpedidoEn').Attributes['colonia'], '');
end;

function TDMXMLCFDI.getEmisor_ExpedidoEn_estado: string;
begin
  if XMLCheck('Comprobante,Emisor,ExpedidoEn', 'estado') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('ExpedidoEn').Attributes['estado'], '');
end;

function TDMXMLCFDI.getEmisor_ExpedidoEn_localidad: string;
begin
  if XMLCheck('Comprobante,Emisor,ExpedidoEn', 'localidad') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('ExpedidoEn').Attributes['localidad'], '');
end;

function TDMXMLCFDI.getEmisor_ExpedidoEn_municipio: string;
begin
  if XMLCheck('Comprobante,Emisor,ExpedidoEn', 'municipio') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('ExpedidoEn').Attributes['municipio'], '');
end;

function TDMXMLCFDI.getEmisor_ExpedidoEn_noExterior: string;
begin
  if XMLCheck('Comprobante,Emisor,ExpedidoEn', 'noExterior') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('ExpedidoEn').Attributes['noExterior'], '');
end;

function TDMXMLCFDI.getEmisor_ExpedidoEn_noInterior: string;
begin
  if XMLCheck('Comprobante,Emisor,ExpedidoEn', 'noInterior') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('ExpedidoEn').Attributes['noInterior'], '');
end;

function TDMXMLCFDI.getEmisor_ExpedidoEn_pais: string;
begin
  if XMLCheck('Comprobante,Emisor,ExpedidoEn', 'pais') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('ExpedidoEn').Attributes['pais'], '');
end;

function TDMXMLCFDI.getEmisor_ExpedidoEn_referencia: string;
begin
  if XMLCheck('Comprobante,Emisor,ExpedidoEn', 'referencia') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('ExpedidoEn').Attributes['referencia'], '');
end;

function TDMXMLCFDI.getEmisor_Nombre: String;
begin
  if XMLCheck('Comprobante,Emisor', 'nombre') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').Attributes['nombre'], '');
end;

function TDMXMLCFDI.getEmisor_RegimenFiscal: String;
begin
  if XMLCheck('Comprobante,Emisor,RegimenFiscal', 'Regimen') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('RegimenFiscal').Attributes['Regimen'], '');
end;

function TDMXMLCFDI.getEmisor_rfc: String;
begin
  if XMLCheck('Comprobante,Emisor', 'rfc') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').Attributes['rfc'], '');
end;

function TDMXMLCFDI.getFecha: TDateTime;
var
  sFecha, sHora,
  sValue : String;
  xFormat: String;
begin
  // Regresa la fecha y hora del CFD
  xFormat := FormatSettings.ShortDateFormat;
  FormatSettings.ShortDateFormat := 'yyyy/mm/dd hh:nn:ss';
  if XMLCheck('Comprobante', 'fecha') then
  sValue := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['fecha'], '');
  // separo la fecha y la hora
  sFecha := Copy( sValue, 1, Pos('T', sValue )-1 );
  sFecha := StringReplace( sFecha, '-', '/', [rfReplaceAll] );
  sHora  := Copy( sValue, Pos('T', sValue )+1, Length( sValue ));
  Result := StrToDateTime( sFecha + ' ' + sHora );
  FormatSettings.ShortDateFormat := xFormat;
end;

function TDMXMLCFDI.getFolio: String;
begin
  if XMLCheck('Comprobante', 'folio') then
  Result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['folio'], '');
end;

function TDMXMLCFDI.getFormadePago: String;
begin
  if XMLCheck('Comprobante', 'formaDePago') then
  Result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['formaDePago'], '');
end;

function TDMXMLCFDI.getLugarExpedicion: string;
begin
  if XMLCheck('Comprobante', 'LugarExpedicion') then
  Result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['LugarExpedicion'], '');
end;

function TDMXMLCFDI.getMetododePago: string;
begin
  if XMLCheck('Comprobante', 'metodoDePago') then
  Result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['metodoDePago'], '');
end;

function TDMXMLCFDI.getMoneda: String;
begin
  if XMLCheck('Comprobante', 'Moneda') then
  Result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['Moneda'], '');
end;

function TDMXMLCFDI.getMotivoDescuento: string;
begin
  if XMLCheck('Comprobante', 'motivoDescuento') then
  Result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['motivoDescuento'], '');
end;

function TDMXMLCFDI.getNoAprobacion: Integer;
begin
  if XMLCheck('Comprobante', 'noAprobacion') then
    Result := XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['noAprobacion']
  else
    Result :=0; // ABAN FEB 9/15 Si no lo encuentra para que no mande basura

end;

function TDMXMLCFDI.getNoCertificado: String;
begin
  if XMLCheck('Comprobante', 'noCertificado') then
  Result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['noCertificado'], '');
end;

function TDMXMLCFDI.getNumCtaPago: String;
begin
  if XMLCheck('Comprobante', 'NumCtaPago') then
  Result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['NumCtaPago'], '');
end;

function TDMXMLCFDI.getReceptor_domicilio_calle: string;
begin
  if XMLCheck('Comprobante,Receptor,Domicilio', 'calle') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').ChildNodes.FindNode('Domicilio').Attributes['calle'], '');
end;

function TDMXMLCFDI.getReceptor_domicilio_codigoPostal: string;
begin
  if XMLCheck('Comprobante,Receptor,Domicilio', 'codigoPostal') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').ChildNodes.FindNode('Domicilio').Attributes['codigoPostal'], '');
end;

function TDMXMLCFDI.getReceptor_domicilio_colonia: string;
begin
  if XMLCheck('Comprobante,Receptor,Domicilio', 'colonia') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').ChildNodes.FindNode('Domicilio').Attributes['colonia'], '');
end;

function TDMXMLCFDI.getReceptor_domicilio_estado: string;
begin
  if XMLCheck('Comprobante,Receptor,Domicilio', 'estado') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').ChildNodes.FindNode('Domicilio').Attributes['estado'], '');
end;

function TDMXMLCFDI.getReceptor_domicilio_localidad: string;
begin
  if XMLCheck('Comprobante,Receptor,Domicilio', 'localidad') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').ChildNodes.FindNode('Domicilio').Attributes['localidad'], '');
end;

function TDMXMLCFDI.getReceptor_domicilio_municipio: string;
begin
  if XMLCheck('Comprobante,Receptor,Domicilio', 'municipio') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').ChildNodes.FindNode('Domicilio').Attributes['municipio'], '');
end;

function TDMXMLCFDI.getReceptor_domicilio_noExterior: string;
begin
  if XMLCheck('Comprobante,Receptor,Domicilio', 'noExterior') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').ChildNodes.FindNode('Domicilio').Attributes['noExterior'], '');
end;

function TDMXMLCFDI.getReceptor_domicilio_noInterior: string;
begin
  if XMLCheck('Comprobante,Receptor,Domicilio', 'noInterior') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').ChildNodes.FindNode('Domicilio').Attributes['noInterior'], '');
end;

function TDMXMLCFDI.getReceptor_domicilio_pais: string;
begin
  if XMLCheck('Comprobante,Receptor,Domicilio', 'pais') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').ChildNodes.FindNode('Domicilio').Attributes['pais'], '');
end;

function TDMXMLCFDI.getReceptor_domicilio_referencia: string;
begin
  if XMLCheck('Comprobante,Receptor,Domicilio', 'referencia') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').ChildNodes.FindNode('Domicilio').Attributes['referencia'], '');
end;

function TDMXMLCFDI.getReceptor_Nombre: String;
begin
  if XMLCheck('Comprobante,Receptor', 'nombre') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').Attributes['nombre'], '');
end;

function TDMXMLCFDI.getReceptor_rfc: String;
begin
  if XMLCheck('Comprobante,Receptor', 'rfc') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').Attributes['rfc'], '');
end;

function TDMXMLCFDI.getSello: String;
begin
  // Regresa el sello, si es que ya se ha sellado el documento
  if XMLCheck('Comprobante', 'sello') then
    Result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['sello'], '');

  if ( Result = '' ) then begin
    // deshabilitada exception raise Exception.Create('Error, no se ha generado el sello digital');   Feb 3/15
  end;
end;

function TDMXMLCFDI.getSerie: String;
begin
  if XMLCheck('Comprobante', 'serie') then
  Result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['serie'], '');
end;

function TDMXMLCFDI.getSubTotal: Currency;
var
  sValue :String;
begin
  if XMLCheck('Comprobante', 'subTotal') then
  sValue := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['subTotal'], '');
  Result := StrToCurrDef( sValue, 0 );
end;

function TDMXMLCFDI.getTipoCambio: String;
begin
  if XMLCheck('Comprobante', 'TipoCambio') then
  Result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['TipoCambio'], '');
end;

function TDMXMLCFDI.getTipodeComprobante: string;
begin
  if XMLCheck('Comprobante', 'tipoDeComprobante') then
  Result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['tipoDeComprobante'], '');
end;

function TDMXMLCFDI.getTotal: Currency;
var
  sValue :String;
begin
  if XMLCheck('Comprobante', 'total') then
  sValue := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['total'], '');
  Result := StrToCurrDef( sValue, 0 );
end;

function TDMXMLCFDI.getVersion: String;
begin
  // regresa la version del CFD
  if XMLCheck('Comprobante', 'version') then
  Result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['version'], '');
end;

procedure TDMXMLCFDI.setAnoAprobacion(const Value: integer);
begin

  XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['anoAprobacion'] := Value;
end;

procedure TDMXMLCFDI.setCertificado(const Value: String);
begin

  XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['certificado'] := Value;
end;

procedure TDMXMLCFDI.SetCondicionesdePago(const Value: String);
begin

  if trim(Value)='' then begin
    raise Exception.Create('Error, las condiciones de pago deben ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['condicionesDePago'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setDescuento(const Value: Currency);
var
  sValue :String;
begin
  if Value <> 0 then begin
    sValue := FormatCurr( '######0.00', Value);
    XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['descuento'] := sValue;
  end;
end;

procedure TDMXMLCFDI.setEmidor_domiciliofiscal_noExterior(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, el número exterior del domicilio fiscal del emisor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('DomicilioFiscal').Attributes['noExterior'] := CambiaEgniesyAcentos( Value );
end;

procedure TDMXMLCFDI.setEmidor_domiciliofiscal_noInterior(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, el número interior del domicilio fiscal del emisor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('DomicilioFiscal').Attributes['noInterior'] := CambiaEgniesyAcentos( Value );
end;

procedure TDMXMLCFDI.setEmidor_ExpedidoEn_noExterior(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, el número exterior del domicilio de expedición del emisor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('ExpedidoEn').Attributes['noExterior'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setEmidor_ExpedidoEn_noInterior(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, el número interior del domicilio de expedición del emisor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('ExpedidoEn').Attributes['noInterior'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setEmisor_domiciliofiscal_calle(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, la calle del domicilio fiscal del emisor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('DomicilioFiscal').Attributes['calle'] := CambiaEgniesyAcentos( Value );
end;

procedure TDMXMLCFDI.setEmisor_domiciliofiscal_codigoPostal(
  const Value: string);
begin

  if ( Length( value ) <> 5 ) then begin
    raise Exception.Create('Error, el código postal del domicilio fiscal del emisor dede ser de 5 caracteres');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('DomicilioFiscal').Attributes['codigoPostal'] := CambiaEgniesyAcentos( Value );
end;

procedure TDMXMLCFDI.setEmisor_domiciliofiscal_colonia(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, la colinia del domicilio fiscal del emisor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('DomicilioFiscal').Attributes['colonia'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setEmisor_domiciliofiscal_estado(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, el estado del domicilio fiscal del emisor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('DomicilioFiscal').Attributes['estado'] := CambiaEgniesyAcentos( Value );
end;

procedure TDMXMLCFDI.setEmisor_domiciliofiscal_localidad(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, la localidad del domicilio fiscal del emisor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('DomicilioFiscal').Attributes['localidad'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setEmisor_domiciliofiscal_municipio(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, el municipio del domicilio fiscal del emisor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('DomicilioFiscal').Attributes['municipio'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setEmisor_domiciliofiscal_pais(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, el país del domicilio fiscal del emisor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('DomicilioFiscal').Attributes['pais'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setEmisor_domiciliofiscal_referencia(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, la referencia del domicilio fiscal del emisor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('DomicilioFiscal').Attributes['referencia'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setEmisor_ExpedidoEn_calle(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, la calle del domicilio de expedición del emisor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('ExpedidoEn').Attributes['calle'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setEmisor_ExpedidoEn_codigoPostal(
  const Value: string);
begin

  if ( Length( value ) <> 5 ) then begin
    raise Exception.Create('Error, el código postal del domicilio de expedición del emisor dede ser de 5 caracteres');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('ExpedidoEn').Attributes['codigoPostal'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setEmisor_ExpedidoEn_colonia(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, la colinia del domicilio de expedición del emisor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('ExpedidoEn').Attributes['colonia'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setEmisor_ExpedidoEn_estado(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, el estado del domicilio de expedición del emisor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('ExpedidoEn').Attributes['estado'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setEmisor_ExpedidoEn_localidad(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, la localidad del domicilio de expedición del emisor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('ExpedidoEn').Attributes['localidad'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setEmisor_ExpedidoEn_municipio(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, el municipio del domicilio de expedición del emisor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('ExpedidoEn').Attributes['municipio'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setEmisor_ExpedidoEn_pais(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, el pais del domicilio de expedición del emisor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('ExpedidoEn').Attributes['pais'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setEmisor_ExpedidoEn_referencia(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, la referencia del domicilio de expedición del emisor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('ExpedidoEn').Attributes['referencia'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setEmisor_Nombre(const Value: String);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, el nombre del emisor debe ser cuando menos de 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').Attributes['nombre'] := CambiaEgniesyAcentos( Value );
end;

procedure TDMXMLCFDI.setEmisor_RegimenFiscal(const Value: String);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, el regimen fiscal del emisor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').ChildNodes.FindNode('RegimenFiscal').Attributes['Regimen'] := CambiaEgniesyAcentos( Value );
end;

procedure TDMXMLCFDI.setEmisor_rfc(const Value: String);
begin

  // el rcf es minimo de 12 y maximo de 13 caracteres
  if ( Length( Value ) < 12 ) or ( Length( Value ) > 13 ) then begin
    raise Exception.Create('Error, el rfc debe ser mínimo de 12 y máximo de 13 caractéres');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Emisor').Attributes['rfc'] := CambiaEgniesyAcentos( Value );
end;

procedure TDMXMLCFDI.setFecha(const Value: TDateTime);
var
  sValue : String;
  xFormat: String;
begin

  // establece la fecha y hora del CFD
  xFormat := FormatSettings.ShortDateFormat;
  FormatSettings.ShortDateFormat := 'yyyy-mm-ddThh:nn:ss';

  sValue := FormatDateTime('yyyy-mm-dd', Value );
  sValue := sValue + 'T'+  FormatDateTime('hh:nn:ss', Value);
  XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['fecha'] := sValue;
  FormatSettings.ShortDateFormat := xFormat;
end;

procedure TDMXMLCFDI.setFolio(const Value: String);
begin

  // Debe ser numerico y máximo de 10 catacteres
  if (StrToInt64Def( Value, -1 ) = -1 ) then begin
    Raise Exception.Create( 'Error, el folio especificado debe ser de tipo numérico');
  end;

  if Length( Value ) > 20 then begin
    raise Exception.Create('Error, el folio especificado debe tener de 1 a 20 caracteres');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['folio'] := Value;
end;

procedure TDMXMLCFDI.setFormadePago(const Value: String);
begin

  if trim(Value)='' then begin
    raise Exception.Create('Error, la forma de pago es un atributo obligatorio');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['formaDePago'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setLugarExpedicion(const Value: string);
begin

  if ( Trim( Value ) = '' ) then begin
    raise Exception.Create('Error, el método de pago no puede ser menor a 1 caracter');
  end;

  XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['LugarExpedicion'] :=  CambiaEgniesyAcentos( Value);

end;

procedure TDMXMLCFDI.setMetododePago(const Value: string);
begin

  if ( Trim( Value ) = '' ) then begin
    raise Exception.Create('Error, el método de pago no puede ser menor a 1 caracter');
  end;

  XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['metodoDePago'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setMoneda(const Value: String);
begin

end;

procedure TDMXMLCFDI.setMotivoDescuento(const Value: string);
begin

  if ( Trim( Value ) = '' ) then begin
    raise Exception.Create('Error, el motivo de descuento no puede ser menor a 1 caracter');
  end;

  XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['motivoDescuento'] := CambiaEgniesyAcentos( Value );
end;

procedure TDMXMLCFDI.setNoAprobacion(const Value: Integer);
begin

  if Value < 1 then begin
    raise Exception.Create('Error el número de aprobación no puede ser menor a 1');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['noAprobacion'] := Value;
end;

procedure TDMXMLCFDI.setNoCertificado(const Value: String);
begin

  // el certificado debe ser de 20 caracteres
  if Length( Value )<>20 then begin
    raise Exception.Create('Error, el número de certificado debe ser de 20 caractéres');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['noCertificado'] := Value;

end;

procedure TDMXMLCFDI.setNumCtaPago(const Value: String);
begin

  if ( Trim( Value ) = '' ) then begin
    raise Exception.Create('Error, el método de pago no puede ser menor a 1 caracter');
  end;

  XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['NumCtaPago'] :=  CambiaEgniesyAcentos( Value);

end;
procedure TDMXMLCFDI.setReceptor_domicilio_calle(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, la calle del domicilio del receptor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').ChildNodes.FindNode('Domicilio').Attributes['calle'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setReceptor_domicilio_codigoPostal(
  const Value: string);
begin

  if ( Length( value ) <> 5 ) then begin
    raise Exception.Create('Error, el código postal del domicilio del Receptor dede ser de 5 caracteres');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').ChildNodes.FindNode('Domicilio').Attributes['codigoPostal'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setReceptor_domicilio_colonia(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, la colonia del domicilio del receptor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').ChildNodes.FindNode('Domicilio').Attributes['colonia'] := CambiaEgniesyAcentos( Value )

end;

procedure TDMXMLCFDI.setReceptor_domicilio_estado(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, el estado del domicilio del receptor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').ChildNodes.FindNode('Domicilio').Attributes['estado'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setReceptor_domicilio_localidad(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, la localidad del domicilio del receptor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').ChildNodes.FindNode('Domicilio').Attributes['localidad'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setReceptor_domicilio_municipio(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, el municipio del domicilio del receptor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').ChildNodes.FindNode('Domicilio').Attributes['municipio'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setReceptor_domicilio_noExterior(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, el número exterior del domicilio del receptor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').ChildNodes.FindNode('Domicilio').Attributes['noExterior'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setReceptor_domicilio_noInterior(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, el número interior del domicilio del receptor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').ChildNodes.FindNode('Domicilio').Attributes['noInterior'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setReceptor_domicilio_pais(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, el país del domicilio del receptor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').ChildNodes.FindNode('Domicilio').Attributes['pais'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setReceptor_domicilio_referencia(
  const Value: string);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, la referencia del domicilio del receptor dede ser de cuando menos 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').ChildNodes.FindNode('Domicilio').Attributes['referencia'] := CambiaEgniesyAcentos( Value );

end;

procedure TDMXMLCFDI.setReceptor_Nombre(const Value: String);
begin

  if ( Trim( value ) = '' ) then begin
    raise Exception.Create('Error, el nombre del receptor debe ser cuando menos de 1 caracter');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').Attributes['nombre'] := CambiaEgniesyAcentos( Value );
end;

procedure TDMXMLCFDI.setReceptor_rfc(const Value: String);
var
  myValue : String;
begin

  // el rcf es minimo de 12 y maximo de 13 caracteres
  if ( Length( Value ) < 12 ) or ( Length( Value ) > 13 ) then begin
    raise Exception.Create('Error, el rfc debe ser mínimo de 12 y máximo de 13 caractéres');
  end;

  // si contiene caracteres de guión, los quito por que esos ya no son válidos
  // y tampoco los espacios en blanco
  myValue := Value;
  myValue := StringReplace(myValue, '-', '', [rfReplaceAll]);
  myValue := StringReplace(myValue, ' ', '', [rfReplaceAll]);

  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Receptor').Attributes['rfc'] := CambiaEgniesyAcentos( myValue );

end;

procedure TDMXMLCFDI.SetSerie(const Value: String);
begin

  // La serie debe ser maximo de 10 caracteres
  if Length( Value )>10 then begin
    raise Exception.Create('Error, la serie no puede ser mayor de 10 Caracteres');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['serie'] := Value;
end;

procedure TDMXMLCFDI.setSubTotal(const Value: Currency);
var
  sValue :String;
begin

  sValue := FormatCurr( '######0.0000', Value);
  XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['subTotal'] := sValue;
end;

procedure TDMXMLCFDI.setTipoCambio(const Value: String);
begin

end;

procedure TDMXMLCFDI.setTipodeComprobante(const Value: string);
begin

  // el tipo de comprobante solo puede ser "ingreso" , "egreso" o "traslado"
  if not( ( UpperCase( Value ) = 'INGRESO' ) or ( UpperCase( value ) = 'EGRESO') or ( UpperCase( value ) = 'TRASLADO') ) then begin
    raise Exception.Create('Error, el tipo de comprobante solo puede ser ingreso, egreso o traslado');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['tipoDeComprobante'] := Value;
end;

procedure TDMXMLCFDI.setTotal(const Value: Currency);
var
  sValue :String;
begin

  sValue := FormatCurr( '######0.0000', Value);
  XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['total'] := sValue;
end;

procedure TDMXMLCFDI.setVersion(const Value: String);
begin

  // Establece la version del CFD
  XMLDocument.ChildNodes.FindNode('Comprobante').Attributes['version'] := Value;
end;

function TDMXMLCFDI.getTotalImpuestosRetenidos: Currency;
var
  sValue :String;
begin
  if XMLCheck('Comprobante,Impuestos', 'totalImpuestosRetenidos') then
  sValue := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Impuestos').Attributes['totalImpuestosRetenidos'], '');
  Result := StrToCurrDef( sValue, 0 );
end;

function TDMXMLCFDI.getTotalImpuestosTrasladados: Currency;
var
  sValue :String;
begin
  if XMLCheck('Comprobante,Impuestos', 'totalImpuestosTrasladados') then
  sValue := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Impuestos').Attributes['totalImpuestosTrasladados'], '');
  Result := StrToCurrDef( sValue, 0 );
end;

procedure TDMXMLCFDI.setTotalImpuestosRetenidos(const Value: Currency);
var
  sValue :String;
begin
  sValue :='';
  sValue := FormatCurr( '######0.0000', Value);
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Impuestos').Attributes['totalImpuestosRetenidos'] := sValue;
end;

procedure TDMXMLCFDI.setTotalImpuestosTrasladados(
  const Value: Currency);
var
  sValue :String;
begin
  sValue :='';
  sValue := FormatCurr( '######0.0000', Value);
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Impuestos').Attributes['totalImpuestosTrasladados'] := sValue;
end;

function TDMXMLCFDI.getComplemento_Timbrado_FechaTimbrado: TDateTime;
var
  sFecha, sHora,
  sValue : String;
  xFormat: String;
begin
  // Regresa la fecha y hora del CFD
  xFormat := FormatSettings.ShortDateFormat;
  FormatSettings.ShortDateFormat := 'yyyy/mm/dd hh:nn:ss';
  //if XMLCheck('Comprobante,Complemento,TimbreFiscalDigital', 'FechaTimbrado') then
  sValue := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Complemento').ChildNodes.FindNode('TimbreFiscalDigital', 'http://www.sat.gob.mx/TimbreFiscalDigital').Attributes['FechaTimbrado'], '');
  // separo la fecha y la hora
  sFecha := Copy( sValue, 1, Pos('T', sValue )-1 );
  sFecha := StringReplace( sFecha, '-', '/', [rfReplaceAll] );
  sHora  := Copy( sValue, Pos('T', sValue )+1, Length( sValue ));
  Result := StrToDateTime( sFecha );
  Result := Result + StrToTime( sHora );
  FormatSettings.ShortDateFormat := xFormat;

end;

function TDMXMLCFDI.getComplemento_Timbrado_noCertificadoSAT: String;
begin
  //if XMLCheck('Comprobante,Complemento,TimbreFiscalDigital', 'noCertificadoSAT') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Complemento').ChildNodes.FindNode('TimbreFiscalDigital', 'http://www.sat.gob.mx/TimbreFiscalDigital').Attributes['noCertificadoSAT'], '');
end;

function TDMXMLCFDI.getComplemento_Timbrado_selloSAT: string;
begin

  //if XMLCheck('Comprobante,Complemento,TimbreFiscalDigital', 'selloSAT') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Complemento').ChildNodes.FindNode('TimbreFiscalDigital', 'http://www.sat.gob.mx/TimbreFiscalDigital').Attributes['selloSAT'], '');
end;

function TDMXMLCFDI.getComplemento_Timbrado_UUID: string;
begin
  //if XMLCheck('Comprobante,Complemento,TimbreFiscalDigital', 'UUID') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Complemento').ChildNodes.FindNode('TimbreFiscalDigital', 'http://www.sat.gob.mx/TimbreFiscalDigital').Attributes['UUID'], '');

end;

function TDMXMLCFDI.getComplemento_Timbrado_version: string;
begin
  //if XMLCheck('Comprobante,Complemento,TimbreFiscalDigital', 'version') then
  result := VarToStrDef( XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Complemento').ChildNodes.FindNode('TimbreFiscalDigital', 'http://www.sat.gob.mx/TimbreFiscalDigital').Attributes['version'], '');
end;

procedure TDMXMLCFDI.set_Complemento_Timbrado_noCertificadoSAT(
  const Value: String);
begin

  // el certificado debe ser de 20 caracteres
  if Length( Value )<>20 then begin
    raise Exception.Create('Error, el número de certificado debe ser de 20 caractéres');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Complemento').ChildNodes.FindNode('TimbreFiscalDigital', 'http://www.sat.gob.mx/TimbreFiscalDigital').Attributes['noCertificado'] := CambiaEgniesyAcentos( value);

end;

function TDMXMLCFDI.XMLCheck(sNodos, sAttributos: AnsiString): Boolean;

  function HayAtributo( tNodo : IXMLNode; const tAtrib : String ):Boolean;
  var
    i : integer;
  begin
    Result := False;
    for i := 0 to tNodo.AttributeNodes.Count-1 do
      if tNodo.AttributeNodes.Get(i).NodeName = tAtrib then begin
        Result := True;
        Exit;
      end;
  end;

var
  xNodo : IXMLNode;
  xNodos,
  xAttributos : TStringList;
  sNameSpace : AnsiString;
  ii,
  i: Integer;
begin
  // Revisa si el documento xml tiene los nodos solicitados separados por coma
  // y si tiene los atributos solicitados separados por coma
  // en caso de que si exista regresa True de otro modo regresa falso
  Result := False;
  try
    xNodos      := TStringList.Create;
    xAttributos := TStringList.Create;
    sNodos      := StringReplace(sNodos, ',', #13#10, [rfReplaceAll]);
    sAttributos := StringReplace(sAttributos, ',', #13#10, [rfReplaceAll]);
    xNodos.Text := sNodos;
    xAttributos.Text := sAttributos;

    // Ya que no lo encuentra si no le paso el namespace, voy a intentar tomar
    // el namespace para buscarlo
    //if VarToStrDef( XMLDocument.ChildNodes.First.Attributes['xmlns'], '' ) <>'' then
    //  sNameSpace := XMLDocument.ChildNodes.First.Attributes['xmlns'];
    //if sNameSpace<>'' then
    //  xNodo      := XMLDocument.ChildNodes.FindNode(xNodos[0], sNameSpace )
    //else
      xNodo      := XMLDocument.ChildNodes.FindNode(xNodos[0] );


    if ( xNodos.Count>1 ) and ( xNodo<>nil ) then
      for i := 1 to xNodos.Count-1 do
        if xNodo <> nil then
          xNodo := xNodo.ChildNodes.FindNode( xNodos[i] )
        else begin
          Result := False;
          Exit;
        end;

    // ahora busco los atributos
    for i := 0 to xAttributos.Count-1 do
      if xNodo<>nil then begin
        if not( HayAtributo( xNodo, xAttributos[i] )) then begin
          Result := False;
          Break;
        end else begin
          Result := True;
        end;
      end
      else begin
        Result := False;
        Exit;
      end;
  except
    on e:exception do begin
      Result := False;
    end;
  end;
end;

procedure TDMXMLCFDI.setComplemento_Timbrado_FechaTimbrado(
  const Value: TDateTime);
var
  sValue : String;
  xFormat: String;
begin
  // establece la fecha y hora del timbrado
  xFormat := FormatSettings.ShortDateFormat;
  FormatSettings.ShortDateFormat := 'yyyy-mm-ddThh:nn:ss';

  sValue := FormatDateTime('yyyy-mm-dd', Value );
  sValue := sValue + 'T'+  FormatDateTime('hh:nn:ss', Value);
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Complemento').ChildNodes.FindNode('TimbreFiscalDigital', 'http://www.sat.gob.mx/TimbreFiscalDigital').Attributes['FechaTimbrado'] := sValue;
  FormatSettings.ShortDateFormat := xFormat;

end;

procedure TDMXMLCFDI.setComplemento_Timbrado_UUID(
  const Value: string);
begin

end;

procedure TDMXMLCFDI.setComplemento_Timbrado_version(
  const Value: string);
begin
  // el certificado debe ser de 20 caracteres
  if Length( Value )<1 then begin
    raise Exception.Create('Error, el número de version timbrado no es válido');
  end;
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Complemento').ChildNodes.FindNode('TimbreFiscalDigital', 'http://www.sat.gob.mx/TimbreFiscalDigital').Attributes['version'] := CambiaEgniesyAcentos( value);

end;

procedure TDMXMLCFDI.setComplemento_Timbre_selloSAT(
  const Value: string);
begin
  XMLDocument.ChildNodes.FindNode('Comprobante').ChildNodes.FindNode('Complemento').ChildNodes.FindNode('TimbreFiscalDigital', 'http://www.sat.gob.mx/TimbreFiscalDigital').Attributes['selloSAT'] := CambiaEgniesyAcentos( value);
end;

function TDMXMLCFDI.CambiaEgniesyAcentos(xCadena: String): String;
var
  i : integer;
begin
  //Result := xCadena;
  //Exit;

  // Reeplaza las ñ, y caraceres acentuados
  xCadena := StringReplace( xCadena, 'Ñ', 'N', [rfReplaceAll] );
  xCadena := StringReplace( xCadena, 'ñ', 'n', [rfReplaceAll] );
  xCadena := StringReplace( xCadena, 'á', 'a', [rfReplaceAll] );
  xCadena := StringReplace( xCadena, 'é', 'e', [rfReplaceAll] );
  xCadena := StringReplace( xCadena, 'í', 'i', [rfReplaceAll] );
  xCadena := StringReplace( xCadena, 'ó', 'o', [rfReplaceAll] );
  xCadena := StringReplace( xCadena, 'ú', 'u', [rfReplaceAll] );
  xCadena := StringReplace( xCadena, 'Á', 'A', [rfReplaceAll] );
  xCadena := StringReplace( xCadena, 'É', 'E', [rfReplaceAll] );
  xCadena := StringReplace( xCadena, 'Í', 'I', [rfReplaceAll] );
  xCadena := StringReplace( xCadena, 'Ó', 'O', [rfReplaceAll] );
  xCadena := StringReplace( xCadena, 'Ú', 'U', [rfReplaceAll] );

  xCadena := StringReplace( xCadena, 'À', 'A', [rfReplaceAll] );
  xCadena := StringReplace( xCadena, 'È', 'E', [rfReplaceAll] );
  xCadena := StringReplace( xCadena, 'Ì', 'I', [rfReplaceAll] );
  xCadena := StringReplace( xCadena, 'Ò', 'O', [rfReplaceAll] );
  xCadena := StringReplace( xCadena, 'Ù', 'U', [rfReplaceAll] );
  xCadena := StringReplace( xCadena, 'à', 'a', [rfReplaceAll] );
  xCadena := StringReplace( xCadena, 'è', 'e', [rfReplaceAll] );
  xCadena := StringReplace( xCadena, 'ì', 'i', [rfReplaceAll] );
  xCadena := StringReplace( xCadena, 'ò', 'o', [rfReplaceAll] );
  xCadena := StringReplace( xCadena, 'ù', 'u', [rfReplaceAll] );

  xCadena := StringReplace( xCadena, '°', '0', [rfReplaceAll] );
  xCadena := StringReplace( xCadena, '', '0', [rfReplaceAll] );

  // si aún quedan caracteres cuyo valor aSCII es mayor a 122, los voy a omitir
  for i :=Length(xCadena) downto 1 do
    if Ord(xCadena[i])>122 then
      xCadena := StringReplace( xCadena, xCadena[i], '', []);

  Result := xCadena;

end;

end.
