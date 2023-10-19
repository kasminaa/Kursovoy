unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.Menus, ShellAPI;

type
  TForm7 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Label5: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Unit1, Unit4, Unit3, Unit2, Unit8;

procedure TForm7.Button1Click(Sender: TObject);
begin
Form7.Hide;
Form4.Show;
Label4.Visible:=True;
Button2.Visible:=True;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
Form7.Hide;
Form2.Show;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
Form7.Hide;
Form8.Show;
end;

procedure TForm7.N2Click(Sender: TObject);
begin
ShellExecute(0, PChar('Open'), PChar ('Help10.chm'), nil, nil, SW_SHOW);
end;

procedure TForm7.N3Click(Sender: TObject);
begin
Form7.Hide;
Form4.Show;
end;

procedure TForm7.N4Click(Sender: TObject);
begin
Form7.Hide;
Form2.Show;
end;

procedure TForm7.N6Click(Sender: TObject);
begin
close;
end;

end.
