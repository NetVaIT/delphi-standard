unit InstruccionesEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _EditForm, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, cxPC,
  cxContainer, cxEdit, cxSpinEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.DBCtrls, cxTextEdit, Vcl.Buttons, cxLabel, cxDBLabel,
  cxCheckBox, cxGroupBox, cxRadioGroup, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfrmInstruccionesEdit = class(T_frmEdit)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label8: TLabel;
    cxDBLabel1: TcxDBLabel;
    btnUpdateFile: TSpeedButton;
    cbRepetir: TcxDBCheckBox;
    Label4: TLabel;
    Label5: TLabel;
    deRepetirInicio: TcxDBDateEdit;
    rgFinaliza: TcxDBRadioGroup;
    edtRepetirHasta: TcxDBSpinEdit;
    edtRepetirFin: TcxDBDateEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    lcbPeriodoTipo: TcxDBLookupComboBox;
    procedure rgFinalizaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbRepetirClick(Sender: TObject);
    procedure lcbPeriodoTipoClick(Sender: TObject);
  private
    { Private declarations }
    FUpdateFile: TBasicAction;
    procedure SetUpdateFile(const Value: TBasicAction);
    procedure SetFinaliza;
    procedure SetRepetir;
    procedure SetPeriodoTipo;
  public
    { Public declarations }
    property UpdateFile: TBasicAction read FUpdateFile write SetUpdateFile;
  end;

implementation

{$R *.dfm}

uses InstruccionesDM;

{ TfrmInstruccionesEdit }

procedure TfrmInstruccionesEdit.cbRepetirClick(Sender: TObject);
begin
  inherited;
  if cbRepetir.EditValue = True then
    lcbPeriodoTipo.EditValue:= 2
  else
    lcbPeriodoTipo.Clear;
  rgFinaliza.EditValue:= 0;
  edtRepetirHasta.Clear;
  edtRepetirFin.Clear;
  SetRepetir;
end;

procedure TfrmInstruccionesEdit.rgFinalizaClick(Sender: TObject);
begin
  inherited;
  edtRepetirHasta.Clear;
  edtRepetirFin.Clear;
  SetFinaliza;
end;

procedure TfrmInstruccionesEdit.FormShow(Sender: TObject);
begin
  inherited;
  SetRepetir;
  SetPeriodoTipo;
  SetFinaliza;
end;

procedure TfrmInstruccionesEdit.lcbPeriodoTipoClick(Sender: TObject);
begin
  inherited;
  SetPeriodoTipo;
end;

procedure TfrmInstruccionesEdit.SetFinaliza;
begin
  if VarIsNull(rgFinaliza.EditingValue) then exit;
  case rgFinaliza.EditingValue of
    0: begin
      edtRepetirHasta.Enabled:= False;
      edtRepetirFin.Enabled:= False;
    end;
    1: begin
      edtRepetirHasta.Enabled:= True;
      edtRepetirFin.Enabled:= False;
    end;
    2: begin
      edtRepetirHasta.Enabled:= False;
      edtRepetirFin.Enabled:= True;
    end;
  end;
end;

procedure TfrmInstruccionesEdit.SetPeriodoTipo;
begin
end;

procedure TfrmInstruccionesEdit.SetRepetir;
begin
  if cbRepetir.EditValue = True then
  begin
    lcbPeriodoTipo.Enabled:= True;
    rgFinaliza.Enabled:= True;
  end
  else
  begin
    lcbPeriodoTipo.Enabled:= False;
    rgFinaliza.Enabled:= False;
  end;
end;

procedure TfrmInstruccionesEdit.SetUpdateFile(const Value: TBasicAction);
begin
  FUpdateFile := Value;
  btnUpdateFile.Action:= Value;
end;

end.
