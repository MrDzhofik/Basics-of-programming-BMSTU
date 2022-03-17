unit Deleting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TDeleteForm = class(TForm)
    NameLabel: TLabel;
    SupplierButton: TLabel;
    NameEdit: TEdit;
    SupplierEdit: TEdit;
    DeleteButton: TButton;
    ExitButton: TButton;
    procedure ExitButtonClick(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeleteForm: TDeleteForm;

implementation
uses General;
{$R *.dfm}

procedure TDeleteForm.DeleteButtonClick(Sender: TObject);
var c : integer;
    name, provider : string[22];
    reserve: file of Product;
begin
    AssignFile(reserve, 'Rezerv.dat');
    rewrite(reserve);
    reset(fil);
    c := 1;
    name := NameEdit.text;
    provider := SupplierEdit.text;
    while not EOF(fil) do
      begin
        read(fil, rec);
        if ((name = rec.name) and (provider = rec.provider)) then
              c:=0
        else
          write(reserve, rec);
      end;
   if c<>0 then
      begin
        Application.MessageBox('Нет такого продукта', 'Симулятор рынка',mb_Ok);
      end
   else if c = 0 then
     begin
       reset(reserve);
       rewrite(fil);
       while not EOF(reserve) do
         begin
           read(reserve, rec);
           write(fil, rec);
         end;
         Application.MessageBox('Продукт успешно удален', 'Симулятор рынка',mb_Ok);
     end;
     NameEdit.Clear;
     SupplierEdit.Clear;
end;

procedure TDeleteForm.ExitButtonClick(Sender: TObject);
begin
  Close();
  CloseFile(fil);
end;

end.
