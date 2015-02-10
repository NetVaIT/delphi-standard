(******************************************************************************
 Proyecto Delphi Standard

 Copyright (C) 2008-2015 - Jesus Huante Caballero

 ******************************************************************************)
unit _StandarDMod;

interface

uses
  SysUtils, Classes, Forms, DB, ADODB, Controls, Dialogs, _StandarGridForm;

type
  T_dmStandar = class(TDataModule)
    adodsMaster: TADODataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  protected
    gForm: T_frmStandarGrid;
    gFormDeatil: T_frmStandarGrid;
  public
    { Public declarations }
    procedure ShowModule(pConteiner: TWinControl; pCation: TCaption);
  end;

implementation

uses _ConectionDmod;

{$R *.dfm}

procedure T_dmStandar.DataModuleCreate(Sender: TObject);
begin
  if adodsMaster.CommandText <> EmptyStr then adodsMaster.Open;
end;

procedure T_dmStandar.DataModuleDestroy(Sender: TObject);
begin
  if adodsMaster.CommandText <> EmptyStr then adodsMaster.Close;
end;

procedure T_dmStandar.ShowModule(pConteiner: TWinControl; pCation: TCaption);
begin
  if Assigned(gFormDeatil) then
  begin
    gForm.pnlDetail.Visible := True;
    gForm.Splitter.Visible  := True;
    gFormDeatil.Parent      := gForm.pnlDetail;
    gFormDeatil.Align       := alClient;
    gFormDeatil.Show;
  end;
  if Assigned(gForm) then
  begin
    gForm.Parent  := pConteiner;
    gForm.Align   := alClient;
    gForm.Caption := pCation;
    gForm.Show;
  end
  else
    ShowMessage('No esta asigando la variable gForm');
end;

end.
