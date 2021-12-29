program podprog;
uses crt;
type mas=array[1..20] of real;
var nA,nB:byte;
A,B:mas;
MS,MA,MB:real;
function vvod(var x:mas;n:byte):real;
var i:byte;
begin
for i:=1 to n do
begin
write('x[',i,']=');
readln(x[i]);
end;
end;
function vivod(var x:mas;n:byte):real;
var i:byte;
begin
for i:=1 to n do
begin
write('x[',i,']=');
writeln(x[i]);
end;
end;
function maximum(x:mas;n:byte;var M:real):real;
var i:byte;
begin
M:=x[1];
for i:=1 to n do
if x[i]>M then M:=x[i];
maximum:=m;
end;
begin
writeln('Введите кол-во элементов A');
readln(nA);
vvod(A,nA);
clrscr;
writeln('Введите кол-во элементов B');
readln(nB);
vvod(B,nB);
clrscr;
vivod(A,nA);
writeln;
vivod(B,nB);
MS:= maximum(A,nA,mA)+maximum(B,nB,mB);
writeln('Сумма макс элементов=',MS);
end.