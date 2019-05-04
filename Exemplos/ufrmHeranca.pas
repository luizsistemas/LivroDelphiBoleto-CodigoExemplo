unit ufrmHeranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmHeranca = class(TForm)
    btnSoldado: TButton;
    Memo: TMemo;
    procedure btnSoldadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHeranca: TfrmHeranca;

implementation

uses
  Heranca;

{$R *.dfm}

procedure TfrmHeranca.btnSoldadoClick(Sender: TObject);
var
  Soldado: TSoldado;
begin
  Soldado := TSoldado.Create;  // instanciando o objeto
  Soldado.Nome := 'André';  // Nome é uma propriedade da classe ancestral
  Soldado.Idade := 18;  // Idade também é da classe ancestral
  Soldado.Patente := 'soldado';

  Memo.Clear;
  Memo.Lines.Add('Nome: ' + Soldado.Nome);
  Memo.Lines.Add('Idade: ' + Soldado.Idade.ToString);
  Memo.Lines.Add('Patente: ' + Soldado.Patente);
end;

end.
