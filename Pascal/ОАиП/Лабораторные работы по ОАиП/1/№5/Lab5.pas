Program lab5;
uses crt;
type massiv =array[1..5,1..3]of real;
var a:massiv;
    B:array[1..5]of real;
    i,j,n,m,ib,nb:integer; 
    s,ai:real;
begin
 textBackground(white); 
 clrscr;
 textcolor(black);
 writeln('Вводится матрица.');    
 write('Кол-во строк: ');
 readln(n);
 while (n<1)or(n>3) do
   begin
   write('Повторите ввод: ');
   readln(n);
   end;
 write('Кол-во столбцов: ');
 readln(m);
 while (m<1)or(m>5) do
   begin
   write('Повторите ввод: ');
   readln(m);
   end; 
 writeln('Значения записываются в строчку.');
 for j:=1 to m do
   begin
   for i:=1 to n do
     begin
     write('A[',j,i,'] = ');
     readln(a[j,i]);
     end;
   writeln();  
   end;
 clrscr;
 writeln('Матрица');
 writeln(); 
 ib:=1;
 for j:=1 to m do
   begin
   s:=0;
   for i:=1 to n do
     begin
     write(a[j,i]:6);
     ai:=a[j,i];
     s:=s+ai*ai;
     end;
   s:=sqrt(s);  
   b[ib]:=s;
   nb:=ib;
   ib:=ib+1;
   writeln();
   writeln();
   end; 
 writeln('Сформирован новый вектор B');  
 for ib:=1 to nb do 
   writeln('B[',ib,'] = ',b[ib]:12);
 readkey;
end. 