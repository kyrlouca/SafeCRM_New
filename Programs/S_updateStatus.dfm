object S_UpdateStatusFRM: TS_UpdateStatusFRM
  Left = 365
  Top = 153
  Caption = '--'
  ClientHeight = 558
  ClientWidth = 1027
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1027
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
      Width = 1019
      Height = 45
      Align = alClient
      Alignment = taCenter
      Caption = 'UPDATE STATUS'
      Layout = tlCenter
      ExplicitWidth = 226
      ExplicitHeight = 32
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 515
    Width = 1027
    Height = 43
    Align = alBottom
    TabOrder = 3
    object RzPanel1: TRzPanel
      Left = 926
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
    Width = 1027
    Height = 39
    Align = alTop
    TabOrder = 1
    object wwIncrementalSearch1: TwwIncrementalSearch
      Left = 7
      Top = 12
      Width = 128
      Height = 22
      DataSource = TableSRC
      SearchField = 'Last_name'
      ShowMatchText = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Nav1: TwwDBNavigator
      Left = 158
      Top = 6
      Width = 184
      Height = 26
      AutosizeStyle = asSizeNavButtons
      DataSource = TableSRC
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      object Nav1Button: TwwNavButton
        Left = 0
        Top = 0
        Width = 31
        Height = 26
        Hint = 'Move to first record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Nav1Button'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 0
        Style = nbsFirst
      end
      object Nav1Prior: TwwNavButton
        Left = 31
        Top = 0
        Width = 31
        Height = 26
        Hint = 'Move to prior record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Nav1Prior'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 1
        Style = nbsPrior
      end
      object Nav1Next: TwwNavButton
        Left = 62
        Top = 0
        Width = 31
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
        Left = 93
        Top = 0
        Width = 31
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
      object Nav1Post: TwwNavButton
        Left = 124
        Top = 0
        Width = 30
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
        Index = 4
        Style = nbsPost
      end
      object Nav1Cancel: TwwNavButton
        Left = 154
        Top = 0
        Width = 30
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
        Index = 5
        Style = nbsCancel
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 92
    Width = 1027
    Height = 423
    Align = alClient
    TabOrder = 2
    object RzPanel2: TRzPanel
      Left = 1
      Top = 1
      Width = 456
      Height = 421
      Align = alLeft
      BorderOuter = fsNone
      TabOrder = 0
      object RzPanel3: TRzPanel
        Left = 0
        Top = 0
        Width = 456
        Height = 9
        Align = alTop
        BorderOuter = fsNone
        TabOrder = 0
      end
      object SemGRD: TwwDBGrid
        Left = 0
        Top = 9
        Width = 456
        Height = 412
        ControlType.Strings = (
          'SEM_CATEGORY;CustomEdit;SHowCatFLD;F'
          'STATUS;CustomEdit;ShowStatusFLD;F')
        Selected.Strings = (
          'SERIAL_NUMBER'#9'5'#9'A/A'
          'ANAD_NUMBER'#9'10'#9#913#925#913#916' '
          'SEMINAR_NAME'#9'14'#9#928#949#961#953#947#961#945#966#942
          'SEM_CATEGORY'#9'14'#9#932#973#960#959#962
          'STATUS'#9'14'#9#931#964#940#948#953#959)
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        Color = 12713983
        DataSource = TableSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = True
        OnTitleButtonClick = SemGRDTitleButtonClick
        object SHowCatFLD: TwwDBComboBox
          Left = 23
          Top = 313
          Width = 166
          Height = 23
          ParentCustomHint = False
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          ShowButton = True
          Style = csOwnerDrawVariable
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          ShowMatchText = True
          AutoSelect = False
          Ctl3D = True
          DataField = 'SEM_CATEGORY'
          DataSource = TableSRC
          DropDownCount = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 0
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          Sorted = False
          TabOrder = 0
          UnboundDataType = wwDefault
          DoubleBuffered = False
          ParentDoubleBuffered = False
        end
        object ShowStatusFLD: TwwDBComboBox
          Left = 23
          Top = 284
          Width = 166
          Height = 23
          ParentCustomHint = False
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          ShowButton = True
          Style = csOwnerDrawVariable
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          ShowMatchText = True
          AutoSelect = False
          Ctl3D = True
          DataField = 'STATUS'
          DataSource = TableSRC
          DropDownCount = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 0
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          Sorted = False
          TabOrder = 1
          UnboundDataType = wwDefault
          DoubleBuffered = False
          ParentDoubleBuffered = False
        end
      end
    end
    object RzPanel5: TRzPanel
      Left = 457
      Top = 1
      Width = 569
      Height = 421
      Align = alClient
      BorderOuter = fsNone
      TabOrder = 1
      VisualStyle = vsClassic
      object Panel6: TRzPanel
        Left = 0
        Top = 0
        Width = 569
        Height = 39
        Align = alTop
        BorderOuter = fsNone
        TabOrder = 0
      end
      object FirstGRP: TGroupBox
        Left = 6
        Top = 5
        Width = 273
        Height = 256
        Caption = #931#949#956#953#957#940#961#953#959
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label2: TLabel
          Left = 17
          Top = 81
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
        object Label3: TLabel
          Left = 54
          Top = 24
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
        object SerialFLD: TRzDBLabel
          Left = 81
          Top = 26
          Width = 80
          Height = 20
          Alignment = taRightJustify
          BorderOuter = fsFlat
          BorderWidth = 1
          DataField = 'SERIAL_NUMBER'
          DataSource = TableSRC
        end
        object Label5: TLabel
          Left = 8
          Top = 118
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
        object Label1: TLabel
          Left = 27
          Top = 144
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
        object RzDBLabel1: TRzDBLabel
          Left = 79
          Top = 142
          Width = 80
          Height = 20
          BorderOuter = fsFlat
          BorderWidth = 1
          DataField = 'DATE_STARTED'
          DataSource = TableSRC
        end
        object RzDBLabel2: TRzDBLabel
          Left = 174
          Top = 142
          Width = 80
          Height = 20
          BorderOuter = fsFlat
          BorderWidth = 1
          DataField = 'DATE_COMPLETED'
          DataSource = TableSRC
        end
        object SeminarFLD: TRzDBLabel
          Left = 79
          Top = 78
          Width = 176
          Height = 20
          ParentColor = False
          BorderOuter = fsFlat
          DataField = 'SEMINAR_NAME'
          DataSource = TableSRC
        end
        object Companylbl: TLabel
          Left = 32
          Top = 195
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
        object RzDBLabel3: TRzDBLabel
          Left = 81
          Top = 189
          Width = 175
          Height = 20
          ParentColor = False
          BorderOuter = fsFlat
          DataField = 'LAST_NAME'
          DataSource = TableSRC
        end
        object Label6: TLabel
          Left = 44
          Top = 55
          Width = 31
          Height = 14
          Caption = #913#925#913#916
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RzDBLabel4: TRzDBLabel
          Left = 79
          Top = 52
          Width = 80
          Height = 20
          ParentColor = False
          BorderOuter = fsFlat
          DataField = 'ANAD_NUMBER'
          DataSource = TableSRC
        end
        object wwDBComboBox1: TwwDBComboBox
          Left = 79
          Top = 115
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
            #928#972#955#965'-'#917#960#967'.'#9'P'
            #913#960#955#972#9'N')
          ItemIndex = 1
          ReadOnly = True
          Sorted = False
          TabOrder = 0
          UnboundDataType = wwDefault
        end
      end
      object GroupBox2: TGroupBox
        Left = 14
        Top = 276
        Width = 276
        Height = 59
        Caption = 'T'#973#960#959#962' '#931#949#956#953#957#945#961#943#959#965
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        object SelectTypeFLD: TwwDBComboBox
          Left = 15
          Top = 20
          Width = 166
          Height = 23
          ParentCustomHint = False
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          ShowButton = True
          Style = csOwnerDrawVariable
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          ShowMatchText = True
          AutoSelect = False
          Ctl3D = True
          DataField = 'SEM_CATEGORY'
          DataSource = TableSRC
          DropDownCount = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 0
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          Sorted = False
          TabOrder = 0
          UnboundDataType = wwDefault
          DoubleBuffered = False
          ParentDoubleBuffered = False
        end
      end
      object GroupBox1: TGroupBox
        Left = 14
        Top = 341
        Width = 276
        Height = 59
        Caption = #931#964#940#948#953#959' '#931#949#956#953#957#945#961#943#959#965
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        object SelectCatFLD: TwwDBComboBox
          Left = 15
          Top = 20
          Width = 166
          Height = 23
          ParentCustomHint = False
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          ShowButton = True
          Style = csOwnerDrawVariable
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          ShowMatchText = True
          AutoSelect = False
          Ctl3D = True
          DataField = 'STATUS'
          DataSource = TableSRC
          DropDownCount = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 0
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          Sorted = False
          TabOrder = 0
          UnboundDataType = wwDefault
          DoubleBuffered = False
          ParentDoubleBuffered = False
        end
      end
    end
  end
  object TableSRC: TDataSource
    DataSet = TableSQL
    OnStateChange = TableSRCStateChange
    Left = 112
    Top = 17
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = U_databaseFRM.DataConnection
    Left = 225
    Top = 5
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = U_databaseFRM.DataConnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 408
    Top = 65529
  end
  object TableSQL: TIBCQuery
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
      'order by '
      'date_started desc')
    Active = True
    Left = 41
    Top = 5
    object TableSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'A/A'
      DisplayWidth = 5
      FieldName = 'SERIAL_NUMBER'
    end
    object TableSQLANAD_NUMBER: TWideStringField
      DisplayLabel = #913#925#913#916' '
      DisplayWidth = 10
      FieldName = 'ANAD_NUMBER'
      Required = True
      FixedChar = True
      Size = 30
    end
    object TableSQLSEMINAR_NAME: TWideStringField
      DisplayLabel = #928#949#961#953#947#961#945#966#942
      DisplayWidth = 14
      FieldName = 'SEMINAR_NAME'
      Size = 160
    end
    object TableSQLSEM_CATEGORY: TWideStringField
      DisplayLabel = #932#973#960#959#962
      DisplayWidth = 14
      FieldName = 'SEM_CATEGORY'
      Required = True
      FixedChar = True
      Size = 1
    end
    object TableSQLSTATUS: TWideStringField
      DisplayLabel = #931#964#940#948#953#959
      DisplayWidth = 14
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object TableSQLTYPE_MONO_POLY: TWideStringField
      DisplayLabel = #924#972#957#959'-'#917#960#967
      DisplayWidth = 9
      FieldName = 'TYPE_MONO_POLY'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object TableSQLLAST_NAME: TWideStringField
      DisplayLabel = #917#964#945#953#961#949#943#945
      DisplayWidth = 11
      FieldName = 'LAST_NAME'
      ReadOnly = True
      Visible = False
      FixedChar = True
      Size = 30
    end
    object TableSQLDATE_STARTED: TDateField
      DisplayLabel = #904#957#945#961#958#951
      DisplayWidth = 12
      FieldName = 'DATE_STARTED'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TableSQLDATE_COMPLETED: TDateField
      DisplayLabel = #932#941#955#959#962
      DisplayWidth = 12
      FieldName = 'DATE_COMPLETED'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TableSQLDURATION_HOURS: TIntegerField
      DisplayLabel = #911#961#949#962
      DisplayWidth = 6
      FieldName = 'DURATION_HOURS'
      Visible = False
    end
    object TableSQLAMOUNT_ANAD: TFloatField
      DisplayWidth = 10
      FieldName = 'AMOUNT_ANAD'
      Visible = False
    end
    object TableSQLFK_SEMINAR: TIntegerField
      FieldName = 'FK_SEMINAR'
      Visible = False
    end
    object TableSQLFK_INSTRUCTOR: TIntegerField
      FieldName = 'FK_INSTRUCTOR'
      Visible = False
    end
    object TableSQLFK_VENUE: TIntegerField
      FieldName = 'FK_VENUE'
      Visible = False
    end
    object TableSQLDURATION_DAYS: TIntegerField
      FieldName = 'DURATION_DAYS'
      Visible = False
    end
    object TableSQLCOMMENTS: TWideStringField
      FieldName = 'COMMENTS'
      Visible = False
      Size = 160
    end
    object TableSQLANAD_APPROVED: TWideStringField
      FieldName = 'ANAD_APPROVED'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object TableSQLIS_INVOICED: TWideStringField
      FieldName = 'IS_INVOICED'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object TableSQLIS_CERTIFICATED: TWideStringField
      FieldName = 'IS_CERTIFICATED'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object TableSQLMAX_CAPACITY: TIntegerField
      FieldName = 'MAX_CAPACITY'
      Required = True
      Visible = False
    end
    object TableSQLFK_COMPANY_PERSON_SERIAL: TIntegerField
      FieldName = 'FK_COMPANY_PERSON_SERIAL'
      Visible = False
    end
    object TableSQLHAS_EXPIRY: TWideStringField
      FieldName = 'HAS_EXPIRY'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object TableSQLEXPIRY_PERIOD: TIntegerField
      FieldName = 'EXPIRY_PERIOD'
      Visible = False
    end
    object TableSQLFK_EXAMINER: TIntegerField
      FieldName = 'FK_EXAMINER'
      Visible = False
    end
  end
end
