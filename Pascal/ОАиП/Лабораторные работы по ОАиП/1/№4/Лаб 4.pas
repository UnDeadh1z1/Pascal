program sort;
uses crt;
var X:array[1..30] of real;
n,i,k,f:integer;
z:real;
begin
 textBackground(white); 
 clrscr;
 textcolor(black);
 write('Кол-во ячеек: ');
 readln(n);
 while (n<1)or(n>30) do
   begin
   writeln('Ошибка.');
   write('Повторите ввод: ');
   readln(n);
   end;
   writeln('Введите значение ячейки.');
 for i:=1 to n do
   begin
   write('x[',i,'] = ');
   readln(x[i]);
   end;
 clrscr;
 k:=1;
 repeat
   i:=1;    
   f:=0;
   repeat
     if (x[i])<(x[i+1]) then
                          begin
                          z:=x[i];
                          x[i]:=x[i+1];
                          x[i+1]:=z;
                          f:=1;
                          end;
     i:=i+1;
   until i>(n-k);
   k:=k+1;
 until (f=0)or(k>30-1);
 writeln('Значения отсортированы.');
 for i:=1 to n do
   writeln('x[',i,'] = ',x[i]);
 readkey;
end. 
   
                       
                          
                      