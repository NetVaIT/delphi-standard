unit RptMovimientosPeriodoDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, Dialogs, RptMovimientosForm, dxmdaset;

type
  TdmMovimientosPeriodorpt = class(T_dmStandar)
    adostReporte: TADOStoredProc;
    actReporte: TAction;
    adoqryMovimientoTipo: TADOQuery;
    actPedirPeriodo: TAction;
    adodsPeriodos: TADODataSet;
    adodsPeriodosIdPeriodo: TAutoIncField;
    adodsPeriodosDescripcion: TStringField;
    mdParams: TdxMemData;
    mdParamsIdPeriodo: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actReporteExecute(Sender: TObject);
    procedure actPedirPeriodoExecute(Sender: TObject);
  private
    { Private declarations }
    gReportForm : TfrmRptMovimientos;
    procedure AjustarCampos();
    procedure AjustarColumnasGrid();
    function GetCategoria(IdMovimientoTipo: Integer; var Descripcion: string): Integer;
  public
    { Public declarations }
    procedure AssignParam;
//    procedure Execute; override;

    procedure Execute;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses RptMovimientosPeriodoForm, ConfiguracionDM;

{$R *.dfm}

procedure TdmMovimientosPeriodorpt.actPedirPeriodoExecute(Sender: TObject);
var
  Resultado : integer;
begin
  inherited;
  gReportForm := TfrmRptMovimientos.Create(Self);
  Resultado := gReportForm.ShowModal;
  if Resultado = 1 then
    Execute;
end;

procedure TdmMovimientosPeriodorpt.actReporteExecute(Sender: TObject);
begin
  inherited;
  adostReporte.Parameters.ParamByName('@IdPeriodo').Value := mdParamsIdPeriodo.Value;
  adostReporte.Parameters.ParamByName('@Columna').Value := 'Tipo';
  adostReporte.Open;
//  AjustarCampos;
  TfrmMovimientosPeriodo(gGridForm).tvBandasGrupo.DataController.CreateAllItems();
  AjustarColumnasGrid;
end;

procedure TdmMovimientosPeriodorpt.AjustarColumnasGrid;
var
  i : integer;
  NombreCol : string;
  Id : integer;
  Categoria : integer;
begin
  Categoria := 0;
  for i := 0 to TfrmMovimientosPeriodo(gGridForm).tvBandasGrupo.ColumnCount - 1 do
  begin
//    ShowMessage(gGridForm.tvMaster.DataController.GetItemFieldName(i));
    if i > 0 then
    begin
      NombreCol := TfrmMovimientosPeriodo(gGridForm).tvBandasGrupo.DataController.GetItemFieldName(i);
      Delete(NombreCol,1,1);
      Id := StrToInt(NombreCol);
      Categoria := GetCategoria(Id,NombreCol);
//      gGridForm.tvMaster.DataController.ChangeFieldName(i,NombreCol);
      TfrmMovimientosPeriodo(gGridForm).tvBandasGrupo.Columns[i].Caption := NombreCol;
//      TfrmMovimientosPeriodo(gGridForm).tvBandasGrupo.Columns[i].DataBinding.Field.DataType := ftCurrency; // := 'Currency';
      TfrmMovimientosPeriodo(gGridForm).tvBandasGrupo.Columns[i].Position.BandIndex := Categoria;
      TfrmMovimientosPeriodo(gGridForm).tvBandasGrupo.Bands[Categoria].Visible := True;
    end;
  end;
end;

procedure TdmMovimientosPeriodorpt.AssignParam;
begin
  inherited;
//  adodsReporte.Parameters.ParamByName('IdPeriodo').Value := mdParamsIdPeriodo.Value;
end;

procedure TdmMovimientosPeriodorpt.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmMovimientosPeriodo.Create(Self);
  gGridForm.ReadOnlyGrid := True;
  gGridForm.DataSet := adostReporte;
//  TfrmMovimientosPeriodo(gGridForm).GeneraReporte := actReporte;
end;

procedure TdmMovimientosPeriodorpt.Execute;
var
  Resultado : integer;
begin
  inherited;
  gReportForm := TfrmRptMovimientos.Create(Self);
  mdParams.Open;
  mdParams.Insert;
  mdParamsIdPeriodo.Value := dmConfiguracion.IdPeridoActual;

  if Assigned(gReportForm) then
    gReportForm.DataSetParams := mdParams;
  TfrmRptMovimientos(gReportForm).DataSetPeriodo := adodsPeriodos;
  adodsPeriodos.Open;
  Resultado := gReportForm.ShowModal;
  if Resultado = 1 then
  begin
    adostReporte.Parameters.ParamByName('@IdPeriodo').Value := mdParamsIdPeriodo.Value;
    adostReporte.Parameters.ParamByName('@Columna').Value := 'Tipo';
    adostReporte.Open;
    AjustarCampos;
    TfrmMovimientosPeriodo(gGridForm).tvBandasGrupo.DataController.CreateAllItems();
    AjustarColumnasGrid;
  end;
end;

function TdmMovimientosPeriodorpt.GetCategoria(IdMovimientoTipo: Integer; var Descripcion: string): Integer;
begin
  adoqryMovimientoTipo.Close;
  adoqryMovimientoTipo.Parameters.ParamByName('IdMovimientoTipo').Value := IdMovimientoTipo;
  adoqryMovimientoTipo.Open;
  Descripcion := adoqryMovimientoTipo.FieldByName('Tipo').AsString;
  Result := adoqryMovimientoTipo.FieldByName('Categoria').AsInteger;
  adoqryMovimientoTipo.Close;
end;

procedure TdmMovimientosPeriodorpt.AjustarCampos;
var
  i : integer;
begin
  for i := 1 to adostReporte.FieldCount - 1 do
  begin
//    adostReporte.Fields[i].DataType.ftBCD.ftCurrency;
//    showmessage(adostReporte.Fields[i].DisplayName);
//    showmessage(inttostr(adostReporte.Fields[i].DataType));
//    adostReporte.Fields[i].FieldKind(4);
//    adostReporte.Fields[i].DataType.ftBCD.ftCurrency = true;
//    adostReporte.DataSetField.Fields[i].SetFieldType(self).Currency;
  end;
end;

end.
