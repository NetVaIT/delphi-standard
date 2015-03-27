unit EsquemaPagosMovimientosTiposDM;

interface

uses
  System.SysUtils, System.Classes, _DualListDM, System.Actions, Vcl.ActnList,
  Data.Win.ADODB, Data.DB;

type
  TdmEsquemaPagosMovimientosTipos = class(T_dmDualList)
    adoqAssignedIdMovimientoTipo: TAutoIncField;
    adoqAssignedDescripcion: TStringField;
    adoqAvailableIdMovimientoTipo: TAutoIncField;
    adoqAvailableIdentificador: TStringField;
    adoqAvailableDescripcion: TStringField;
    adoqAvailableCategoria: TStringField;
    adoqAvailableEfecto: TStringField;
    adoqAvailableValorDefault: TFMTBCDField;
    adoqAvailableProduceCXC: TBooleanField;
    adoqAvailableProduceCXP: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses EsquemaPagosMovimientosTiposForm;

{$R *.dfm}

procedure TdmEsquemaPagosMovimientosTipos.DataModuleCreate(Sender: TObject);
begin
  IdFieldName1:= 'IdEsquemaPago';
  IdFieldName2:= 'IdMovimientoTipo';
  gGridForm:= TfrmEsquemaPagosMovimientosTipos.Create(Self);
  inherited;
end;

end.
