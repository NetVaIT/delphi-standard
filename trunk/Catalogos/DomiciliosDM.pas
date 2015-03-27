unit DomiciliosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB;

type
  TdmDomicilios = class(T_dmStandar)
    adodsMasterIdDomicilio: TAutoIncField;
    adodsMasterIdPais: TIntegerField;
    adodsMasterIdEstado: TIntegerField;
    adodsMasterIdMunicipio: TIntegerField;
    adodsMasterIdPoblacion: TIntegerField;
    adodsMasterCalle: TStringField;
    adodsMasterNoExterior: TStringField;
    adodsMasterNoInterior: TStringField;
    adodsMasterColonia: TStringField;
    adodsMasterReferencia: TStringField;
    adodsMasterPais: TStringField;
    adodsMasterEstado: TStringField;
    adodsMasterMunicipio: TStringField;
    adodsMasterPoblacion: TStringField;
    adodsMasterCodigoPostal: TStringField;
    adodsPaises: TADODataSet;
    dsPaises: TDataSource;
    adodsEstados: TADODataSet;
    adodsEstadosIdEstado: TAutoIncField;
    adodsEstadosIdPais: TIntegerField;
    adodsEstadosIdentificador: TStringField;
    adodsEstadosDescripcion: TStringField;
    dsEstados: TDataSource;
    adodsMunicipios: TADODataSet;
    adodsMunicipiosIdMunicipio: TIntegerField;
    adodsMunicipiosIdEstado: TIntegerField;
    adodsMunicipiosIdentificador: TIntegerField;
    adodsMunicipiosDescripcion: TStringField;
    dsMunicipios: TDataSource;
    adodsPoblaciones: TADODataSet;
    adodsPoblacionesIdPoblacion: TIntegerField;
    adodsPoblacionesIdMunicipio: TIntegerField;
    adodsPoblacionesIdentificador: TIntegerField;
    adodsPoblacionesDescripcion: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterIdPaisChange(Sender: TField);
    procedure adodsMasterIdEstadoChange(Sender: TField);
    procedure adodsMasterIdMunicipioChange(Sender: TField);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure adodsMasterAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DomiciliosForm, DomiciliosEdit;

{$R *.dfm}

procedure TdmDomicilios.adodsMasterAfterPost(DataSet: TDataSet);
begin
  inherited;
//  adodsMaster.Requery();
end;

procedure TdmDomicilios.adodsMasterIdEstadoChange(Sender: TField);
begin
  inherited;
  adodsMasterIdMunicipio.Clear;
  adodsMasterIdPoblacion.Clear;
end;

procedure TdmDomicilios.adodsMasterIdMunicipioChange(Sender: TField);
begin
  inherited;
  adodsMasterIdPoblacion.Clear;
end;

procedure TdmDomicilios.adodsMasterIdPaisChange(Sender: TField);
begin
  inherited;
  adodsMasterIdEstado.Clear;
  adodsMasterIdMunicipio.Clear;
  adodsMasterIdPoblacion.Clear;
end;

procedure TdmDomicilios.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsMasterIdPais.Value:= 148;
end;

procedure TdmDomicilios.DataModuleCreate(Sender: TObject);
begin
  inherited;
  frmEdit:= TfrmDomiciliosEdit.Create(Self);
  TfrmDomiciliosEdit(frmEdit).DataSetPaises:= adodsPaises;
  TfrmDomiciliosEdit(frmEdit).DataSetEstados:= adodsEstados;
  TfrmDomiciliosEdit(frmEdit).DataSetMunicipios:= adodsMunicipios;
  TfrmDomiciliosEdit(frmEdit).DataSetPoblaciones:= adodsPoblaciones;
  gGridForm:= TfrmDomicilios.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  TfrmDomicilios(gGridForm).DataSetPaises:= adodsPaises;
  TfrmDomicilios(gGridForm).DataSetEstados:= adodsEstados;
  TfrmDomicilios(gGridForm).DataSetMunicipios:= adodsMunicipios;
  TfrmDomicilios(gGridForm).DataSetPoblaciones:= adodsPoblaciones;
  adodsPaises.Open;
  adodsEstados.Open;
  adodsMunicipios.Open;
  adodsPoblaciones.Open;
end;

procedure TdmDomicilios.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  adodsPaises.Close;
  adodsEstados.Close;
  adodsMunicipios.Close;
  adodsPoblaciones.Close;
end;

end.
