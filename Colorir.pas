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
    Imagem: TImage;
    btnDesenha: TButton;
    Desenho: TImage;
    procedure CoresClick(Sender: TObject);
    procedure btnDesenhaClick(Sender: TObject);
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
  end;
end;

procedure TForm1.btnDesenhaClick(Sender: TObject);
begin
  with Imagem do
  begin
    Canvas.Pen.Color := clFuchsia;
    Canvas.Pen.Width := 1;
    Canvas.Pen.Style := psDash;
    Canvas.MoveTo(0,0);
    Canvas.LineTo(150, 150);
  end;
end;

procedure TForm1.FormPaint(Sender: TObject);
begin
  {Desenhando o urso}
  with Desenho do
  begin
    Canvas.Pen.Color := clBlack;
    Canvas.Pen.Width := 2;
    Canvas.Ellipse(0, 0, 150, 100);
    Canvas.Ellipse(200, 200, 50, 50);

    Canvas.Arc(60, 60, 110, 110, 120, 120, 10, 10);
    Canvas.Pen.Color := clGreen;
    Canvas.Arc(70, 70, 150, 150, 150, 150, 70, 70 );

  end;
end;

end.


