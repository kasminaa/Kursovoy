unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Image3: TImage;
    Image4: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit3, Unit5, Unit6, Unit7;

procedure TForm2.Button1Click(Sender: TObject);
begin
Form2.Hide;
Form7.Show;
end;

procedure TForm2.Image2Click(Sender: TObject);
begin
Form2.Hide;
Form3.Show;
end;

procedure TForm2.Image3Click(Sender: TObject);
begin
Form2.Hide;
Form5.Show;
end;

procedure TForm2.Image4Click(Sender: TObject);
begin
Form2.Hide;
Form6.Show;
end;

end.
