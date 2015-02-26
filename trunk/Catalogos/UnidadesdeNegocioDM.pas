unit UnidadesdeNegocioDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB;

type
  TdmUnidadesdeNegocio = class(T_dmStandar)
    adodsMasterIdUnidadNegocio: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UnidadesdeNegocioForm;

{$R *.dfm}

procedure TdmUnidadesdeNegocio.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmUnidadesdeNegocio.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
