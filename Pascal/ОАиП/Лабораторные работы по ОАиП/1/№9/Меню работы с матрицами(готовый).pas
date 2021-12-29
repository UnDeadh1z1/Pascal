
program gruppa;
uses crt;
type matr= array [1..100, 1..100] of integer;
var A,B,C:matr;
x,y,z:byte; 
m1,n1,m2,n2:shortint;
otv:char;

procedure vvod(var d:matr; ma,na:shortint); //процедура ввода
var i,k:byte;
begin
for i:=1 to ma do
for k:=1 to na do
 begin
 write('a[',i,k,']= ');
 readln(d[i,k]);
 end;
end;

procedure vivod(var e:matr; mb,nb:shortint); //процедура вывода
 var i,k:byte;
 begin
  for i:=1 to mb do
  for k:=1 to nb do
   begin
   write(e[i,k]);
   if k<>nb then write(' ');
   if k=nb then writeln(' ');
   end;
 end;
 
procedure trans (f:matr; var g:matr; mc,nc:shortint); //процедура транспонирования
var i,k:byte;
v:integer;
begin
if (mc<>nc) then writeln('Данную матрицу нельзя транспонировать');
if (mc=nc) then
 begin
 for i:=1 to mc do
 for k:=1 to nc do g[i,k]:=f[i,k]; 
 for i:=1 to mc do
 for k:=0+i to nc do
  begin
  v:=g[i,k];
  g[i,k]:=g[k,i];
  g[k,i]:=v;
  end;
 end;
end;
 
procedure sloj (h,i:matr; var j:matr; md,nd,me,ne:shortint); //процедура сложения
var r,k:byte;
begin
if (md<>me) or (nd<>ne) then writeln('Данные матрицы нельзя сложить');
if (md=me) or (nd=ne) then
 begin
 z:=1;
 for r:=1 to md do
 for k:=1 to nd do
  begin
  j[r,k]:=h[r,k]+i[r,k];
  end;
 end;
end;

procedure vich (k,l:matr; var m:matr; mf,nf,mg,ng:shortint); //процедура вычитания
var i,r:byte;
begin
if (mf<>mg) or (nf<>ng) then writeln('Данные матрицы нельзя вычесть');
if (mf=mg) or (nf=ng) then
 begin
 z:=1;
 for i:=1 to mf do
 for r:=1 to nf do
  begin
  m[i,r]:=k[i,r]-l[i,r];
  end;
 end;
end;

procedure umnoj(n,o:matr; var p:matr; mh,nh,mi,ni:shortint); //процедура умножения
 var i,k,j:byte;
begin
 if (mh<>ni) or (nh<>mi) then writeln('Данные матрицы нельзя умножить');
 if (mh=ni) and (nh=mi) then
 begin
 z:=1;
  for i:=1 to mh do
  for k:=1 to nh do
  for j:=1 to mi do
   begin
   p[i,k]:=p[i,k]+n[i,j]*o[j,k];
   end;
 end;
end;

procedure opred(var q:matr; nj,mj:shortint); //определитель
var OPR:real;
begin
if nj<>mj then writeln ('Определитель данной матрицы найти нельзя')
else
begin
if nj=2 then OPR:=(((q[1,1])*(q[2,2]))-((q[1,2])*(q[2,1])));
if nj=3 then OPR:=(((q[1,1])*(q[2,2])*(q[3,3]))+((q[3,1])*(q[1,2])*(q[2,3]))+((q[2,1])*(q[3,2])*(q[1,3]))-((q[3,1])*(q[2,2])*(q[1,3]))-((q[1,1])*(q[3,2])*(q[2,3]))-((q[2,1])*(q[1,2])*(q[3,3])));
end;
writeln (OPR);
end;

procedure Menu;
var ch: char;
begin
while x<>1 do
 begin
  gotoxy(5,2);
  writeln('Меню работы с матрицами');
  writeln('1) Ввод матриц');
  writeln('2) Вывод матриц');
  writeln('3) Транспонирование');
  writeln('4) Сложение матриц');
  writeln('5) Вычитание матриц');
  writeln('6) Умножение матриц');
  writeln('7) Определитель матрицы');
  writeln('8) Выход');
  write('Выберите действие- ');
  readln(ch);
  case ch of
   '1': begin
        clrscr;
         if y=1 then
          begin
          writeln('Вы уверены, что хотите перезаписать матрицы? y-да, n-нет');
          readln(otv);
          if otv='y' then y:=0;
          end;
         if y=0 then
          begin
          Writeln('Введите длину и ширину матрицы A');
          readln(m1,n1);
          vvod(A,m1,n1);
          Writeln('Введите длину и ширину матрицы B');
          readln(m2,n2);
          vvod(B,m2,n2);
          y:=1;
          end;
        end;
        
   '2': begin
        clrscr;
        if y=0 then writeln('Нет введенных матриц. Пожалуйста, введите матрицы');
        if y=1 then
         begin
         writeln('Матрица A: ');
         vivod(A,m1,n1); 
         writeln('Матрица B: ');
         vivod(B,m2,n2);
         end;
         readkey;
        end;
        
   '3': begin
        clrscr;
        if y=0 then writeln('Нет введенных матриц. Пожалуйста, введите матрицы');
        if y=1 then
         begin
         writeln('Какую матрицу вы хотите транспонировать? A или B');
         readln(otv);
         if otv='A' then 
          begin
          trans(A,C,m1,n1);
          vivod(C,m1,n1);
          end;
         if otv='B' then 
          begin
          trans(B,C,m2,n2);
          vivod(C,m2,n2);
          end;
         end;
        readkey;
        end;
        
   '4': begin
        clrscr;
        if y=0 then writeln('Нет введенных матриц. Пожалуйста, введите матрицы');
        if y=1 then 
         begin
         sloj(A,B,C,m1,n1,m2,n2);
         if z=1 then vivod(C,m1,n1);
         z:=0;
         end;
        readkey;
        end;
   '5': begin
        clrscr;
        if y=0 then writeln('Нет введенных матриц. Пожалуйста, введите матрицы');
        if y=1 then 
         begin
         writeln('Как вычесть матрицы: 1)A-B 2)B-A');
         readln(otv);
         if otv='1' then
          begin
          vich(A,B,C,m1,n1,m2,n2);
          if z=1 then vivod(C,m1,n1);
          z:=0;
          end;
         if otv='2' then
          begin
          vich(B,A,C,m2,n2,m1,n1);
          if z=1 then vivod(C,m2,n2);
          z:=0;
          end;         
         end;
        readkey;
        end;
   '6': begin
        clrscr;
        if y=0 then writeln('Нет введенных матриц. Пожалуйста, введите матрицы');
        if y=1 then 
         begin
         writeln('Как умножить матрицы: 1)A*B 2)B*A');
         readln(otv);
         if otv='1' then
          begin
          umnoj(A,B,C,m1,n1,m2,n2);
          if z=1 then vivod(C,m1,n2);
          z:=0;
          end;
         if otv='2' then
          begin
          umnoj(B,A,C,m2,n2,m1,n1);
          if z=1 then vivod(C,m2,n1);
          z:=0;
          end;         
         end; 
        readkey;
        end;
   '7': begin
        clrscr;
        if y=0 then writeln('Нет введенных матриц. Пожалуйста, введите матрицы');
        if y=1 then
         begin
         writeln('Определитель какой матрицы вы хотите найти? A или B');
         readln(otv);
         if otv='A' then opred(A,m1,n1);
         if otv='B' then opred(B,m2,n2);
         end;  
        readkey;
        end;
   '8': x:=x+1;
  end;
 clrscr;
 end;
end;

begin
y:=0;
textbackground(11);
textcolor(0);
clrscr;
Menu;
Readkey;
end.