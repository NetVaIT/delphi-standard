unit MovimientosDDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmMovimientosD = class(T_dmStandar)
    adodsMasterIdMovimientoDetalle: TIntegerField;
    adodsMasterPeriodo: TStringField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterPersona: TStringField;
    adodsMasterPersonaRelacionada: TStringField;
    adodsMasterTipo: TStringField;
    adodsMasterCategoria: TStringField;
    adodsMasterEfecto: TStringField;
    adodsMasterImporte: TFMTBCDField;
    adodsMasterEstatus: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MovimientosDForm;

{$R *.dfm}

procedure TdmMovimientosD.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmMovimientosD.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
