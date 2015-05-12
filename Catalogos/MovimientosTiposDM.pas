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
    adodsMasterIdMovimientoTipoAcumular: TIntegerField;
    adodsMasterAplicarISR: TBooleanField;
    adodsMovimientoTipo: TADODataSet;
    adodsMasterMovimientoTipo: TStringField;
    adodsMasterPorcentajeCalculo: TFMTBCDField;
    adodsUpdateAgruparTipo: TBooleanField;
    adodsUpdateBaseCalculo: TBooleanField;
    adodsUpdateIdMovimientoTipoAcumular: TIntegerField;
    adodsUpdateAplicarISR: TBooleanField;
    adodsUpdatePorcentajeCalculo: TFMTBCDField;
    adodsUpdateMovimientoTipo: TStringField;
    adodsMasterIdPersonaRol: TIntegerField;
    adodsMasterIdImpuesto: TIntegerField;
    adodsMasterAcumularMensualmente: TBooleanField;
    adodsMasterDescuento: TBooleanField;
    adodsPersonaRol: TADODataSet;
    adodsVariables: TADODataSet;
    adodsMasterPerosnaRol: TStringField;
    adodsMasterVariable: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MovimientosTiposForm, MovimientosTiposEdit;

{$R *.dfm}

procedure TdmMovimientosTipo.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsMasterProduceCXC.Value:= False;
  adodsMasterProduceCXP.Value:= False;
  adodsMasterAgruparTipo.Value:= False;
  adodsMasterBaseCalculo.Value:= False;
  adodsMasterAplicarISR.Value:= False;
end;

procedure TdmMovimientosTipo.DataModuleCreate(Sender: TObject);
begin
  inherited;
  frmEdit:= TfrmMovimientosTipoEdit.Create(Self);
  gGridForm:= TfrmMovimientosTipos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
