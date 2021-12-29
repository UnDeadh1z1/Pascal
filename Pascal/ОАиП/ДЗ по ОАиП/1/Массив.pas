program lab4;
uses crt;
type masiv = array[1..30] of integer
var 
r,i,kolvo,k,f: integer;
x: massiv;
y:char
begin
clrscr;
repeat
k:=0;
clrscr;
writeln('Кол-во значений?');
readln(kolvo);
while (n>30) of (n<1) do
begin;
writeln('Error');
readln(kolvo);
end;
for i:=1 to n do
begin 
writeln('Введите значение x[',i,']');
readln(x[i]);
end;
repeat
i:=1;
f:=0;
repeat
begin 
if x[i] < x[i+1] then
begin
r:=x[i];
x[i]:=x[i+1];
x[i+1]:=r;
f:=1;
writeln(f);
end;
i:=i+1;
end;
until i>=(n-k);
k:=k+1;
until (k>=(n-1)) or (f=0);
for i:=1 to n do
begin
writeln('x[',i,']=',x[i]);
end;
writeln('Продолжить?');
writeln('Нажмите всё,кроме b,если хотите продолжить.');
writeln('Нажмите b,если не хотите продолжить.');
readln(y);
until y=#98;
readkey;
end.