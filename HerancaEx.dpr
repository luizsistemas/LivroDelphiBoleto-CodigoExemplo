program HerancaEx;

uses
  Vcl.Forms,
  Heranca in 'Exemplos\Heranca.pas',
  ufrmHeranca in 'Exemplos\ufrmHeranca.pas' {frmHeranca};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmHeranca, frmHeranca);
  Application.Run;
end.
