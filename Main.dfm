object Form1: TForm1
  Left = 0
  Top = 0
  Width = 1236
  Height = 788
  VertScrollBar.Position = 470
  VertScrollBar.Range = 1200
  Caption = 'DelphiBusiness'
  Color = 10944511
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnMouseWheel = FormMouseWheel
  PixelsPerInch = 96
  TextHeight = 13
  object Player1: TShape
    Left = 275
    Top = 157
    Width = 25
    Height = 25
    Brush.Color = clLime
    Shape = stCircle
  end
  object Player2: TShape
    Left = 300
    Top = 157
    Width = 25
    Height = 25
    Brush.Color = clRed
    Shape = stCircle
  end
  object Player3: TShape
    Left = 325
    Top = 157
    Width = 25
    Height = 25
    Brush.Color = clMenuHighlight
    Shape = stCircle
  end
  object Player4: TShape
    Left = 350
    Top = 157
    Width = 25
    Height = 25
    Brush.Color = clYellow
    Shape = stCircle
  end
  object Shape1: TShape
    Left = 186
    Top = -287
    Width = 25
    Height = 25
    Brush.Color = clLime
    Shape = stCircle
  end
  object Shape2: TShape
    Left = 819
    Top = -285
    Width = 25
    Height = 25
    Brush.Color = clRed
    Shape = stCircle
  end
  object Shape3: TShape
    Left = 185
    Top = 185
    Width = 25
    Height = 25
    Brush.Color = clMenuHighlight
    Shape = stCircle
  end
  object Shape4: TShape
    Left = 819
    Top = 180
    Width = 25
    Height = 25
    Brush.Color = clYellow
    Shape = stCircle
  end
  object Label1: TLabel
    Left = 217
    Top = -287
    Width = 63
    Height = 23
    Caption = 'Gracz 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Default'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 850
    Top = -285
    Width = 63
    Height = 23
    Caption = 'Gracz 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Default'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 216
    Top = 187
    Width = 63
    Height = 23
    Caption = 'Gracz 3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Default'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 850
    Top = 180
    Width = 63
    Height = 23
    Caption = 'Gracz 4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Default'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 254
    Top = -314
    Width = 96
    Height = 23
    Caption = 'G R E C J A'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 791
    Top = -314
    Width = 105
    Height = 23
    Caption = 'W '#321' O C H Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 772
    Top = 551
    Width = 114
    Height = 23
    Caption = 'B E N E L U X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 270
    Top = 551
    Width = 116
    Height = 23
    Caption = 'S Z W E C J A'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 1030
    Top = -229
    Width = 19
    Height = 23
    Caption = 'H.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 1030
    Top = 299
    Width = 17
    Height = 23
    Caption = 'A.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 156
    Top = 345
    Width = 18
    Height = 23
    Caption = 'R.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 156
    Top = -249
    Width = 17
    Height = 23
    Caption = 'A.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelBalance1: TLabel
    Left = 217
    Top = -256
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
  object LabelBalance2: TLabel
    Left = 850
    Top = -256
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
  object LabelBalance4: TLabel
    Left = 850
    Top = 209
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
  object LabelBalance3: TLabel
    Left = 216
    Top = 216
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
  object Image1: TImage
    Left = 425
    Top = -235
    Width = 360
    Height = 102
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000001600000
      005D040300000069DCA1B80000001B504C5445FFFFFFFF5F5FFF9F9FFFBFBFFF
      DFDFFF3F3FFF1F1FFF7F7FFF00003B5384D80000000174524E530040E6D86600
      0005834944415478DAEDDA5F6C14451800F0696F8B246A7AC5945C4CA81B9B90
      8B09E53889F48DDA434BA20FD59AD827D31048FA78FA748842E5FC738935E191
      28228F8D10253C1950D9278388E47CB3C2D14BC588A654137DB0D8DBFA7D3B33
      BB33BB73BB77C7963BCCCC0BF75D77E7FBDDDEECCCB7737491FBAC75B51BA0C1
      9DD634588335588335588335B8A35A172924F9EB4AEF6CBB39CD8109B972A6E5
      8E5279FAEFB70BE57B082673AD64DBFCFC490F4C6AA723FBE83A70BE1A13F8DF
      375BE8E23D72BCEA81C99DC35167A4F2D1C7848157DFA0AF473767ECD7FD0764
      6F3EEABF62B9A1EAE742B871865C3A2B80A3BFA612A91D8A03CCAE95D41E782B
      983F3DB572240CFCE3A97B0536DE26A53F9B06F321419DBB5E881E13710D0942
      263370AD9A05F39B8E5DD84252FEAB2AE95DDE7422D8FF75360266578D9D3A3C
      DEFAF7ADC11A1C0BD8D8F41A0B61CAA0E0C9ED07C7FA3284D83FCC975D70EEE6
      735F97DDCF1405DEB1CB84F3AF5DAC12BC2F6181DAB36AC1CBC4C0CED5412861
      A4A424F1084637CE2CE31B52A0023F3BCAC3B5831C9C59FADB74DEB23F2D23B8
      38B4FB57FC001F56EB814B844D3830EBC19F9FC9B13E6F1DA3E0C43B2B478CC1
      ED59F69E94D47829E3BE9603255858020A2ED8EEF6FA4B4FD98B944FF0523704
      9ECC78E73330A90CB2F760569692F614F96BF82852A002C3EAE1B6B932077BEF
      1DAFA6A7BC083A69040CC7B086EF32B0DB6A87E4A46E79833D49810ADCFDAEC8
      71C13FDD8021676C7B19165E11FCCF8C1F9CCA2BC01B8E92D92538FFC9C77EB7
      7CE04AC2240539E9B4B972110ECB65FF38418814A8C090C0C191A7C7E006E060
      7E23612E110C770F078B5F821FBC71462CAB5C70E5DC435B2C18BE053969492C
      474A726DA202DBE72D167960BEF8EF1DB97318C095A56F1EECEB5BDC87C32F08
      C683FD607ACB48E0EF6E3B79609016E4A4253A5C39580854E09E22EF3B3D1504
      6366771E36F69B4A30C67EB058EE30302BB4102C272D89456349AE205560DE77
      24188E5083C1DA2C584C1A2778C351113C3C2E80D950DBB33349A0C7768053F9
      28308E683F18AB6AB8151B18C34A30266D760CF373A7CD96C0B43EF783C5F53A
      0C8C49DD732958AAD143C090A93570210997D30F269797AD06C04E527884FAE4
      BA0716823070AE3F03A3A715707A2A008685C369F6F26C2898269D36E9D10BF3
      165E72215083BD8FF3851513D85DC9B0785282C5A4EECA74ED63EC4D0822C0EE
      3276D760AF22B87E22024C93B28F07AB89148483F16AC405A6452D91AA3525D8
      F90A9CE2191B4E1052100AC603E202D336BAD5A405587DB03787198FEFF32608
      37A80F9E771E0EE205C3E9E1609A94B7695398D15810360F93F8C13DC57A60D5
      D68AB44DC282FF3D582E7EEE03F0F07887812F9D0D074F661A01076A89F502E3
      9DD85314B749DC67BACAD2D6D39B92F08CD148F113A8D67877F56709D50E62E4
      2C01A96F1D83F3DFDF6605C06EC347A4A8F252A8878D1D13F86763958DA8BAD3
      9A90948C382FE110EC430A2470A23F0F0BB9B04A1654607C08E5C5AD0ACCA6F8
      122CC2C6D0EE5F70A704FE9C7E62F10A643860E2670D5D9A216977F1E416503E
      F5221E220581DF38E0F37B5B086A303EE62BC14237CE339D5DCEBAA1B7EF80BF
      A204C172D2BD234247521000436922EC6928C173E548305E455E15D253BC2B28
      6CA4086039A99B0EC78F14F8C14E41E46D3B08E0B553741B0C8B3C67160803D3
      FD33165CCDE215E61B64B50B960A2C277537E2F0774329F0812B17AA3894271C
      9ABD70EE37695A33867E9E18985D265160FB83DB84B0915579F8AA95CAE34DF7
      EA5F78C96B1F610605584A4AC67A9DE8F267C41F34F85BB3370F37DEC67AD7BE
      1AC051678C7CD9ECB9216DFDC0EBD434588335B843C1ADFCBF843682FB5FF9DE
      6AB7B4297007350DD6600DD6600DD6600DEEA8A6C11AACC11AACC11AACC11DD5
      3458837DED3F2BEE7AA9783FB0B00000000049454E44AE426082}
    Proportional = True
    Stretch = True
  end
  object Label18: TLabel
    Left = 392
    Top = 226
    Width = 94
    Height = 19
    Caption = 'Dziennik gry:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel41: TPanel
    Left = 392
    Top = -56
    Width = 416
    Height = 276
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object LabelCurrentPlayer: TLabel
      Left = 52
      Top = 40
      Width = 125
      Height = 23
      Caption = '[currentPlayer]'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Default'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object CurrentColor: TShape
      Left = 21
      Top = 37
      Width = 25
      Height = 25
      Brush.Color = clBtnFace
      Shape = stCircle
    end
    object LabelDiceSum: TLabel
      Left = 144
      Top = 173
      Width = 49
      Height = 23
      Caption = '[sum]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Default'
      Font.Style = []
      ParentFont = False
    end
    object DiceImage6: TImage
      Left = 87
      Top = 222
      Width = 40
      Height = 40
      Proportional = True
      Stretch = True
    end
    object DiceImage5: TImage
      Left = 40
      Top = 222
      Width = 40
      Height = 40
      Proportional = True
      Stretch = True
    end
    object DiceImage4: TImage
      Left = 86
      Top = 176
      Width = 40
      Height = 40
      Proportional = True
      Stretch = True
    end
    object DiceImage3: TImage
      Left = 41
      Top = 176
      Width = 40
      Height = 40
      Proportional = True
      Stretch = True
    end
    object DiceImage2: TImage
      Left = 86
      Top = 130
      Width = 40
      Height = 40
      Proportional = True
      Stretch = True
    end
    object DiceImage1: TImage
      Left = 41
      Top = 130
      Width = 40
      Height = 40
      Proportional = True
      Stretch = True
    end
    object Label5: TLabel
      Left = 148
      Top = 213
      Width = 93
      Height = 23
      Caption = '[tossAgain]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label6: TLabel
      Left = 234
      Top = 40
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
    object Label15: TLabel
      Left = 24
      Top = 6
      Width = 119
      Height = 23
      Caption = 'Panel Dzia'#322'a'#324':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ButtonDiceToss: TButton
      Left = 43
      Top = 99
      Width = 86
      Height = 25
      Caption = 'Rzu'#263' ko'#347#263'mi'
      TabOrder = 0
      OnClick = ButtonDiceTossClick
    end
    object ButtonEndTurn: TButton
      Left = 135
      Top = 99
      Width = 86
      Height = 25
      Caption = 'Zako'#324'cz tur'#281
      TabOrder = 1
      OnClick = ButtonEndTurnClick
    end
    object ButtonBuild: TButton
      Left = 43
      Top = 68
      Width = 86
      Height = 25
      Caption = 'Nieruchomo'#347'ci'
      TabOrder = 2
      OnClick = ButtonBuildClick
    end
    object ButtonMortgage: TButton
      Left = 135
      Top = 68
      Width = 86
      Height = 25
      Caption = 'Hipoteka'
      TabOrder = 3
      OnClick = ButtonMortgageClick
    end
    object ButtonBankrupt: TButton
      Left = 227
      Top = 99
      Width = 110
      Height = 25
      Caption = 'Poddaj si'#281
      TabOrder = 4
      Visible = False
      OnClick = ButtonBankruptClick
    end
    object ButtonPrisonCard: TButton
      Left = 227
      Top = 68
      Width = 110
      Height = 25
      Caption = '"Wyjd'#378' z Wi'#281'zienia"'
      TabOrder = 5
      Visible = False
      OnClick = ButtonPrisonCardClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = -470
    Width = 150
    Height = 150
    Caption = 'Start'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 150
    Top = -470
    Width = 100
    Height = 150
    Caption = 'Saloniki'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 2
    StyleElements = []
  end
  object Panel3: TPanel
    Left = 250
    Top = -470
    Width = 100
    Height = 150
    Caption = 'Szansa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 3
  end
  object Panel4: TPanel
    Left = 350
    Top = -470
    Width = 100
    Height = 150
    Caption = 'Ateny'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 4
  end
  object Panel5: TPanel
    Left = 450
    Top = -470
    Width = 100
    Height = 150
    Caption = 'Parking Strze'#380'ony'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 5
  end
  object Panel6: TPanel
    Left = 550
    Top = -470
    Width = 100
    Height = 150
    Caption = 'Panel6'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 6
  end
  object Panel7: TPanel
    Left = 650
    Top = -470
    Width = 100
    Height = 150
    Caption = 'Panel7'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 7
  end
  object Panel8: TPanel
    Left = 750
    Top = -470
    Width = 100
    Height = 150
    Caption = 'Panel8'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 8
  end
  object Panel9: TPanel
    Left = 850
    Top = -470
    Width = 100
    Height = 150
    Caption = 'Panel9'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 9
  end
  object Panel10: TPanel
    Left = 950
    Top = -470
    Width = 100
    Height = 150
    Caption = 'Panel10'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 10
  end
  object Panel11: TPanel
    Left = 1050
    Top = -470
    Width = 150
    Height = 150
    Caption = 'Panel11'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 11
  end
  object Panel12: TPanel
    Left = 1050
    Top = -320
    Width = 150
    Height = 100
    Caption = 'Panel12'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 12
  end
  object Panel13: TPanel
    Left = 1050
    Top = -220
    Width = 150
    Height = 100
    Caption = 'Panel13'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 13
  end
  object Panel14: TPanel
    Left = 1050
    Top = -120
    Width = 150
    Height = 100
    Caption = 'Panel14'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 14
  end
  object Panel15: TPanel
    Left = 1050
    Top = -20
    Width = 150
    Height = 100
    Caption = 'Panel15'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 15
  end
  object Panel16: TPanel
    Left = 1050
    Top = 80
    Width = 150
    Height = 100
    Caption = 'Panel16'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 16
  end
  object Panel17: TPanel
    Left = 1050
    Top = 180
    Width = 150
    Height = 100
    Caption = 'Panel17'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 17
  end
  object Panel18: TPanel
    Left = 1050
    Top = 280
    Width = 150
    Height = 100
    Caption = 'Panel18'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 18
  end
  object Panel19: TPanel
    Left = 1050
    Top = 380
    Width = 150
    Height = 100
    Caption = 'Panel19'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 19
  end
  object Panel20: TPanel
    Left = 1050
    Top = 480
    Width = 150
    Height = 100
    Caption = 'Panel20'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 20
  end
  object Panel21: TPanel
    Left = 1050
    Top = 580
    Width = 150
    Height = 150
    Caption = 'Panel21'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 21
  end
  object Panel22: TPanel
    Left = 950
    Top = 580
    Width = 100
    Height = 150
    Caption = 'Panel22'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 22
  end
  object Panel23: TPanel
    Left = 850
    Top = 580
    Width = 100
    Height = 150
    Caption = 'Panel23'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 23
  end
  object Panel24: TPanel
    Left = 750
    Top = 580
    Width = 100
    Height = 150
    Caption = 'Panel24'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 24
  end
  object Panel25: TPanel
    Left = 650
    Top = 580
    Width = 100
    Height = 150
    Caption = 'Panel25'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 25
  end
  object Panel26: TPanel
    Left = 550
    Top = 580
    Width = 100
    Height = 150
    Caption = 'Panel26'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 26
  end
  object Panel27: TPanel
    Left = 450
    Top = 580
    Width = 100
    Height = 150
    Caption = 'Panel27'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 27
  end
  object Panel28: TPanel
    Left = 350
    Top = 580
    Width = 100
    Height = 150
    Caption = 'Panel28'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 28
  end
  object Panel29: TPanel
    Left = 250
    Top = 580
    Width = 100
    Height = 150
    Caption = 'Panel29'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 29
  end
  object Panel30: TPanel
    Left = 150
    Top = 580
    Width = 100
    Height = 150
    Caption = 'Panel30'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 30
  end
  object Panel31: TPanel
    Left = 0
    Top = 580
    Width = 150
    Height = 150
    Caption = 'Panel31'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 31
  end
  object Panel32: TPanel
    Left = 0
    Top = 480
    Width = 150
    Height = 100
    Caption = 'Panel32'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 32
  end
  object Panel33: TPanel
    Left = 0
    Top = 380
    Width = 150
    Height = 100
    Caption = 'Panel33'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 33
  end
  object Panel34: TPanel
    Left = 0
    Top = 280
    Width = 150
    Height = 100
    Caption = 'Panel34'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 34
  end
  object Panel35: TPanel
    Left = 0
    Top = 180
    Width = 150
    Height = 100
    Caption = 'Panel35'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 35
  end
  object Panel36: TPanel
    Left = 0
    Top = 80
    Width = 150
    Height = 100
    Caption = 'Panel36'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 36
  end
  object Panel37: TPanel
    Left = 0
    Top = -21
    Width = 150
    Height = 100
    Caption = 'Panel37'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 37
  end
  object Panel38: TPanel
    Left = 0
    Top = -120
    Width = 150
    Height = 100
    Caption = 'Panel38'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 38
  end
  object Panel39: TPanel
    Left = 0
    Top = -220
    Width = 150
    Height = 100
    Caption = 'Panel39'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 39
  end
  object Panel40: TPanel
    Left = 0
    Top = -320
    Width = 150
    Height = 100
    Caption = 'Panel40'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 40
  end
  object Memo1: TMemo
    Left = 186
    Top = -224
    Width = 200
    Height = 300
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Default'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 41
  end
  object Memo2: TMemo
    Left = 824
    Top = -224
    Width = 200
    Height = 300
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Default'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 42
  end
  object Memo3: TMemo
    Left = 180
    Top = 245
    Width = 200
    Height = 300
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Default'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 43
  end
  object Memo4: TMemo
    Left = 824
    Top = 245
    Width = 200
    Height = 300
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Default'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 44
  end
  object Memo5: TMemo
    Left = 392
    Top = 245
    Width = 416
    Height = 300
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 45
  end
  object Panel42: TPanel
    Left = 392
    Top = -121
    Width = 416
    Height = 59
    Caption = 'Panel42'
    ParentBackground = False
    ShowCaption = False
    TabOrder = 46
    object Label16: TLabel
      Left = 0
      Top = 0
      Width = 124
      Height = 16
      Caption = 'Panel Debuggowania:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 160
      Top = 7
      Width = 95
      Height = 13
      Caption = 'Wynik rzutu ko'#347#263'mi:'
    end
    object ButtonShowChanceCards: TButton
      Left = 19
      Top = 22
      Width = 109
      Height = 25
      Caption = 'Poka'#380' Karty Szansy'
      TabOrder = 0
      OnClick = ButtonShowChanceCardsClick
    end
    object CheatBox1: TCheckBox
      Left = 246
      Top = 26
      Width = 99
      Height = 17
      Caption = 'Oszukana Kostka'
      TabOrder = 1
    end
    object UpDown2: TUpDown
      Left = 224
      Top = 22
      Width = 16
      Height = 21
      Associate = Edit2
      Min = 1
      Max = 6
      Position = 1
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 199
      Top = 22
      Width = 25
      Height = 21
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 3
      Text = '1'
    end
    object UpDown1: TUpDown
      Left = 184
      Top = 22
      Width = 16
      Height = 21
      Associate = Edit1
      Min = 1
      Max = 6
      Position = 1
      TabOrder = 4
    end
    object Edit1: TEdit
      Left = 159
      Top = 22
      Width = 25
      Height = 21
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 5
      Text = '1'
    end
  end
  object TimerMovement: TTimer
    Enabled = False
    Interval = 150
    OnTimer = TimerMovementTimer
    Left = 25
    Top = 221
  end
  object TimerResponse: TTimer
    Interval = 500
    OnTimer = TimerResponseTimer
    Left = 86
    Top = 221
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 82
    object File1: TMenuItem
      Caption = 'Plik'
      object NewGame1: TMenuItem
        Caption = 'Nowa gra'
        OnClick = NewGame1Click
      end
      object Save1: TMenuItem
        Caption = 'Zapisz'
        OnClick = Save1Click
      end
      object Load1: TMenuItem
        Caption = 'Wczytaj'
        OnClick = Load1Click
      end
      object CalculateScore1: TMenuItem
        Caption = 'Podsumuj Gr'#281
        OnClick = CalculateScore1Click
      end
      object Exit1: TMenuItem
        Caption = 'Wyjd'#378
        OnClick = Exit1Click
      end
    end
    object Options1: TMenuItem
      Caption = 'Opcje'
      object MoveOptions1: TMenuItem
        Caption = 'Szybko'#347#263' ruchu'
        object MoveSpeed500: TMenuItem
          Caption = '500ms'
          OnClick = MoveSpeed500Click
        end
        object MoveSpeed250: TMenuItem
          Caption = '250ms'
          OnClick = MoveSpeed250Click
        end
        object MoveSpeed150: TMenuItem
          Caption = '150ms'
          Checked = True
          OnClick = MoveSpeed150Click
        end
        object MoveSpeed50: TMenuItem
          Caption = '50ms'
          OnClick = MoveSpeed50Click
        end
        object MoveSpeed1: TMenuItem
          Caption = '1ms'
          OnClick = MoveSpeed1Click
        end
      end
      object ResponseOptions1: TMenuItem
        Caption = 'Szybko'#347#263' reakcji'
        object ResponseSpeed5000: TMenuItem
          Caption = '5000ms'
          OnClick = ResponseSpeed5000Click
        end
        object ResponseSpeed2500: TMenuItem
          Caption = '2500ms'
          OnClick = ResponseSpeed2500Click
        end
        object ResponseSpeed1500: TMenuItem
          Caption = '1500ms'
          OnClick = ResponseSpeed1500Click
        end
        object ResponseSpeed500: TMenuItem
          Caption = '500ms'
          Checked = True
          OnClick = ResponseSpeed500Click
        end
        object ResponseSpeed1: TMenuItem
          Caption = '1ms'
          OnClick = ResponseSpeed1Click
        end
      end
      object LogOptions1: TMenuItem
        Caption = 'Wiadomo'#347'ci'
        object LogMoves1: TMenuItem
          Caption = 'Ruchy graczy'
          Checked = True
          OnClick = LogMoves1Click
        end
        object LogStart1: TMenuItem
          Caption = 'Premia Start'
          Checked = True
          OnClick = LogStart1Click
        end
        object LogBuy1: TMenuItem
          Caption = 'Kupno nieruchomo'#347'ci'
          Checked = True
          OnClick = LogBuy1Click
        end
        object LogPay1: TMenuItem
          Caption = 'Op'#322'aty'
          Checked = True
          OnClick = LogPay1Click
        end
        object LogCards1: TMenuItem
          Caption = 'Karty'
          Checked = True
          OnClick = LogCards1Click
        end
      end
      object Debugger1: TMenuItem
        Caption = 'Debugger'
        OnClick = Debugger1Click
      end
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'esav'
    Filter = 'Zapis Gry Eurobiznes|*.esav'
    Left = 88
    Top = 149
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'esav'
    Filter = 'Zapis Gry Eurobiznes|*.esav'
    Left = 24
    Top = 149
  end
  object TimerPlayerFlash: TTimer
    Enabled = False
    Interval = 50
    OnTimer = TimerPlayerFlashTimer
    Left = 88
    Top = 89
  end
end
