unit RptReporteCrossTabDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, frxClass, Dialogs;

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

uses RptReporteCrossTabForm;

{$R *.dfm}

procedure TdmReporteCrossTab.actReporteExecute(Sender: TObject);
begin
  inherited;
  adostReporte.Parameters.ParamByName('@IdPeriodo').Value := 70;
  adostReporte.Parameters.ParamByName('@Columna').Value := 'Tipo';
  adostReporte.Open;
  TfrmReporteCrossTab(gGridForm).tvBandasGrupo.DataController.CreateAllItems();
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
  for i := 0 to TfrmReporteCrossTab(gGridForm).tvBandasGrupo.ColumnCount - 1 do
  begin
//    ShowMessage(gGridForm.tvMaster.DataController.GetItemFieldName(i));
    if i > 0 then
    begin
      NombreCol := TfrmReporteCrossTab(gGridForm).tvBandasGrupo.DataController.GetItemFieldName(i);
      Delete(NombreCol,1,1);
      Id := StrToInt(NombreCol);
      Categoria := GetCategoria(Id,NombreCol);
//      gGridForm.tvMaster.DataController.ChangeFieldName(i,NombreCol);
      TfrmReporteCrossTab(gGridForm).tvBandasGrupo.Columns[i].Caption := NombreCol;
      TfrmReporteCrossTab(gGridForm).tvBandasGrupo.Columns[i].DataBinding.ValueType := 'Currency';
      TfrmReporteCrossTab(gGridForm).tvBandasGrupo.Columns[i].Position.BandIndex := Categoria;
    end;
  end;
end;

procedure TdmReporteCrossTab.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmReporteCrossTab.Create(Self);
  gGridForm.DataSet := adostReporte;
  TfrmReporteCrossTab(gGridForm).GeneraReporte := actReporte;
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
