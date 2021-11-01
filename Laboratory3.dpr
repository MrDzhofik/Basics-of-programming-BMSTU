program Laboratory3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var a, b, i, j: integer;

begin
  writeln('Enter a, b:');
  readln(a, b);
//  if a > b then
//    j := a div 4
//  else
//    j := b div 4;
//  for i := 1 to j do
//  begin
//    if a > b then
//      a := a - b
//    else
//      b := b - a;
//  end;



//    while a <> b do
//    begin
//      if a > b then
//        a := a - b
//      else
//        b := b - a;
//    end;

    if a <> b then
      repeat
        begin
          if a > b then
            a := a - b
          else
            b := b - a;
        end;
      until a = b;





    writeln(a);
    readln;

end.
