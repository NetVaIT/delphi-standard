unit CFDIDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB;

type
  TdmCFDI = class(T_dmStandar)
    adodsMasterID: TLargeintField;
    adodsMasterFechaHora: TDateTimeField;
    adodsMasterfrfcemisor: TWideStringField;
    adodsMasterfrfcreceptor: TWideStringField;
    adodsMasterfTotal: TBCDField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CFDIForm;

{$R *.dfm}

procedure TdmCFDI.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gForm:= TfrmCFDI.Create(Self);
end;

end.
