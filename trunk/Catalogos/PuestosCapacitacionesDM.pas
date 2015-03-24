unit PuestosCapacitacionesDM;

interface

uses
  System.SysUtils, System.Classes, _DualListDM, System.Actions, Vcl.ActnList,
  Data.Win.ADODB, Data.DB;

type
  TdmPuestosCapacitaciones = class(T_dmDualList)
    adoqAvailableIdBateriaCapacitacion: TAutoIncField;
    adoqAvailableDescripcion: TStringField;
    adoqAssignedIdBateriaCapacitacion: TAutoIncField;
    adoqAssignedDescripcion: TStringField;
    procedure actAddExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PuestosCapacitacionesForm;

{$R *.dfm}

procedure TdmPuestosCapacitaciones.actAddExecute(Sender: TObject);
begin
  adocAdd.Parameters.ParamByName('IdPuesto').Value:= adoqAvailable.Parameters.ParamByName('IdPuesto').Value;
  adocAdd.Parameters.ParamByName('IdBateriaCapacitacion').Value:= adoqAvailableIdBateriaCapacitacion.Value;
  adocAdd.Execute;
  adoqAvailable.Requery;
  adoqAssigned.Requery;
end;

procedure TdmPuestosCapacitaciones.actDeleteExecute(Sender: TObject);
begin
  adocDelete.Parameters.ParamByName('IdPuesto').Value:= adoqAssigned.Parameters.ParamByName('IdPuesto').Value;
  adocDelete.Parameters.ParamByName('IdBateriaCapacitacion').Value:= adoqAssignedIdBateriaCapacitacion.Value;
  adocDelete.Execute;
  adoqAvailable.Requery;
  adoqAssigned.Requery;
end;

procedure TdmPuestosCapacitaciones.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmPuestosCapacitaciones.Create(nil);
  gGridForm.DataSetAviable:= adoqAvailable;
  gGridForm.DataSetAssigned:= adoqAssigned;
  gGridForm.AddItem:= actAdd;
  gGridForm.DeleteItem:= actDelete;
end;

end.
