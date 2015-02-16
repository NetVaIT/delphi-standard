unit UbicacionesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  PaisesForm, EstadosForm;

type
  TdmUbicaciones = class(T_dmStandar)
    adodsMasterIdPais: TAutoIncField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    dsMaster: TDataSource;
    adodsEstados: TADODataSet;
    adodsEstadosIdEstado: TAutoIncField;
    adodsEstadosIdPais: TIntegerField;
    adodsEstadosIdentificador: TStringField;
    adodsEstadosDescripcion: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmUbicaciones.DataModuleCreate(Sender: TObject);
begin
  inherited;
  if adodsEstados.CommandText <> EmptyStr then adodsEstados.Open;
  gGridForm:= TfrmPaises.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gFormDeatil1:= TfrmEstados.Create(Self);
  gFormDeatil1.DataSet:= adodsEstados;


//  frmPaises:= TfrmPaises.Create(Self);
//  frmPaises.DataSet:= adodsMaster;
//  ShowModule2(frmPaises, frmPaises.pnlMaster);
//  frmEstados:= TfrmEstados.Create(Self);
//  frmEstados.DataSet:= adodsEstados;

end;

end.
