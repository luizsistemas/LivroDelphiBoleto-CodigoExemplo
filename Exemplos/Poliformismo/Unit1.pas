unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TAviao = class
  private
    FVelocidade: Integer;
  public
    function VelocidadeVoo: string; virtual;
    property Velocidade: Integer read FVelocidade write FVelocidade;
  end;

  TJato = class(TAviao)
  public
    function VelocidadeVoo: string; override;
  end;

  TForm1 = class(TForm)
    Memo: TMemo;
    btnSoldado: TButton;
    procedure btnSoldadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


{ TAviao }

function TAviao.VelocidadeVoo: string;
begin
  Velocidade := 400;
  Result := Format('Avião tem velocidade de %d Km/h', [Velocidade]);
end;

{ TJato }
function TJato.VelocidadeVoo: string;
begin
  Velocidade := 1224;
  Result := Format('Jato tem velocidade hipersônica de %d Km/h', [Velocidade]);
end;


procedure TForm1.btnSoldadoClick(Sender: TObject);
var
  Aviao: TAviao;
  Jato: TAviao;
begin
  Aviao := TAviao.Create;
  Jato := TJato.Create;
  try
    Memo.Lines.Clear;
    Memo.Lines.Add(Aviao.VelocidadeVoo);
    Memo.Lines.Add(Jato.VelocidadeVoo);
  finally
    Aviao.Free;
    Jato.Free;
  end;
end;

end.
