program Preparation;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;


Type pTRoomD=^TRoomD;
     TRoomD=object
               length, width:single;
               function Square:single; virtual;
               constructor Init(l,w:single);
               destructor Done; virtual;
             end;
Type pTBRoomD=^TBRoomD;
     TBRoomD=object(TRoomD)
                pB:pTRoomD;
                function Square:single; virtual;
                function BSquare:single;
                constructor Init(l,w:single;
                                         lb,wb:single);
                destructor Done; virtual;
              end;
Function TRoomD.Square;
   Begin Square:= length* width; End;
Constructor TRoomD.Init;
   Begin length:=l;  width:=w; End;
Destructor TRoomD.Done;
  Begin End;
Constructor TBRoomD.Init;
  Begin   inherited Init(l,w);
    if (lb=0)or(wb=0) then pB:=nil
    else pB:= New(pTRoomD,Init(lb,wb));
  End;
Function TBRoomD.BSquare;
  Begin if pB<>nil then BSquare:=pB^.Square
                   else BSquare:=0;
  End;
Function TBRoomD. Square;
  Begin Square:= inherited Square+BSquare; End;
Destructor TBRoomD.Done;
   Begin if pB<>nil then Dispose(pB,Done); End;

Var A:TBRoomD; pB1:pTBRoomD; pB2:pTRoomD;
Begin
  {статический объект с динамическим полем}
  A.Init(3.2,5.1,2.5,1);
  WriteLn(A.Square:6:2,A.BSquare:6:2);
  A.Done;
  {динамический полиморфный объект с динамическим полем}
  pB1:=New(pTBRoomD,Init(3.3,5.2,2.6,0));
  WriteLn(pB1^.Square:6:2,pB1^.BSquare:6:2);
  Dispose(pB1,Done);
  {динамический полиморфный объект с динамическим полем}
  pB2:=new(pTBRoomD,Init(3.1,5.4,2.5,1.1));
  WriteLn(pB2^.Square:6:2,pTBRoomD(pB2)^.BSquare:6:2);
  Dispose(pB2,Done);
  ReadLn;
End.

//type TroomP=object
//    length, width:single;
//    function Square:single;  virtual;
//    procedure Print;
//    constructor Init(l,w:single);
//end;
//Function TRoomP.Square;
//   Begin Result:= length* width;  End;
//Procedure TRoomP.Print;
//   Begin WriteLn('Square =', Square:6:2);  End;
//Constructor TRoomP.Init;
//   Begin length:=l;  width:=w;  End;
//Type TVRoomP = object(TRoomP)
//                height:single;
//                function Square:single; virtual;
//                constructor Init(l,w,h:single);
//               end;
//Constructor TVRoomP.Init;
//   Begin
//       inherited Init(l,w);
//       height:=h;
//   End;
//
//Function TVRoomP.Square;
//  Begin
//    Square:=2*(inherited Square+height*(length+width));
//  End;
//
//
//Procedure Print(Var R:TRoomP);
//  Begin
//     WriteLn('Square =', R.Square:6:2);
//  End;
//Var A:TRoomP; B:TVRoomP;
//Begin
//    A.Init(3.5,5.1);
//    B.Init(3.5,5.1,2.7);
//    Print(A);
//    Print(B);
//    ReadLn;
//End.


//Var pA: ^TRoomP; B:TVRoomP;
//Begin
//    B.Init(3.5,5.1,2.7);
//    WriteLn('Square =', B.Square:6:2);
//    pA:=@B;
//    WriteLn('Square =', pA^.Square:6:2);
//    ReadLn;
//end.

//Var A:TRoomP; B:TVRoomP;
//Begin
//    A.Init(3.5,5.1);
//    A.Print;
//    B.Init(3.5,5.1,2.7);
//    B.Print;
//    ReadLn;
//End.




//var
//    a, i: integer;
//    b: real;
//    s: string;
//    p1, p2: ^integer;
//    p3: ^real;
//    p: pointer;
//    arr: array[1..5] of integer;
//    procedure sum(h:integer);
//    begin
//      h := 6;
//    end;



//begin
//  a := 5;
//  b := 4.32;
//  sum(a);
//  writeln(a);
//  p1 := @a;
//  p3 := @b;
//  p2 := p1;
//  p := p3;
//  p1 := p;
//  writeln(p1^);
//  writeln;
//  for i := 0 to 10 do
//    writeln(DiskFree(i));
//  try
//    { TODO -oUser -cConsole Main : Insert code here }
//  except
//    on E: Exception do
//      Writeln(E.ClassName, ': ', E.Message);
//  end;
//end.
