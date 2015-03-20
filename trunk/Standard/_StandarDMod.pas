(******************************************************************************
 Proyecto Delphi Standard

 Copyright (C) 2008-2015 - Jesus Huante Caballero

 ******************************************************************************)
unit _StandarDMod;

interface

uses
  SysUtils, Classes, Forms, DB, ADODB, Controls, Dialogs, _GridForm;

type
  T_dmStandar = class(TDataModule)
    adodsMaster: TADODataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    FMasterFields: string;
    FMasterSource: TDataSource;
    procedure SetMasterFields(const Value: string);
    procedure SetMasterSource(const Value: TDataSource);
  protected
    gGridForm: T_frmGrid;
    gFormDeatil1: T_frmGrid;
    gFormDeatil2: T_frmGrid;
    gFormDeatil3: T_frmGrid;
  public
    { Public declarations }
    procedure ShowModule(pConteiner: TWinControl; pCation: TCaption);
    property MasterSource: TDataSource read FMasterSource write SetMasterSource;
    property MasterFields: string read FMasterFields write SetMasterFields;
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

procedure T_dmStandar.SetMasterFields(const Value: string);
begin
  FMasterFields := Value;
  adodsMaster.MasterFields:= Value;
end;

procedure T_dmStandar.SetMasterSource(const Value: TDataSource);
begin
  FMasterSource := Value;
  adodsMaster.DataSource:= Value;
end;

procedure T_dmStandar.ShowModule(pConteiner: TWinControl; pCation: TCaption);
begin
  if Assigned(gGridForm) then
  begin
    gGridForm.Parent:= pConteiner;
    gGridForm.Align:= alClient;
//    gGridForm.Caption:= pCation;
    gGridForm.Show;
  end;
  if Assigned(gFormDeatil1) then
  begin
    gGridForm.pnlDetail1.Visible:= True;
    gGridForm.splDetail1.Visible:= True;
    gFormDeatil1.Parent:= gGridForm.pnlDetail1;
    gFormDeatil1.Align:= alClient;
    gFormDeatil1.Show;
  end;
  if Assigned(gFormDeatil2) then
  begin
    gGridForm.pnlDetail2.Visible:= True;
    gGridForm.splDetail2.Visible:= True;
    gFormDeatil2.Parent:= gGridForm.pnlDetail2;
    gFormDeatil2.Align:= alClient;
    gFormDeatil2.Show;
  end;
  if Assigned(gFormDeatil3) then
  begin
    gGridForm.pnlDetail3.Visible:= True;
    gGridForm.splDetail3.Visible:= True;
    gFormDeatil3.Parent:= gGridForm.pnlDetail3;
    gFormDeatil3.Align:= alClient;
    gFormDeatil3.Show;
  end;
end;

end.
