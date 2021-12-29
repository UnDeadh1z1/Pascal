program lab2;
uses crt;
var vopros,variant,a,b,c: integer;
begin
writeln('номер вопроса?');
readln(vopros);
writeln('nomer varianta?');
readln(variant);
case vopros of
1:case variant of 
1:writeln('');
2:writeln('');
3:writeln('');
else writeln('');
end;
2:case variant of
1:writeln('');
2:writeln('');
3:writeln('');
else writeln('');
end;
3:case variant of
1:writeln('');
2:writeln('');
3:writeln('');
else writeln('');
end;
end;
writeln('vvedite otvet');
readln(a);
if (a=15) or (a=4) or (a=54) then
writeln('verno')
else writeln('neverno');
writeln('vvedite otvet');
readln(b);
if (b=42) or (b=6) or (b=-2) then
writeln('verno')
else writeln('neverno');
writeln('vvedite otvet');
readln(c);
if (c=2) or (c=-3) or (c=10) then
writeln('verno')
else writeln('neverno');
readkey;
end.




