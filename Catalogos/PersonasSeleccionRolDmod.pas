unit PersonasSeleccionRolDmod;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, System.UITypes;

type
  TdmPersonasSeleccionRol = class(T_dmStandar)
    adodsMasterIdPersonaRol: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdRol: TIntegerField;
    adodsMasterIdPersonaRelacionada: TIntegerField;
    adodsMasterPersona: TStringField;
    adodsMasterRol: TStringField;
    adodsMasterPersonaRelacionada: TStringField;
    adodsMasterEstatus: TStringField;
    adodsMasterClase: TStringField;
    adodsMasterCalcular: TBooleanField;
    adodsMasterPorcentajeCalculo: TFMTBCDField;
    actDispersion: TAction;
    adopUpdIntercambiarRol: TADOStoredProc;
    procedure DataModuleCreate(Sender: TObject);
    procedure actDispersionExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasSeleccionRolForm, PersonaSeleccionarRolForm, _Utils;

{$R *.dfm}

procedure TdmPersonasSeleccionRol.actDispersionExecute(Sender: TObject);
var
  frmPersonaSeleccionarRol: TfrmPersonaSeleccionarRol;
begin
  inherited;
  frmPersonaSeleccionarRol := TfrmPersonaSeleccionarRol.Create(Self);
  try
    frmPersonaSeleccionarRol.Execute;
    ScreenCursorProc(crSQLWait);
    try
      adopUpdIntercambiarRol.Parameters.ParamByName('@IdRol').Value:= frmPersonaSeleccionarRol.IdRol;
      adopUpdIntercambiarRol.Parameters.ParamByName('@IdPersonaRelacionada').Value:= frmPersonaSeleccionarRol.IdPersona;
      adopUpdIntercambiarRol.ExecProc;
      RefreshADODS(adodsMaster, adodsMasterIdPersonaRol);
    finally
      ScreenCursorProc(crDefault);
    end;
  finally
    frmPersonaSeleccionarRol.Free;
  end;
end;

procedure TdmPersonasSeleccionRol.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmPersonasSeleccionRol.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gGridForm.ReadOnlyGrid := True;
  TfrmPersonasSeleccionRol(gGridForm).actDispercion := actDispersion;
end;

end.
