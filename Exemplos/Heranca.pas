unit Heranca;

interface

type
  TPessoa = class  //classe ancestral, ou classe pai
  private
    FNome: string;
    FIdade: Integer;
  public
    property Nome: string read FNome write FNome;
    property Idade: Integer read FIdade write FIdade;
  end;

  TSoldado = class(TPessoa)  //classe filha
  private
    FPatente: string;
  public
    property Patente: string read FPatente write FPatente;
  end;

  TMedico = class(TPessoa)
  private
    FCrm: string;
  public
    property Crm: string read FCrm write FCrm;
  end;

implementation

end.

