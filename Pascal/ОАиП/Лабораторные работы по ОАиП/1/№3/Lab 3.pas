program lab3;
uses crt;
var x: array[1..11]of real;
    v: array[1..11]of real;
         i,n,f,o:integer;
                    b:real;
begin
 textBackground(white); 
 clrscr;
 textcolor(black);
 f:=0;
 o:=-1;
 writeln('Сколько ячеек массива вы хотите использовать?'); 
 write('Кол-во ячеек: ');
 readln(n); 
 while (n<=0)or(n>11) do
 begin
   writeln('Неправильный ввод');
   writeln('Кол-во ячеек находится в диапазоне от 1 до 11');
   write('Повторите ввод: ');
   readln(n);
 end;
 clrscr;
 writeln('Кол-во ячеек: ',n);
 for i:=1 to n do
 begin
   writeln('Какое значение вы хотите присвоить ячейке?');
   write('Значение: ');
   readln(b);   
   if b<0 then
          begin
           x[i]:=b;           
           b:=b*o;           
           f:=f+1;          
           v[i]:=b;
          end
          else
           begin
           x[i]:=b;
           v[i]:=b;
           end;
   writeln('V[',i,'] = ',v[i]);       
 end;
 clrscr;
 for i:=1 to n do
 begin
   if f>0 then
          begin
           write('V[',i,'] = ',v[i]:5,'  ');
           writeln('V[',i,']Стар. = ',x[i]:5);
          end
          else
           writeln('V[',i,'] = ',v[i]);               
 end; 
 writeln;
 writeln('Кол-во отрицательных элементов: ',f);
 if f>0 then 
        writeln('Они заменены на положительные.');       
 readkey;
end.