program DZ3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
type �ar = object
  private mark: string;
  private poe: integer;
  public procedure Init(m: string; p: integer);
  public procedure print;
  public function tax: integer;
end;
function �ar.tax: integer;
  begin
    result := poe * 12;
  end;
procedure �ar.Init;
  begin
    mark := m;
    poe := p;
  end;
procedure �ar.print;
  begin
    writeln('�����: ', mark);
    writeln('��������: ', poe)
  end;
var audi: �ar;

begin
  audi.Init('Audi', 210);
  writeln('������������ �����: ', audi.tax);
  audi.print;
  readln;
end.
