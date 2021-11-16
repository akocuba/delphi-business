object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Zdefiniuj Graczy'
  ClientHeight = 262
  ClientWidth = 453
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 59
    Height = 19
    Caption = 'Gracz 1:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Shape1: TShape
    Left = 143
    Top = 29
    Width = 41
    Height = 33
    Brush.Color = 2747143
    Shape = stCircle
    OnMouseDown = Shape1MouseDown
  end
  object Label2: TLabel
    Left = 264
    Top = 16
    Width = 59
    Height = 19
    Caption = 'Gracz 2:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Shape2: TShape
    Left = 391
    Top = 29
    Width = 41
    Height = 33
    Brush.Color = 327873
    Shape = stCircle
    OnMouseDown = Shape2MouseDown
  end
  object Label3: TLabel
    Left = 16
    Top = 192
    Width = 59
    Height = 19
    Caption = 'Gracz 3:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Shape3: TShape
    Left = 143
    Top = 205
    Width = 41
    Height = 33
    Brush.Color = 16730660
    Shape = stCircle
    OnMouseDown = Shape3MouseDown
  end
  object Label4: TLabel
    Left = 264
    Top = 192
    Width = 59
    Height = 19
    Caption = 'Gracz 4:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Shape4: TShape
    Left = 391
    Top = 205
    Width = 41
    Height = 33
    Brush.Color = 2678783
    Shape = stCircle
    OnMouseDown = Shape4MouseDown
  end
  object Label5: TLabel
    Left = 125
    Top = 104
    Width = 170
    Height = 19
    Caption = 'Wybierz Imi'#281' oraz Kolor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 16
    Top = 41
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Gracz 1'
  end
  object Button1: TButton
    Left = 143
    Top = 129
    Width = 121
    Height = 33
    Caption = 'Rozpocznij gr'#281'!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 264
    Top = 41
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Gracz 2'
  end
  object Edit3: TEdit
    Left = 16
    Top = 217
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Gracz 3'
  end
  object Edit4: TEdit
    Left = 264
    Top = 217
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Gracz 4'
  end
  object ColorDialog1: TColorDialog
    Left = 48
    Top = 96
  end
end
