unit C_unit;
{$R *.dfm}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
var Sum:real;
    operation:char='@';

procedure operate;
  var s:string;
    code:integer;
    n:real;

  begin
    s:=Form2.Edit1.text;
    Form2.Edit1.clear;
    val(s,n,code);
      case operation of
       '@': sum:=n;
       '+': sum:=sum+n;
       '-': sum:=sum-n;
       '*': sum:=sum*n;
       '/': sum:=sum/n;
      end;
  end;

procedure TForm2.Button1Click(Sender: TObject);
  begin
    Edit1.Clear;
    operation:='@';
    Edit1.setfocus;
  end;
procedure TForm2.Button2Click(Sender: TObject);
  var s:string;
    begin
      operate;
      str(sum:6:3,s);
      Edit1.text:=s;
      operation:='@';
      Edit1.setfocus;
  end;


procedure TForm2.Button3Click(Sender: TObject);
  begin
    operate;
    operation:='+';
    Edit1.setfocus;
  end;


procedure TForm2.Button4Click(Sender: TObject);
  begin
    operate;
    operation:='-';
    Edit1.setfocus;
  end;


procedure TForm2.Button5Click(Sender: TObject);
  begin
    operate;
    operation:='*';
    Edit1.setfocus;
  end;

procedure TForm2.Button6Click(Sender: TObject);
  begin
    operate;
    operation:='/';
    Edit1.setfocus;
  end;

procedure TForm2.Button7Click(Sender: TObject);
  begin
    Close;
  end;


end.
