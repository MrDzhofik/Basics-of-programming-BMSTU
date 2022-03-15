unit Greeting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TChoice = class(TForm)
    Label1: TLabel;
    Part_1_Button: TButton;
    Part_2_Button: TButton;
    CloseButton: TButton;
    procedure Part_1_ButtonClick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure Part_2_ButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Choice: TChoice;

implementation
uses Main, Part_2;
{$R *.dfm}

procedure TChoice.Part_1_ButtonClick(Sender: TObject);
begin
  Form2.Show;
end;

procedure TChoice.Part_2_ButtonClick(Sender: TObject);
begin
  Form3.Show;
end;

procedure TChoice.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

end.
