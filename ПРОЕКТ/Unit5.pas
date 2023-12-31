unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.MPlayer, Vcl.Buttons, Vcl.Menus;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    LifeTimer: TTimer;
    MediaOpenBtn: TBitBtn;
    MediaOpenDlg: TOpenDialog;
    ScreenPanel: TPanel;
    LifeImage: TImage;
    MPlayer: TMediaPlayer;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Button1: TButton;
    procedure MediaOpenBtnClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  const
XSize = 40;
YSize = 25;
type
TLifeCells = array [0 .. XSize - 1, 0 .. YSize - 1] of boolean;


var
  Form5: TForm5;
  A: TLifeCells;
implementation

{$R *.dfm}

uses Unit2;

procedure TForm5.Button1Click(Sender: TObject);
begin
MPlayer.Close; //���������� ������ �����
if not FileExists(ExtractFilePath(Application.ExeName) + 'hip-hop_wmv.wmv') then
begin
ShowMessage('����� 1.avi � ����� � ���������� ���');
exit;
end;
MPlayer.FileName:=ExtractFilePath(Application.ExeName) + 'hip-hop_wmv.wmv'; //����������� �������� ����� �����(��� ����� ��� - ��� ��� ������ ����).
MPlayer.Open; //������� �� ����� �����
MPlayer.Play;
end;


procedure TForm5.MediaOpenBtnClick(Sender: TObject);
begin
if MediaOpenDlg.Execute then
begin
MPlayer.FileName := MediaOpenDlg.FileName;
MPlayer.Open;
MPlayer.DisplayRect := Rect(0, 0, ScreenPanel.Width, ScreenPanel.Height);
MPlayer.Play;
if ExtractFileExt(MPlayer.FileName) = '.avi' then LifeImage.Visible := false
else begin
LifeImage.Visible := true;
LifeTimer.Enabled := true;
end;
end;
end;

procedure RandomCells;
var
i, j: integer;
begin
for i := 0 to XSize - 1 do
for j := 0 to YSize - 1 do
A[i, j] := random < 0.5;
end;

function NumOfCells(x, y: integer): integer;
var
i, j, xx, yy: integer;
begin
Result := 0;
for i := -1 to 1 do
for j := -1 to 1 do
begin
xx := x + i; yy := y + j;
if xx = -1 then xx := XSize - 1;
if yy = -1 then yy := YSize - 1;
if xx = XSize then xx := 0;
if yy = YSize then yy := 0;
if A[xx, yy] then inc(Result);
end;
if A[x, y] then dec(Result);
end;

procedure TForm5.N1Click(Sender: TObject);
begin
Form5.Hide;
Form2.Show;
end;

end.
