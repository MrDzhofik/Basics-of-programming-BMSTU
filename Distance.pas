unit Distance;

interface
type
  func = function(x: real): real;
  procedure Maxim(f:func; g:func; a:real; b:real; s:real; var maxi:real);

implementation
Procedure Maxim;
  var x: real;
  begin
    x := a;
    while x <= b do
      begin
        if abs(f(x) - g(x)) > maxi then
          maxi := abs(f(x) - g(x));
        x := x + s;

      end;

  end;

end.
