﻿program lab2;
uses crt;
var a1,a2,a3,a4,b1,b2,b3,b4,n,x,y,q,e,aab1,aab2,aab3,aab4,aob1,aob2,aob3,aob4,f,d1:integer;
                             a,b,aab,aob,r:string;  
                             d,q1,e1:boolean;
                             r1:char; 
                            
                            
begin
  textBackground(white); 
  clrscr;
  textcolor(black);
  a:=' a '; b:=' b ';
  aab:='aab'; aob:='aob';
  a1:=0; b1:=0; 
  a2:=0; b2:=1;
  a3:=1; b3:=0;
  a4:=1; b4:=1;
  n:=0;
  repeat
   n:=n+1;
   case n of
     1: if (a1=0)and(b1=0) then
                         begin
                           aab1:=0;
                           aob1:=0;
                         end;
     2: if (a2=0)and(b2=1) then
                         begin
                           aab2:=0;
                           aob2:=1;
                         end;
     3: if (a3=1)and(b3=0) then
                         begin
                           aab3:=0;
                           aob3:=1;
                         end;
     4: if (a4=1)and(b4=1) then
                         begin
                           aab4:=1;
                           aob4:=1;
                         end;  
   end;
  until n=4;
  x:=38; y:=12;
  gotoxy(43,11);
  writeln('Таблица');
  gotoxy(x,y);
  y:=y+1;  
  writeln('_________________');
  gotoxy(x,y);
  y:=y+1;
  writeln('|',a:3,'|',b:3,'|',aab:3,'|',aob:3,'|');
  gotoxy(x,y);
  y:=y+1;
  writeln('_________________');
  gotoxy(x,y);
  y:=y+1;
  writeln('|',a:3,'|',b:3,'|',aab:3,'|',aob:3,'|');
  gotoxy(x,y);
  y:=y+1;
  writeln('_________________');
  gotoxy(x,y);
  y:=y+1;
  writeln('|',a1:3,'|',b1:3,'|',aab1:3,'|',aob1:3,'|');
  gotoxy(x,y);
  y:=y+1;
  writeln('_________________');
  gotoxy(x,y);
  y:=y+1;
  writeln('|',a2:3,'|',b2:3,'|',aab2:3,'|',aob2:3,'|');
  gotoxy(x,y);
  y:=y+1;
  writeln('_________________');
  gotoxy(x,y);
  y:=y+1;
  writeln('|',a3:3,'|',b3:3,'|',aab3:3,'|',aob3:3,'|');
  gotoxy(x,y);
  y:=y+1;
  writeln('_________________');
  gotoxy(x,y);
  y:=y+1;
  writeln('|',a4:3,'|',b4:3,'|',aab4:3,'|',aob4:3,'|');
  gotoxy(x,y);
  y:=y+1;
  writeln('_________________'); 
  gotoxy(1,1);
  repeat
  write('Введите 0 или 1: ');
  readln(q);
  if (q<0)or(q>1) then
                  begin
                  repeat
                    writeln('Повторите ввод: ');
                    readln(q);
                  until (q=0)or(q=1);  
                  end;
  if q=1 then
         q1:=true
         else
         q1:=false;
  write('Введите 0 или 1: ');
  readln(e);
  if (e<0)or(e>1) then
                  begin
                  repeat
                    writeln('Повторите ввод: ');
                    readln(e);
                  until (e=0)or(e=1);                   
                  end;
  if e=1 then
         e1:=true
         else
         e1:=false;
  writeln('Конъюнкция (и); Дизъюнкция (или);');
  write('Введите символ операции: ');
  readln(r);        
  if r='и' then
            r1:='*';
  if r='или' then
            r1:='+';  
    case r1 of
     '*': d:=(q1)and(e1);          
     '+': d:=(q1)or(e1);
    end;
    if d=true then
              d1:=1;
    if d=false then
               d1:=0;
    writeln('Результат: ',d1);
    write('Хотите продолжить? 1-да, 0-нет... ');
    readln(f);     
  until f=0; 
  readkey;
  end.