program prg_23;
uses Crt;

const n=5;
var poleA :array [1..n,1..n] of real;
  var poleB :array [1..n,1..n] of real;
  i,j : integer;

procedure vypis;
begin
  writeln;
  for i:= 1 to n do
  for j:=1 to n do
  begin
    write(poleA[i,j]:4:0);
    if (j=n) then writeln
  end;
  writeln;
  for i:= 1 to n do
  for j:=1 to n do
  begin
    write(poleB[i,j]:4:0);
    if (j=n) then writeln
  end;
end;
procedure vyber;
var a : string;
begin
  writeln ('Matice A:');
  writeln ('chcete zadat cisla rucne? (a/n)');
  read (a);
  if (a<>'a') then for i:=1 to n do for j:=1 to n do poleA[i,j]:=random (100)+1
  else for i:=1 to n do for j:=1 to n do begin
  writeln ('zadej ',i,'-',j,', cislo');
  readln (poleA[i,j]);
   end;
  writeln ('Matice B:');
  writeln ('chcete zadat cisla rucne? (a/n)');
  read (a);
  if (a<>'a') then for i:=1 to n do for j:=1 to n do poleA[i,j]:=random (100)+1
  else for i:=1 to n do for j:=1 to n do begin
  writeln ('zadej ',i,'-',j,', cislo');
  readln (poleA[i,j]);
   end;
end;


begin
randomize;
vyber;
vypis;
repeat until keypressed;
end.
