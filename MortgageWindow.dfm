object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Hipoteka'
  ClientHeight = 471
  ClientWidth = 406
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 202
    Top = 8
    Width = 79
    Height = 23
    Caption = '[balance]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 50
    Top = 8
    Width = 114
    Height = 23
    Caption = '[playerName]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Shape1: TShape
    Left = 11
    Top = 6
    Width = 33
    Height = 25
    Shape = stCircle
  end
  object Button1: TButton
    Left = 295
    Top = 37
    Width = 75
    Height = 25
    Caption = 'Zastaw'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 37
    Width = 281
    Height = 426
    ItemHeight = 13
    TabOrder = 1
    OnClick = ListBox1Click
  end
  object Button2: TButton
    Left = 295
    Top = 77
    Width = 75
    Height = 25
    Caption = 'Wykup'
    TabOrder = 2
    OnClick = Button2Click
  end
end
