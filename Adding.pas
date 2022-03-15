unit Adding;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, General;

type
  TAddForm = class(TForm)
    NameLabel: TLabel;
    SupplierLabel: TLabel;
    QuantityLabel: TLabel;
    PriceLabel: TLabel;
    NameEdit: TEdit;
    SupplierEdit: TEdit;
    QuantityEdit: TEdit;
    PriceEdit: TEdit;
    AddButton: TButton;
    ExitButton: TButton;
    procedure ExitButtonClick(Sender: TObject);
    procedure AddButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  AddForm: TAddForm;

implementation

{$R *.dfm}

procedure TAddForm.AddButtonClick(Sender: TObject);
begin
  rec.name := NameEdit.text;
  rec.provider := SupplierEdit.text;
  rec.quantity := StrToInt(QuantityEdit.text);
  rec.price := StrToInt(PriceEdit.text);
  NameEdit.clear;
  SupplierEdit.clear;
  QuantityEdit.clear;
  PriceEdit.clear;
  write(fil, rec);
  NameEdit.setfocus;
  Application.MessageBox('Продукт успешно добавлен', 'Симулятор рынка',mb_Ok);

end;

procedure TAddForm.ExitButtonClick(Sender: TObject);
begin
    Close;
end;

end.
