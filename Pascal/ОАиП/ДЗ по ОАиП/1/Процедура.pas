program pp;
uses crt;
type mas=array[1..20] of real;
var nA,nB:byte; A,B:mas; MA,MB,MS:real;
procedure vvod(var x:mas;n:byte);
var i:byte;
begin
for i:=1 to n do
begin
write('x[',i,']=');
readln(x[i]);
end;
end;
procedure vivod(var x:mas;n:byte);
var i:byte;
begin
for i:=1 to n do
begin
write('x[',i,']=');
writeln(x[i]);
end;
end;
procedure max(x:mas;n:byte;var M:real);
var i:byte;
begin
M:=x[1];
for i:=2 to n do
if x[i]>M then M:=x[i];
end;
begin
writeln('Введите кол-во значений 1 массива');
readln(nA);
vvod(A,nA);
clrscr;
writeln('Введите кол-во значений 2 массива');
readln(nB);
vvod(B,nB);
clrscr;
writeln('Первый массив');
vivod(A,nA);
writeln('Второй массив');
vivod(B,nB);
max(A,nA,MA);
max(B,nB,MB);
MS:=MA+MB;
writeln('Сумма макс элементов=',MS);
end.

