program lab2;
uses crt;
var a1,a2,a3,a4,b1,b2,b3,b4,aab1,aab2,aab3,aab4,aob1,aob2,aob3,aob4,n,x,y:integer;
                        a,b,aab,aob:string;
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
  gotoxy(49,11);
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
  readkey;
  end.