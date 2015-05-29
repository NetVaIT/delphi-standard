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
    adodsMasterAgruparTipo: TBooleanField;
    adodsMasterIdMovimientoTipoAcumular: TIntegerField;
    adodsMovimientoTipo: TADODataSet;
    adodsMasterMovimientoTipo: TStringField;
    adodsMasterIdImpuesto: TIntegerField;
    adodsPersonaRol1: TADODataSet;
    adodsVariables: TADODataSet;
    adodsMasterVariable: TStringField;
    adodsMasterIdPersonaRolPagadora1: TIntegerField;
    adodsMasterIdpersonaRolPagadora2: TIntegerField;
    adodsMasterPorcentajePagador1: TFMTBCDField;
    adodsMasterPorcentajePagadora2: TFMTBCDField;
    adodsMasterPagadora1: TStringField;
    adodsPersonaRol2: TADODataSet;
    adodsMasterPagadora2: TStringField;
    adodsMasterAplicarISRProvisional: TBooleanField;
    adodsUpdateIdMovimientoTipo: TAutoIncField;
    adodsUpdateIdMovimientoTipoCategoria: TIntegerField;
    adodsUpdateIdMovimientoTipoEfecto: TIntegerField;
    adodsUpdateIdMovimientoTipoAcumular: TIntegerField;
    adodsUpdateIdPersonaRolPagadora1: TIntegerField;
    adodsUpdateIdpersonaRolPagadora2: TIntegerField;
    adodsUpdateIdVariable: TIntegerField;
    adodsUpdateIdentificador: TStringField;
    adodsUpdateDescripcion: TStringField;
    adodsUpdateMovimientoTipoCategoria: TStringField;
    adodsUpdateMovimientoTipoEfecto: TStringField;
    adodsUpdateProduceCXC: TBooleanField;
    adodsUpdateProduceCXP: TBooleanField;
    adodsUpdateVariable: TStringField;
    adodsUpdateAgruparTipo: TBooleanField;
    adodsUpdateMovimientoTipo: TStringField;
    adodsUpdateAplicarISRProvisional: TBooleanField;
    adodsUpdatePagadora1: TStringField;
    adodsUpdatePorcentajePagadora1: TFMTBCDField;
    adodsUpdatePagadora2: TStringField;
    adodsUpdatePorcentajePagadora2: TFMTBCDField;
    adodsMovimientoTipoLkp: TADODataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure adodsMasterIdMovimientoTipoCategoriaChange(Sender: TField);
    procedure adodsMasterAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    procedure OpenMovimientoTipoLkp;
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MovimientosTiposForm, MovimientosTiposEdit;

{$R *.dfm}

procedure TdmMovimientosTipo.adodsMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  OpenMovimientoTipoLkp;
end;

procedure TdmMovimientosTipo.adodsMasterIdMovimientoTipoCategoriaChange(
  Sender: TField);
begin
  inherited;
  adodsMasterIdMovimientoTipoAcumular.Clear;
  OpenMovimientoTipoLkp;
end;

procedure TdmMovimientosTipo.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsMasterProduceCXC.Value:= False;
  adodsMasterProduceCXP.Value:= False;
  adodsMasterAgruparTipo.Value:= False;
  adodsMasterAplicarISRProvisional.Value:= False;
end;

procedure TdmMovimientosTipo.DataModuleCreate(Sender: TObject);
begin
  inherited;
  frmEdit:= TfrmMovimientosTipoEdit.Create(Self);
  gGridForm:= TfrmMovimientosTipos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  TfrmMovimientosTipos(gGridForm).DataSetMovimientosTipo:= adodsMovimientoTipoLkp;
end;

procedure TdmMovimientosTipo.OpenMovimientoTipoLkp;
begin
  adodsMovimientoTipoLkp.Close;
  adodsMovimientoTipoLkp.Parameters.ParamByName('IdMovimientoTipoCategoria').Value:= adodsMasterIdMovimientoTipoCategoria.Value;
  adodsMovimientoTipoLkp.Open;
end;

end.
