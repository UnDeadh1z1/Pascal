program hotybi1;
uses crt;
type vec = array[1..100,1..100] of integer;
var a:vec;n,m,i,j,b:integer;
begin
  readln(n,m);
  for i:=1 to n do
    for j:=1  to m do
      read(a[i,j]);
  for i:=1 to n do
    for j:=1  to m do
    begin
      if(a[i,j]>0) then inc(b);
    end;
 // i:=1;b:=0;
 // repeat
 //   j:=1;
 //   repeat
 //     if(a[i,j]<0) then
 //     inc(b);
 //     inc(j);
 //   until (a[i,j]>0) or (b=m);
 //   inc(i);
 // until (a[i,j]>0) or (b=n*m);
  if(b>0) then
    writeln('ДЫА')//('НИТ')
    else writeln('НИТ');//('ДЫА');
end. 