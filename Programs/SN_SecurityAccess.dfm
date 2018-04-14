object SN_SecurityAccessFRM: TSN_SecurityAccessFRM
  Left = 181
  Top = 206
  Caption = 'Security Access'
  ClientHeight = 550
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = SecMenu
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 49
    Align = alTop
    Caption = 'Security Access'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel3: TPanel
    Left = 0
    Top = 500
    Width = 884
    Height = 50
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object RzPanel1: TRzPanel
      Left = 782
      Top = 2
      Width = 100
      Height = 46
      Align = alRight
      BorderOuter = fsNone
      TabOrder = 0
      object RzBitBtn1: TRzBitBtn
        Left = 14
        Top = 4
        Width = 73
        Height = 37
        Caption = 'Close'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn1Click
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
    Top = 49
    Width = 884
    Height = 451
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 368
    ExplicitTop = 73
    object AddMenuBTN: TButton
      Left = 8
      Top = 216
      Width = 75
      Height = 25
      Caption = 'AddMenu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = AddMenuBTNClick
    end
    object FreeMenuBTN: TButton
      Left = 174
      Top = 216
      Width = 75
      Height = 25
      Caption = 'Free Menu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnClick = FreeMenuBTNClick
    end
    object CheckBTN: TButton
      Left = 96
      Top = 215
      Width = 75
      Height = 25
      Caption = 'CheckBTN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnClick = CheckBTNClick
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 34
      Width = 465
      Height = 105
      Caption = 'User '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object Label1: TLabel
        Left = 8
        Top = 32
        Width = 42
        Height = 15
        Caption = 'User ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 72
        Top = 32
        Width = 64
        Height = 15
        Caption = 'User Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object UserIDFLD: TwwDBEdit
        Left = 8
        Top = 48
        Width = 57
        Height = 23
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object UserNameFLD: TwwDBEdit
        Left = 72
        Top = 48
        Width = 313
        Height = 23
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
  end
  object SecMenu: TMainMenu
    Left = 608
    Top = 128
  end
  object ScreenSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO SECURITY_SCREEN'
      '  (SCREEN_ID, SCREEN_NAME)'
      'VALUES'
      '  (:SCREEN_ID, :SCREEN_NAME)')
    SQLDelete.Strings = (
      'DELETE FROM SECURITY_SCREEN'
      'WHERE'
      '  SCREEN_ID = :Old_SCREEN_ID')
    SQLUpdate.Strings = (
      'UPDATE SECURITY_SCREEN'
      'SET'
      '  SCREEN_ID = :SCREEN_ID, SCREEN_NAME = :SCREEN_NAME'
      'WHERE'
      '  SCREEN_ID = :Old_SCREEN_ID')
    SQLRefresh.Strings = (
      'SELECT SCREEN_ID, SCREEN_NAME FROM SECURITY_SCREEN'
      'WHERE'
      '  SCREEN_ID = :SCREEN_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM SECURITY_SCREEN'
      'WHERE'
      'SCREEN_ID = :Old_SCREEN_ID'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SECURITY_SCREEN'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select * from SECURITY_SCREEN'
      'WHERE'
      '     SCREEN_ID= :TheScreen;'
      ' ')
    Left = 88
    Top = 348
    ParamData = <
      item
        DataType = ftString
        Name = 'TheScreen'
        ParamType = ptInput
        Value = nil
      end>
    object ScreenSQLSCREEN_ID: TWideStringField
      FieldName = 'SCREEN_ID'
      Required = True
      FixedChar = True
      Size = 60
    end
    object ScreenSQLSCREEN_NAME: TWideStringField
      FieldName = 'SCREEN_NAME'
      Required = True
      FixedChar = True
      Size = 80
    end
  end
  object FindSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO SECURITY_USER_SCREEN'
      '  (USER_ID, SCREEN_ID, IS_ALLOWED)'
      'VALUES'
      '  (:USER_ID, :SCREEN_ID, :IS_ALLOWED)')
    SQLDelete.Strings = (
      'DELETE FROM SECURITY_USER_SCREEN'
      'WHERE'
      '  USER_ID = :Old_USER_ID AND SCREEN_ID = :Old_SCREEN_ID')
    SQLUpdate.Strings = (
      'UPDATE SECURITY_USER_SCREEN'
      'SET'
      
        '  USER_ID = :USER_ID, SCREEN_ID = :SCREEN_ID, IS_ALLOWED = :IS_A' +
        'LLOWED'
      'WHERE'
      '  USER_ID = :Old_USER_ID AND SCREEN_ID = :Old_SCREEN_ID')
    SQLRefresh.Strings = (
      'SELECT USER_ID, SCREEN_ID, IS_ALLOWED FROM SECURITY_USER_SCREEN'
      'WHERE'
      '  USER_ID = :USER_ID AND SCREEN_ID = :SCREEN_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM SECURITY_USER_SCREEN'
      'WHERE'
      'USER_ID = :Old_USER_ID AND SCREEN_ID = :Old_SCREEN_ID'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SECURITY_USER_SCREEN'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select * from SECURITY_USER_SCREEN'
      'WHERE'
      '     USER_ID = :TheUser and'
      '     SCREEN_ID= :TheScreen;'
      ' ')
    Left = 144
    Top = 340
    ParamData = <
      item
        DataType = ftString
        Name = 'TheUser'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'TheScreen'
        ParamType = ptInput
        Value = nil
      end>
    object FindSQLUSER_ID: TWideStringField
      FieldName = 'USER_ID'
      Required = True
      FixedChar = True
      Size = 15
    end
    object FindSQLSCREEN_ID: TWideStringField
      FieldName = 'SCREEN_ID'
      Required = True
      FixedChar = True
      Size = 60
    end
    object FindSQLIS_ALLOWED: TWideStringField
      FieldName = 'IS_ALLOWED'
      FixedChar = True
      Size = 1
    end
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = U_databaseFRM.DataConnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 40
    Top = 17
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = U_databaseFRM.DataConnection
    Left = 40
    Top = 69
  end
end
