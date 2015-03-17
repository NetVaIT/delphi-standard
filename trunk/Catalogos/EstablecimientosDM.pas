unit EstablecimientosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB;

type
  TdmEstablecimientos = class(T_dmStandar)
    adodsMasterIdEstablecimiento: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterIdDomicilio: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses EstablecimientosForm;

{$R *.dfm}

procedure TdmEstablecimientos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmEstablecimientos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
