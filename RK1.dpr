program RK1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var x, res: real;
    t: boolean;
    n, quantity: integer;

begin
  writeln('������� �: ');
  readln(x);
  res := x;
  for n := 1 to 50 do
  begin
    if sin(res) < 0 then
      quantity := quantity + 1;
    res := res * x;
  end;
  t := quantity > 3;  // quantity > 3 ���������� ���� True, ���� False
  writeln('���������� ���������� ��������� = ', t);
  readln;

end.