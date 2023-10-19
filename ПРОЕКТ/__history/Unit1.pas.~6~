unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Timer1: TTimer;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit4, Unit7;

procedure TForm1.Button1Click(Sender: TObject);
begin
Form1.Hide;
Form2.Show;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form1.Hide;
Form4.Show;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Form7.Show();
Timer1.Enabled:=False;
Form1.Hide;
end;

end.
