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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPeriodosCalculo: TfrmPeriodosCalculo;

implementation

{$R *.dfm}

procedure TfrmPeriodosCalculo.FormShow(Sender: TObject);
var
  dd, mm, aa : word;
begin
  DecodeDate(Now(), aa, mm, dd);
  edtAnio.Text := IntToStr(aa);
end;

end.
