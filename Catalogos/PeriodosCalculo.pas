unit PeriodosCalculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, System.DateUtils;

type
  TfrmPeriodosCalculo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    cbxPeriodos: TComboBox;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    edtAnio: TEdit;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses PeriodosDM;

procedure TfrmPeriodosCalculo.Button1Click(Sender: TObject);
begin
  PeriodosDM.TdmPeriodos(Sender).AnioPeriodo := StrToInt(edtAnio.Text);
  ModalResult := mrOk;
end;

procedure TfrmPeriodosCalculo.Button2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmPeriodosCalculo.FormShow(Sender: TObject);
var
  dd, mm, aa : word;
begin
  DecodeDate(Now(), aa, mm, dd);
  edtAnio.Text := IntToStr(aa);
  cbxPeriodos.ItemIndex := 0;
end;

end.
