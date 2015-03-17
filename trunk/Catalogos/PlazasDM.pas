unit PlazasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB;

type
  TdmPlazas = class(T_dmStandar)
    ADODataSet1: TADODataSet;
    adodsPlazaTemporalidadTipos: TADODataSet;
    adodsUbicacion: TADODataSet;
    adodsPlazaTurnos: TADODataSet;
    adodsMasterIdPlaza: TIntegerField;
    adodsMasterIdPuesto: TIntegerField;
    adodsMasterIdPersonaEmpleado: TIntegerField;
    adodsMasterSalarioBase: TBCDField;
    adodsMasterFechaCreacionPlaza: TWideStringField;
    adodsMasterIdPlazaTurno: TIntegerField;
    adodsMasterIdPlazaTemporalidadTipo: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterPlazaTurno: TStringField;
    adodsMasterPlazaTemporalidadTipo: TStringField;
    adodsMasterIdUbicacion: TIntegerField;
    adodsMasterUbicacion: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PlazasForm;

{$R *.dfm}

procedure TdmPlazas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmPlazas.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
