program lab6;
uses crt;
var s,s1,ss:string[60];
      e,b,f1,f2,i,n:integer;
      r:real;
begin
 textBackground(white); 
 clrscr;
 textcolor(black);
 s:='';
 s1:='';
 s1:=' - ';  
 read;
 clrscr;
 writeln('Введите 1-ю строку.');
 readln(s);
 e:=length(s);
 b:=e div 2; 
 r:=e mod 2;
 i:=b;
 while r>0 do
   begin
   i:=i+1;
   b:=b+1;
   e:=e+1;
   r:=e mod 2;
   end;
 delete(s,b,1);
 insert(s1,s,b);  
 ss:='';
 read;
 clrscr;
 writeln('Введите 2-ю строку.');
 readln(ss);
 i:=1;
 n:=length(ss);
 clrscr;
 writeln('Вывод отредактированного текста.');
 writeln('1-й текст:');
 writeln(s); 
 writeln();
 writeln('2-й текст:');
 repeat
   f1:=0;
   f2:=0;
   if (ss[i]=' ')or(ss[i]='.')or(ss[i]=',')or(ss[i]='"') then
     begin
     i:=i+1;
     f2:=1;
     end
   else  
     repeat
     write(ss[i]);
     i:=i+1;
     if (ss[i]=' ')or(ss[i]='.')or(ss[i]=',')or(ss[i]='"') then
       f1:=1;
     until f1=1;
   if f2=0 then  
     writeln(); 
 until i=n; 
 readkey; 
end.
