program Laboratory5_failed;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
var
  a: array [1..3] of char;
  i, j, k, m: integer;
  str: shortstring;
begin
  readln(m, k);
  writeln('Изначальная матрица');
  for i := 1 to m do
    begin
    for j := 1 to m do
      str:= str + '*';
    writeln(str);
    str := '';
    end;
  writeln('Changed matrix');
  for i := 1 to (m div 2 + 1) do
    begin
    for j := m - k - i + 1 to m - k + i - 1 do
      str:= str + '*';
    writeln(str: j - 1);
    str := '';
    end;
  for i := m div 2 + 1 to m do
    begin
    for j := m - k - m + i + 1 to m - k + (m - i) - 1 do
      str:= str + '*';
    writeln(str: j - 1);
    str := '';
    end;


  readln;
end.
