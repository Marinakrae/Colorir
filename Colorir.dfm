object Form1: TForm1
  Left = 452
  Top = 223
  Width = 691
  Height = 404
  Align = alCustom
  Caption = 'Colorir'
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 675
    Height = 365
    Align = alClient
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clFuchsia
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Desenho: TImage
      Left = 320
      Top = 56
      Width = 265
      Height = 257
    end
    object Label1: TLabel
      Left = 88
      Top = 56
      Width = 114
      Height = 20
      Caption = 'Colorir a estrela!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object MediaPlayer1: TMediaPlayer
      Left = 40
      Top = 283
      Width = 253
      Height = 30
      Enabled = False
      Visible = False
      TabOrder = 0
    end
    object Cores: TsColorsPanel
      Left = 77
      Top = 86
      Caption = ' '
      DoubleBuffered = False
      TabOrder = 1
      OnClick = CoresClick
      Colors.Strings = (
        'EF32F1'
        'FFFFFF'
        '579D5E'
        'F9CAEC'
        'F9CC56'
        'C4F8EB'
        '9391DC'
        'FF2F7E'
        'FFFB00'
        'FF6565')
    end
  end
end
