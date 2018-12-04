object P_attendanceFRM: TP_attendanceFRM
  Left = 365
  Top = 153
  Caption = '--'
  ClientHeight = 521
  ClientWidth = 1195
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1195
    Height = 53
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label4: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1187
      Height = 45
      Align = alClient
      Alignment = taCenter
      Caption = #928#945#961#959#965#963#953#959#955#972#947#953#959
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3947580
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 200
      ExplicitHeight = 32
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 478
    Width = 1195
    Height = 43
    Align = alBottom
    TabOrder = 3
    object RzPanel1: TRzPanel
      Left = 1094
      Top = 1
      Width = 100
      Height = 41
      Align = alRight
      BorderOuter = fsNone
      TabOrder = 0
      object RzBitBtn1: TRzBitBtn
        Left = 6
        Top = 3
        Width = 73
        Height = 34
        Caption = 'Close'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 0
        OnClick = RzBitBtn1Click
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFF0004450004450004450004450004450004450004450004450004450004
          45000445000445000445000445000445000445000445000445FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000A4D3461A53F70B44B7DC15789CE5F91D66396DB
          6396DB6396DB6598DD6295DA6295DA5D90D55688CD4C7EC24374B83765A9000A
          4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0011563B6DB14174B84B7EC256
          89CE5E91D66396DB6396DB6396DB6598DD6295DA6295DA5D90D55689CE4D80C4
          4477BB3E70B4001156FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0018613869
          AE3366A72B5EA22B5EA22B5EA22B5EA22B5EA2497CCE6396DB3164A52B5EA22B
          5EA22B5EA22B5EA22D60A43869AE001861FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF001F6A3A6CB02C5FA32B5EA22B5EA22B5EA22B5EA22B5EA24779CA6093
          D8295CA02B5EA22B5EA22B5EA22B5EA22E61A53A6CB0001F6AFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF00226D3B6DB128579B2B5EA22B5EA22B5EA22B5EA2
          2B5EA24274C45B8ED42554982B5EA22B5EA22B5EA22B5EA22E61A53B6DB10022
          6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0024703D6FB42451952B5EA22B
          5EA22B5EA22B5EA22B5EA23F70BE578ACF214E922B5EA22B5EA22B5EA22B5EA2
          2E61A53D6FB4002470FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0026723E70
          B51E498E2A5CA02B5EA22B5EA22B5EA22B5EA23B6BB95285CB1D478C2A5CA02B
          5EA22B5EA22B5EA22D60A43E70B5002672FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0028754072B7183F842451962B5EA22B5EA22B5EA22B5EA23766B44E81
          C7173D812451962B5EA22B5EA22B5EA22D60A44072B7002875FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF002A784274B9133479193F84224F9328599D2B5EA2
          2B5EA23463AF4A7DC2113176193F84224F9328599D2B5EA22E61A54274B9002A
          78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF002C7A4376BB0C296F0F307415
          3A7E1A43871D488C214F933261AD487BC00B276B0F3074153A7E1A43871D488C
          2451964376BB002C7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF002E7D4578
          BD477ABF477ABF477ABF477ABF477ABF477ABF477ABF477ABF477ABF477ABF47
          7ABF477ABF477ABF142669142669002E7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF002F7F477ABF3260AC3260AC3160AC325FAB325FAC3160AB3463AE477A
          BF3260AC3260AC3160AB325FAC3160AB3166B45287D1002F7FFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF003182497CC13265A6285B9F285B9F285B9F285B9F
          285B9F3462AF4A7DC22E61A2285B9F285B9F285B9F285B9F70A3EB84B7FC0031
          82FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0033844B7EC3295CA0275A9E27
          5A9E275A9E275A9E275A9E3A6AB85184CA26589C275A9E275A9E275A9E275A9E
          2B5EA24B7EC3003384FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0035864D80
          C525549826599D26599D26599D26599D26599D4172C2598CD2214F9326599D26
          599D26599D26599D2B5EA24D80C5003586FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0036894E81C7204D9125589C25589C25589C25589C25589C497BCE6295
          DB1D488C25589C25589C25589C25589C2A5DA14E81C7003689FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF00388B5083C91C458A23559924579B24579B24579B
          24579B5286DC6C9FE518418423559924579B24579B24579B295CA05083C90038
          8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00398C5084CA163C7F1D4A8D23
          569A23569A23569A23569A5B90E675A8ED1337791D4A8D23569A23569A23569A
          295CA05084CA00398CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003B8E5286
          CC0F2F7213397A1A478A1F5094225599225599629AF17DB0F50C2A6B13397A1A
          478A1F5094225599285B9F5286CC003B8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF003C905387CD0A266A0C2869123576153D7F1942851C488B67A0F882B5
          FA0722620C2A6B123576153D7F174083214E925387CD003C90FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF003D91598DD25F92D7699CE174A7EC7DB0F584B7FC
          84B7FC84B7FC82B5FA82B5FA82B5FA7CAFF473A6EB6A9DE26194D95B8FD4003D
          91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003E935085CC5D91D7689CE173
          A6EC7EB1F684B7FC84B7FC84B7FC82B5FA82B5FA82B5FA7BAEF373A6EC699DE2
          6093D95388CF003E93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003F94003F
          94003F94003F94003F94003F94003F94003F94003F94003F94003F94003F9400
          3F94003F94003F94003F94003F94003F94FFFFFFFFFFFFFFFFFF}
        Margin = -1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 53
    Width = 1195
    Height = 39
    Align = alTop
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 92
    Width = 1195
    Height = 386
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Panel5: TPanel
      Left = 441
      Top = 1
      Width = 672
      Height = 384
      Align = alLeft
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Locked = True
      ParentFont = False
      TabOrder = 0
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 36
        Width = 672
        Height = 305
        ControlType.Strings = (
          'Is_Present;CustomEdit;PresentFLD;F')
        Selected.Strings = (
          'PersonSerial'#9'4'#9'ps'
          'DaySerial'#9'4'#9'ds'
          'Last_name'#9'25'#9#917#960#943#952#949#964#959#9'F'
          'first_name'#9'25'#9#908#957#959#956#945#9'F'
          'Is_Present'#9'7'#9#928#945#961#974#957
          'Hours_Present'#9'10'#9'Hours'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 4
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = vPresenceSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        UseTFields = False
        OnExit = wwDBGrid1Exit
        ExplicitWidth = 577
        object PresentFLD: TwwCheckBox
          Left = 72
          Top = 62
          Width = 53
          Height = 19
          DisableThemes = False
          AlwaysTransparent = False
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
          DisplayValueChecked = 'Y'
          DisplayValueUnchecked = 'N'
          NullAndBlankState = cbUnchecked
          DataField = 'Is_Present'
          DataSource = vPresenceSRC
          ShowText = False
          TabOrder = 0
          OnClick = PresentFLDClick
        end
      end
      object RzPanel2: TRzPanel
        Left = 0
        Top = 0
        Width = 672
        Height = 36
        Align = alTop
        BorderOuter = fsNone
        TabOrder = 1
        ExplicitWidth = 576
        object wwDBNavigator1: TwwDBNavigator
          Left = 0
          Top = 0
          Width = 153
          Height = 36
          AutosizeStyle = asSizeNavButtons
          DataSource = vPresenceSRC
          RepeatInterval.InitialDelay = 500
          RepeatInterval.Interval = 100
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          object wwDBNavigator1Button: TwwNavButton
            Left = 0
            Top = 0
            Width = 26
            Height = 36
            Hint = 'Move to first record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator1Button'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 0
            Style = nbsFirst
          end
          object wwNavButton1: TwwNavButton
            Left = 26
            Top = 0
            Width = 26
            Height = 36
            Hint = 'Move to prior record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'Nav1Prior'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 1
            Style = nbsPrior
          end
          object wwNavButton2: TwwNavButton
            Left = 52
            Top = 0
            Width = 26
            Height = 36
            Hint = 'Move to next record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'Nav1Next'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 2
            Style = nbsNext
          end
          object wwNavButton3: TwwNavButton
            Left = 78
            Top = 0
            Width = 25
            Height = 36
            Hint = 'Move to last record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'Nav1Button1'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 3
            Style = nbsLast
          end
          object wwDBNavigator1Button1: TwwNavButton
            Left = 103
            Top = 0
            Width = 25
            Height = 36
            Hint = 'Post changes of current record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator1Button1'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 4
            Style = nbsPost
          end
          object wwDBNavigator1Button2: TwwNavButton
            Left = 128
            Top = 0
            Width = 25
            Height = 36
            Hint = 'Cancel changes made to current record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator1Button2'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 5
            Style = nbsCancel
          end
        end
      end
      object RzPanel5: TRzPanel
        Left = 0
        Top = 341
        Width = 672
        Height = 43
        Align = alBottom
        BorderOuter = fsFlat
        BorderSides = [sdLeft, sdRight, sdBottom]
        TabOrder = 2
        ExplicitWidth = 576
        object RzPanel6: TRzPanel
          Left = 571
          Top = 0
          Width = 100
          Height = 42
          Align = alRight
          BorderOuter = fsNone
          TabOrder = 0
          ExplicitLeft = 475
        end
        object SavePresBTN: TBitBtn
          Left = 7
          Top = 5
          Width = 89
          Height = 34
          Caption = 'Save'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF05793AEDF8F2FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E8245
            63CE9D108447EFF9F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF0D844472D1A76DD0A466CE9F0F8747E8F4ECFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF0D864480D7B07ED5AE76D2A96DD0A465CD9F108947EBF6EEFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF04823D8FDAB98FDAB986D8B37DD5AE74D2A86ACF
            A261CC9D0F8B48EEF7F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C88469CDFC19FE0C398DDBF8EDBB8
            85D7B27AD4AB6FD1A665CE9F5CCB9A0F8D4AEEF7F1FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF098C47A5E1C6ADE4CCA7
            E2C89FDFC395DCBC8AD9B67ED6AE72D1A868CEA05ECB9A57C9970E904CCBE3CC
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF099048A7E2
            C8B8E7D2B5E6D0AEE4CCA4E1C699DDBF26B46688D9B475D2A96ACFA260CC9B57
            C99651C794048C41D5E9D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            079347A1E1C4B8E7D2BEE9D6B7E7D3AFE5CDA3E0C60D964AFFFFFF1FAD5F83D7
            B26BD0A260CC9C58C99651C89351C7930E974DDAECDBFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF0291438FDBB9AEE4CCB4E6D0B8E7D2B5E6D0A7E2C80B974BFFFFFF
            FFFFFFFFFFFF1FAD5F7CD5AD60CC9C57CA9651C89350C79251C7920E984EDDEE
            DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF19A359A0E0C3AEE4CCB0E4CDA4E1C51D
            A35BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF23B16373D1A856C99650C7924FC791
            4FC79251C791119C51DEEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1CA75C9DDF
            C2A6E2C7109F51FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF23B1636B
            D0A24FC7924FC79250C79250C79250C791139E53E3F2E5FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF1AA85A16A557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF24B36563CD9E50C7924FC79250C79250C79251C7920C9B4DFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20AF615FCC9A4FC79250C79251C8
            93088D46FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1BAA5C
            5ACA9853C8940A964BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF11A052139F53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          TabOrder = 1
          OnClick = SavePresBTNClick
        end
        object CanelBTN: TBitBtn
          Left = 106
          Top = 6
          Width = 89
          Height = 34
          Caption = 'Cancel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E23A44E2FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E23B46E2FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E2616BF9616BF93842E0FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3842E0616BF9
            616BF93B46E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E15660F1737C
            FE7E87FE626CF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38
            42E0626CF97E87FE737CFE5660F13A44E1FFFFFFFFFFFFFFFFFFFFFFFF3842E0
            4C54EA6169F66972FC757FFE848DFE636DFA3842E0FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF3842E0636DFA848DFE757FFE6972FC6169F64C54EA3842E0FFFFFFFF
            FFFFFFFFFF3741DF464FE75961F1626BF86B74FE7882FE828CFE616BF93943E1
            FFFFFFFFFFFFFFFFFF3943E1616BF9828CFE7882FE6B74FE626BF85961F1464F
            E73741DFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851E85C64F3646CF96A73FD74
            7DFE7B85FE5D67F73B46E2FFFFFF3B46E25D67F77B85FE747DFE6A73FD646CF9
            5C64F34851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851
            E85A62F2616AF7666FFA6D76FE717BFE6B74FE3B46E26B74FE717BFE6D76FE66
            6FFA616AF75A62F24851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF3741DF4750E75860F15D65F4616AF7646DF96770FB6770FB6770
            FB646DF9616AF75D65F45860F14750E73741DFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE424AE34E55E9575FF05A62F2
            5C64F35C64F35C64F35A62F2575FF04E55E9424AE33640DEFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE4E
            55E9575FF05A62F25C64F35C64F35C64F35A62F2575FF04E55E93640DEFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF3640DE575FF05A62F25C64F35C64F35C64F35A62F2575FF036
            40DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF3640DE4E55E9575FF05A62F25C64F35C64F35C64
            F35A62F2575FF04E55E93640DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE424AE34E55E9575FF05A62F2
            5C64F35C64F35C64F35A62F2575FF04E55E9424AE33640DEFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4750E75860F15D
            65F4616AF7646DF96770FB6770FB6770FB646DF9616AF75D65F45860F14750E7
            3741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851
            E85A62F2616AF7666FFA6D76FE717BFE6B74FE3B46E26B74FE717BFE6D76FE66
            6FFA616AF75A62F24851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            3741DF4851E85C64F3646CF96A73FD747DFE7B85FE5D67F73B46E2FFFFFF3B46
            E25D67F77B85FE747DFE6A73FD646CF95C64F34851E83741DFFFFFFFFFFFFFFF
            FFFFFFFFFF3741DF464FE75961F1626BF86B74FE7882FE828CFE616BF93943E1
            FFFFFFFFFFFFFFFFFF3943E1616BF9828CFE7882FE6B74FE626BF85961F1464F
            E73741DFFFFFFFFFFFFFFFFFFF3842E04C54EA6169F66972FC757FFE848DFE63
            6DFA3842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3842E0636DFA848DFE757FFE
            6972FC6169F64C54EA3842E0FFFFFFFFFFFFFFFFFFFFFFFF3A44E15660F1737C
            FE7E87FE626CF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38
            42E0626CF97E87FE737CFE5660F13A44E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF3B46E2616BF9616BF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF3842E0616BF9616BF93B46E2FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E23A44E2FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E23B46E2FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          TabOrder = 2
          OnClick = CanelBTNClick
        end
        object BitBtn1: TBitBtn
          Left = 304
          Top = 4
          Width = 99
          Height = 34
          Caption = 'Select ALL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF169C16169C16FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF169C1624B72C22B62A22B62A
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF17A61721B4282F
            D4442ED34128C63422B62AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF18AB
            181DAE2330D4462FD4442ED2422DD03F28C63422B62AFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF18B0181BAD1E30D24732D74A30D4472CD24125CF3A2BD03C28C63422B6
            2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF18B2181BAD1E2FD04636DA5132D64A2FD5474DDF66AAF1BA
            37D64A29D03C28C63423B92DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF18B61819AD192ECD4239DB5735D75033D74C81
            EB9858EF7BB3F8CCAAF1BA38D64B2AD03D28C63421B428FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF92DD9218B1182BC83C3ADC5C38DA
            5636D85281EB9821C72821C52821C728B4F9CDAAF1BA2ED3422BD13E28C6341C
            AA22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF18B1182EC83A
            3DDD6238DA5A38DA5681EB9821C72816A116FFFFFF16A11629D133C9FADB93ED
            A72AD13E2CD34028C6341AA31EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF22BB2938DA5A3FDE6438DA5AB6F4D121C72816A116FFFFFFFFFFFFFFFFFF
            17A9173ADA47D6FAE380EA9629D13D2DD44228C63423B92DFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF20BA286CE89038DA5AB6F4D121C72816A116FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF16A51646E05ADDFBE868E57D28CF3C2ED44328C634
            179C19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF18B2184AD95FB6F4D155DE6B16A1
            16FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF16A5165EE974DFFBEA4F
            DE6528D03D2FD54427C032179A17FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF18B719
            16A11616A116FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF18A81877EF92DCFBE843DB582BD13E2FD64423B92D169C16FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF18AD1996F4B1D6FAE34FDE652CD2412FD5441FB1
            27169C16FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF21BB2AB6F7CDD6FAE3
            4FDE652DD3422ED3421CA922169F16FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF22BD2B96F4B1D6FAE34FDE652FD5442DCF3F1AA31E92DD92FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF22BD2B96F4B1D6FAE34FDE6530D7472ACB3B1A
            A31EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF22BD2B4AD95ED6FA
            E34FDE6531D7481CA723FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF22BD2B4AD95ED6FAE32ECD411FB127FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF92DD924AD95E27C032FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          TabOrder = 3
          OnClick = BitBtn1Click
        end
      end
    end
    object PanelX: TRzPanel
      Left = 1
      Top = 1
      Width = 440
      Height = 384
      Align = alLeft
      BorderOuter = fsNone
      TabOrder = 1
      object RzPanel3: TRzPanel
        Left = 0
        Top = 0
        Width = 440
        Height = 9
        Align = alTop
        BorderOuter = fsNone
        TabOrder = 0
      end
      object RzPanel4: TRzPanel
        Left = 0
        Top = 187
        Width = 440
        Height = 197
        Align = alBottom
        BorderOuter = fsNone
        TabOrder = 1
        object Grid1: TwwDBGrid
          Left = 0
          Top = 0
          Width = 399
          Height = 197
          Selected.Strings = (
            'DAYSERIAL'#9'6'#9'A/A'
            'SUBJECT'#9'23'#9#920#941#956#945
            'SEMINAR_DAY'#9'10'#9#924#941#961#945
            'DURATION_HOURS'#9'6'#9#911#961#949#962)
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alLeft
          Color = 12713983
          DataSource = DaySRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyOptions = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = True
        end
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 5
        Width = 273
        Height = 212
        Caption = #931#949#956#953#957#940#961#953#959
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label6: TLabel
          Left = 15
          Top = 75
          Width = 58
          Height = 14
          Caption = #928#949#961#953#947#961#945#966#942
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 6
          Top = 114
          Width = 67
          Height = 14
          Caption = #917#960#953#967#949#953#961#953#963#953#945#954#972
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 25
          Top = 140
          Width = 48
          Height = 14
          Caption = #928#949#961#943#959#948#959#962
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RzDBLabel4: TRzDBLabel
          Left = 79
          Top = 138
          Width = 80
          Height = 20
          BorderOuter = fsFlat
          BorderWidth = 1
          DataField = 'DATE_STARTED'
          DataSource = TableSRC
        end
        object RzDBLabel5: TRzDBLabel
          Left = 176
          Top = 138
          Width = 80
          Height = 20
          BorderOuter = fsFlat
          BorderWidth = 1
          DataField = 'DATE_COMPLETED'
          DataSource = TableSRC
        end
        object RzDBLabel6: TRzDBLabel
          Left = 79
          Top = 72
          Width = 178
          Height = 20
          ParentColor = False
          BorderOuter = fsFlat
          DataField = 'SEMINAR_NAME'
          DataSource = TableSRC
        end
        object Companylbl: TLabel
          Left = 30
          Top = 165
          Width = 43
          Height = 14
          Caption = #917#964#945#953#961#949#943#945
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RzDBLabel7: TRzDBLabel
          Left = 79
          Top = 164
          Width = 178
          Height = 20
          ParentColor = False
          BorderOuter = fsFlat
          DataField = 'LAST_NAME'
          DataSource = TableSRC
        end
        object Label2: TLabel
          Left = 19
          Top = 25
          Width = 54
          Height = 14
          Caption = #913#961'. '#913#925#913#916
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object SerialFLD: TRzDBLabel
          Left = 79
          Top = 20
          Width = 75
          Height = 20
          BorderOuter = fsFlat
          BorderWidth = 1
          DataField = 'ANAD_NUMBER'
          DataSource = TableSRC
        end
        object Label1: TLabel
          Left = 52
          Top = 48
          Width = 21
          Height = 14
          Caption = #913'/'#913
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RzDBLabel1: TRzDBLabel
          Left = 79
          Top = 46
          Width = 75
          Height = 20
          Alignment = taRightJustify
          BorderOuter = fsFlat
          BorderWidth = 1
          DataField = 'SERIAL_NUMBER'
          DataSource = TableSRC
        end
        object wwDBComboBox2: TwwDBComboBox
          Left = 79
          Top = 111
          Width = 80
          Height = 22
          ShowButton = False
          Style = csDropDownList
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          DataField = 'TYPE_MONO_POLY'
          DataSource = TableSRC
          DropDownCount = 8
          ItemHeight = 0
          Items.Strings = (
            #924#972#957#959'-'#917#960#967'.'#9'M'
            #928#972#955#965'-'#917#960#967'.'#9'P')
          Sorted = False
          TabOrder = 0
          UnboundDataType = wwDefault
        end
      end
    end
  end
  object TableSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'GEN_COMPANY'
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR'
      
        '  (SERIAL_NUMBER, ANAD_NUMBER, FK_SEMINAR, FK_INSTRUCTOR, FK_EXA' +
        'MINER, FK_VENUE, FK_COMPANY_PERSON_SERIAL, SEMINAR_NAME, DATE_ST' +
        'ARTED, DATE_COMPLETED, DURATION_DAYS, DURATION_HOURS, AMOUNT_ANA' +
        'D, COMMENTS, ANAD_APPROVED, STATUS, IS_INVOICED, IS_CERTIFICATED' +
        ', MAX_CAPACITY, HAS_EXPIRY, EXPIRY_PERIOD, TYPE_MONO_POLY, SEM_C' +
        'ATEGORY)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :ANAD_NUMBER, :FK_SEMINAR, :FK_INSTRUCTOR, :F' +
        'K_EXAMINER, :FK_VENUE, :FK_COMPANY_PERSON_SERIAL, :SEMINAR_NAME,' +
        ' :DATE_STARTED, :DATE_COMPLETED, :DURATION_DAYS, :DURATION_HOURS' +
        ', :AMOUNT_ANAD, :COMMENTS, :ANAD_APPROVED, :STATUS, :IS_INVOICED' +
        ', :IS_CERTIFICATED, :MAX_CAPACITY, :HAS_EXPIRY, :EXPIRY_PERIOD, ' +
        ':TYPE_MONO_POLY, :SEM_CATEGORY)')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, ANAD_NUMBER = :ANAD_NUMBER, FK' +
        '_SEMINAR = :FK_SEMINAR, FK_INSTRUCTOR = :FK_INSTRUCTOR, FK_EXAMI' +
        'NER = :FK_EXAMINER, FK_VENUE = :FK_VENUE, FK_COMPANY_PERSON_SERI' +
        'AL = :FK_COMPANY_PERSON_SERIAL, SEMINAR_NAME = :SEMINAR_NAME, DA' +
        'TE_STARTED = :DATE_STARTED, DATE_COMPLETED = :DATE_COMPLETED, DU' +
        'RATION_DAYS = :DURATION_DAYS, DURATION_HOURS = :DURATION_HOURS, ' +
        'AMOUNT_ANAD = :AMOUNT_ANAD, COMMENTS = :COMMENTS, ANAD_APPROVED ' +
        '= :ANAD_APPROVED, STATUS = :STATUS, IS_INVOICED = :IS_INVOICED, ' +
        'IS_CERTIFICATED = :IS_CERTIFICATED, MAX_CAPACITY = :MAX_CAPACITY' +
        ', HAS_EXPIRY = :HAS_EXPIRY, EXPIRY_PERIOD = :EXPIRY_PERIOD, TYPE' +
        '_MONO_POLY = :TYPE_MONO_POLY, SEM_CATEGORY = :SEM_CATEGORY'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, ANAD_NUMBER, FK_SEMINAR, FK_INSTRUCTOR, FK' +
        '_EXAMINER, FK_VENUE, FK_COMPANY_PERSON_SERIAL, SEMINAR_NAME, DAT' +
        'E_STARTED, DATE_COMPLETED, DURATION_DAYS, DURATION_HOURS, AMOUNT' +
        '_ANAD, COMMENTS, ANAD_APPROVED, STATUS, IS_INVOICED, IS_CERTIFIC' +
        'ATED, MAX_CAPACITY, HAS_EXPIRY, EXPIRY_PERIOD, TYPE_MONO_POLY, S' +
        'EM_CATEGORY FROM SEMINAR'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM SEMINAR'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SEMINAR'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT'
      ' se.*, per.last_name'
      'FROM'
      '    Seminar se left outer join'
      '    person per on se.fk_company_person_serial =per.serial_number'
      'where '
      'se.serial_number= :SeminarSerial')
    Active = True
    AfterScroll = TableSQLAfterScroll
    Left = 49
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SeminarSerial'
        Value = nil
      end>
    object TableSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
    end
    object TableSQLFK_SEMINAR: TIntegerField
      FieldName = 'FK_SEMINAR'
    end
    object TableSQLFK_INSTRUCTOR: TIntegerField
      FieldName = 'FK_INSTRUCTOR'
    end
    object TableSQLFK_VENUE: TIntegerField
      FieldName = 'FK_VENUE'
    end
    object TableSQLFK_COMPANY_PERSON_SERIAL: TIntegerField
      FieldName = 'FK_COMPANY_PERSON_SERIAL'
    end
    object TableSQLSEMINAR_NAME: TWideStringField
      FieldName = 'SEMINAR_NAME'
      Size = 160
    end
    object TableSQLDATE_STARTED: TDateField
      FieldName = 'DATE_STARTED'
    end
    object TableSQLDATE_COMPLETED: TDateField
      FieldName = 'DATE_COMPLETED'
    end
    object TableSQLDURATION_DAYS: TIntegerField
      FieldName = 'DURATION_DAYS'
    end
    object TableSQLDURATION_HOURS: TIntegerField
      FieldName = 'DURATION_HOURS'
    end
    object TableSQLAMOUNT_ANAD: TFloatField
      FieldName = 'AMOUNT_ANAD'
    end
    object TableSQLCOMMENTS: TWideStringField
      FieldName = 'COMMENTS'
      Size = 160
    end
    object TableSQLANAD_APPROVED: TWideStringField
      FieldName = 'ANAD_APPROVED'
      Required = True
      FixedChar = True
      Size = 1
    end
    object TableSQLSTATUS: TWideStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object TableSQLIS_INVOICED: TWideStringField
      FieldName = 'IS_INVOICED'
      Required = True
      FixedChar = True
      Size = 1
    end
    object TableSQLIS_CERTIFICATED: TWideStringField
      FieldName = 'IS_CERTIFICATED'
      Required = True
      FixedChar = True
      Size = 1
    end
    object TableSQLMAX_CAPACITY: TIntegerField
      FieldName = 'MAX_CAPACITY'
      Required = True
    end
    object TableSQLLAST_NAME: TWideStringField
      FieldName = 'LAST_NAME'
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object TableSQLANAD_NUMBER: TWideStringField
      FieldName = 'ANAD_NUMBER'
      Required = True
      FixedChar = True
      Size = 30
    end
    object TableSQLHAS_EXPIRY: TWideStringField
      FieldName = 'HAS_EXPIRY'
      Required = True
      FixedChar = True
      Size = 1
    end
    object TableSQLEXPIRY_PERIOD: TIntegerField
      FieldName = 'EXPIRY_PERIOD'
    end
    object TableSQLFK_EXAMINER: TIntegerField
      FieldName = 'FK_EXAMINER'
    end
    object TableSQLTYPE_MONO_POLY: TWideStringField
      FieldName = 'TYPE_MONO_POLY'
      Required = True
      FixedChar = True
      Size = 1
    end
    object TableSQLSEM_CATEGORY: TWideStringField
      FieldName = 'SEM_CATEGORY'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = U_databaseFRM.DataConnection
    Left = 489
    Top = 429
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = U_databaseFRM.DataConnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 368
    Top = 497
  end
  object DaySQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR'
      '  (SERIAL_NUMBER, SEMINAR_NAME, DATE_STARTED, DATE_COMPLETED)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :SEMINAR_NAME, :DATE_STARTED, :DATE_COMPLETED' +
        ')')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, SEMINAR_NAME = :SEMINAR_NAME, ' +
        'DATE_STARTED = :DATE_STARTED, DATE_COMPLETED = :DATE_COMPLETED'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, SEMINAR_NAME, DATE_STARTED, DATE_COMPLETED' +
        ' FROM SEMINAR'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM SEMINAR'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SEMINAR'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT'
      
        'se.serial_number as SeminarSerial,se.seminar_name,se.date_starte' +
        'd,se.date_completed,'
      
        'ss.serial_number as SubjectSerial,ss.fk_seminar_serial, ss.subje' +
        'ct,'
      
        'ssd.serial_number as daySerial, ssd.FK_SEMINAR_SUBJECT_SERIAL, s' +
        'sd.seminar_day,ssd.duration_hours'
      'FROM'
      '    seminar se left outer join'
      
        '    seminar_subject ss  on se.serial_number=ss.fk_seminar_serial' +
        '  left outer join'
      
        '    seminar_subject_day ssd on  ss.serial_number = ssd.fk_semina' +
        'r_subject_serial'
      'where '
      'se.serial_number= :SeminarSerial')
    DetailFields = 'FK_SEMINAR_SERIAL'
    BeforeScroll = DaySQLBeforeScroll
    AfterScroll = DaySQLAfterScroll
    Left = 273
    Top = 101
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SeminarSerial'
        Value = nil
      end>
    object DaySQLDAYSERIAL: TIntegerField
      DisplayLabel = 'A/A'
      DisplayWidth = 6
      FieldName = 'DAYSERIAL'
      ReadOnly = True
    end
    object DaySQLSUBJECT: TWideStringField
      DisplayLabel = #920#941#956#945
      DisplayWidth = 23
      FieldName = 'SUBJECT'
      ReadOnly = True
      FixedChar = True
      Size = 60
    end
    object DaySQLSEMINAR_DAY: TDateField
      DisplayLabel = #924#941#961#945
      DisplayWidth = 10
      FieldName = 'SEMINAR_DAY'
      ReadOnly = True
    end
    object DaySQLSEMINARSERIAL: TIntegerField
      FieldName = 'SEMINARSERIAL'
      Required = True
      Visible = False
    end
    object DaySQLSEMINAR_NAME: TWideStringField
      FieldName = 'SEMINAR_NAME'
      Visible = False
      Size = 160
    end
    object DaySQLDATE_STARTED: TDateField
      FieldName = 'DATE_STARTED'
      Visible = False
    end
    object DaySQLDATE_COMPLETED: TDateField
      FieldName = 'DATE_COMPLETED'
      Visible = False
    end
    object DaySQLSUBJECTSERIAL: TIntegerField
      FieldName = 'SUBJECTSERIAL'
      ReadOnly = True
      Visible = False
    end
    object DaySQLFK_SEMINAR_SERIAL: TIntegerField
      FieldName = 'FK_SEMINAR_SERIAL'
      ReadOnly = True
      Visible = False
    end
    object DaySQLFK_SEMINAR_SUBJECT_SERIAL: TIntegerField
      FieldName = 'FK_SEMINAR_SUBJECT_SERIAL'
      ReadOnly = True
      Visible = False
    end
    object DaySQLDURATION_HOURS: TFloatField
      FieldName = 'DURATION_HOURS'
      ReadOnly = True
    end
  end
  object vPresenceSRC: TIBCDataSource
    DataSet = VPresenceSQL
    Left = 448
    Top = 412
  end
  object TableSRC: TIBCDataSource
    DataSet = TableSQL
    OnStateChange = TableSRCStateChange
    Left = 112
    Top = 9
  end
  object DaySRC: TIBCDataSource
    DataSet = DaySQL
    OnStateChange = TableSRCStateChange
    Left = 336
    Top = 105
  end
  object VPresenceSQL: TVirtualTable
    Options = [voSkipUnSupportedFieldTypes]
    FieldDefs = <
      item
        Name = 'PersonSerial'
        DataType = ftInteger
      end
      item
        Name = 'percentage_present'
        DataType = ftInteger
      end
      item
        Name = 'Is_Present'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DaySerial'
        DataType = ftInteger
      end
      item
        Name = 'Hours_Present'
        DataType = ftFloat
      end
      item
        Name = 'first_name'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'Last_name'
        DataType = ftWideString
        Size = 100
      end>
    BeforePost = VPresenceSQLBeforePost
    OnNewRecord = VPresenceSQLNewRecord
    Left = 448
    Top = 372
    object VPresenceSQLPersonSerial: TIntegerField
      DisplayLabel = 'ps'
      DisplayWidth = 4
      FieldName = 'PersonSerial'
    end
    object VPresenceSQLDaySerial: TIntegerField
      DisplayLabel = 'ds'
      DisplayWidth = 4
      FieldName = 'DaySerial'
    end
    object VPresenceSQLIs_Present: TStringField
      DisplayLabel = #928#945#961#974#957
      DisplayWidth = 7
      FieldName = 'Is_Present'
      Size = 1
    end
    object VPresenceSQLpercentage_present: TIntegerField
      DisplayLabel = '% '#911#961#945#962
      DisplayWidth = 9
      FieldName = 'percentage_present'
      Visible = False
      DisplayFormat = '0%'
    end
    object VPresenceSQLfirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 100
    end
    object VPresenceSQLLast_name: TWideStringField
      FieldName = 'Last_name'
      Size = 100
    end
    object VPresenceSQLHours_Present: TFloatField
      FieldName = 'Hours_Present'
    end
  end
  object MainMenu1: TMainMenu
    Left = 224
    object Reports1: TMenuItem
      Caption = 'Reports'
      OnClick = Reports1Click
      object N3: TMenuItem
        Caption = #928#945#961#959#965#963#943#949#962' '#919#956#941#961#945#962
        OnClick = N3Click
      end
      object N1: TMenuItem
        Caption = #928#945#961#959#965#963#943#949#962' '#945#957#940' '#919#956#941#961#945
        OnClick = N1Click
      end
      object N4: TMenuItem
        Caption = #928#945#961#959#965#963#943#949#962' - '#931#949' '#956#959#961#966#942' '#960#943#957#945#954#945
        OnClick = N4Click
      end
      object N2: TMenuItem
        Caption = #928#959#963#959#963#964#940' '#931#965#957#959#955#953#954#942#962' '#931#965#956#956#949#964#959#967#942#962
        OnClick = N2Click
      end
    end
  end
end
