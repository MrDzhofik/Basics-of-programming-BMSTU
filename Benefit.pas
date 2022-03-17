unit Benefit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TBenefitForm = class(TForm)
    BenefitMemo: TMemo;
    BenefitEdit: TEdit;
    BenefitLabel: TLabel;
    BenefitButton: TButton;
    ExitButton: TButton;
    procedure ExitButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BenefitButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BenefitForm: TBenefitForm;

implementation
uses General;
{$R *.dfm}

procedure TBenefitForm.BenefitButtonClick(Sender: TObject);
var good, ans, curr: string;
    temp: Product;
    price: integer;
    flag: boolean;
begin
  BenefitMemo.Clear;
  reset(fil);
  flag := False;
  ans := '������ ������ ��� � �������';
  curr := BenefitEdit.Text;
  BenefitEdit.Clear;
  price := 1000;
  while not EOF(fil) do
    begin
      read(fil, temp);
      if ((temp.name = curr) and (temp.price < price)) then
        begin
          price := temp.price;
          ans := temp.provider;
          flag := True;
        end;
    end;
  if flag then
    BenefitMemo.Lines.Add('�������� ����� ����� ���� ����� �:');
  BenefitMemo.Lines.Add(ans);
  if flag then
    begin
      BenefitMemo.Lines.Add('����:');
      BenefitMemo.Lines.Add(IntToStr(price));
    end;
  CloseFile(fil);
end;

procedure TBenefitForm.ExitButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TBenefitForm.FormCreate(Sender: TObject);
begin
  BenefitMemo.Clear;
end;

end.
