program lab;
uses crt;
type massiv= array[1..100] of string;
var s:string[20];
var j:massiv;
i,k:integer;
begin
Writeln('Введите количество учеников');
Readln(k);
For i:=1 to k do
begin
clrscr;
Writeln('Введите ФИО ученика ',i);
Readln(s);
j[i]:=s;
clrscr;
end;
Writeln('╔═════════╦══════════════════════════════════╗');
writeln('║    №    ║               ФИО                ║');
writeln('╠═════════╬══════════════════════════════════╣');
For i:=1 to k do
begin
Writeln('║',i:9,'║',j[i]:34,'║');
if i=k-1 then
writeln('╠═════════╬══════════════════════════════════╣')
else
writeln('╚═════════╩══════════════════════════════════╝');
end;
end.
