unit Other;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TOtherForm = class(TForm)
    MaxButton: TButton;
    SumButton: TButton;
    BenefitButton: TButton;
    HistogrammButton: TButton;
    ExitButton: TButton;
    SumLabel: TLabel;
    BenefitLabel: TLabel;
    HistogrammLabel: TLabel;
    MaxLabel: TLabel;
    procedure ExitButtonClick(Sender: TObject);
    procedure MaxButtonClick(Sender: TObject);
    procedure SumButtonClick(Sender: TObject);
    procedure BenefitButtonClick(Sender: TObject);
    procedure HistogrammButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OtherForm: TOtherForm;

implementation
uses Max, Sum, Benefit, Histogramm;

{$R *.dfm}

procedure TOtherForm.BenefitButtonClick(Sender: TObject);
begin
  BenefitForm.Show();
end;

procedure TOtherForm.ExitButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TOtherForm.HistogrammButtonClick(Sender: TObject);
begin
  HistogrammForm.Show();
end;

procedure TOtherForm.MaxButtonClick(Sender: TObject);
begin
  MaxForm.Show();
end;

procedure TOtherForm.SumButtonClick(Sender: TObject);
begin
  SumForm.Show();
end;

end.
