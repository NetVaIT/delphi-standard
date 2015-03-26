unit RolesEsquemasPagosDM;

interface

uses
  System.SysUtils, System.Classes, _DualListDM, System.Actions, Vcl.ActnList,
  Data.Win.ADODB, Data.DB;

type
  TdmRolesEsquemasPagos = class(T_dmDualList)
    adoqAvailableIdEsquemaPago: TIntegerField;
    adoqAvailableDescripcion: TStringField;
    adoqAssignedIdEsquemaPago: TIntegerField;
    adoqAssignedDescripcion: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses RolesEsquemasPagosForm;

{$R *.dfm}

procedure TdmRolesEsquemasPagos.DataModuleCreate(Sender: TObject);
begin
  IdFieldName1:= 'IdRol';
  IdFieldName2:= 'IdEsquemaPago';
  gGridForm:= TfrmRolesEsquemasPagos.Create(Self);
  inherited;
end;

end.
