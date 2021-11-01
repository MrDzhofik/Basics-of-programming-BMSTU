program Laboratory2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var x, y: real;
    flag: boolean;
begin
  writeln('Enter x and y');
  readln(x, y);
  if x <= 1 then
  begin
    if (x >= abs(y)) then
      flag := True
  end
  else
  begin
    if (2 - x >= abs(y)) then
      flag := True;
  end;

  if flag then
    writeln('belong')
  else
    writeln('do not belong');
  Readln;

end.
