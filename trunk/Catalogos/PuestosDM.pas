unit PuestosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB;

type
  TdmPuestos = class(T_dmStandar)
    adodsMasterIdUnidadNegocio: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsGerencias: TADODataSet;
    dsMaster: TDataSource;
    adodsDepartamentos: TADODataSet;
    adodsPuestos: TADODataSet;
    dsGerencias: TDataSource;
    dsDepartamentos: TDataSource;
    adodsGerenciasIdGerencia: TIntegerField;
    adodsGerenciasIdUnidadNegocio: TIntegerField;
    adodsGerenciasIdentificador: TStringField;
    adodsGerenciasDescripcion: TStringField;
    adodsDepartamentosIdDepartamento: TIntegerField;
    adodsDepartamentosIdGerencia: TIntegerField;
    adodsDepartamentosIdentificador: TStringField;
    adodsDepartamentosDescripcion: TStringField;
    adodsPuestosIdPuesto: TAutoIncField;
    adodsPuestosIdDepartamento: TIntegerField;
    adodsPuestosIdentificacion: TStringField;
    adodsPuestosDescripcion: TStringField;
    adodsPuestosFechaCreacionPuesto: TWideStringField;
    adodsPuestosIdPuestoSuperior: TIntegerField;
    adodsPuestosIdPuestoCategoria: TIntegerField;
    adodsPuestosCategorias: TADODataSet;
    adodsPuestoSuperior: TADODataSet;
    adodsPuestosPuestoCategoria: TStringField;
    adodsPuestosPuestoSuperior: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UnidadesdeNegocioForm, GerenciasForm, DepartamentosForm, PuestosForm;

{$R *.dfm}

procedure TdmPuestos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  if adodsGerencias.CommandText <> EmptyStr     then adodsGerencias.Open;
  if adodsDepartamentos.CommandText <> EmptyStr then adodsDepartamentos.Open;
  if adodsPuestos.CommandText <> EmptyStr       then adodsPuestos.Open;
  gGridForm:= TfrmUnidadesdeNegocio.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gFormDeatil1:= TfrmGerencias.Create(Self);
  gFormDeatil1.DataSet:= adodsGerencias;
  gFormDeatil2:= TfrmDepartamentos.Create(Self);
  gFormDeatil2.DataSet:= adodsDepartamentos;
  gFormDeatil3:= TfrmPuestos.Create(Self);
  gFormDeatil3.DataSet:= adodsPuestos;
end;

end.
