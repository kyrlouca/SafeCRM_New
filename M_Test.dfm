object M_TestFRM: TM_TestFRM
  Left = 365
  Top = 153
  Caption = 'Company Details'
  ClientHeight = 558
  ClientWidth = 918
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MyPanel: TPanel
    Left = 0
    Top = 0
    Width = 918
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
      Width = 910
      Height = 45
      Align = alClient
      Alignment = taCenter
      Caption = #917#964#945#953#961#949#943#949#962
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -35
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 137
      ExplicitHeight = 42
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 515
    Width = 918
    Height = 43
    Align = alBottom
    TabOrder = 3
    object RzPanel1: TRzPanel
      Left = 817
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
    object BitBtn1: TBitBtn
      Left = 7
      Top = 5
      Width = 89
      Height = 34
      Caption = 'Accept'
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
      OnClick = BitBtn2Click
    end
    object CanelBTN: TBitBtn
      Left = 112
      Top = 5
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 53
    Width = 918
    Height = 39
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Nav1: TwwDBNavigator
      Left = 1
      Top = 7
      Width = 184
      Height = 26
      AutosizeStyle = asSizeNavButtons
      DataSource = TableSRC
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      BackgroundOptions.IndentX = 0
      BackgroundOptions.IndentY = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      object Nav1Button: TwwNavButton
        Left = 0
        Top = 0
        Width = 23
        Height = 26
        Hint = 'Move to first record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Nav1Button'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 0
        Style = nbsFirst
      end
      object Nav1Prior: TwwNavButton
        Left = 23
        Top = 0
        Width = 23
        Height = 26
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
      object Nav1Next: TwwNavButton
        Left = 46
        Top = 0
        Width = 23
        Height = 26
        Hint = 'Move to next record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Nav1Next'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 2
        Style = nbsNext
      end
      object Nav1Button1: TwwNavButton
        Left = 69
        Top = 0
        Width = 23
        Height = 26
        Hint = 'Move to last record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Nav1Button1'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 3
        Style = nbsLast
      end
      object Nav1Insert: TwwNavButton
        Left = 92
        Top = 0
        Width = 23
        Height = 26
        Hint = 'Insert new record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Nav1Insert'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        OnClick = Nav1InsertClick
        Index = 4
        Style = nbsInsert
      end
      object Nav1Delete: TwwNavButton
        Left = 115
        Top = 0
        Width = 23
        Height = 26
        Hint = 'Delete current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Nav1Delete'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 5
        Style = nbsDelete
      end
      object Nav1Post: TwwNavButton
        Left = 138
        Top = 0
        Width = 23
        Height = 26
        Hint = 'Post changes of current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Nav1Post'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 6
        Style = nbsPost
      end
      object Nav1Cancel: TwwNavButton
        Left = 161
        Top = 0
        Width = 23
        Height = 26
        Hint = 'Cancel changes made to current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Nav1Cancel'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 7
        Style = nbsCancel
      end
    end
    object wwIncrementalSearch1: TwwIncrementalSearch
      Left = 191
      Top = 12
      Width = 128
      Height = 22
      DataSource = TableSRC
      ShowMatchText = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object FuckingPanel3: TPanel
    Left = 0
    Top = 92
    Width = 918
    Height = 423
    Align = alClient
    TabOrder = 2
    object Panel5: TPanel
      Left = 693
      Top = 1
      Width = 224
      Height = 421
      Align = alRight
      BevelOuter = bvNone
      Locked = True
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 679
      Top = -37
      Width = 274
      Height = 331
      Caption = #928#955#951#961#959#966#959#961#943#949#962
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label2: TLabel
        Left = 58
        Top = 46
        Width = 37
        Height = 14
        Caption = #908#957#959#956#945
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 74
        Top = 21
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
      object Label5: TLabel
        Left = 44
        Top = 73
        Width = 51
        Height = 14
        Caption = #921#948#953#959#954#942#964#951#962
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object SerialFLD: TRzDBLabel
        Left = 102
        Top = 19
        Width = 115
        Height = 20
        Alignment = taRightJustify
        BorderOuter = fsFlat
        BorderWidth = 1
        DataField = 'SERIAL_NUMBER'
        DataSource = TableSRC
      end
      object Label17: TLabel
        Left = 52
        Top = 95
        Width = 43
        Height = 14
        Caption = 'Contact'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object FirstFLD: TwwDBEdit
        Left = 102
        Top = 43
        Width = 161
        Height = 22
        DataField = 'U_LAST_NAME'
        DataSource = TableSRC
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit1: TwwDBEdit
        Left = 102
        Top = 68
        Width = 161
        Height = 22
        DataField = 'COMPANY_OWNER'
        DataSource = TableSRC
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit2: TwwDBEdit
        Left = 102
        Top = 92
        Width = 161
        Height = 22
        DataField = 'ADDRESS_STREET'
        DataSource = TableSRC
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object RzPanel2: TRzPanel
      Left = 1
      Top = 1
      Width = 448
      Height = 421
      Align = alLeft
      BorderOuter = fsNone
      TabOrder = 0
      object RzPanel3: TRzPanel
        Left = 0
        Top = 0
        Width = 448
        Height = 9
        Align = alTop
        BorderOuter = fsNone
        TabOrder = 0
      end
      object Grid1: TwwDBGrid
        Left = 0
        Top = 9
        Width = 401
        Height = 412
        Selected.Strings = (
          'SERIAL_NUMBER'#9'10'#9's/n'#9'F'#9
          'U_FIRST_NAME'#9'17'#9'U_FIRST_NAME'#9'F'#9
          'U_LAST_NAME'#9'120'#9'U_LAST_NAME'#9'F'#9)
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alLeft
        Color = 12713983
        DataSource = TableSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyOptions = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = True
        OnTitleButtonClick = Grid1TitleButtonClick
      end
    end
    object ListView1: TListView
      Left = 408
      Top = 31
      Width = 250
      Height = 211
      Columns = <>
      TabOrder = 3
    end
  end
  object TableSRC: TDataSource
    DataSet = TableSQL
    OnStateChange = TableSRCStateChange
    Left = 136
    Top = 1
  end
  object TableSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'GEN_COMPANY'
    SQLInsert.Strings = (
      'INSERT INTO PERSON'
      
        '  (SERIAL_NUMBER, SERIAL_QB, FK_COMPANY_SERIAL, NATIONAL_ID, NIC' +
        'KNAME, OCCUPATION, PHONE_MOBILE, PHONE_FIXED, PHONE_ALTERNATE, F' +
        'AX, EMAIL, EMAIL_2, ADDRESS, ADDRESS_STREET, ADDRESS_POST_CODE, ' +
        'ADDRESS_CITY, ADDRESS_DISTRICT, DATE_STARTED, DATE_BIRTH, DATE_U' +
        'SER, LIST_SOURCE, FACEBOOK, WEBSITE, TWITTER, STATUS_ACTIVE, SEX' +
        ', IS_COMPANY, COMPANY_OWNER, COMPANY_CONTACT, COMPANY_REGISTRATI' +
        'ON_DATE, PHONE_CONTACT, COMPANY_OWNER_REG, COMPANY_CONTACT_PHONE' +
        ', COMPANY_CONTACT_EMAIL, COMPANY_CONTACT_FAX, COMPANY_SOCIAL_SEC' +
        ', COMPANY_EMPLOYEES, PHONE_MOBILE_2, LINKED_IN, JOB, IS_SAFE_COM' +
        'PANY, COMPANY_OWNER_ID, U_LAST_NAME, U_FIRST_NAME, U_COMPANY_CON' +
        'TACT_FIRST, U_COMPANY_CONTACT_LAST, LAST_NAME, FIRST_NAME, COMPA' +
        'NY_CONTACT_LAST, COMPANY_CONTACT_FIRST, ADDRESS_DISTRICT_WIN1253' +
        ', ADDRESS_CITY_WIN1253, COMPANY_CONTACT_ID, COMPANY_CONTACT_POSI' +
        'TION, COMPANY_OWNER_PHONE, COMPANY_OWNER_FAX, COMPANY_OWNER_EMAI' +
        'L, COMPANY_MANAGER_FIRST, COMPANY_MANAGER_LAST, COMPANY_MANAGER_' +
        'PHONE, COMPANY_MANAGER_EMAIL, COMPANY_MANAGER_FAX, COMPANY_MANAG' +
        'ER_POSITION, COMPANY_MANAGER_ID, COMPANY_MAIN_ACTIVITY)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :SERIAL_QB, :FK_COMPANY_SERIAL, :NATIONAL_ID,' +
        ' :NICKNAME, :OCCUPATION, :PHONE_MOBILE, :PHONE_FIXED, :PHONE_ALT' +
        'ERNATE, :FAX, :EMAIL, :EMAIL_2, :ADDRESS, :ADDRESS_STREET, :ADDR' +
        'ESS_POST_CODE, :ADDRESS_CITY, :ADDRESS_DISTRICT, :DATE_STARTED, ' +
        ':DATE_BIRTH, :DATE_USER, :LIST_SOURCE, :FACEBOOK, :WEBSITE, :TWI' +
        'TTER, :STATUS_ACTIVE, :SEX, :IS_COMPANY, :COMPANY_OWNER, :COMPAN' +
        'Y_CONTACT, :COMPANY_REGISTRATION_DATE, :PHONE_CONTACT, :COMPANY_' +
        'OWNER_REG, :COMPANY_CONTACT_PHONE, :COMPANY_CONTACT_EMAIL, :COMP' +
        'ANY_CONTACT_FAX, :COMPANY_SOCIAL_SEC, :COMPANY_EMPLOYEES, :PHONE' +
        '_MOBILE_2, :LINKED_IN, :JOB, :IS_SAFE_COMPANY, :COMPANY_OWNER_ID' +
        ', :U_LAST_NAME, :U_FIRST_NAME, :U_COMPANY_CONTACT_FIRST, :U_COMP' +
        'ANY_CONTACT_LAST, :LAST_NAME, :FIRST_NAME, :COMPANY_CONTACT_LAST' +
        ', :COMPANY_CONTACT_FIRST, :ADDRESS_DISTRICT_WIN1253, :ADDRESS_CI' +
        'TY_WIN1253, :COMPANY_CONTACT_ID, :COMPANY_CONTACT_POSITION, :COM' +
        'PANY_OWNER_PHONE, :COMPANY_OWNER_FAX, :COMPANY_OWNER_EMAIL, :COM' +
        'PANY_MANAGER_FIRST, :COMPANY_MANAGER_LAST, :COMPANY_MANAGER_PHON' +
        'E, :COMPANY_MANAGER_EMAIL, :COMPANY_MANAGER_FAX, :COMPANY_MANAGE' +
        'R_POSITION, :COMPANY_MANAGER_ID, :COMPANY_MAIN_ACTIVITY)')
    SQLDelete.Strings = (
      'DELETE FROM PERSON'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE PERSON'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, SERIAL_QB = :SERIAL_QB, FK_COM' +
        'PANY_SERIAL = :FK_COMPANY_SERIAL, NATIONAL_ID = :NATIONAL_ID, NI' +
        'CKNAME = :NICKNAME, OCCUPATION = :OCCUPATION, PHONE_MOBILE = :PH' +
        'ONE_MOBILE, PHONE_FIXED = :PHONE_FIXED, PHONE_ALTERNATE = :PHONE' +
        '_ALTERNATE, FAX = :FAX, EMAIL = :EMAIL, EMAIL_2 = :EMAIL_2, ADDR' +
        'ESS = :ADDRESS, ADDRESS_STREET = :ADDRESS_STREET, ADDRESS_POST_C' +
        'ODE = :ADDRESS_POST_CODE, ADDRESS_CITY = :ADDRESS_CITY, ADDRESS_' +
        'DISTRICT = :ADDRESS_DISTRICT, DATE_STARTED = :DATE_STARTED, DATE' +
        '_BIRTH = :DATE_BIRTH, DATE_USER = :DATE_USER, LIST_SOURCE = :LIS' +
        'T_SOURCE, FACEBOOK = :FACEBOOK, WEBSITE = :WEBSITE, TWITTER = :T' +
        'WITTER, STATUS_ACTIVE = :STATUS_ACTIVE, SEX = :SEX, IS_COMPANY =' +
        ' :IS_COMPANY, COMPANY_OWNER = :COMPANY_OWNER, COMPANY_CONTACT = ' +
        ':COMPANY_CONTACT, COMPANY_REGISTRATION_DATE = :COMPANY_REGISTRAT' +
        'ION_DATE, PHONE_CONTACT = :PHONE_CONTACT, COMPANY_OWNER_REG = :C' +
        'OMPANY_OWNER_REG, COMPANY_CONTACT_PHONE = :COMPANY_CONTACT_PHONE' +
        ', COMPANY_CONTACT_EMAIL = :COMPANY_CONTACT_EMAIL, COMPANY_CONTAC' +
        'T_FAX = :COMPANY_CONTACT_FAX, COMPANY_SOCIAL_SEC = :COMPANY_SOCI' +
        'AL_SEC, COMPANY_EMPLOYEES = :COMPANY_EMPLOYEES, PHONE_MOBILE_2 =' +
        ' :PHONE_MOBILE_2, LINKED_IN = :LINKED_IN, JOB = :JOB, IS_SAFE_CO' +
        'MPANY = :IS_SAFE_COMPANY, COMPANY_OWNER_ID = :COMPANY_OWNER_ID, ' +
        'U_LAST_NAME = :U_LAST_NAME, U_FIRST_NAME = :U_FIRST_NAME, U_COMP' +
        'ANY_CONTACT_FIRST = :U_COMPANY_CONTACT_FIRST, U_COMPANY_CONTACT_' +
        'LAST = :U_COMPANY_CONTACT_LAST, LAST_NAME = :LAST_NAME, FIRST_NA' +
        'ME = :FIRST_NAME, COMPANY_CONTACT_LAST = :COMPANY_CONTACT_LAST, ' +
        'COMPANY_CONTACT_FIRST = :COMPANY_CONTACT_FIRST, ADDRESS_DISTRICT' +
        '_WIN1253 = :ADDRESS_DISTRICT_WIN1253, ADDRESS_CITY_WIN1253 = :AD' +
        'DRESS_CITY_WIN1253, COMPANY_CONTACT_ID = :COMPANY_CONTACT_ID, CO' +
        'MPANY_CONTACT_POSITION = :COMPANY_CONTACT_POSITION, COMPANY_OWNE' +
        'R_PHONE = :COMPANY_OWNER_PHONE, COMPANY_OWNER_FAX = :COMPANY_OWN' +
        'ER_FAX, COMPANY_OWNER_EMAIL = :COMPANY_OWNER_EMAIL, COMPANY_MANA' +
        'GER_FIRST = :COMPANY_MANAGER_FIRST, COMPANY_MANAGER_LAST = :COMP' +
        'ANY_MANAGER_LAST, COMPANY_MANAGER_PHONE = :COMPANY_MANAGER_PHONE' +
        ', COMPANY_MANAGER_EMAIL = :COMPANY_MANAGER_EMAIL, COMPANY_MANAGE' +
        'R_FAX = :COMPANY_MANAGER_FAX, COMPANY_MANAGER_POSITION = :COMPAN' +
        'Y_MANAGER_POSITION, COMPANY_MANAGER_ID = :COMPANY_MANAGER_ID, CO' +
        'MPANY_MAIN_ACTIVITY = :COMPANY_MAIN_ACTIVITY'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, SERIAL_QB, FK_COMPANY_SERIAL, NATIONAL_ID,' +
        ' NICKNAME, OCCUPATION, PHONE_MOBILE, PHONE_FIXED, PHONE_ALTERNAT' +
        'E, FAX, EMAIL, EMAIL_2, ADDRESS, ADDRESS_STREET, ADDRESS_POST_CO' +
        'DE, ADDRESS_CITY, ADDRESS_DISTRICT, DATE_STARTED, DATE_BIRTH, DA' +
        'TE_USER, LIST_SOURCE, FACEBOOK, WEBSITE, TWITTER, STATUS_ACTIVE,' +
        ' SEX, IS_COMPANY, COMPANY_OWNER, COMPANY_CONTACT, COMPANY_REGIST' +
        'RATION_DATE, PHONE_CONTACT, COMPANY_OWNER_REG, COMPANY_CONTACT_P' +
        'HONE, COMPANY_CONTACT_EMAIL, COMPANY_CONTACT_FAX, COMPANY_SOCIAL' +
        '_SEC, COMPANY_EMPLOYEES, PHONE_MOBILE_2, LINKED_IN, JOB, IS_SAFE' +
        '_COMPANY, COMPANY_OWNER_ID, U_LAST_NAME, U_FIRST_NAME, U_COMPANY' +
        '_CONTACT_FIRST, U_COMPANY_CONTACT_LAST, LAST_NAME, FIRST_NAME, C' +
        'OMPANY_CONTACT_LAST, COMPANY_CONTACT_FIRST, ADDRESS_DISTRICT_WIN' +
        '1253, ADDRESS_CITY_WIN1253, COMPANY_CONTACT_ID, COMPANY_CONTACT_' +
        'POSITION, COMPANY_OWNER_PHONE, COMPANY_OWNER_FAX, COMPANY_OWNER_' +
        'EMAIL, COMPANY_MANAGER_FIRST, COMPANY_MANAGER_LAST, COMPANY_MANA' +
        'GER_PHONE, COMPANY_MANAGER_EMAIL, COMPANY_MANAGER_FAX, COMPANY_M' +
        'ANAGER_POSITION, COMPANY_MANAGER_ID, COMPANY_MAIN_ACTIVITY FROM ' +
        'PERSON'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM PERSON'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM PERSON'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'person  ')
    Active = True
    AfterInsert = TableSQLAfterInsert
    Left = 49
    Top = 5
    object TableSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 's/n'
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
    end
    object TableSQLU_FIRST_NAME: TWideStringField
      DisplayWidth = 17
      FieldName = 'U_FIRST_NAME'
      FixedChar = True
      Size = 120
    end
    object TableSQLU_LAST_NAME: TWideStringField
      DisplayWidth = 120
      FieldName = 'U_LAST_NAME'
      FixedChar = True
      Size = 120
    end
    object TableSQLSERIAL_QB: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERIAL_QB'
      Visible = False
    end
    object TableSQLFK_COMPANY_SERIAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_COMPANY_SERIAL'
      Visible = False
    end
    object TableSQLNATIONAL_ID: TWideStringField
      DisplayWidth = 20
      FieldName = 'NATIONAL_ID'
      Visible = False
      FixedChar = True
    end
    object TableSQLNICKNAME: TWideStringField
      DisplayWidth = 30
      FieldName = 'NICKNAME'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object TableSQLOCCUPATION: TWideStringField
      DisplayWidth = 160
      FieldName = 'OCCUPATION'
      Visible = False
      Size = 160
    end
    object TableSQLPHONE_MOBILE: TWideStringField
      DisplayWidth = 15
      FieldName = 'PHONE_MOBILE'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object TableSQLPHONE_FIXED: TWideStringField
      DisplayWidth = 15
      FieldName = 'PHONE_FIXED'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object TableSQLPHONE_ALTERNATE: TWideStringField
      DisplayWidth = 15
      FieldName = 'PHONE_ALTERNATE'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object TableSQLFAX: TWideStringField
      DisplayWidth = 15
      FieldName = 'FAX'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object TableSQLEMAIL: TWideStringField
      DisplayWidth = 160
      FieldName = 'EMAIL'
      Visible = False
      Size = 160
    end
    object TableSQLEMAIL_2: TSmallintField
      DisplayWidth = 10
      FieldName = 'EMAIL_2'
      Visible = False
    end
    object TableSQLADDRESS: TWideStringField
      DisplayWidth = 160
      FieldName = 'ADDRESS'
      Visible = False
      Size = 160
    end
    object TableSQLADDRESS_STREET: TWideStringField
      DisplayWidth = 80
      FieldName = 'ADDRESS_STREET'
      Visible = False
      Size = 80
    end
    object TableSQLADDRESS_POST_CODE: TWideStringField
      DisplayWidth = 30
      FieldName = 'ADDRESS_POST_CODE'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object TableSQLADDRESS_CITY: TWideStringField
      DisplayWidth = 120
      FieldName = 'ADDRESS_CITY'
      Visible = False
      FixedChar = True
      Size = 120
    end
    object TableSQLADDRESS_DISTRICT: TWideStringField
      DisplayWidth = 120
      FieldName = 'ADDRESS_DISTRICT'
      Visible = False
      FixedChar = True
      Size = 120
    end
    object TableSQLDATE_STARTED: TDateField
      DisplayWidth = 10
      FieldName = 'DATE_STARTED'
      Visible = False
    end
    object TableSQLDATE_BIRTH: TDateField
      DisplayWidth = 10
      FieldName = 'DATE_BIRTH'
      Visible = False
    end
    object TableSQLDATE_USER: TDateField
      DisplayWidth = 10
      FieldName = 'DATE_USER'
      Visible = False
    end
    object TableSQLLIST_SOURCE: TWideStringField
      DisplayWidth = 160
      FieldName = 'LIST_SOURCE'
      Visible = False
      Size = 160
    end
    object TableSQLFACEBOOK: TWideStringField
      DisplayWidth = 160
      FieldName = 'FACEBOOK'
      Visible = False
      Size = 160
    end
    object TableSQLWEBSITE: TWideStringField
      DisplayWidth = 160
      FieldName = 'WEBSITE'
      Visible = False
      Size = 160
    end
    object TableSQLTWITTER: TWideStringField
      DisplayWidth = 160
      FieldName = 'TWITTER'
      Visible = False
      Size = 160
    end
    object TableSQLSTATUS_ACTIVE: TWideStringField
      DisplayWidth = 1
      FieldName = 'STATUS_ACTIVE'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object TableSQLSEX: TWideStringField
      DisplayWidth = 1
      FieldName = 'SEX'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object TableSQLIS_COMPANY: TWideStringField
      DisplayWidth = 1
      FieldName = 'IS_COMPANY'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object TableSQLCOMPANY_OWNER: TWideStringField
      DisplayWidth = 160
      FieldName = 'COMPANY_OWNER'
      Visible = False
      Size = 160
    end
    object TableSQLCOMPANY_CONTACT: TWideStringField
      DisplayWidth = 160
      FieldName = 'COMPANY_CONTACT'
      Visible = False
      Size = 160
    end
    object TableSQLCOMPANY_REGISTRATION_DATE: TDateField
      DisplayWidth = 10
      FieldName = 'COMPANY_REGISTRATION_DATE'
      Visible = False
    end
    object TableSQLPHONE_CONTACT: TWideStringField
      DisplayWidth = 15
      FieldName = 'PHONE_CONTACT'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object TableSQLCOMPANY_OWNER_REG: TWideStringField
      DisplayWidth = 30
      FieldName = 'COMPANY_OWNER_REG'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object TableSQLCOMPANY_CONTACT_PHONE: TWideStringField
      DisplayWidth = 15
      FieldName = 'COMPANY_CONTACT_PHONE'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object TableSQLCOMPANY_CONTACT_EMAIL: TWideStringField
      DisplayWidth = 50
      FieldName = 'COMPANY_CONTACT_EMAIL'
      Visible = False
      Size = 50
    end
    object TableSQLCOMPANY_CONTACT_FAX: TWideStringField
      DisplayWidth = 15
      FieldName = 'COMPANY_CONTACT_FAX'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object TableSQLCOMPANY_SOCIAL_SEC: TWideStringField
      DisplayWidth = 20
      FieldName = 'COMPANY_SOCIAL_SEC'
      Visible = False
      FixedChar = True
    end
    object TableSQLCOMPANY_EMPLOYEES: TIntegerField
      DisplayWidth = 10
      FieldName = 'COMPANY_EMPLOYEES'
      Visible = False
    end
    object TableSQLPHONE_MOBILE_2: TWideStringField
      DisplayWidth = 15
      FieldName = 'PHONE_MOBILE_2'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object TableSQLLINKED_IN: TWideStringField
      DisplayWidth = 30
      FieldName = 'LINKED_IN'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object TableSQLJOB: TWideStringField
      DisplayWidth = 50
      FieldName = 'JOB'
      Visible = False
      Size = 50
    end
    object TableSQLIS_SAFE_COMPANY: TWideStringField
      DisplayWidth = 1
      FieldName = 'IS_SAFE_COMPANY'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object TableSQLCOMPANY_OWNER_ID: TWideStringField
      DisplayWidth = 30
      FieldName = 'COMPANY_OWNER_ID'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object TableSQLU_COMPANY_CONTACT_FIRST: TWideStringField
      DisplayWidth = 120
      FieldName = 'U_COMPANY_CONTACT_FIRST'
      Visible = False
      FixedChar = True
      Size = 120
    end
    object TableSQLU_COMPANY_CONTACT_LAST: TWideStringField
      DisplayWidth = 120
      FieldName = 'U_COMPANY_CONTACT_LAST'
      Visible = False
      FixedChar = True
      Size = 120
    end
    object TableSQLLAST_NAME: TWideStringField
      DisplayWidth = 120
      FieldName = 'LAST_NAME'
      Visible = False
      FixedChar = True
      Size = 120
    end
    object TableSQLFIRST_NAME: TWideStringField
      DisplayWidth = 120
      FieldName = 'FIRST_NAME'
      Visible = False
      FixedChar = True
      Size = 120
    end
    object TableSQLCOMPANY_CONTACT_LAST: TWideStringField
      DisplayWidth = 120
      FieldName = 'COMPANY_CONTACT_LAST'
      Visible = False
      FixedChar = True
      Size = 120
    end
    object TableSQLCOMPANY_CONTACT_FIRST: TWideStringField
      DisplayWidth = 120
      FieldName = 'COMPANY_CONTACT_FIRST'
      Visible = False
      FixedChar = True
      Size = 120
    end
    object TableSQLADDRESS_DISTRICT_WIN1253: TWideStringField
      DisplayWidth = 160
      FieldName = 'ADDRESS_DISTRICT_WIN1253'
      Visible = False
      Size = 160
    end
    object TableSQLADDRESS_CITY_WIN1253: TWideStringField
      DisplayWidth = 160
      FieldName = 'ADDRESS_CITY_WIN1253'
      Visible = False
      Size = 160
    end
    object TableSQLCOMPANY_CONTACT_ID: TWideStringField
      DisplayWidth = 30
      FieldName = 'COMPANY_CONTACT_ID'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object TableSQLCOMPANY_CONTACT_POSITION: TWideStringField
      DisplayWidth = 120
      FieldName = 'COMPANY_CONTACT_POSITION'
      Visible = False
      FixedChar = True
      Size = 120
    end
    object TableSQLCOMPANY_OWNER_PHONE: TWideStringField
      DisplayWidth = 15
      FieldName = 'COMPANY_OWNER_PHONE'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object TableSQLCOMPANY_OWNER_FAX: TWideStringField
      DisplayWidth = 15
      FieldName = 'COMPANY_OWNER_FAX'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object TableSQLCOMPANY_OWNER_EMAIL: TWideStringField
      DisplayWidth = 50
      FieldName = 'COMPANY_OWNER_EMAIL'
      Visible = False
      Size = 50
    end
    object TableSQLCOMPANY_MANAGER_FIRST: TWideStringField
      DisplayWidth = 160
      FieldName = 'COMPANY_MANAGER_FIRST'
      Visible = False
      Size = 160
    end
    object TableSQLCOMPANY_MANAGER_LAST: TWideStringField
      DisplayWidth = 160
      FieldName = 'COMPANY_MANAGER_LAST'
      Visible = False
      Size = 160
    end
    object TableSQLCOMPANY_MANAGER_PHONE: TWideStringField
      DisplayWidth = 15
      FieldName = 'COMPANY_MANAGER_PHONE'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object TableSQLCOMPANY_MANAGER_EMAIL: TWideStringField
      DisplayWidth = 80
      FieldName = 'COMPANY_MANAGER_EMAIL'
      Visible = False
      Size = 80
    end
    object TableSQLCOMPANY_MANAGER_FAX: TWideStringField
      DisplayWidth = 15
      FieldName = 'COMPANY_MANAGER_FAX'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object TableSQLCOMPANY_MANAGER_POSITION: TWideStringField
      DisplayWidth = 160
      FieldName = 'COMPANY_MANAGER_POSITION'
      Visible = False
      Size = 160
    end
    object TableSQLCOMPANY_MANAGER_ID: TWideStringField
      DisplayWidth = 50
      FieldName = 'COMPANY_MANAGER_ID'
      Visible = False
      Size = 50
    end
    object TableSQLCOMPANY_MAIN_ACTIVITY: TWideStringField
      DisplayWidth = 160
      FieldName = 'COMPANY_MAIN_ACTIVITY'
      Visible = False
      Size = 160
    end
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = U_databaseFRM.DataConnection
    Left = 137
    Top = 213
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = U_databaseFRM.DataConnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 200
    Top = 209
  end
  object PrototypeBindSource1: TPrototypeBindSource
    AutoActivate = True
    AutoPost = False
    FieldDefs = <>
    ScopeMappings = <>
    Left = 743
    Top = 306
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 544
    Top = 364
  end
end
