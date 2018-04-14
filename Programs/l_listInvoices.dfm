object L_listInvoicesFRM: TL_listInvoicesFRM
  Left = 365
  Top = 153
  Caption = '--'
  ClientHeight = 703
  ClientWidth = 1155
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
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
    Width = 1155
    Height = 47
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
      Width = 1147
      Height = 39
      Align = alClient
      Alignment = taCenter
      Caption = 'Invoices'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3947580
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 110
      ExplicitHeight = 32
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 660
    Width = 1155
    Height = 43
    Align = alBottom
    TabOrder = 3
    object RzPanel1: TRzPanel
      Left = 1054
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
    Top = 47
    Width = 1155
    Height = 116
    Align = alTop
    TabOrder = 1
    object Label23: TLabel
      Left = 23
      Top = 14
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
    object Label24: TLabel
      Left = 3
      Top = 39
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
    object Label25: TLabel
      Left = 23
      Top = 66
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
    object wwIncrementalSearch1: TwwIncrementalSearch
      Left = 72
      Top = 11
      Width = 128
      Height = 22
      DataSource = TableSRC
      SearchField = 'lAST_NAME'
      ShowMatchText = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object wwIncrementalSearch2: TwwIncrementalSearch
      Left = 72
      Top = 36
      Width = 128
      Height = 22
      DataSource = TableSRC
      SearchField = 'National_id'
      ShowMatchText = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object wwIncrementalSearch3: TwwIncrementalSearch
      Left = 72
      Top = 63
      Width = 128
      Height = 22
      DataSource = TableSRC
      SearchField = 'Phone_mobile'
      ShowMatchText = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object RzGroupBox1: TRzGroupBox
      Left = 220
      Top = 6
      Width = 221
      Height = 73
      Caption = 'Filter Invoices'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      GradientColorStop = clWhite
      GroupStyle = gsUnderline
      ParentFont = False
      TabOrder = 3
      object Label2: TLabel
        Left = 10
        Top = 29
        Width = 51
        Height = 15
        Caption = #928#955#951#961#969#956#942
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object PayStatusFLD: TwwDBComboBox
        Left = 67
        Top = 26
        Width = 140
        Height = 23
        ParentCustomHint = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        ShowButton = True
        Style = csDropDownList
        MapList = True
        AllowClearKey = False
        Color = clWhite
        Ctl3D = True
        DropDownCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 0
        Items.Strings = (
          #913#960#955#942#961#969#964#945#9'U'
          #928#955#951#961#969#956#941#957#945#9'P'
          'All'#9'A')
        ItemIndex = 0
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        Sorted = False
        TabOrder = 0
        UnboundDataType = wwDefault
        OnCloseUp = PayStatusFLDCloseUp
        DoubleBuffered = False
        ParentDoubleBuffered = False
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 163
    Width = 1155
    Height = 497
    Align = alClient
    TabOrder = 2
    object RzPanel2: TRzPanel
      Left = 1
      Top = 1
      Width = 1016
      Height = 495
      Align = alLeft
      BorderOuter = fsNone
      TabOrder = 0
      object RzPanel3: TRzPanel
        Left = 0
        Top = 0
        Width = 1016
        Height = 9
        Align = alTop
        BorderOuter = fsNone
        TabOrder = 0
      end
      object Grid1: TwwDBGrid
        Left = 0
        Top = 9
        Width = 1016
        Height = 486
        ControlType.Strings = (
          'IS_COMPANY;CheckBox;Y;N'
          'INVOICE_STATUS;CheckBox;P;U')
        Selected.Strings = (
          'SERIAL_NUMBER'#9'6'#9'A/A'
          'LAST_NAME'#9'17'#9#917#960#943#952#949#964#959
          'FIRST_NAME'#9'13'#9#908#957#959#956#945
          'NATIONAL_ID'#9'10'#9#932#945#965#964#972#964#951#964#945
          'PHONE_MOBILE'#9'10'#9#922#953#957#951#964#972
          'SUBJECT_NAME'#9'23'#9#931#949#956#953#957#940#961#953#959
          'DATE_INVOICED'#9'11'#9#919#956#949#961#959#956'.'
          'AMOUNT_WITH_VAT'#9'5'#9#928#959#963#972
          'REMAINING'#9'9'#9#933#960#972#955#959#953#960#959
          'INVOICE_STATUS'#9'8'#9#928#955#951#961#969#956#942)
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
        OnDblClick = Grid1DblClick
      end
      object PrintRBtn: TBitBtn
        Left = 769
        Top = 29
        Width = 96
        Height = 37
        Caption = #928#955#951#961#969#956#942
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1D8A5B158655FFFF
          FF1D8A5B168756FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          1E8C5C168856FFFFFF1E8C5C178957FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFCCE5DAB1D7C61B8D5B168A57B1D7C61B8D5B178B58CCE5DAFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFB1D7C7309569158755158755178C58178C58158755178C58178C5815
          875530956998CAB4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFB2D8C7168957168957168957168957188E5A188E5A1689
          57188E5A188E5A1689571689571689577FBEA3FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF329A6B178C58178C58178C58178C58
          1A915D19905C65B3901A915D19905C178C58178C58178C58178C58E6F3EDFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF188F5B188F5B18
          8F5B65B592FFFFFF2297641A935EFFFFFF2297641B945F65B592188F5B188F5B
          188F5BB2DAC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDE8
          DC19925D19925D19925DB3DBC9FFFFFF2399651B955FFFFFFF2399651C9660CD
          E8DC19925D19925D19925DB3DBC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE6F4EEB3DCCAB3DCCAB3DCCAE6F4EEFFFFFF239C661B9861FFFF
          FF239C661C9962E6F4EE1B955F1B955F1B955FB3DCCAFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          249F681C9B63FFFFFF249F681D9C6468BB971C99621C99621C9962B4DDCBFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7
          F5EFB4DFCC69BE9920A0671D9E6537A9771D9E651D9E651D9D651D9D651D9D65
          1D9D65E7F5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF83CBAB1EA0671EA0671EA0671EA0671EA0671EA0671EA0671EA0671E
          A0671EA0671EA06783CBABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF9DD7BD20A46A20A46A20A46A20A46A1FA3691FA36920A4
          6A1FA3691FA36920A46A3AAF7B9DD7BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3BB27E21A86D21A86D21A86D53BC8E
          23A86D20A66BB5E2CF25A86E21A76CCFECDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF22AC6F22AC6F22
          AC6F6CC89FFFFFFF28AC7221A96DFFFFFF28AC7222AA6EFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF24AF7224AF7224AF72B6E5D0FFFFFF29AF7422AC6FFFFFFF29AF7423AD709E
          DCC16DCAA16DCAA16DCAA1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF25B27425B27425B2746ECCA3FFFFFF2AB17623AE71FFFF
          FF2AB17624AF726ECCA325B27425B27425B274FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FBE8626B57626B57626B57688D7B4
          29B37624B173FFFFFF29B37625B27426B57626B57626B5763FBE86FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0E0C427B87827
          B87827B87827B87825B37525B37527B87825B37525B37527B87827B87827B878
          88D8B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA0E1C527BA7A27BA7A27BA7A26B57626B57627BA7A26B57626B57627
          BA7A27BA7A6FD1A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8F8F1B8E9D370D3A729B87A26B77870D3
          A729B87A26B778A0E2C5D0F1E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          2EBC7E27B979FFFFFF2EBC7E28BA7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF2FBE7F28BB7AFFFFFF2FBE7F29BC7BFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FBF8028BC7BFFFFFF2FBF8029BD7CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        TabOrder = 2
        OnClick = PrintRBtnClick
      end
    end
    object RzPanel4: TRzPanel
      Left = 1017
      Top = 1
      Width = 137
      Height = 495
      Align = alClient
      BorderOuter = fsNone
      TabOrder = 1
      object RzPanel5: TRzPanel
        Left = 0
        Top = 0
        Width = 137
        Height = 41
        Align = alTop
        BorderOuter = fsNone
        TabOrder = 0
      end
    end
  end
  object TableSRC: TDataSource
    DataSet = TableSQL
    OnStateChange = TableSRCStateChange
    Left = 112
    Top = 9
  end
  object TableSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO INVOICE'
      
        '  (SERIAL_NUMBER, FK_PERSON_SERIAL, INVOICE_STATUS, DATE_INVOICE' +
        'D, VAT_RATE, DISCOUNT_BY_SAFE, DISCOUNT_CUSTOMER, AMOUNT_GROSS, ' +
        'AMOUNT_NET, AMOUNT_VAT, AMOUNT_WITH_VAT, IS_ANAD, LAST_NAME, FIR' +
        'ST_NAME, PERSON_NATIONAL_ID, FK_SUBJECT_SERIAL, SUBJECT_NAME, FU' +
        'LL_NAME)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_PERSON_SERIAL, :INVOICE_STATUS, :DATE_INV' +
        'OICED, :VAT_RATE, :DISCOUNT_BY_SAFE, :DISCOUNT_CUSTOMER, :AMOUNT' +
        '_GROSS, :AMOUNT_NET, :AMOUNT_VAT, :AMOUNT_WITH_VAT, :IS_ANAD, :L' +
        'AST_NAME, :FIRST_NAME, :PERSON_NATIONAL_ID, :FK_SUBJECT_SERIAL, ' +
        ':SUBJECT_NAME, :FULL_NAME)')
    SQLDelete.Strings = (
      'DELETE FROM INVOICE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE INVOICE'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_PERSON_SERIAL = :FK_PERSON_' +
        'SERIAL, INVOICE_STATUS = :INVOICE_STATUS, DATE_INVOICED = :DATE_' +
        'INVOICED, VAT_RATE = :VAT_RATE, DISCOUNT_BY_SAFE = :DISCOUNT_BY_' +
        'SAFE, DISCOUNT_CUSTOMER = :DISCOUNT_CUSTOMER, AMOUNT_GROSS = :AM' +
        'OUNT_GROSS, AMOUNT_NET = :AMOUNT_NET, AMOUNT_VAT = :AMOUNT_VAT, ' +
        'AMOUNT_WITH_VAT = :AMOUNT_WITH_VAT, IS_ANAD = :IS_ANAD, LAST_NAM' +
        'E = :LAST_NAME, FIRST_NAME = :FIRST_NAME, PERSON_NATIONAL_ID = :' +
        'PERSON_NATIONAL_ID, FK_SUBJECT_SERIAL = :FK_SUBJECT_SERIAL, SUBJ' +
        'ECT_NAME = :SUBJECT_NAME, FULL_NAME = :FULL_NAME'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_PERSON_SERIAL, INVOICE_STATUS, DATE_INV' +
        'OICED, VAT_RATE, DISCOUNT_BY_SAFE, DISCOUNT_CUSTOMER, AMOUNT_GRO' +
        'SS, AMOUNT_NET, AMOUNT_VAT, AMOUNT_WITH_VAT, IS_ANAD, LAST_NAME,' +
        ' FIRST_NAME, PERSON_NATIONAL_ID, FK_SUBJECT_SERIAL, SUBJECT_NAME' +
        ', FULL_NAME FROM INVOICE'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM INVOICE'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM INVOICE'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      '    Select'
      
        '        coalesce(pp.payment,0) as payment, coalesce(inv.amount_w' +
        'ith_vat,0) - coalesce(payment,0) as Remaining,'
      '        inv.*,'
      '        per.last_first_name, per.national_id, per.phone_mobile'
      '    from'
      '    invoice inv left outer join'
      '    ('
      
        '        select pay.fk_invoice_serial, sum(pay.amount_paid) as Pa' +
        'yment from invoice_payment pay'
      '        group by pay.fk_invoice_serial'
      '    )pp  on inv.serial_number= pp.fk_invoice_serial'
      
        '    left outer join person_view per on per.serial_number=inv.fk_' +
        'person_serial'
      'order by per.last_name')
    ReadOnly = True
    Options.SetFieldsReadOnly = False
    Active = True
    OnNewRecord = TableSQLNewRecord
    Left = 49
    Top = 5
    object TableSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'A/A'
      DisplayWidth = 6
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object TableSQLLAST_NAME: TWideStringField
      DisplayLabel = #917#960#943#952#949#964#959
      DisplayWidth = 17
      FieldName = 'LAST_NAME'
      FixedChar = True
      Size = 60
    end
    object TableSQLFIRST_NAME: TWideStringField
      DisplayLabel = #908#957#959#956#945
      DisplayWidth = 13
      FieldName = 'FIRST_NAME'
      FixedChar = True
      Size = 60
    end
    object TableSQLNATIONAL_ID: TWideStringField
      DisplayLabel = #932#945#965#964#972#964#951#964#945
      DisplayWidth = 10
      FieldName = 'NATIONAL_ID'
      ReadOnly = True
      FixedChar = True
    end
    object TableSQLPHONE_MOBILE: TWideStringField
      DisplayLabel = #922#953#957#951#964#972
      DisplayWidth = 10
      FieldName = 'PHONE_MOBILE'
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object TableSQLSUBJECT_NAME: TWideStringField
      DisplayLabel = #931#949#956#953#957#940#961#953#959
      DisplayWidth = 23
      FieldName = 'SUBJECT_NAME'
      FixedChar = True
      Size = 60
    end
    object TableSQLDATE_INVOICED: TDateField
      DisplayLabel = #919#956#949#961#959#956'.'
      DisplayWidth = 11
      FieldName = 'DATE_INVOICED'
    end
    object TableSQLAMOUNT_WITH_VAT: TFloatField
      DisplayLabel = #928#959#963#972
      DisplayWidth = 5
      FieldName = 'AMOUNT_WITH_VAT'
      DisplayFormat = '0.00'
    end
    object TableSQLREMAINING: TFloatField
      DisplayLabel = #933#960#972#955#959#953#960#959
      DisplayWidth = 9
      FieldName = 'REMAINING'
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object TableSQLINVOICE_STATUS: TWideStringField
      DisplayLabel = #928#955#951#961#969#956#942
      DisplayWidth = 8
      FieldName = 'INVOICE_STATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object TableSQLPAYMENT: TFloatField
      FieldName = 'PAYMENT'
      ReadOnly = True
      Visible = False
    end
    object TableSQLFK_PERSON_SERIAL: TIntegerField
      FieldName = 'FK_PERSON_SERIAL'
      Required = True
      Visible = False
    end
    object TableSQLVAT_RATE: TFloatField
      FieldName = 'VAT_RATE'
      Visible = False
    end
    object TableSQLDISCOUNT_BY_SAFE: TFloatField
      FieldName = 'DISCOUNT_BY_SAFE'
      Visible = False
    end
    object TableSQLDISCOUNT_CUSTOMER: TFloatField
      FieldName = 'DISCOUNT_CUSTOMER'
      Visible = False
    end
    object TableSQLAMOUNT_GROSS: TFloatField
      FieldName = 'AMOUNT_GROSS'
      Visible = False
    end
    object TableSQLAMOUNT_NET: TFloatField
      FieldName = 'AMOUNT_NET'
      Visible = False
      DisplayFormat = '0.00'
    end
    object TableSQLAMOUNT_VAT: TFloatField
      FieldName = 'AMOUNT_VAT'
      Visible = False
    end
    object TableSQLIS_ANAD: TWideStringField
      FieldName = 'IS_ANAD'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object TableSQLFK_SUBJECT_SERIAL: TIntegerField
      FieldName = 'FK_SUBJECT_SERIAL'
      Required = True
      Visible = False
    end
    object TableSQLFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Visible = False
      Size = 80
    end
    object TableSQLLAST_FIRST_NAME: TWideStringField
      FieldName = 'LAST_FIRST_NAME'
      ReadOnly = True
      Visible = False
      Size = 61
    end
    object TableSQLPERSON_NATIONAL_ID: TWideStringField
      FieldName = 'PERSON_NATIONAL_ID'
      Visible = False
      Size = 30
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
  object MainMenu1: TMainMenu
    Left = 224
    object Reports1: TMenuItem
      Caption = #917#954#964#973#960#969#963#951
      object N3: TMenuItem
        Caption = #932#953#956#959#955#972#947#953#945
        OnClick = N3Click
      end
    end
  end
  object IBCQuery1: TIBCQuery
    Connection = U_databaseFRM.DataConnection
    SQL.Strings = (
      '   Select'
      
        '        coalesce(pp.payment,0) as payment, coalesce(inv.amount_w' +
        'ith_vat,0) - coalesce(payment,0) as Remaining,'
      '        inv.*,'
      '        per.last_first_name, per.national_id, per.phone_mobile'
      '    from'
      '    invoice inv left outer join'
      '    ('
      
        '        select pay.fk_invoice_serial, sum(pay.amount_paid) as Pa' +
        'yment from invoice_payment pay'
      '        group by pay.fk_invoice_serial'
      '    )pp  on inv.serial_number= pp.fk_invoice_serial'
      
        '    left outer join person_view per on per.serial_number=inv.fk_' +
        'person_serial'
      'order by per.last_name')
    Active = True
    Left = 504
    Top = 119
  end
end
