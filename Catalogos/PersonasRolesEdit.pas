unit PersonasRolesEdit;

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
  Vcl.DBCtrls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, PersonasDM;

type
  TfrmPersonaRolesEdit = class(T_frmEdit)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    tsKardex: TcxTabSheet;
    tsCuentas: TcxTabSheet;
    tsEsquemaPago: TcxTabSheet;
    tsContactoEmergencia: TcxTabSheet;
    procedure actPostExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FRol: TPRol;
    procedure SetRol(const Value: TPRol);
  public
    { Public declarations }
    property Rol: TPRol read FRol write SetRol;
  end;

implementation

{$R *.dfm}

procedure TfrmPersonaRolesEdit.actPostExecute(Sender: TObject);
begin
  DataSet.FieldByName('IdRolEsquemaPago').Value := 0;
  inherited;
end;

procedure TfrmPersonaRolesEdit.FormShow(Sender: TObject);
begin
  inherited;
  if DataSource.DataSet.State in [dsInsert] then
    cxDBLookupComboBox1.EditValue := Rol;
  case DataSource.DataSet.FieldByName('IdRol').AsInteger of
    3: begin
        tsCuentas.TabVisible := True;
        tsKardex.TabVisible             := False;
        tsEsquemaPago.TabVisible        := False;
        tsContactoEmergencia.TabVisible := False;
       end;
    4: begin
        tsCuentas.TabVisible := True;
        tsKardex.TabVisible             := False;
        tsEsquemaPago.TabVisible        := False;
        tsContactoEmergencia.TabVisible := False;
       end;
    5: begin
        tsKardex.TabVisible             := True;
        tsEsquemaPago.TabVisible        := True;
        tsContactoEmergencia.TabVisible := True;
        tsCuentas.TabVisible := False;
       end;
  end;
end;

procedure TfrmPersonaRolesEdit.SetRol(const Value: TPRol);
begin
  FRol := Value;
end;

end.
