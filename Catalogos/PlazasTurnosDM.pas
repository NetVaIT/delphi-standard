unit PlazasTurnosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB;

type
  TdmPlazasTurnos = class(T_dmStandar)
    adodsMasterIdPlazaTurno: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterHoraEntrada: TWideStringField;
    adodsMasterHoraSalida: TWideStringField;
    adodsMasterHoraAlimentosInicio: TWideStringField;
    adodsMasterHoraAlimentosFin: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PlazasTurnosForm;

{$R *.dfm}

procedure TdmPlazasTurnos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmPlazasTurnos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
