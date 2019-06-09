unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TSocio = class  // nome da classe
  private
    FRg: string;           	// � uma conven��o utilizar �F� no in�cio
    FNascimento: string;	// de cada nome para definir os Fields.
    FCpf: string;			// Os fields tem rela��o direta com
    FNome: string;		// encapsulamento - veremos mais a frente
    FEndereco: string;
    FTelefone: string;
  public
    constructor Create(ANome: string);
    procedure Cadastrar;
    procedure ConfirmarCadastro;
    procedure ValidarSocio;
    procedure Alterar;
    property Nome: string read FNome write FNome;
    property Cpf: string read FCpf write FCpf;
    property Rg: string read FRg write FRg;
    property Nascimento: string read FNascimento write FNascimento;
    property Telefone: string read FTelefone write FTelefone;
    property Endereco: string read FEndereco write FEndereco;
  end;

  TListaFuncionarios = class
  private
    FLista: TStringList;
  public
    constructor Create;
    destructor Destroy; override;
    function GetLista: string;
  end;

  TfrmMain = class(TForm)
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
  frmMain: TfrmMain;

implementation

{$R *.dfm}

{ TSocio }

procedure TSocio.Alterar;
begin
  //altera s�cio
end;

procedure TSocio.Cadastrar;
begin
  //cadastra s�cio
end;

procedure TSocio.ConfirmarCadastro;
begin
  //confirma cadastro
end;

constructor TSocio.Create(ANome: string);
begin
  inherited Create;
  FNome := ANome;
end;

procedure TSocio.ValidarSocio;
begin
  //valida s�cio
end;

procedure TfrmMain.btnExecutarClick(Sender: TObject);
var
  Socio: TSocio;
begin
  Socio := TSocio.Create('John Byrne');
  Socio.Cpf := '0000000000000';
  Socio.Telefone := '99 999 9999 9';
  Memo.Clear;
  Memo.Lines.Add('Nome: ' + Socio.Nome);
  Socio.Free;
end;

{ TListaFuncionarios }

constructor TListaFuncionarios.Create;
begin
  inherited Create;
  FLista := TStringList.Create;
  FLista.Add('Maria');
  FLista.Add('K�cia');
  FLista.Add('Lucas');
end;

destructor TListaFuncionarios.Destroy;
begin
  FLista.Free;
  inherited;
end;

function TListaFuncionarios.GetLista: string;
begin
  Result := FLista.Text;
end;

procedure TfrmMain.Button1Click(Sender: TObject);
var
  Funcionarios: TListaFuncionarios;
begin
  Funcionarios := TListaFuncionarios.Create;
  try
    Memo.Clear;
    Memo.Lines.Add(Funcionarios.GetLista);
  finally
    Funcionarios.Free;
  end;
end;

end.

