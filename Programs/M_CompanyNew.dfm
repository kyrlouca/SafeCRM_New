object M_companyNewFRM: TM_companyNewFRM
  Left = 365
  Top = 153
  Caption = '--'
  ClientHeight = 795
  ClientWidth = 1262
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1262
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
      Width = 1254
      Height = 45
      Align = alClient
      Alignment = taCenter
      Caption = #917#964#945#953#961#949#943#945
      Layout = tlCenter
      ExplicitWidth = 109
      ExplicitHeight = 32
    end
    object RzDBLabel1: TRzDBLabel
      Left = 1
      Top = 1
      Width = 1260
      Height = 51
      Align = alClient
      DataField = 'LAST_NAME'
      DataSource = CompanySRC
      ExplicitWidth = 194
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 752
    Width = 1262
    Height = 43
    Align = alBottom
    TabOrder = 2
    object RzPanel1: TRzPanel
      Left = 1161
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 53
    Width = 1262
    Height = 39
    Align = alTop
    TabOrder = 1
  end
  object PageControlPC: TPageControl
    Left = 0
    Top = 92
    Width = 1262
    Height = 660
    ActivePage = EmployeesTS
    Align = alClient
    MultiLine = True
    TabOrder = 3
    OnChanging = PageControlPCChanging
    object InfoTS: TTabSheet
      Caption = #917#964#945#953#961#949#943#945
      OnShow = InfoTSShow
      object RzPanel4: TRzPanel
        Left = 0
        Top = 0
        Width = 1254
        Height = 632
        Align = alClient
        BorderOuter = fsNone
        TabOrder = 0
        object DetailsGRP: TGroupBox
          Left = 3
          Top = 20
          Width = 346
          Height = 349
          Caption = #928#955#951#961#959#966#959#961#943#949#962
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label2: TLabel
            Left = 17
            Top = 45
            Width = 89
            Height = 14
            Caption = #908#957#959#956#945' '#917#964#945#953#961#949#943#945#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 85
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
          object Label1: TLabel
            Left = 17
            Top = 101
            Width = 89
            Height = 14
            Caption = #919#956#949#961'. '#917#947#947#961#945#966#942#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object SerialFLD: TRzDBLabel
            Left = 112
            Top = 19
            Width = 115
            Height = 20
            Alignment = taRightJustify
            BorderOuter = fsFlat
            BorderWidth = 1
            DataField = 'SERIAL_NUMBER'
            DataSource = CompanySRC
          end
          object Label16: TLabel
            Left = 36
            Top = 172
            Width = 84
            Height = 14
            Caption = #913#961'. '#933#960#945#955#955#942#955#969#957
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 29
            Top = 75
            Width = 77
            Height = 14
            Caption = #913#961'. '#917#947#947#961#945#966#942#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 11
            Top = 127
            Width = 95
            Height = 14
            Caption = #913#961'. '#922#959#953#957#969#957'. '#913#963#966'.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label36: TLabel
            Left = 3
            Top = 200
            Width = 117
            Height = 14
            Caption = #922#973#961#953#945' '#916#961#945#963#964#951#961#953#972#964#951#964#945
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object FirstFLD: TwwDBEdit
            Left = 112
            Top = 45
            Width = 228
            Height = 22
            DataField = 'LAST_NAME'
            DataSource = CompanySRC
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit2: TwwDBEdit
            Left = 126
            Top = 169
            Width = 115
            Height = 22
            DataField = 'COMPANY_EMPLOYEES'
            DataSource = CompanySRC
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object DatePassedFLD: TwwDBDateTimePicker
            Left = 112
            Top = 98
            Width = 115
            Height = 23
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'Arial'
            CalendarAttributes.Font.Style = []
            DataField = 'COMPANY_REGISTRATION_DATE'
            DataSource = CompanySRC
            Epoch = 1950
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 2
            DisplayFormat = 'dd/mm/yyyy'
          end
          object wwDBEdit13: TwwDBEdit
            Left = 112
            Top = 73
            Width = 115
            Height = 22
            DataField = 'NATIONAL_ID'
            DataSource = CompanySRC
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit22: TwwDBEdit
            Left = 112
            Top = 124
            Width = 115
            Height = 22
            DataField = 'COMPANY_SOCIAL_SEC'
            DataSource = CompanySRC
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwCheckBox1: TwwCheckBox
            Left = 258
            Top = 324
            Width = 82
            Height = 17
            TabStop = False
            DisableThemes = False
            AlwaysTransparent = False
            ValueChecked = 'Y'
            ValueUnchecked = 'N'
            DisplayValueChecked = 'Y'
            DisplayValueUnchecked = 'N'
            NullAndBlankState = cbUnchecked
            Alignment = taLeftJustify
            Caption = #917#957#949#961#947#972#962
            DataField = 'STATUS_ACTIVE'
            DataSource = CompanySRC
            TabOrder = 5
          end
          object wwDBEdit32: TwwDBEdit
            Left = 126
            Top = 197
            Width = 217
            Height = 22
            DataField = 'COMPANY_MAIN_ACTIVITY'
            DataSource = CompanySRC
            TabOrder = 6
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
        object ConactGRP: TGroupBox
          Left = 355
          Top = 20
          Width = 336
          Height = 177
          Caption = #917#960#953#954#959#953#957#969#957#943#945
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label10: TLabel
            Left = 52
            Top = 21
            Width = 56
            Height = 14
            Caption = #932#951#955#941#966#969#957#959
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 86
            Top = 96
            Width = 22
            Height = 14
            Caption = #934#945#958
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 73
            Top = 46
            Width = 35
            Height = 14
            Caption = #922#953#957#951#964#972
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 81
            Top = 121
            Width = 27
            Height = 14
            Caption = 'Email'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 50
            Top = 146
            Width = 58
            Height = 14
            Caption = #921#963#964#959#963#949#955#943#948#945
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 14
            Top = 71
            Width = 94
            Height = 14
            Caption = #932#951#955'. '#917#960#953#954#959#953#957#969#957#943#945#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object wwDBEdit8: TwwDBEdit
            Left = 114
            Top = 18
            Width = 89
            Height = 22
            DataField = 'PHONE_FIXED'
            DataSource = CompanySRC
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit9: TwwDBEdit
            Left = 114
            Top = 43
            Width = 89
            Height = 22
            DataField = 'PHONE_MOBILE'
            DataSource = CompanySRC
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit10: TwwDBEdit
            Left = 114
            Top = 94
            Width = 89
            Height = 22
            DataField = 'FAX'
            DataSource = CompanySRC
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit11: TwwDBEdit
            Left = 114
            Top = 120
            Width = 210
            Height = 22
            DataField = 'EMAIL'
            DataSource = CompanySRC
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit12: TwwDBEdit
            Left = 114
            Top = 146
            Width = 210
            Height = 22
            DataField = 'WEBSITE'
            DataSource = CompanySRC
            TabOrder = 5
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit16: TwwDBEdit
            Left = 114
            Top = 69
            Width = 89
            Height = 22
            DataField = 'PHONE_ALTERNATE'
            DataSource = CompanySRC
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
        object ContactPersonGRP: TGroupBox
          Left = 735
          Top = 203
          Width = 338
          Height = 209
          Caption = #913#961#956#972#948#953#959#962' '#917#960#953#954#959#953#957#969#957#943#945#962
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          object Label23: TLabel
            Left = 33
            Top = 21
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
          object Label24: TLabel
            Left = 48
            Top = 120
            Width = 22
            Height = 14
            Caption = #934#945#958
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 37
            Top = 100
            Width = 35
            Height = 14
            Caption = #922#953#957#951#964#972
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 43
            Top = 145
            Width = 27
            Height = 14
            Caption = 'Email'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 29
            Top = 46
            Width = 41
            Height = 14
            Caption = #917#960#943#952#949#964#959
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 42
            Top = 178
            Width = 28
            Height = 14
            Caption = #920#941#963#951
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label37: TLabel
            Left = 11
            Top = 72
            Width = 61
            Height = 14
            Caption = #932#945#965#964#972#964#951#964#945
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object wwDBEdit17: TwwDBEdit
            Left = 78
            Top = 18
            Width = 235
            Height = 22
            DataField = 'COMPANY_CONTACT_FIRST'
            DataSource = CompanySRC
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit18: TwwDBEdit
            Left = 78
            Top = 44
            Width = 235
            Height = 22
            DataField = 'COMPANY_CONTACT_LAST'
            DataSource = CompanySRC
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit19: TwwDBEdit
            Left = 78
            Top = 95
            Width = 121
            Height = 22
            DataField = 'COMPANY_CONTACT_PHONE'
            DataSource = CompanySRC
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit20: TwwDBEdit
            Left = 78
            Top = 148
            Width = 235
            Height = 22
            DataField = 'COMPANY_CONTACT_EMAIL'
            DataSource = CompanySRC
            TabOrder = 5
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit21: TwwDBEdit
            Left = 78
            Top = 121
            Width = 121
            Height = 22
            DataField = 'COMPANY_CONTACT_FAX'
            DataSource = CompanySRC
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit1: TwwDBEdit
            Left = 78
            Top = 175
            Width = 235
            Height = 22
            DataField = 'COMPANY_CONTACT_POSITION'
            DataSource = CompanySRC
            TabOrder = 6
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit33: TwwDBEdit
            Left = 78
            Top = 69
            Width = 121
            Height = 22
            DataField = 'COMPANY_CONTACT_ID'
            DataSource = CompanySRC
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
        object AddressGRP: TGroupBox
          Left = 355
          Top = 203
          Width = 336
          Height = 167
          Caption = #916#953#949#973#952#965#957#963#951
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object Label29: TLabel
            Left = 53
            Top = 25
            Width = 55
            Height = 14
            Caption = #916#953#949#973#952#965#957#963#951
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 80
            Top = 50
            Width = 28
            Height = 14
            Caption = #927#948#972#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 37
            Top = 75
            Width = 71
            Height = 14
            Caption = #932#945#967'. '#922#974#948#953#954#945#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 79
            Top = 102
            Width = 28
            Height = 14
            Caption = #928#972#955#951
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 64
            Top = 126
            Width = 43
            Height = 14
            Caption = #917#960#945#961#967#943#945
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object wwDBEdit25: TwwDBEdit
            Left = 113
            Top = 22
            Width = 211
            Height = 22
            DataField = 'ADDRESS'
            DataSource = CompanySRC
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit26: TwwDBEdit
            Left = 113
            Top = 48
            Width = 211
            Height = 22
            DataField = 'ADDRESS_STREET'
            DataSource = CompanySRC
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit27: TwwDBEdit
            Left = 113
            Top = 74
            Width = 161
            Height = 22
            DataField = 'ADDRESS_POST_CODE'
            DataSource = CompanySRC
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit28: TwwDBEdit
            Left = 113
            Top = 100
            Width = 211
            Height = 22
            DataField = 'ADDRESS_CITY'
            DataSource = CompanySRC
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit4: TwwDBEdit
            Left = 113
            Top = 126
            Width = 211
            Height = 22
            DataField = 'ADDRESS_DISTRICT'
            DataSource = CompanySRC
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
        object SafeFLD: TwwCheckBox
          Left = 6
          Top = 576
          Width = 123
          Height = 17
          TabStop = False
          DisableThemes = False
          AlwaysTransparent = False
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
          DisplayValueChecked = 'Y'
          DisplayValueUnchecked = 'N'
          NullAndBlankState = cbUnchecked
          Alignment = taLeftJustify
          Caption = #919' '#916#953#954#942' '#956#945#962' '#917#964#945#953#961#949#943#945
          DataField = 'IS_SAFE_COMPANY'
          DataSource = CompanySRC
          TabOrder = 6
          OnClick = SafeFLDClick
        end
        object OwnerGRP: TGroupBox
          Left = 735
          Top = 12
          Width = 338
          Height = 176
          Caption = #921#948#953#959#954#964#942#964#951#962
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object Label8: TLabel
            Left = 28
            Top = 21
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
          object Label9: TLabel
            Left = 43
            Top = 103
            Width = 22
            Height = 14
            Caption = #934#945#958
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 30
            Top = 75
            Width = 35
            Height = 14
            Caption = #922#953#957#951#964#972
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 38
            Top = 131
            Width = 27
            Height = 14
            Caption = 'Email'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 4
            Top = 47
            Width = 61
            Height = 14
            Caption = #932#945#965#964#972#964#951#964#945
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object wwDBEdit5: TwwDBEdit
            Left = 77
            Top = 16
            Width = 242
            Height = 22
            DataField = 'COMPANY_OWNER'
            DataSource = CompanySRC
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit7: TwwDBEdit
            Left = 77
            Top = 72
            Width = 121
            Height = 22
            DataField = 'COMPANY_OWNER_PHONE'
            DataSource = CompanySRC
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit14: TwwDBEdit
            Left = 77
            Top = 128
            Width = 240
            Height = 22
            DataField = 'COMPANY_OWNER_EMAIL'
            DataSource = CompanySRC
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit15: TwwDBEdit
            Left = 77
            Top = 100
            Width = 121
            Height = 22
            DataField = 'COMPANY_OWNER_FAX'
            DataSource = CompanySRC
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit3: TwwDBEdit
            Left = 77
            Top = 44
            Width = 116
            Height = 22
            DataField = 'COMPANY_OWNER_ID'
            DataSource = CompanySRC
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
        object ManagerGRP: TGroupBox
          Left = 735
          Top = 421
          Width = 338
          Height = 209
          Caption = #916#953#949#965#952#965#957#964#942#962
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          object Label20: TLabel
            Left = 33
            Top = 21
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
          object Label21: TLabel
            Left = 48
            Top = 120
            Width = 22
            Height = 14
            Caption = #934#945#958
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 35
            Top = 95
            Width = 35
            Height = 14
            Caption = #922#953#957#951#964#972
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label33: TLabel
            Left = 43
            Top = 145
            Width = 27
            Height = 14
            Caption = 'Email'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label34: TLabel
            Left = 29
            Top = 46
            Width = 41
            Height = 14
            Caption = #917#960#943#952#949#964#959
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label35: TLabel
            Left = 42
            Top = 178
            Width = 28
            Height = 14
            Caption = #920#941#963#951
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label38: TLabel
            Left = 11
            Top = 73
            Width = 61
            Height = 14
            Caption = #932#945#965#964#972#964#951#964#945
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object wwDBEdit6: TwwDBEdit
            Left = 78
            Top = 18
            Width = 235
            Height = 22
            DataField = 'COMPANY_MANAGER_FIRST'
            DataSource = CompanySRC
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit23: TwwDBEdit
            Left = 78
            Top = 44
            Width = 235
            Height = 22
            DataField = 'COMPANY_MANAGER_LAST'
            DataSource = CompanySRC
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit24: TwwDBEdit
            Left = 78
            Top = 95
            Width = 121
            Height = 22
            DataField = 'COMPANY_MANAGER_PHONE'
            DataSource = CompanySRC
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit29: TwwDBEdit
            Left = 78
            Top = 148
            Width = 235
            Height = 22
            DataField = 'COMPANY_MANAGER_EMAIL'
            DataSource = CompanySRC
            TabOrder = 5
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit30: TwwDBEdit
            Left = 78
            Top = 121
            Width = 121
            Height = 22
            DataField = 'COMPANY_MANAGER_FAX'
            DataSource = CompanySRC
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit31: TwwDBEdit
            Left = 76
            Top = 176
            Width = 235
            Height = 22
            DataField = 'COMPANY_MANAGER_POSITION'
            DataSource = CompanySRC
            TabOrder = 6
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit34: TwwDBEdit
            Left = 78
            Top = 70
            Width = 121
            Height = 22
            DataField = 'COMPANY_MANAGER_ID'
            DataSource = CompanySRC
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
      end
    end
    object EmployeesTS: TTabSheet
      Caption = #933#960#940#955#955#951#955#959#953
      ImageIndex = 1
      OnShow = EmployeesTSShow
      object RzPanel5: TRzPanel
        Left = 0
        Top = 0
        Width = 1254
        Height = 632
        Align = alClient
        BorderOuter = fsNone
        TabOrder = 0
        object RzGroupBox1: TRzGroupBox
          Left = 0
          Top = 17
          Width = 593
          Height = 615
          Align = alLeft
          Caption = #933#960#940#955#955#951#955#959#953
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object RzSizePanel1: TRzSizePanel
            Left = 1
            Top = 15
            Width = 591
            Height = 29
            Align = alTop
            TabOrder = 0
          end
          object Grid1: TwwDBGrid
            Left = 1
            Top = 44
            Width = 568
            Height = 570
            Selected.Strings = (
              'SERIAL_NUMBER'#9'6'#9'A/A'
              'LAST_NAME'#9'23'#9#917#960#943#952#949#964#959
              'FIRST_NAME'#9'20'#9#168#927#957#959#956#945
              'NATIONAL_ID'#9'17'#9#932#945#965#964#972#964#951#964#945
              'PHONE_MOBILE'#9'15'#9#954#953#957#951#964#972)
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alLeft
            Color = 12713983
            DataSource = IncludedPersonsSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyOptions = []
            Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
            OnDblClick = Grid1DblClick
          end
        end
        object RzPanel3: TRzPanel
          Left = 0
          Top = 0
          Width = 1254
          Height = 17
          Align = alTop
          BorderOuter = fsNone
          TabOrder = 1
        end
        object RzPanel2: TRzPanel
          Left = 593
          Top = 17
          Width = 86
          Height = 615
          Align = alLeft
          BorderOuter = fsNone
          TabOrder = 2
          object ToLeftBTN: TBitBtn
            Left = 42
            Top = 219
            Width = 39
            Height = 37
            Cancel = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
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
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C2FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDACACAC202020FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6A0A0A011
              1111000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFEFEFEE8E8E8AAAAAAFFFFFFFFFFFFFFFFFFFFFFFFE5E5
              E5717171080808000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9ADADAD4D4D4DB9B9B9FFFFFFFFFFFF
              FFFFFFE8E8E84E4E4E060606000000000000000000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBB7B7B7424242111111515151F0
              F0F0FFFFFFFDFDFDD5D5D5303030000000000000000000000000000000242424
              5E5E5E8F8F8FB3B3B3C6C6C6CACACABEBEBE9F9F9F6868682323230101010000
              00191919BABABAFFFFFFF6F6F6AAAAAA25252500000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000A0A0A939393FCFCFCFFFFFF9393931414140101010000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000C0C0C999999FAFAFAFFFFFFFFFFFF434343141414
              0101010000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000050505262626A3A3A3FCFCFCFFFFFFFFFFFFFF
              FFFFE5E5E5ACACAC252525000000000000000000000000000000000000000000
              0000000000000000000000000000000909093A3A3A818181D7D7D7FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDD7D7D732323200000000000000000000
              00000000000606060B0B0B1B1B1B3636365C5C5C8F8F8FCFCFCFE8E8E8FCFCFC
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E94F4F
              4F060606000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFE5E5E5737373080808000000000000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6A0A0A0111111000000FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDAB
              ABAB202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
            TabOrder = 0
            OnClick = ToLeftBTNClick
          end
          object ToRightBTN: TBitBtn
            Left = 6
            Top = 101
            Width = 37
            Height = 37
            Cancel = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
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
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFC1C1C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020ABABABFDFDFDFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFD4D4D4E8E8E8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000001111119F9F9F
              F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6363634E4E4EADADADF9F9F9FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
              0000000000080808727272E5E5E5FFFFFFFFFFFFFFFFFFFFFFFFBFBFBF535353
              111111434343B6B6B6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF0000000000000000000505054E4E4EE8E8E8FFFFFFFFFFFFFF
              FFFFFCFCFCBBBBBB1A1A1A0000000101012323236868689E9E9EBEBEBECACACA
              C7C7C7B4B4B48F8F8F5E5E5E2424240000000000000000000000000000003030
              30D5D5D5FCFCFCFFFFFFFFFFFFFCFCFC9494940A0A0A00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000252525AAAAAAFAFAFAFFFFFFFFFFFFFBFBFB9A9A9A0C0C
              0C00000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000010101141414929292FFFFFFFFFFFF
              FFFFFFFCFCFCA5A5A52727270505050000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000001010113131392
              9292FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D78181813B3B3B090909000000
              0000000000000000000000000000000000000000000000000000000000000000
              00242424ABABABFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCE9
              E9E9CFCFCF8F8F8F5C5C5C3636361B1B1B0C0C0C060606000000000000000000
              000000000000323232D6D6D6FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
              00000000000000000606064F4F4FE8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000000000080808737373E5E5E5FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000111111A0A0A0F6F6F6FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020AAAAAAFDFDFD
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2
              C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
            OnClick = ToRightBTNClick
          end
        end
        object RzGroupBox2: TRzGroupBox
          Left = 679
          Top = 17
          Width = 578
          Height = 615
          Align = alLeft
          Caption = #922#945#964#940#955#959#947#959#962
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object AllPersonsGRD: TwwDBGrid
            Left = 1
            Top = 57
            Width = 576
            Height = 557
            Selected.Strings = (
              'SERIAL_NUMBER'#9'6'#9'A/A'
              'LAST_NAME'#9'20'#9#917#960#943#952#949#964#959
              'FIRST_NAME'#9'10'#9#908#957#959#956#945
              'NATIONAL_ID'#9'13'#9#932#945#965#964#972#964#951#964#945
              'PHONE_MOBILE'#9'13'#9#922#953#957#951#964#972
              'COMPANY_NAME'#9'120'#9'Company')
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alClient
            BorderStyle = bsNone
            Color = clBtnFace
            DataSource = ExcludedPersonsSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyOptions = []
            Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
            OnTitleButtonClick = AllPersonsGRDTitleButtonClick
            OnDblClick = AllPersonsGRDDblClick
            OnKeyDown = AllPersonsGRDKeyDown
          end
          object RzSizePanel2: TRzSizePanel
            Left = 1
            Top = 15
            Width = 576
            Height = 42
            Align = alTop
            TabOrder = 1
            object PersonSearchFLD: TwwIncrementalSearch
              Left = 5
              Top = 14
              Width = 121
              Height = 22
              DataSource = ExcludedPersonsSRC
              SearchField = 'LAST_NAME'
              ShowMatchText = True
              TabOrder = 0
              OnKeyDown = PersonSearchFLDKeyDown
            end
          end
        end
      end
    end
  end
  object CompanySRC: TDataSource
    DataSet = CompanySQL
    Left = 88
    Top = 41
  end
  object CompanySQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'GEN_COMPANY'
    GeneratorMode = gmInsert
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
      'Person '
      'WHERE '
      'SERIAL_NUMBER= :CompanySerial')
    Options.AutoClose = True
    Active = True
    OnNewRecord = CompanySQLNewRecord
    Left = 49
    Top = 37
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CompanySerial'
        Value = nil
      end>
    object CompanySQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
    end
    object CompanySQLSERIAL_QB: TIntegerField
      FieldName = 'SERIAL_QB'
    end
    object CompanySQLFK_COMPANY_SERIAL: TIntegerField
      FieldName = 'FK_COMPANY_SERIAL'
    end
    object CompanySQLNATIONAL_ID: TWideStringField
      FieldName = 'NATIONAL_ID'
      FixedChar = True
    end
    object CompanySQLNICKNAME: TWideStringField
      FieldName = 'NICKNAME'
      FixedChar = True
      Size = 30
    end
    object CompanySQLOCCUPATION: TWideStringField
      FieldName = 'OCCUPATION'
      Size = 160
    end
    object CompanySQLPHONE_MOBILE: TWideStringField
      FieldName = 'PHONE_MOBILE'
      FixedChar = True
      Size = 15
    end
    object CompanySQLPHONE_FIXED: TWideStringField
      FieldName = 'PHONE_FIXED'
      FixedChar = True
      Size = 15
    end
    object CompanySQLPHONE_ALTERNATE: TWideStringField
      FieldName = 'PHONE_ALTERNATE'
      FixedChar = True
      Size = 15
    end
    object CompanySQLFAX: TWideStringField
      FieldName = 'FAX'
      FixedChar = True
      Size = 15
    end
    object CompanySQLEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 160
    end
    object CompanySQLEMAIL_2: TSmallintField
      FieldName = 'EMAIL_2'
    end
    object CompanySQLADDRESS: TWideStringField
      FieldName = 'ADDRESS'
      Size = 160
    end
    object CompanySQLADDRESS_STREET: TWideStringField
      FieldName = 'ADDRESS_STREET'
      Size = 80
    end
    object CompanySQLDATE_STARTED: TDateField
      FieldName = 'DATE_STARTED'
    end
    object CompanySQLDATE_BIRTH: TDateField
      FieldName = 'DATE_BIRTH'
    end
    object CompanySQLDATE_USER: TDateField
      FieldName = 'DATE_USER'
    end
    object CompanySQLLIST_SOURCE: TWideStringField
      FieldName = 'LIST_SOURCE'
      Size = 160
    end
    object CompanySQLFACEBOOK: TWideStringField
      FieldName = 'FACEBOOK'
      Size = 160
    end
    object CompanySQLWEBSITE: TWideStringField
      FieldName = 'WEBSITE'
      Size = 160
    end
    object CompanySQLTWITTER: TWideStringField
      FieldName = 'TWITTER'
      Size = 160
    end
    object CompanySQLSTATUS_ACTIVE: TWideStringField
      FieldName = 'STATUS_ACTIVE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CompanySQLSEX: TWideStringField
      FieldName = 'SEX'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CompanySQLIS_COMPANY: TWideStringField
      FieldName = 'IS_COMPANY'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CompanySQLCOMPANY_OWNER: TWideStringField
      FieldName = 'COMPANY_OWNER'
      Size = 160
    end
    object CompanySQLCOMPANY_CONTACT: TWideStringField
      FieldName = 'COMPANY_CONTACT'
      Size = 160
    end
    object CompanySQLCOMPANY_REGISTRATION_DATE: TDateField
      FieldName = 'COMPANY_REGISTRATION_DATE'
    end
    object CompanySQLPHONE_CONTACT: TWideStringField
      FieldName = 'PHONE_CONTACT'
      FixedChar = True
      Size = 15
    end
    object CompanySQLCOMPANY_OWNER_REG: TWideStringField
      FieldName = 'COMPANY_OWNER_REG'
      FixedChar = True
      Size = 30
    end
    object CompanySQLCOMPANY_CONTACT_PHONE: TWideStringField
      FieldName = 'COMPANY_CONTACT_PHONE'
      FixedChar = True
      Size = 15
    end
    object CompanySQLCOMPANY_CONTACT_EMAIL: TWideStringField
      FieldName = 'COMPANY_CONTACT_EMAIL'
      Size = 50
    end
    object CompanySQLCOMPANY_CONTACT_FAX: TWideStringField
      FieldName = 'COMPANY_CONTACT_FAX'
      FixedChar = True
      Size = 15
    end
    object CompanySQLCOMPANY_SOCIAL_SEC: TWideStringField
      FieldName = 'COMPANY_SOCIAL_SEC'
      FixedChar = True
    end
    object CompanySQLCOMPANY_EMPLOYEES: TIntegerField
      FieldName = 'COMPANY_EMPLOYEES'
    end
    object CompanySQLPHONE_MOBILE_2: TWideStringField
      FieldName = 'PHONE_MOBILE_2'
      FixedChar = True
      Size = 15
    end
    object CompanySQLLINKED_IN: TWideStringField
      FieldName = 'LINKED_IN'
      FixedChar = True
      Size = 30
    end
    object CompanySQLJOB: TWideStringField
      FieldName = 'JOB'
      Size = 50
    end
    object CompanySQLIS_SAFE_COMPANY: TWideStringField
      FieldName = 'IS_SAFE_COMPANY'
      FixedChar = True
      Size = 1
    end
    object CompanySQLCOMPANY_OWNER_ID: TWideStringField
      FieldName = 'COMPANY_OWNER_ID'
      FixedChar = True
      Size = 30
    end
    object CompanySQLU_LAST_NAME: TWideStringField
      FieldName = 'U_LAST_NAME'
      FixedChar = True
      Size = 120
    end
    object CompanySQLU_FIRST_NAME: TWideStringField
      FieldName = 'U_FIRST_NAME'
      FixedChar = True
      Size = 120
    end
    object CompanySQLU_COMPANY_CONTACT_FIRST: TWideStringField
      FieldName = 'U_COMPANY_CONTACT_FIRST'
      FixedChar = True
      Size = 120
    end
    object CompanySQLU_COMPANY_CONTACT_LAST: TWideStringField
      FieldName = 'U_COMPANY_CONTACT_LAST'
      FixedChar = True
      Size = 120
    end
    object CompanySQLLAST_NAME: TWideStringField
      FieldName = 'LAST_NAME'
      FixedChar = True
      Size = 120
    end
    object CompanySQLFIRST_NAME: TWideStringField
      FieldName = 'FIRST_NAME'
      FixedChar = True
      Size = 120
    end
    object CompanySQLCOMPANY_CONTACT_LAST: TWideStringField
      FieldName = 'COMPANY_CONTACT_LAST'
      FixedChar = True
      Size = 120
    end
    object CompanySQLCOMPANY_CONTACT_FIRST: TWideStringField
      FieldName = 'COMPANY_CONTACT_FIRST'
      FixedChar = True
      Size = 120
    end
    object CompanySQLADDRESS_POST_CODE: TWideStringField
      FieldName = 'ADDRESS_POST_CODE'
      FixedChar = True
      Size = 30
    end
    object CompanySQLADDRESS_CITY: TWideStringField
      FieldName = 'ADDRESS_CITY'
      FixedChar = True
      Size = 120
    end
    object CompanySQLADDRESS_DISTRICT_WIN1253: TWideStringField
      FieldName = 'ADDRESS_DISTRICT_WIN1253'
      Size = 160
    end
    object CompanySQLADDRESS_CITY_WIN1253: TWideStringField
      FieldName = 'ADDRESS_CITY_WIN1253'
      Size = 160
    end
    object CompanySQLADDRESS_DISTRICT: TWideStringField
      FieldName = 'ADDRESS_DISTRICT'
      FixedChar = True
      Size = 120
    end
    object CompanySQLCOMPANY_CONTACT_ID: TWideStringField
      FieldName = 'COMPANY_CONTACT_ID'
      FixedChar = True
      Size = 30
    end
    object CompanySQLCOMPANY_CONTACT_POSITION: TWideStringField
      FieldName = 'COMPANY_CONTACT_POSITION'
      FixedChar = True
      Size = 120
    end
    object CompanySQLCOMPANY_OWNER_PHONE: TWideStringField
      FieldName = 'COMPANY_OWNER_PHONE'
      FixedChar = True
      Size = 15
    end
    object CompanySQLCOMPANY_OWNER_FAX: TWideStringField
      FieldName = 'COMPANY_OWNER_FAX'
      FixedChar = True
      Size = 15
    end
    object CompanySQLCOMPANY_OWNER_EMAIL: TWideStringField
      FieldName = 'COMPANY_OWNER_EMAIL'
      Size = 50
    end
    object CompanySQLCOMPANY_MANAGER_FIRST: TWideStringField
      FieldName = 'COMPANY_MANAGER_FIRST'
      Size = 160
    end
    object CompanySQLCOMPANY_MANAGER_LAST: TWideStringField
      FieldName = 'COMPANY_MANAGER_LAST'
      Size = 160
    end
    object CompanySQLCOMPANY_MANAGER_PHONE: TWideStringField
      FieldName = 'COMPANY_MANAGER_PHONE'
      FixedChar = True
      Size = 15
    end
    object CompanySQLCOMPANY_MANAGER_EMAIL: TWideStringField
      FieldName = 'COMPANY_MANAGER_EMAIL'
      Size = 80
    end
    object CompanySQLCOMPANY_MANAGER_FAX: TWideStringField
      FieldName = 'COMPANY_MANAGER_FAX'
      FixedChar = True
      Size = 15
    end
    object CompanySQLCOMPANY_MANAGER_POSITION: TWideStringField
      FieldName = 'COMPANY_MANAGER_POSITION'
      Size = 160
    end
    object CompanySQLCOMPANY_MANAGER_ID: TWideStringField
      FieldName = 'COMPANY_MANAGER_ID'
      Size = 50
    end
    object CompanySQLCOMPANY_MAIN_ACTIVITY: TWideStringField
      FieldName = 'COMPANY_MAIN_ACTIVITY'
      Size = 160
    end
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = U_databaseFRM.DataConnection
    Left = 257
    Top = 5
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = U_databaseFRM.DataConnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 288
    Top = 9
  end
  object IncludedPersonsSQL: TIBCQuery
    UpdatingTable = 'PERSON'
    SQLInsert.Strings = (
      'INSERT INTO PERSON'
      '  (SERIAL_NUMBER, NATIONAL_ID, LAST_NAME)'
      'VALUES'
      '  (:SERIAL_NUMBER, :NATIONAL_ID, :LAST_NAME)')
    SQLDelete.Strings = (
      'DELETE FROM PERSON'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE PERSON'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, NATIONAL_ID = :NATIONAL_ID, LA' +
        'ST_NAME = :LAST_NAME'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      'SELECT SERIAL_NUMBER, NATIONAL_ID, LAST_NAME FROM PERSON'
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
      'select'
      
        ' pe.serial_number, pe.first_name,pe.last_name ,pe.national_id,pe' +
        '.phone_mobile,'
      
        ' comp.last_name as Comp_name, comp.serial_number as Comp_serial,' +
        ' comp.national_id as Comp_reg'
      'from'
      '    person pe left outer join'
      '    person comp on pe.fk_company_serial =comp.serial_number'
      'where comp.seriaL_number = :CompanySerial'
      'order by '
      'pe.Last_name, pe.first_name')
    Active = True
    Left = 74
    Top = 505
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'companySerial'
        Value = nil
      end>
    object IncludedPersonsSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'A/A'
      DisplayWidth = 6
      FieldName = 'SERIAL_NUMBER'
      ReadOnly = True
      Required = True
    end
    object IncludedPersonsSQLLAST_NAME: TWideStringField
      DisplayLabel = #917#960#943#952#949#964#959
      DisplayWidth = 23
      FieldName = 'LAST_NAME'
      ReadOnly = True
      FixedChar = True
      Size = 120
    end
    object IncludedPersonsSQLFIRST_NAME: TWideStringField
      DisplayLabel = #168#927#957#959#956#945
      DisplayWidth = 20
      FieldName = 'FIRST_NAME'
      ReadOnly = True
      FixedChar = True
      Size = 120
    end
    object IncludedPersonsSQLNATIONAL_ID: TWideStringField
      DisplayLabel = #932#945#965#964#972#964#951#964#945
      DisplayWidth = 17
      FieldName = 'NATIONAL_ID'
      ReadOnly = True
      FixedChar = True
    end
    object IncludedPersonsSQLPHONE_MOBILE: TWideStringField
      DisplayLabel = #954#953#957#951#964#972
      DisplayWidth = 15
      FieldName = 'PHONE_MOBILE'
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object IncludedPersonsSQLCOMP_NAME: TWideStringField
      FieldName = 'COMP_NAME'
      Visible = False
      FixedChar = True
      Size = 120
    end
    object IncludedPersonsSQLCOMP_SERIAL: TIntegerField
      FieldName = 'COMP_SERIAL'
      Visible = False
    end
    object IncludedPersonsSQLCOMP_REG: TWideStringField
      FieldName = 'COMP_REG'
      Visible = False
      FixedChar = True
    end
  end
  object IncludedPersonsSRC: TDataSource
    DataSet = IncludedPersonsSQL
    Left = 248
    Top = 361
  end
  object ExcludedPersonsSQL: TIBCQuery
    UpdatingTable = 'person'
    SQLInsert.Strings = (
      'INSERT INTO "COMPANY_PERSON"'
      
        '  ("SERIAL_NUMBER", "FK_COMPANY_SERIAL", "FK_PERSON_SERIAL", "TE' +
        'MP")'
      'VALUES'
      
        '  (:"SERIAL_NUMBER", :"FK_COMPANY_SERIAL", :"FK_PERSON_SERIAL", ' +
        ':"TEMP")')
    SQLDelete.Strings = (
      'DELETE FROM "COMPANY_PERSON"'
      'WHERE'
      '  "SERIAL_NUMBER" = :"Old_SERIAL_NUMBER"')
    SQLUpdate.Strings = (
      'UPDATE "COMPANY_PERSON"'
      'SET'
      
        '  "SERIAL_NUMBER" = :"SERIAL_NUMBER", "FK_COMPANY_SERIAL" = :"FK' +
        '_COMPANY_SERIAL", "FK_PERSON_SERIAL" = :"FK_PERSON_SERIAL", "TEM' +
        'P" = :"TEMP"'
      'WHERE'
      '  "SERIAL_NUMBER" = :"Old_SERIAL_NUMBER"')
    SQLRefresh.Strings = (
      
        'SELECT "SERIAL_NUMBER", "FK_COMPANY_SERIAL", "FK_PERSON_SERIAL",' +
        ' "TEMP" FROM "COMPANY_PERSON"'
      'WHERE'
      '  "SERIAL_NUMBER" = :"SERIAL_NUMBER"')
    SQLLock.Strings = (
      'SELECT NULL FROM "COMPANY_PERSON"'
      'WHERE'
      '"SERIAL_NUMBER" = :"Old_SERIAL_NUMBER"'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM person'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      ' select'
      
        '     pout.serial_number,pout.fk_company_serial, pout.is_company,' +
        ' pout.last_name,pout.first_name, pout.national_id,pout.phone_mob' +
        'ile,'
      
        '     comp.last_name as Company_name,comp.serial_number as Compan' +
        'y_serial'
      ' from'
      ' person pout left outer join'
      ' person comp on pout.fk_company_serial=comp.serial_number'
      ' where'
      '  pout.is_company ='#39'N'#39
      'Order by pout.last_name, pout.first_name')
    ReadOnly = True
    Active = True
    Left = 258
    Top = 473
    object ExcludedPersonsSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'A/A'
      DisplayWidth = 6
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object ExcludedPersonsSQLLAST_NAME: TWideStringField
      DisplayLabel = #917#960#943#952#949#964#959
      DisplayWidth = 20
      FieldName = 'LAST_NAME'
      FixedChar = True
      Size = 120
    end
    object ExcludedPersonsSQLFIRST_NAME: TWideStringField
      DisplayLabel = #908#957#959#956#945
      DisplayWidth = 10
      FieldName = 'FIRST_NAME'
      FixedChar = True
      Size = 120
    end
    object ExcludedPersonsSQLNATIONAL_ID: TWideStringField
      DisplayLabel = #932#945#965#964#972#964#951#964#945
      DisplayWidth = 13
      FieldName = 'NATIONAL_ID'
      FixedChar = True
    end
    object ExcludedPersonsSQLPHONE_MOBILE: TWideStringField
      DisplayLabel = #922#953#957#951#964#972
      DisplayWidth = 13
      FieldName = 'PHONE_MOBILE'
      FixedChar = True
      Size = 15
    end
    object ExcludedPersonsSQLCOMPANY_NAME: TWideStringField
      DisplayLabel = 'Company'
      DisplayWidth = 120
      FieldName = 'COMPANY_NAME'
      FixedChar = True
      Size = 120
    end
    object ExcludedPersonsSQLFK_COMPANY_SERIAL: TIntegerField
      FieldName = 'FK_COMPANY_SERIAL'
      Visible = False
    end
    object ExcludedPersonsSQLIS_COMPANY: TWideStringField
      FieldName = 'IS_COMPANY'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object ExcludedPersonsSQLCOMPANY_SERIAL: TIntegerField
      FieldName = 'COMPANY_SERIAL'
      Visible = False
    end
  end
  object ExcludedPersonsSRC: TDataSource
    DataSet = ExcludedPersonsSQL
    Left = 296
    Top = 529
  end
end
