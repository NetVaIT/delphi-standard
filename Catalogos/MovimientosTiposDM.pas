unit MovimientosTiposDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TdmMovimientosTipo = class(T_dmStandar)
    adodsMasterIdMovimientoTipo: TAutoIncField;
    adodsMasterIdMovimientoTipoCategoria: TIntegerField;
    adodsMasterIdMovimientoTipoEfecto: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterValorDefault: TFMTBCDField;
    adodsMasterProduceCXC: TBooleanField;
    adodsMasterProduceCXP: TBooleanField;
    adodsMovimientoTipoCategoria: TADODataSet;
    adodsMovimientoTipoEfecto: TADODataSet;
    adodsMasterMovimientoTipoCategoria: TStringField;
    adodsMasterMovimientoTipoEfecto: TStringField;
    adodsUpdateIdMovimientoTipo: TAutoIncField;
    adodsUpdateIdMovimientoTipoCategoria: TIntegerField;
    adodsUpdateIdMovimientoTipoEfecto: TIntegerField;
    adodsUpdateIdentificador: TStringField;
    adodsUpdateDescripcion: TStringField;
    adodsUpdateValorDefault: TFMTBCDField;
    adodsUpdateProduceCXC: TBooleanField;
    adodsUpdateProduceCXP: TBooleanField;
    adodsUpdateMovimientoTipoCategoria: TStringField;
    adodsUpdateMovimientoTipoEfecto: TStringField;
    adodsMasterAgruparTipo: TBooleanField;
    adodsMasterBaseCalculo: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MovimientosTiposForm, MovimientosTiposEdit;

{$R *.dfm}

procedure TdmMovimientosTipo.DataModuleCreate(Sender: TObject);
begin
  inherited;
  frmEdit:= TfrmMovimientosTipoEdit.Create(Self);
  gGridForm:= TfrmMovimientosTipos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
