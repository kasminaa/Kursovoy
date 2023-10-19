unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.MPlayer, Vcl.Menus;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Button1: TButton;
    MediaPlayer1: TMediaPlayer;
    Panel1: TPanel;
    OpenDialog1: TOpenDialog;
    procedure N1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  Form3: TForm3;
implementation

{$R *.dfm}

uses Unit2;


procedure TForm3.Button1Click(Sender: TObject);
begin
with mediaplayer1 do begin
  display:=panel1;
  mediaplayer1.FileName:=(ExtractFilePath(paramstr(0))+'vogue_wmv.wmv');
  open;
  displayrect:=panel1.ClientRect;
  play;
end;
end;

procedure TForm3.N1Click(Sender: TObject);
begin
Form3.Hide;
Form2.Show;
end;

end.
