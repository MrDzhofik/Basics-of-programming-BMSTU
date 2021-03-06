program Practicum1;

uses
  Vcl.Forms,
  General in 'General.pas' {MainForm},
  Adding in 'Adding.pas' {AddForm},
  Deleting in 'Deleting.pas' {DeleteForm},
  Other in 'Other.pas' {OtherForm},
  Max in 'Max.pas' {MaxForm},
  Sum in 'Sum.pas' {SumForm},
  Benefit in 'Benefit.pas' {BenefitForm},
  Histogramm in 'Histogramm.pas' {HistogrammForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TAddForm, AddForm);
  Application.CreateForm(TDeleteForm, DeleteForm);
  Application.CreateForm(TOtherForm, OtherForm);
  Application.CreateForm(TMaxForm, MaxForm);
  Application.CreateForm(TSumForm, SumForm);
  Application.CreateForm(TBenefitForm, BenefitForm);
  Application.CreateForm(THistogrammForm, HistogrammForm);
  Application.Run;
end.
