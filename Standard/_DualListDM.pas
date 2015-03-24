(******************************************************************************
 Proyecto Delphi Standard

 Copyright (C) 2008-2015 - Jesus Huante Caballero

 ******************************************************************************)
unit _DualListDM;

interface

uses
  System.SysUtils, System.Classes, Data.Win.ADODB, Data.DB, Vcl.Controls,
  System.Actions, Vcl.ActnList, _DualListForm;

type
  T_dmDualList = class(TDataModule)
    adoqAvailable: TADOQuery;
    adoqAssigned: TADOQuery;
    adocAdd: TADOCommand;
    adocDelete: TADOCommand;
    ActionList: TActionList;
    actAdd: TAction;
    actDelete: TAction;
    procedure actAddUpdate(Sender: TObject);
    procedure actDeleteUpdate(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
  private
    { Private declarations }
    FMasterSource: TDataSource;
    procedure SetMasterSource(const Value: TDataSource);
  protected
    gGridForm: T_frmDualList;
  public
    { Public declarations }
    procedure ShowModule(pConteiner: TWinControl);
    property MasterSource: TDataSource read FMasterSource write SetMasterSource;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses _ConectionDmod;

{$R *.dfm}

procedure T_dmDualList.actAddExecute(Sender: TObject);
begin
//
end;

procedure T_dmDualList.actAddUpdate(Sender: TObject);
begin
  actAdd.Enabled := adoqAvailable.RecordCount <> 0;
end;

procedure T_dmDualList.actDeleteExecute(Sender: TObject);
begin
//
end;

procedure T_dmDualList.actDeleteUpdate(Sender: TObject);
begin
  actDelete.Enabled:= adoqAssigned.RecordCount <> 0;
end;

procedure T_dmDualList.DataModuleCreate(Sender: TObject);
begin
//
end;

procedure T_dmDualList.DataModuleDestroy(Sender: TObject);
begin
//
end;

procedure T_dmDualList.SetMasterSource(const Value: TDataSource);
begin
  FMasterSource := Value;
  adoqAvailable.DataSource:= Value;
  adoqAssigned.DataSource:= Value;
  if adoqAvailable.SQL.Text <> EmptyStr then adoqAvailable.Close;
  if adoqAssigned.SQL.Text <> EmptyStr then adoqAssigned.Close;
  if adoqAvailable.SQL.Text <> EmptyStr then adoqAvailable.Open;
  if adoqAssigned.SQL.Text <> EmptyStr then adoqAssigned.Open;
end;

procedure T_dmDualList.ShowModule(pConteiner: TWinControl);
begin
  if Assigned(gGridForm) then
  begin
    gGridForm.Parent:= pConteiner;
    gGridForm.Align:= alClient;
    gGridForm.Show;
  end;
end;


end.
