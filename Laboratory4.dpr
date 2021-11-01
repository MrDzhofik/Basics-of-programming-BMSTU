program Laboratory4;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  n, i, j, index, curr, x1, x2, x3: integer;
  flag: boolean;
  p, q: real;
  result, st: string;
  arr: array[1..128] of integer;
begin
  write('Enter n: ');
  readln(n);
  writeln(n);
  index := 1;
  flag := False;

  repeat
   writeln('Enter x1 x2 x3: ');
   readln(arr[index], arr[index + 1], arr[index + 2]);
   index := index + 3;
  until index = 3 * n + 1;

  curr := 1;
  writeln('Enter p, q: ');
  readln(p, q);
  repeat
    x1 := arr[curr];
    x2 := arr[curr + 1];
    x3 := arr[curr + 2];
    if ((p >= x1) and (p <= x1 + x3) and
    (q <= x2) and (q >= x2 - x3)) then
      begin
        str(curr div 3 + 1, st);
        result := result + ' ' + st;
        flag := True;
      end;
    curr := curr + 3;

  until curr = 3 * n + 1;
  if flag then
    writeln(result)
  else
    writeln('Таких квадратов нет');
  readln;
end.
