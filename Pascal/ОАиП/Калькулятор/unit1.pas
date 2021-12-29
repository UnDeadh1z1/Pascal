unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons, ExtCtrls;

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
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);

    procedure EditKeyPress(Sender: TObject; var Key: char);

    {procedure Edit2KeyPress(Sender: TObject; var Key: char);}

    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  a,b,c:real;
  cs:string;
implementation
  uses unit2;
{$R *.lfm}

{ TForm1 }



procedure TForm1.Button1Click(Sender: TObject);
begin
   a:= StrToFloat(edit1.text);
   b:= StrToFloat(edit2.text);
   c:= a+b;
   cs:=FloatToStr(c);
   label1.Caption:='result: '+cs;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   a:= StrToFloat(edit1.text);
   b:= StrToFloat(edit2.text);
   c:= a*b;
   cs:=FloatToStr(c);
   label1.Caption:='result: '+cs;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   a:= StrToFloat(edit1.text);
   b:= StrToFloat(edit2.text);
   c:= a-b;
   cs:=FloatToStr(c);
   label1.Caption:='result: '+cs;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  a:= StrToFloat(edit1.text);
  b:= StrToFloat(edit2.text);
  if b=0 then
    label1.caption:='resheniy net'
  else
    begin
    c:=a/b;
    cs:=FloatToStr(c);
    label1.caption:='result'+cs;
    end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
   edit1.Text:='';
   edit2.Text:='';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
    form2.ShowModal;
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
        end;
    '-': begin
            if sender = edit1 then
              if length(edit1.text)<>0 then
               key:=chr(0);
            if sender = edit2 then
              if length(edit2.Text)<>0 then
                key:=chr(0);
          end;
    '.','/': key:=chr(0);
    chr(13): if sender = edit1 then
               edit2.setfocus;
             else
               key:=chr(0);

     end;
end;





{procedure TForm1.Edit2Keypress(Sender: TObject; var key:char);
begin
  case key of
   '0'..'9',chr(8):;
   ',':if pos(',',edit2.text)<>0 then
         key:= chr(0);
   '-':begin
       if length(edit2.text)<>0 then
         key:= chr(0)
       else

       end;
   '.': key:= chr(0);

   end;
end;}

{procedure TForm1.Edit1Keypress(Sender: TObject; var key:char);
begin
   case key of
   '0'..'9',chr(8):;
   ',':if pos(',',edit1.text)<>0 then
         key:= chr(0);
   '-':begin
       if length(edit1.text)<>0 then
         key:= chr(0)
       else

       end;
   '.': key:= chr(0);
   chr(13): if sender = edit1 then
               edit2.setfocus;
             else
               key:=chr(0);
   end;
end;}

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

