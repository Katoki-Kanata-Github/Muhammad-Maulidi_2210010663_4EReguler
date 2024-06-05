object Form2: TForm2
  Left = 470
  Top = 161
  Width = 252
  Height = 371
  Caption = 'Login'
  Color = clAqua
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 56
    Top = 16
    Width = 137
    Height = 23
    Caption = 'Masukkan Data'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object edte1: TEdit
    Left = 64
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 88
    Top = 96
    Width = 75
    Height = 25
    Caption = 'LOGIN'
    TabOrder = 1
    OnClick = btn1Click
  end
end
