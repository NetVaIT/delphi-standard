unit PrestamosPagoDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, Vcl.Dialogs, System.UITypes;

resourcestring
  StrSelectInfo = 'Existen estos prestamos en el periodo ¿Deseas generar sus movimientos?';

type
  TdmPrestamosPago = class(T_dmStandar)
    adodsMasterIdPrestamoPago: TAutoIncField;
    adodsMasterIdPrestamo: TIntegerField;
    adodsMasterIdMovimiento: TIntegerField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdPeriodo: TIntegerField;
    adodsMasterIdMovimientoTipo: TIntegerField;
    adodsMasterImporteCalculo: TFMTBCDField;
    adodsMasterPorcentaje: TFMTBCDField;
    adodsMasterImportePeriodo: TFMTBCDField;
    adodsMasterImportePago: TFMTBCDField;
    adodsMovimientoTipo: TADODataSet;
    adodsMasterMovimientoTipo: TStringField;
    adopSetPrestamosPago: TADOStoredProc;
    adopGenMovimientosPrestamos: TADOStoredProc;
    adodsPersonas: TADODataSet;
    adodsMasterPersona: TStringField;
    adodsPeriodo: TADODataSet;
    adodsMasterPeriodo: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterImportePeriodoChange(Sender: TField);
  private
    FIdPeriodoActual: Integer;
    { Private declarations }
    function SetPrestamosPago: Boolean;
    procedure SetMovimientos;
  public
    { Public declarations }
    property IdPeriodoActual: Integer read FIdPeriodoActual;
    procedure Execute;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PrestamosPagoForm, VerificarForm, ConfiguracionDM;

{$R *.dfm}

procedure TdmPrestamosPago.adodsMasterImportePeriodoChange(Sender: TField);
begin
  inherited;
  adodsMasterPorcentaje.Value:= (adodsMasterImportePeriodo.Value*100)/adodsMasterImporteCalculo.Value;
end;

procedure TdmPrestamosPago.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FIdPeriodoActual := dmConfiguracion.IdPeridoActual;
  adodsMaster.Parameters.ParamByName('IdPeriodo').Value:= IdPeriodoActual;
  gGridForm:= TfrmPrestamosPago.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

procedure TdmPrestamosPago.Execute;
var
  frmVerificar: TfrmVerificar;
begin
  if SetPrestamosPago then
  begin
    frmVerificar := TfrmVerificar.Create(Self);
    try
      frmVerificar.Info:= StrSelectInfo;
      ShowModule(frmVerificar.pnlMaster,'');
      if frmVerificar.ShowModal = mrOk then
        SetMovimientos;
    finally
      frmVerificar.Free;
    end;
  end;
end;

function TdmPrestamosPago.SetPrestamosPago: Boolean;
begin
  Result:= False;
  if IdPeriodoActual <> 0 then
  begin
    adopSetPrestamosPago.Parameters.ParamByName('@IdPeriodo').Value:= IdPeriodoActual;
    adopSetPrestamosPago.ExecProc;
    Result:= True;
  end;
end;

procedure TdmPrestamosPago.SetMovimientos;
begin
  ScreenCursorProc(crSQLWait);
  try
    adopGenMovimientosPrestamos.Parameters.ParamByName('@IdPeriodo').Value:= IdPeriodoActual;
    adopGenMovimientosPrestamos.ExecProc;
  finally
    ScreenCursorProc(crDefault);
  end;
  MessageDlg('Proceso de generación de prestamos terminado.', mtInformation, [mbOk], 0);
end;


end.
