unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    btnExecutar: TButton;
    Memo: TMemo;
    edPercentual: TEdit;
    edVenda: TEdit;
    Percentual: TLabel;
    Label1: TLabel;
    procedure btnExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  Comissao;

{$R *.dfm}

procedure TForm4.btnExecutarClick(Sender: TObject);
var
  ComissaoVenda: TComissao;
begin
  ComissaoVenda := TComissao.Create(StrToFloat(edPercentual.Text), StrToFloat(edVenda.Text));
  try
    Memo.Lines.Add('Comissão: ' + FormatFloat('R$ ,0.00', ComissaoVenda.CalcularComissao));
  finally
    ComissaoVenda.Free;
  end;
end;

end.
