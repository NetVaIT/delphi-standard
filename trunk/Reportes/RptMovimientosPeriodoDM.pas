unit RptMovimientosPeriodoDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, Dialogs;

type
  TdmReporteCrossTab = class(T_dmStandar)
    adostReporte: TADOStoredProc;
    actReporte: TAction;
    adoqryMovimientoTipo: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure actReporteExecute(Sender: TObject);
  private
    { Private declarations }
    procedure AjustarColumnasGrid();
    function GetCategoria(IdMovimientoTipo: Integer; var Descripcion: string): Integer;
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses RptMovimientosPeriodoForm;

{$R *.dfm}

procedure TdmReporteCrossTab.actReporteExecute(Sender: TObject);
begin
  inherited;
  adostReporte.Parameters.ParamByName('@IdPeriodo').Value := 70;
  adostReporte.Parameters.ParamByName('@Columna').Value := 'Tipo';
  adostReporte.Open;
  TfrmMovimientosPeriodo(gGridForm).tvBandasGrupo.DataController.CreateAllItems();
  AjustarColumnasGrid;
end;

procedure TdmReporteCrossTab.AjustarColumnasGrid;
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
      TfrmMovimientosPeriodo(gGridForm).tvBandasGrupo.Columns[i].DataBinding.ValueType := 'Currency';
      TfrmMovimientosPeriodo(gGridForm).tvBandasGrupo.Columns[i].Position.BandIndex := Categoria;
      TfrmMovimientosPeriodo(gGridForm).tvBandasGrupo.Columns[i].Visible := True;
    end;
  end;
end;

procedure TdmReporteCrossTab.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmMovimientosPeriodo.Create(Self);
  gGridForm.ReadOnlyGrid := True;
  gGridForm.DataSet := adostReporte;
  TfrmMovimientosPeriodo(gGridForm).GeneraReporte := actReporte;
end;

function TdmReporteCrossTab.GetCategoria(IdMovimientoTipo: Integer;
  var Descripcion: string): Integer;
begin
  adoqryMovimientoTipo.Close;
  adoqryMovimientoTipo.Parameters.ParamByName('IdMovimientoTipo').Value := IdMovimientoTipo;
  adoqryMovimientoTipo.Open;
  Descripcion := adoqryMovimientoTipo.FieldByName('Tipo').AsString;
  Result := adoqryMovimientoTipo.FieldByName('Categoria').AsInteger;
  adoqryMovimientoTipo.Close;
end;

end.
