program Laboratory10;

uses
  Vcl.Forms,
  Notebook in 'Notebook.pas' {Form1},
  Notebook_1 in 'Notebook_1.pas' {Form4},
  Notebook_2 in 'Notebook_2.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
