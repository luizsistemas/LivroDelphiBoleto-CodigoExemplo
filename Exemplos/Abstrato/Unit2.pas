unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TPais = class abstract
  public
    function Idioma: string; virtual; abstract;
  end;

  TEua = class(TPais)
  public
    function Idioma: string; override;
  end;

  TBrasil = class(TPais)
  public
    function Idioma: string; override;
  end;

  TForm2 = class(TForm)
    btnExecutar: TButton;
    Memo: TMemo;
    Button1: TButton;
    procedure btnExecutarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

{ TBrasileiro }

function TBrasil.Idioma: string;
begin
  Result := 'Português';
end;

{ TAmericano }

function TEua.Idioma: string;
begin
  Result := 'Inglês';
end;

procedure TForm2.btnExecutarClick(Sender: TObject);
var
  Brasil: TBrasil;
  Eua: TEua;
begin
  Brasil := TBrasil.Create;
  Eua := TEua.Create;
  try
    Memo.Clear;
    Memo.Lines.Add('Idioma do Brasil: ' + Brasil.Idioma);
    Memo.Lines.Add('Idioma dos Estados Unidos: ' + Eua.Idioma);
  finally
    Brasil.Free;
    Eua.Free;
  end;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  Pais: TPais;
begin
  Pais := TPais.Create;
  try
    Memo.Clear;
    Memo.Lines.Add('Idioma de País(???): ' + Pais.Idioma);
  finally
    Pais.Free;
  end;
end;

end.
