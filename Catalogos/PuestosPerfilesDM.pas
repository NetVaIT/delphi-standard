unit PuestosPerfilesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB;

type
  TdmPuestosPerfiles = class(T_dmStandar)
    adodsMasterIdPuestoPerfil: TIntegerField;
    adodsMasterIdPuesto: TIntegerField;
    adodsMasterIdPuestoPerfilCategoria: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterValor: TIntegerField;
    adodsPuestos: TADODataSet;
    adodsMasterPuesto: TStringField;
    adodsPuestosPerfilCategorias: TADODataSet;
    adodsMasterPerfilCategoria: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    FIdPuesto: Integer;
    FDataSource: TDataSource;
    procedure SetIdPuesto(const Value: Integer);
    procedure SetDataSource(const Value: TDataSource);
    { Private declarations }
  public
    { Public declarations }
    property DataSource: TDataSource read FDataSource write SetDataSource;
    property IdPuesto: Integer read FIdPuesto write SetIdPuesto;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PuestosPerfilesForm;

{$R *.dfm}

procedure TdmPuestosPerfiles.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmPuestosPerfiles.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

procedure TdmPuestosPerfiles.SetDataSource(const Value: TDataSource);
begin
  FDataSource := Value;
  adodsMaster.DataSource := Value;
end;

procedure TdmPuestosPerfiles.SetIdPuesto(const Value: Integer);
begin
  FIdPuesto := Value;
end;

end.
