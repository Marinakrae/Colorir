unit Colorir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sPanel, StdCtrls, MPlayer, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    MediaPlayer1: TMediaPlayer;
    Cores: TsColorsPanel;
    Desenho: TImage;
    procedure CoresClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CoresClick(Sender: TObject);
begin
  with Desenho do
  begin
    Canvas.Brush.Color := Cores.ColorValue;
    FormPaint(Desenho);
  end;
end;

procedure TForm1.FormPaint(Sender: TObject);
var
    i, x, y, xx, yy: Integer;
    p: array[0..9] of TPoint;
    t, r, sv, sw, sx, sy, s: Real;
    Rect: TRect;
    FRegion: HRGN;
begin
  {Desenhando a estrela}
  With Desenho do
  begin
    Rect := ClientRect;
    InflateRect(Rect, -2, -2); //decreases rectangle size by 2//
    sx := (Rect.Right-Rect.Left)*0.48;
    sy := (Rect.Bottom-Rect.Top)*0.5;
    if sx > sy then
      sx := sy
    else
      sy := sx;
    sv := (Rect.Left + Rect.Right) / 2;
    sw := (Rect.Top + Rect.Bottom * 1.2) / 2.2;
    for i := 0 to 10 do
    begin
      if ((i and 1) <> 0) then
        r := 1
      else
        r := 0.384;
      t := i * 2 * (PI/10);
      P[i].x := Trunc(sv+sx*r*sin(t));
      P[i].Y := Trunc(sw+sy*r*cos(t));
    end;
    FRegion := CreatePolygonRgn(P, 10, WINDING);

    Canvas.Pen.Color := clBlack;
    Canvas.Pen.Width := 2;
    Canvas.Brush.Color := Cores.ColorValue;
    Canvas.Brush.Style := bsSolid;

    Canvas.Polygon(P);
  end;

  {Tocando a música}
  MediaPlayer1 := TMediaPlayer.Create(Self);
  MediaPlayer1.Parent := Self;
  CaminhoMp3:= GetCurrentDir + '\musica.wav';
  MediaPlayer1.FileName := CaminhoMp3;
  MediaPlayer1.Open;
  MediaPlayer1.AutoRewind := True;
  MediaPlayer1.Play;
end;

end.


