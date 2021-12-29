program Lab7;
uses crt;
type zap=Record 
     fio:string[18];
     o:array[1..5] of byte;
     sr,sred:real;
     end;
     
     var z:zap;
         i,n,m,g,k,s,j,pr:integer;
         s1:real;
         ved:array[1..100] of zap;
begin
  pr:=4;
  
  writeln('введите кол-во студентов');readln(n);
  clrscr;
  writeln('╔═════╦══════════════════╦═══════════════════════════╦══════════════╗');
  writeln('║  №  ║     ФИО          ║      Дата рождения        ║     Пол      ║');
  writeln('╠═════╬══════════════════╬═══════════════════════════╬══════════════╣');
  for i:=1 to n do begin
    gotoxy(1,i+3);write ('║  ',i,'  ║');readln(ved[i].fio);
    gotoxy(length(ved[i].fio)+8,i+3);
    for j:=length(ved[i].fio) to 17 do write(' ');
    write('║');
   
    

    s:=0;
    for g:=1 to pr do begin
      
       gotoxy(23+7*g,i+3);        
       readln(ved[i].o[g]);
       gotoxy(26+7*g,i+3);       
       write('║');
       
       s:=ved[i].o[g]+s
    end;
    ved[i].sr:=s/pr;
    write(ved[i].sr:7:2,'       ║')
  end;
  gotoxy(1,n+4);write('╚═════╩══════════════════╩══════╩══════╩══════╩══════╩══════════════╝');
  for i:=1 to n do
    begin
   s1:=ved[i].sr+s1;
   ved[i].sred:=s1/n;
   end;
   writeln('среднее арифметическое всех=',ved[i].sred);
end.