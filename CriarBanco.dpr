program CriarBanco;

uses
  Vcl.Forms,
  criar_banco in 'criar_banco.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
