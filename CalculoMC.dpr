program CalculoMC;

uses
  Vcl.Forms,
  Cloud.Teste.Unitario in 'Cloud.Teste.Unitario.pas' {Form1},
  Cloud.Avaliacao in 'Cloud.Avaliacao.pas',
  Cloud.Avaliacao.Interfaces in 'Cloud.Avaliacao.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
