program Practicum1;

uses
  Vcl.Forms,
  General in 'General.pas' {MainForm},
  Adding in 'Adding.pas' {AddForm},
  Deleting in 'Deleting.pas' {DeleteForm},
  Other in 'Other.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TAddForm, AddForm);
  Application.CreateForm(TDeleteForm, DeleteForm);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
