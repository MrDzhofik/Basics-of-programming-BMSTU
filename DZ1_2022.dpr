program DZ1_2022;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form2},
  Greeting in 'Greeting.pas' {Choice},
  Part_2 in 'Part_2.pas' {Form3},
  Figure2 in 'Figure2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TChoice, Choice);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
