program Colorir_;

uses
  Forms,
  Colorir in 'Colorir.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
