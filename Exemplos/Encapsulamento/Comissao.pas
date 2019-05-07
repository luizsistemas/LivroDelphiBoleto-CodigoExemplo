unit Comissao;

interface

type
  TComissao = class
  private
    FPercentual: Currency;
    FVenda: Currency;
  public
    constructor Create(Percentual, Venda: Currency);

    function CalcularComissao: Currency;
  end;

implementation

{ TComissao }

function TComissao.CalcularComissao: Currency;
begin
  Result := FVenda * FPercentual /100;
  if FVenda > 5000 then
    Result := Result * 1.05;
end;

constructor TComissao.Create(Percentual, Venda: Currency);
begin
  inherited Create;
  FPercentual := Percentual;
  FVenda := Venda;
end;

end.
