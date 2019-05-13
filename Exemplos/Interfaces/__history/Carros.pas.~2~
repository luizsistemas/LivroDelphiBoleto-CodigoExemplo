unit Carros;

interface

type
  ICarro  = Interface
  ['{1AE8A8D6-B619-4782-8DFD-FA53518CA3D4}']
    procedure Acelerar;
    function GetVelocidade: Integer;
  End;

  TFusca = class(TInterfacedObject, ICarro)
  private
    FVelocidade: Integer;
  public
    procedure Acelerar;
    function GetVelocidade: Integer;
  end;

  TFerrari = class(TInterfacedObject, ICarro)
  private
    FVelocidade: Integer;
  public
    procedure Acelerar;
    function GetVelocidade: Integer;
  end;

implementation

{ TFerrari }

function TFerrari.GetVelocidade: Integer;
begin
  Result := FVelocidade;
end;

procedure TFerrari.Acelerar;
begin
  if FVelocidade < 250 then
    FVelocidade := FVelocidade + 40;
end;

{ TFusca }

function TFusca.GetVelocidade: Integer;
begin
  Result := FVelocidade;
end;

procedure TFusca.Acelerar;
begin
  if FVelocidade < 100 then
    FVelocidade := FVelocidade + 5;
end;

end.
