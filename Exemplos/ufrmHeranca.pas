unit ufrmHeranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmHeranca = class(TForm)
    btnSoldado: TButton;
    Memo: TMemo;
    btnMedico: TButton;
    procedure btnSoldadoClick(Sender: TObject);
    procedure btnMedicoClick(Sender: TObject);
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
  try
    Soldado.Nome := 'André';  // Nome é uma propriedade da classe ancestral
    Soldado.Idade := 18;  // Idade também é da classe ancestral
    Soldado.Patente := 'soldado';

    Memo.Clear;
    Memo.Lines.Add('Nome: ' + Soldado.Nome);
    Memo.Lines.Add('Idade: ' + Soldado.Idade.ToString);
    Memo.Lines.Add('Patente: ' + Soldado.Patente);
  finally
    Soldado.Free;
  end;
end;

procedure TfrmHeranca.btnMedicoClick(Sender: TObject);
var
  Medico: TMedico;
begin
  Medico := TMedico.Create;  // instanciando o objeto
  try
    Medico.Nome := 'Fábio';  // Nome é uma propriedade da classe ancestral
    Medico.Idade := 44;  // Idade também é da classe ancestral
    Medico.Crm := '9999999';

    Memo.Clear;
    Memo.Lines.Add('Nome: ' + Medico.Nome);
    Memo.Lines.Add('Idade: ' + Medico.Idade.ToString);
    Memo.Lines.Add('CRM: ' + Medico.Crm);
  finally
    Medico.Free;
  end;
end;

end.
