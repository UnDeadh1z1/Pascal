unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure EditKeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  Form1: TForm1;
  key:char;
  z1c,z2c,z3c:string;
  M,N,K,a,b,z1,z2,z3:real;

implementation
  uses Unit2,Unit3;
{$R *.lfm}

{ TForm1 }
begin
Tform1.Button4.color:=clred;

end;

procedure TForm1.EditKeyPress(Sender: TObject; var Key: char);
begin
  case key of
    '0'..'9', chr(8):;
    ',':begin
         if sender=edit1 then
            if pos (',',edit1.text)<>0 then
              key:=chr(0);
         if sender =edit2 then
             if pos (',',edit2.text)<>0 then
              key:=chr(0);
         if sender =edit3 then
             if pos (',',edit3.text)<>0 then
              key:=chr(0);
        end;
    '-': begin
            if sender = edit1 then
              if length(edit1.text)<>0 then
               key:=chr(0);
            if sender = edit2 then
              if length(edit2.Text)<>0 then
                key:=chr(0);
            if sender =edit3 then
             if pos (',',edit3.text)<>0 then
              key:=chr(0);
          end;
    '.','/': key:=chr(0);
    chr(13): if sender = edit1 then
               edit2.setfocus
                  else
                    begin
                   if sender = edit2 then
                     edit3.setfocus
                   else
                     key:=chr(0);
                    end;

     end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
    M:= StrToFloat(edit1.text);
    N:= StrToFloat(edit2.text);
    K:= StrToFloat(edit3.text);
    a:=sqr(N+M);
    b:=abs(N-M);
    if b=0 then
      label1.Caption:='resheniy net'
    else
      begin
      z1:=a/b;
      z1c:=floattostr(z1);
      label1.caption:='result: '+z1c;
      end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  M:= StrToFloat(edit1.text);
  K:= StrToFloat(edit3.text);
  a:=z1*z1+m*m;
  if a<=0 then
    label1.caption:='resheniy net'
  else
  begin
  b:=sqrt(a);
  z2:=k*b;
  z2c:=floattostr(z2);
  label1.caption:='result: '+z2c;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  M:= StrToFloat(edit1.text);
  z3:=cos(m);
  z3c:=floattostr(z3);
  label1.caption:='result: '+z3c;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
   close;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
   edit1.Text:='';
   edit2.Text:='';
   edit3.Text:='';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  form2.ShowModal;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  form3.showmodal;
end;

end.

