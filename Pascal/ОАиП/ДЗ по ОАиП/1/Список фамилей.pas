program USSR;
uses crt;
var a:array [1..10] of string;
x,y,n,i:integer;
begin
readln (n);
clrscr;
writeln('╒═══╦════════════════════╕');
writeln('│ № ║    Фамилия         │');
for i:=1 to n do
begin
writeln('╞═══╬════════════════════╡');
gotoxy(x,y);
readln (a[i]);
writeln('╞═══╬════════════════════╡');
readln (a[i]);
writeln('╞ ',a[i], ' ╡');
writeln('╞═══╬════════════════════╡');
readln (a[i]);
writeln('╞',a[i],'╡');
writeln('╞═══╬════════════════════╡');
readln (a[i]);
writeln('╞',a[i],'╡');
writeln('╞═══╬════════════════════╡');
readln (a[i]);
writeln('╞',a[i],'╡');
writeln();
end;
readkey;
end.