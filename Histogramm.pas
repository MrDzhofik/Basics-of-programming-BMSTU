unit Histogramm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Data.DB,
  Vcl.StdCtrls, VCLTee.TeEngine, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.DBChart, VCLTee.Series;

type
  THistogrammForm = class(TForm)
    HistogrammDBChart: TDBChart;
    ExitButton: TButton;
    HistogrammSeries: TBarSeries;
    HistogrammButton: TButton;
    procedure ExitButtonClick(Sender: TObject);
    procedure HistogrammButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HistogrammForm: THistogrammForm;

implementation
uses General;
{$R *.dfm}

const colors: array[0..7] of TColor = (ClRed, ClBlack, ClYellow, ClBLue, ClGreen, ClPurple, ClLime, ClAqua);


procedure THistogrammForm.ExitButtonClick(Sender: TObject);
begin
  Close;
end;

procedure THistogrammForm.HistogrammButtonClick(Sender: TObject);
Var temp: Product;
    index: integer;
begin
  randomize;
  HistogrammDBChart.ClearChart;
  HistogrammSeries := TBarSeries.Create(HistogrammDBChart);
  HistogrammDBChart.AddSeries(HistogrammSeries);
  AssignFile(fil, 'Market.dat');
  Reset(fil);
  while not EOF(fil) do
    begin
      read(fil, temp);
      index := random(8);
      HistogrammSeries.AddBar(temp.price, temp.name, colors[index]);
    end;
  CloseFile(fil);
end;

end.
