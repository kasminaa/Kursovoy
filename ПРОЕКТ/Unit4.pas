unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    RadioGroup1: TRadioGroup;
    Button3: TButton;
    Image2: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  a,b,c,d,summ,x:integer;
  f,f1: text;
  s: string;
  Nvern, ball: integer;

implementation

{$R *.dfm}

uses Unit7;

procedure TForm4.Button1Click(Sender: TObject);
begin
Form4.Hide;
Form7.Show;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
Button3.Visible:=True;
Image2.Visible:=false;
AssignFile( f ,'test.txt');
AssignFile(f1,'���������� �����.txt');
rewrite(f1);
button2.Visible:=false;
RadioGroup1.Visible:=true;
a:=0;
b:=0;
c:=0;
summ:=0;
reset(f);
readln(f,s);
repeat
if (s[1]='-') then begin //���� ������ ������ ������ �-� ������ ��� ������
delete(s,1,1);
RadioGroup1.Caption:=s;
end
else RadioGroup1.Items.Add(s);
readln(f,s);
until (s[1]='-') or (Eof(f));
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
if (RadioGroup1.ItemIndex>-1) and (not Eof(f)) then begin
case RadioGroup1.ItemIndex of //����� ������ �� ������ RadioGroup
0: begin
    a:=a+3;
    writeln(f1,3);
   end;
1: begin
    b:=b+2;
    writeln(f1,2);
   end;
2: begin
    c:=c+1;
    writeln(f1,1);
   end;
end;
RadioGroup1.Items.Clear;
Repeat //� ��������� ���� ��� ���������� �������
if (s[1]='-') then begin
delete(s,1,1);
RadioGroup1.Caption:=s;
end
else RadioGroup1.Items.Add(s);
readln(f,s);
until (s[1]='-') or (Eof(f));
end
Else if Eof(f) then begin
delete(s,1,1);
CloseFile(f);
closefile(f1) ;
summ:=a+b+c;
if summ>=19 then showmessage('��� ������ �������� Vogue!');
if (summ>=14) and (summ<18) then showmessage('��� ������ �������� Juzz funk!');
if summ<14 then showmessage('��� ������ �������� Hip-hop!');
Button3.Enabled:=False; //������ ���������� ����������� � ���������� �������
Form4.Hide;
Form7.Show;
end;
end;
end.

