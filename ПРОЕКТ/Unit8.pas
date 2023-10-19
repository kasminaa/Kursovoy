unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls;

type
  TForm8 = class(TForm)
    WebBrowser1: TWebBrowser;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses Unit7, Unit2;

procedure TForm8.Button1Click(Sender: TObject);
begin
Form8.Hide;
Form7.Show;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
Form8.Hide;
Form2.Show;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
webbrowser1.Navigate(ExtractFilePath(ParamStr(0))+'информация о танцах.htm');
end;

end.
