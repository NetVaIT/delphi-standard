unit DocumentosAdjuntosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmDocumentosAdjuntos = class(T_dmStandar)
    adodsMasterIdDocumentoAdjunto: TAutoIncField;
    adodsMasterIdDocumentoTipo: TIntegerField;
    adodsMasterIdDocumentoClase: TIntegerField;
    adodsMasterDescripcion: TStringField;
    adodsMasterNombreArchivo: TStringField;
    adodsMasterIdArchivo: TGuidField;
    adodsMasterArchivo: TBlobField;
    adodsDocumentoTipo: TADODataSet;
    adodsDocumentoClase: TADODataSet;
    adodsMasterDocumentoTipo: TStringField;
    adodsMasterDocumentoClase: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DocumentosAdjuntosForm;

{$R *.dfm}

procedure TdmDocumentosAdjuntos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmDocumentosAdjuntos.Create(Self);
  gGridForm.DataSet := adodsMaster;
end;

end.
