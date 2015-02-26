unit TiposDocumentosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB;

type
  TdmTiposDocumentos = class(T_dmStandar)
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterIdTipoDocumento: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses TipoDocumentosForm;

{$R *.dfm}

procedure TdmTiposDocumentos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmTipoDocumentos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
