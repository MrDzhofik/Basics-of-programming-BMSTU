unit Sum;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TSumForm = class(TForm)
    SumMemo: TMemo;
    ExitButton: TButton;
    SumEdit: TEdit;
    SumButton: TButton;
    SumLabel: TLabel;
    procedure ExitButtonClick(Sender: TObject);
    procedure SumButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SumForm: TSumForm;

implementation
uses General;
{$R *.dfm}

var txt:TextFile;

procedure TSumForm.ExitButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TSumForm.FormActivate(Sender: TObject);
begin
   SumMemo.Clear;
   SumMemo.ReadOnly := True;
   AssignFile(txt, 'Sum.txt');
end;

procedure TSumForm.SumButtonClick(Sender: TObject);
var i:integer;
    mas, sum: real;
    temp: Product;
begin
  rewrite(txt);
  SumMemo.Lines.Add('На заданную сумму можно приобрести:');
  sum := StrToInt(SumEdit.Text);
  reset(fil);
  SumEdit.Clear;
  while not EOF(fil) do
    begin
      read(fil, temp);
      mas := sum / temp.price;
      writeln(txt, temp.name, ' ', temp.provider, ' -', mas:6:2, 'кг');
    end;
    CloseFile(txt);
    SumMemo.Lines.LoadFromFile('Sum.txt');
end;

end.
