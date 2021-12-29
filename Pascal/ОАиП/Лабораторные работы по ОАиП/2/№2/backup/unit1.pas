unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, ActnList;

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
    Button8: TButton;
    Button9: TButton;
    ComboBox1: TComboBox;
    ListBox1: TListBox;
    Memo1: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  Memo1.clear;
  listbox1.items.LoadFromFile('E:\Програм\2 Семестр\№2\Авторы.main.txt');
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Button8Click(Sender: TObject);
var name1:string;
begin
  name1:=combobox1.text+'.txt';
  memo1.lines.savetofile('E:\Програм\2 Семестр\№2\'+name1);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  Memo1.Clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
var NewItem:string;
begin
  NewItem:=inputBox('Ввод данных','Ввод фамилии',',');
  if NewItem <> ' ' then
    begin
    listbox1.items.add(NewItem);
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   listbox1.items.LoadFromFile('E:\Програм\2 Семестр\№2\Авторы.main.txt');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   listbox1.Items.SaveToFile('E:\Програм\2 Семестр\№2\Авторы.main.txt');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  listbox1.clear;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  listbox1.Items.delete(listbox1.Itemindex);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if listbox1.itemindex >= 0 then
    begin
    memo1.Lines.add(listbox1.Items[listbox1.itemindex]);
    end;
end;

end.

