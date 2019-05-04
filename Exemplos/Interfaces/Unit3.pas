unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    btnExecutar: TButton;
    Memo: TMemo;
    procedure btnExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Carros;

procedure TForm3.btnExecutarClick(Sender: TObject);
var
  Fusca: ICarro;
  Ferrari: ICarro;
  I: Integer;
begin
  Fusca := TFusca.Create;
  Ferrari := TFerrari.Create;
  for I := 0 to 6 do
  begin
    Fusca.Acelerar;
    Ferrari.Acelerar;
  end;
  Memo.Clear;
  Memo.Lines.Add('Velocidade do Fusca: ' + Fusca.GetVelocidade.ToString);
  Memo.Lines.Add('Velocidade da Ferrari: ' + Ferrari.GetVelocidade.ToString);
end;

end.
