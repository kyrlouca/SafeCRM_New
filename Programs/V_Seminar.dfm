object V_SeminarFRM: TV_SeminarFRM
  Left = 365
  Top = 153
  Caption = '--'
  ClientHeight = 729
  ClientWidth = 1073
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1073
    Height = 53
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TitleLbl: TRzPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1067
      Height = 47
      Align = alClient
      AutoSize = True
      BorderOuter = fsFlatRounded
      Caption = #931#949#956#953#957#940#961#953#959
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3947580
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      TabOrder = 0
      Transparent = True
      WordWrap = False
      object RzDBLabel2: TRzDBLabel
        Left = 2
        Top = 2
        Width = 284
        Height = 43
        Align = alLeft
        Layout = tlCenter
        WordWrap = True
        DataField = 'ANAD_NUMBER'
        DataSource = SeminarSRC
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitHeight = 45
      end
      object StatusFLD: TwwDBComboBox
        Left = 832
        Top = 2
        Width = 233
        Height = 43
        BevelInner = bvNone
        ShowButton = False
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        AutoSize = False
        BorderStyle = bsNone
        ButtonStyle = cbsCustom
        Color = clBtnFace
        DataField = 'STATUS'
        DataSource = SeminarSRC
        DropDownCount = 8
        ItemHeight = 0
        Sorted = False
        TabOrder = 0
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        Align = alRight
      end
    end
  end
  object Panel3x: TRzPanel
    Left = 0
    Top = 53
    Width = 1073
    Height = 628
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 1
    object RzPanel7: TRzPanel
      Left = 0
      Top = 0
      Width = 1073
      Height = 17
      Align = alTop
      BorderOuter = fsNone
      TabOrder = 0
    end
    object PageControlPC: TPageControl
      Left = 0
      Top = 17
      Width = 1073
      Height = 611
      Margins.Left = 30
      ActivePage = PictureTS
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChanging = PageControlPCChanging
      object SeminarTS: TTabSheet
        Caption = #931#949#956#953#957#940#961#953#959
        OnShow = SeminarTSShow
        object RzPanel18: TRzPanel
          Left = 0
          Top = 0
          Width = 1065
          Height = 580
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object FirstGRP: TRzGroupBox
            Left = 20
            Top = 24
            Width = 466
            Height = 417
            Caption = #928#955#951#961#959#966#959#961#943#949#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label1: TLabel
              Left = 49
              Top = 200
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
            object Label2: TLabel
              Left = 86
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
              Left = 115
              Top = 20
              Width = 75
              Height = 20
              Alignment = taRightJustify
              BorderOuter = fsFlat
              BorderWidth = 1
              DataField = 'SERIAL_NUMBER'
              DataSource = SeminarSRC
            end
            object Label3: TLabel
              Left = 55
              Top = 171
              Width = 52
              Height = 14
              Caption = 'Template'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 72
              Top = 222
              Width = 35
              Height = 14
              Caption = #931#967#972#955#953#945
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Companylbl: TLabel
              Left = 64
              Top = 379
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
            object Label6: TLabel
              Left = 66
              Top = 111
              Width = 41
              Height = 14
              Caption = #904#957#945#961#958#951
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 37
              Top = 138
              Width = 70
              Height = 14
              Caption = #927#955#959#954#955#942#961#969#963#951
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 53
              Top = 49
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
            object Label27: TLabel
              Left = 5
              Top = 75
              Width = 102
              Height = 14
              Caption = #913#961'. '#928#961#959#948#953#945#947#961#945#966#942#962
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object RzDBLabel4: TRzDBLabel
              Left = 399
              Top = 168
              Width = 59
              Height = 20
              Alignment = taRightJustify
              BorderOuter = fsFlat
              BorderWidth = 1
              DataField = 'FK_SEMINAR'
              DataSource = SeminarSRC
            end
            object DescFLD: TwwDBEdit
              Left = 113
              Top = 194
              Width = 344
              Height = 22
              DataField = 'SEMINAR_NAME'
              DataSource = SeminarSRC
              TabOrder = 5
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object SeminarTypeFLD: TwwDBComboBox
              Left = 113
              Top = 167
              Width = 280
              Height = 21
              ShowButton = True
              Style = csDropDownList
              MapList = True
              AllowClearKey = False
              AutoDropDown = True
              ShowMatchText = True
              DataField = 'FK_SEMINAR'
              DataSource = SeminarSRC
              DropDownCount = 8
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ItemHeight = 0
              ParentFont = False
              Sorted = False
              TabOrder = 4
              UnboundDataType = wwDefault
              OnCloseUp = SeminarTypeFLDCloseUp
            end
            object RzDBRichEdit1: TRzDBRichEdit
              Left = 113
              Top = 222
              Width = 344
              Height = 49
              DataField = 'COMMENTS'
              DataSource = SeminarSRC
              Font.Charset = GREEK_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              TabOrder = 6
              Zoom = 100
            end
            object MonoRGP: TwwRadioGroup
              Left = 115
              Top = 285
              Width = 185
              Height = 76
              DisableThemes = False
              Caption = #917#960#953#967#949#953#961#953#963#953#945#954#972
              DataField = 'TYPE_MONO_POLY'
              DataSource = SeminarSRC
              Items.Strings = (
                #924#972#957#959'-'#917#960#953#967#949#953#961#953#963#953#945#954#972
                #928#972#955#965'-'#917#960#953#967#949#953#961#953#963#953#945#954#972
                #913#960#955#972)
              TabOrder = 7
              Values.Strings = (
                'M'
                'P'
                'N')
              OnChange = MonoRGPChange
            end
            object CompanyFLD: TwwDBLookupCombo
              Left = 113
              Top = 377
              Width = 344
              Height = 22
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'LAST_NAME'#9'15'#9#908#957#959#956#945' '#917#964#945#953#961#949#943#945#962#9'F'
                'NATIONAL_ID'#9'20'#9#913#961'. '#917#947#947#961#945#966#942#962#9'F')
              DataField = 'FK_COMPANY_PERSON_SERIAL'
              DataSource = SeminarSRC
              LookupTable = CompanySQL
              LookupField = 'SERIAL_NUMBER'
              Options = [loRowLines, loTitles]
              TabOrder = 8
              AutoDropDown = True
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = True
              ShowMatchText = True
            end
            object StartDateFLD: TwwDBDateTimePicker
              Left = 115
              Top = 108
              Width = 90
              Height = 23
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'Arial'
              CalendarAttributes.Font.Style = []
              DataField = 'DATE_STARTED'
              DataSource = SeminarSRC
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
            object wwDBDateTimePicker1: TwwDBDateTimePicker
              Left = 115
              Top = 135
              Width = 90
              Height = 23
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'Arial'
              CalendarAttributes.Font.Style = []
              DataField = 'DATE_COMPLETED'
              DataSource = SeminarSRC
              Epoch = 1950
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ShowButton = True
              TabOrder = 3
              DisplayFormat = 'dd/mm/yyyy'
            end
            object AnadFLD: TwwDBEdit
              Left = 115
              Top = 46
              Width = 77
              Height = 22
              CharCase = ecUpperCase
              DataField = 'ANAD_NUMBER'
              DataSource = SeminarSRC
              Picture.PictureMask = '*6{#}'
              Picture.AutoFill = False
              RegexMask.Mask = '\d{6}'
              TabOrder = 0
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object FirstFLD: TwwDBEdit
              Left = 115
              Top = 72
              Width = 75
              Height = 22
              DataField = 'SPECIFICATION_NUMBER'
              DataSource = SeminarSRC
              TabOrder = 1
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
          end
          object SecondGRP: TRzGroupBox
            Left = 492
            Top = 24
            Width = 321
            Height = 206
            Caption = #928#955#951#961#959#966#959#961#943#949#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object Label10: TLabel
              Left = 35
              Top = 54
              Width = 74
              Height = 14
              Caption = #916#953#940#961#954#949#953#945' '#911#961#949#962
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label12: TLabel
              Left = 12
              Top = 84
              Width = 97
              Height = 14
              Caption = #913#961#953#952#956#972#962' '#924#945#952#951#964#974#957
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 36
              Top = 145
              Width = 73
              Height = 14
              Caption = #933#960#940#961#967#949#953' '#923#942#958#951
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 30
              Top = 171
              Width = 79
              Height = 14
              Caption = #923#942#958#951' '#963#949' '#924#942#957#949#962
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label24: TLabel
              Left = 12
              Top = 115
              Width = 97
              Height = 14
              Caption = #917#955#940#967#953#963#964#959' %'#937#961#974#957' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label30: TLabel
              Left = 31
              Top = 26
              Width = 78
              Height = 14
              Caption = #916#953#940#961#954#949#953#945' '#924#941#961#949#962
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object wwDBEdit1: TwwDBEdit
              Left = 116
              Top = 51
              Width = 90
              Height = 22
              DataField = 'DURATION_HOURS'
              DataSource = SeminarSRC
              TabOrder = 1
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit3: TwwDBEdit
              Left = 116
              Top = 76
              Width = 90
              Height = 22
              DataField = 'MAX_CAPACITY'
              DataSource = SeminarSRC
              TabOrder = 2
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object CompletedFLD: TwwCheckBox
              Left = 116
              Top = 144
              Width = 37
              Height = 18
              DisableThemes = False
              AlwaysTransparent = False
              ValueChecked = 'Y'
              ValueUnchecked = 'N'
              DisplayValueChecked = 'Y'
              DisplayValueUnchecked = 'N'
              NullAndBlankState = cbUnchecked
              DataField = 'HAS_EXPIRY'
              DataSource = SeminarSRC
              ShowText = False
              TabOrder = 4
            end
            object wwDBEdit4: TwwDBEdit
              Left = 115
              Top = 168
              Width = 75
              Height = 22
              DataField = 'EXPIRY_PERIOD'
              DataSource = SeminarSRC
              TabOrder = 5
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit6: TwwDBEdit
              Left = 116
              Top = 112
              Width = 59
              Height = 22
              DataField = 'PASS_PERCENTAGE'
              DataSource = SeminarSRC
              TabOrder = 3
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit7: TwwDBEdit
              Left = 115
              Top = 23
              Width = 90
              Height = 22
              DataField = 'DURATION_DAYS'
              DataSource = SeminarSRC
              TabOrder = 0
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
          end
          object GroupBox7: TGroupBox
            Left = 492
            Top = 246
            Width = 325
            Height = 59
            Caption = #932#965#960#959#962' '#931#949#956#953#957#945#961#943#959#965
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
            object CategoryChangeFLD: TwwDBComboBox
              Left = 19
              Top = 23
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
              DataSource = SeminarSRC
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
      object SubjectTS: TTabSheet
        Caption = #920#941#956#945#964#945'/'#919#956#941#961#949#962
        ImageIndex = 1
        OnShow = SubjectTSShow
        object RzPanel19: TRzPanel
          Left = 0
          Top = 0
          Width = 1065
          Height = 580
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object RzPanel4: TRzPanel
            Left = 585
            Top = 17
            Width = 384
            Height = 563
            Align = alLeft
            BorderOuter = fsNone
            TabOrder = 3
            object GroupBox2: TGroupBox
              Left = 6
              Top = 330
              Width = 337
              Height = 236
              Caption = #924#941#961#949#962' '#916#953#949#958#945#947#969#947#942#962
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object RzPanel8: TRzPanel
                Left = 2
                Top = 16
                Width = 333
                Height = 33
                Align = alTop
                BorderOuter = fsNone
                TabOrder = 0
                object wwDBNavigator1: TwwDBNavigator
                  Left = 0
                  Top = 0
                  Width = 175
                  Height = 33
                  DataSource = SeminarDaySRC
                  RepeatInterval.InitialDelay = 500
                  RepeatInterval.Interval = 100
                  Align = alLeft
                  object wwNavButton1: TwwNavButton
                    Left = 0
                    Top = 0
                    Width = 25
                    Height = 25
                    Hint = 'Move to prior record'
                    ImageIndex = -1
                    NumGlyphs = 2
                    Spacing = 4
                    Transparent = False
                    Caption = 'wwDBNavigator1Prior'
                    Enabled = False
                    DisabledTextColors.ShadeColor = clGray
                    DisabledTextColors.HighlightColor = clBtnHighlight
                    Index = 0
                    Style = nbsPrior
                  end
                  object wwNavButton2: TwwNavButton
                    Left = 25
                    Top = 0
                    Width = 25
                    Height = 25
                    Hint = 'Move to next record'
                    ImageIndex = -1
                    NumGlyphs = 2
                    Spacing = 4
                    Transparent = False
                    Caption = 'wwDBNavigator1Next'
                    Enabled = False
                    DisabledTextColors.ShadeColor = clGray
                    DisabledTextColors.HighlightColor = clBtnHighlight
                    Index = 1
                    Style = nbsNext
                  end
                  object wwNavButton3: TwwNavButton
                    Left = 50
                    Top = 0
                    Width = 25
                    Height = 25
                    Hint = 'Insert new record'
                    ImageIndex = -1
                    NumGlyphs = 2
                    Spacing = 4
                    Transparent = False
                    Caption = 'wwDBNavigator1Insert'
                    DisabledTextColors.ShadeColor = clGray
                    DisabledTextColors.HighlightColor = clBtnHighlight
                    Index = 2
                    Style = nbsInsert
                  end
                  object wwNavButton4: TwwNavButton
                    Left = 75
                    Top = 0
                    Width = 25
                    Height = 25
                    Hint = 'Delete current record'
                    ImageIndex = -1
                    NumGlyphs = 2
                    Spacing = 4
                    Transparent = False
                    Caption = 'wwDBNavigator1Delete'
                    Enabled = False
                    DisabledTextColors.ShadeColor = clGray
                    DisabledTextColors.HighlightColor = clBtnHighlight
                    Index = 3
                    Style = nbsDelete
                  end
                  object wwNavButton5: TwwNavButton
                    Left = 100
                    Top = 0
                    Width = 25
                    Height = 25
                    Hint = 'Post changes of current record'
                    ImageIndex = -1
                    NumGlyphs = 2
                    Spacing = 4
                    Transparent = False
                    Caption = 'wwDBNavigator1Post'
                    Enabled = False
                    DisabledTextColors.ShadeColor = clGray
                    DisabledTextColors.HighlightColor = clBtnHighlight
                    Index = 4
                    Style = nbsPost
                  end
                  object wwNavButton6: TwwNavButton
                    Left = 125
                    Top = 0
                    Width = 25
                    Height = 25
                    Hint = 'Cancel changes made to current record'
                    ImageIndex = -1
                    NumGlyphs = 2
                    Spacing = 4
                    Transparent = False
                    Caption = 'wwDBNavigator1Cancel'
                    Enabled = False
                    DisabledTextColors.ShadeColor = clGray
                    DisabledTextColors.HighlightColor = clBtnHighlight
                    Index = 5
                    Style = nbsCancel
                  end
                  object wwNavButton7: TwwNavButton
                    Left = 150
                    Top = 0
                    Width = 25
                    Height = 25
                    Hint = 'Refresh the contents of the dataset'
                    ImageIndex = -1
                    NumGlyphs = 2
                    Spacing = 4
                    Transparent = False
                    Caption = 'wwDBNavigator1Refresh'
                    DisabledTextColors.ShadeColor = clGray
                    DisabledTextColors.HighlightColor = clBtnHighlight
                    Index = 6
                    Style = nbsRefresh
                  end
                end
              end
              object wwDBGrid2: TwwDBGrid
                Left = 2
                Top = 49
                Width = 319
                Height = 185
                ControlType.Strings = (
                  'SEMINAR_DAY;CustomEdit;SeminarDayFLD;F')
                Selected.Strings = (
                  'SERIAL_NUMBER'#9'10'#9'A/A'
                  'SEMINAR_DAY'#9'15'#9#919#956#949#961#959#956#951#957#943#945
                  'DURATION_HOURS'#9'10'#9#916#953#940#961#954#949#953#945' ('#974#961#949#962')')
                IniAttributes.Delimiter = ';;'
                IniAttributes.UnicodeIniFile = False
                TitleColor = clBtnFace
                FixedCols = 1
                ShowHorzScrollBar = True
                Align = alLeft
                DataSource = SeminarDaySRC
                TabOrder = 1
                TitleAlignment = taLeftJustify
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -12
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                TitleLines = 1
                TitleButtons = False
                object SeminarDayFLD: TwwDBDateTimePicker
                  Left = 40
                  Top = 168
                  Width = 121
                  Height = 22
                  CalendarAttributes.Font.Charset = DEFAULT_CHARSET
                  CalendarAttributes.Font.Color = clWindowText
                  CalendarAttributes.Font.Height = -11
                  CalendarAttributes.Font.Name = 'Tahoma'
                  CalendarAttributes.Font.Style = []
                  DataField = 'SEMINAR_DAY'
                  DataSource = SeminarDaySRC
                  Epoch = 1950
                  ShowButton = True
                  TabOrder = 0
                  DisplayFormat = 'dd/mm/yyyy'
                end
              end
            end
            object RzPanel9: TRzPanel
              Left = 0
              Top = 0
              Width = 384
              Height = 189
              Align = alTop
              BorderOuter = fsNone
              TabOrder = 0
              object GroupBox6: TGroupBox
                Left = 6
                Top = 31
                Width = 338
                Height = 148
                Caption = #920#941#956#945' - '#928#955#951#961#959#966#959#961#943#949#962
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                object Label20: TLabel
                  Left = 43
                  Top = 46
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
                object Label21: TLabel
                  Left = 80
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
                object RzDBLabel3: TRzDBLabel
                  Left = 107
                  Top = 17
                  Width = 75
                  Height = 20
                  Alignment = taRightJustify
                  BorderOuter = fsFlat
                  BorderWidth = 1
                  DataField = 'SERIAL_NUMBER'
                  DataSource = SeminarSubjectSRC
                end
                object Label22: TLabel
                  Left = 11
                  Top = 84
                  Width = 128
                  Height = 14
                  Caption = #932#953#956#942' '#967#969#961#943#962' '#949#960#953#967#959#961#942#947#951#963#951
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label23: TLabel
                  Left = 27
                  Top = 112
                  Width = 112
                  Height = 14
                  Caption = #932#953#956#942' '#956#949' '#949#960#953#967#959#961#942#947#951#963#951
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object SubjectNameFLD: TwwDBEdit
                  Left = 108
                  Top = 43
                  Width = 219
                  Height = 22
                  DataField = 'SUBJECT'
                  DataSource = SeminarSubjectSRC
                  TabOrder = 0
                  UnboundDataType = wwDefault
                  WantReturns = False
                  WordWrap = False
                end
                object wwDBEdit5: TwwDBEdit
                  Left = 145
                  Top = 81
                  Width = 76
                  Height = 22
                  DataField = 'FEE_NORMAL'
                  DataSource = SeminarSubjectSRC
                  TabOrder = 1
                  UnboundDataType = wwDefault
                  WantReturns = False
                  WordWrap = False
                end
                object wwDBEdit2: TwwDBEdit
                  Left = 145
                  Top = 109
                  Width = 76
                  Height = 22
                  DataField = 'FEE_REDUCED'
                  DataSource = SeminarSubjectSRC
                  TabOrder = 2
                  UnboundDataType = wwDefault
                  WantReturns = False
                  WordWrap = False
                end
              end
              object RzPanel15: TRzPanel
                Left = 0
                Top = 0
                Width = 384
                Height = 23
                Align = alTop
                BorderOuter = fsNone
                TabOrder = 0
                object RzPanel16: TRzPanel
                  Left = 175
                  Top = 0
                  Width = 0
                  Height = 23
                  Align = alLeft
                  BorderOuter = fsNone
                  TabOrder = 1
                end
                object wwDBNavigator2: TwwDBNavigator
                  Left = 0
                  Top = 0
                  Width = 175
                  Height = 23
                  DataSource = SeminarSubjectSRC
                  RepeatInterval.InitialDelay = 500
                  RepeatInterval.Interval = 100
                  Align = alLeft
                  object wwNavButton23: TwwNavButton
                    Left = 0
                    Top = 0
                    Width = 25
                    Height = 25
                    Hint = 'Move to prior record'
                    ImageIndex = -1
                    NumGlyphs = 2
                    Spacing = 4
                    Transparent = False
                    Caption = 'wwDBNavigator1Prior'
                    Enabled = False
                    DisabledTextColors.ShadeColor = clGray
                    DisabledTextColors.HighlightColor = clBtnHighlight
                    Index = 0
                    Style = nbsPrior
                  end
                  object wwNavButton24: TwwNavButton
                    Left = 25
                    Top = 0
                    Width = 25
                    Height = 25
                    Hint = 'Move to next record'
                    ImageIndex = -1
                    NumGlyphs = 2
                    Spacing = 4
                    Transparent = False
                    Caption = 'wwDBNavigator1Next'
                    Enabled = False
                    DisabledTextColors.ShadeColor = clGray
                    DisabledTextColors.HighlightColor = clBtnHighlight
                    Index = 1
                    Style = nbsNext
                  end
                  object wwNavButton25: TwwNavButton
                    Left = 50
                    Top = 0
                    Width = 25
                    Height = 25
                    Hint = 'Insert new record'
                    ImageIndex = -1
                    NumGlyphs = 2
                    Spacing = 4
                    Transparent = False
                    Caption = 'wwDBNavigator1Insert'
                    DisabledTextColors.ShadeColor = clGray
                    DisabledTextColors.HighlightColor = clBtnHighlight
                    OnClick = wwNavButton25Click
                    Index = 2
                    Style = nbsInsert
                  end
                  object wwNavButton26: TwwNavButton
                    Left = 75
                    Top = 0
                    Width = 25
                    Height = 25
                    Hint = 'Delete current record'
                    ImageIndex = -1
                    NumGlyphs = 2
                    Spacing = 4
                    Transparent = False
                    Caption = 'wwDBNavigator1Delete'
                    Enabled = False
                    DisabledTextColors.ShadeColor = clGray
                    DisabledTextColors.HighlightColor = clBtnHighlight
                    OnClick = wwNavButton26Click
                    Index = 3
                    Style = nbsDelete
                  end
                  object wwNavButton27: TwwNavButton
                    Left = 100
                    Top = 0
                    Width = 25
                    Height = 25
                    Hint = 'Post changes of current record'
                    ImageIndex = -1
                    NumGlyphs = 2
                    Spacing = 4
                    Transparent = False
                    Caption = 'wwDBNavigator1Post'
                    Enabled = False
                    DisabledTextColors.ShadeColor = clGray
                    DisabledTextColors.HighlightColor = clBtnHighlight
                    Index = 4
                    Style = nbsPost
                  end
                  object wwNavButton28: TwwNavButton
                    Left = 125
                    Top = 0
                    Width = 25
                    Height = 25
                    Hint = 'Cancel changes made to current record'
                    ImageIndex = -1
                    NumGlyphs = 2
                    Spacing = 4
                    Transparent = False
                    Caption = 'wwDBNavigator1Cancel'
                    Enabled = False
                    DisabledTextColors.ShadeColor = clGray
                    DisabledTextColors.HighlightColor = clBtnHighlight
                    Index = 5
                    Style = nbsCancel
                  end
                  object wwNavButton29: TwwNavButton
                    Left = 150
                    Top = 0
                    Width = 25
                    Height = 25
                    Hint = 'Refresh the contents of the dataset'
                    ImageIndex = -1
                    NumGlyphs = 2
                    Spacing = 4
                    Transparent = False
                    Caption = 'wwDBNavigator1Refresh'
                    DisabledTextColors.ShadeColor = clGray
                    DisabledTextColors.HighlightColor = clBtnHighlight
                    Index = 6
                    Style = nbsRefresh
                  end
                end
              end
            end
            object RzGroupBox3: TRzGroupBox
              Left = 6
              Top = 195
              Width = 339
              Height = 112
              Caption = #917#954#960#945#943#948#949#965#963#951
              TabOrder = 2
              object Label5: TLabel
                Left = 11
                Top = 25
                Width = 66
                Height = 14
                Caption = #917#954#960#945#953#948#949#965#964#942#962
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label11: TLabel
                Left = 44
                Top = 76
                Width = 34
                Height = 14
                Caption = #935#974#961#959#962
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object InstructorBTN: TSpeedButton
                Left = 234
                Top = 23
                Width = 21
                Height = 19
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                Glyph.Data = {
                  D6000000424DD60000000000000076000000280000000C0000000C0000000100
                  0400000000006000000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                  0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF
                  0000F00FF00FF00F0000F00FF00FF00F0000FFFFFFFFFFFF0000FFFFFFFFFFFF
                  0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000}
                Layout = blGlyphBottom
                ParentFont = False
                OnClick = InstructorBTNClick
              end
              object VenueBTN: TSpeedButton
                Left = 234
                Top = 74
                Width = 21
                Height = 19
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                Glyph.Data = {
                  D6000000424DD60000000000000076000000280000000C0000000C0000000100
                  0400000000006000000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                  0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF
                  0000F00FF00FF00F0000F00FF00FF00F0000FFFFFFFFFFFF0000FFFFFFFFFFFF
                  0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000}
                Layout = blGlyphBottom
                ParentFont = False
                OnClick = VenueBTNClick
              end
              object Label9: TLabel
                Left = 11
                Top = 50
                Width = 66
                Height = 14
                Caption = #913#958#953#959#955#959#947#951#964#942#962
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object ExaminerBTN: TSpeedButton
                Left = 234
                Top = 48
                Width = 21
                Height = 19
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                Glyph.Data = {
                  D6000000424DD60000000000000076000000280000000C0000000C0000000100
                  0400000000006000000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                  0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF
                  0000F00FF00FF00F0000F00FF00FF00F0000FFFFFFFFFFFF0000FFFFFFFFFFFF
                  0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000}
                Layout = blGlyphBottom
                ParentFont = False
                OnClick = ExaminerBTNClick
              end
              object VenueFLD: TwwDBComboBox
                Left = 84
                Top = 74
                Width = 144
                Height = 21
                ShowButton = True
                Style = csDropDownList
                MapList = True
                AllowClearKey = False
                AutoDropDown = True
                ShowMatchText = True
                DataField = 'FK_VENUE'
                DataSource = SeminarSubjectSRC
                DropDownCount = 8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemHeight = 0
                ParentFont = False
                Sorted = False
                TabOrder = 0
                UnboundDataType = wwDefault
                TwoColumnDisplay = True
              end
              object InstructorFLD: TwwDBLookupCombo
                Left = 84
                Top = 22
                Width = 144
                Height = 24
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'LAST_NAME'#9'12'#9#917#960#943#952#949#964#959#9'F'
                  'FIRST_NAME'#9'12'#9#908#957#959#956#945#9'F'
                  'NATIONAL_ID'#9'10'#9#932#945#965#964#972#964#951#964#945#9'F'
                  'PHONE_MOBILE'#9'10'#9#922#953#957#951#964#972#9'F')
                DataField = 'FK_INSTRUCTOR'
                DataSource = SeminarSubjectSRC
                LookupTable = instructorSelectSQL
                LookupField = 'SERIAL_NUMBER'
                Options = [loTitles]
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                AutoDropDown = True
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
              end
              object ExaminerFLD: TwwDBLookupCombo
                Left = 84
                Top = 48
                Width = 144
                Height = 24
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'LAST_NAME'#9'12'#9#917#960#943#952#949#964#959#9'F'
                  'FIRST_NAME'#9'12'#9#908#957#959#956#945#9'F'
                  'NATIONAL_ID'#9'10'#9#932#945#965#964#972#964#951#964#945#9'F'
                  'PHONE_MOBILE'#9'10'#9#922#953#957#951#964#972#9'F')
                DataField = 'FK_EXAMINER'
                DataSource = SeminarSubjectSRC
                LookupTable = instructorSelectSQL
                LookupField = 'SERIAL_NUMBER'
                Options = [loTitles]
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
                AutoDropDown = True
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
              end
            end
          end
          object GroupBox1: TGroupBox
            Left = 0
            Top = 17
            Width = 537
            Height = 563
            Align = alLeft
            Caption = #920#941#956#945#964#945
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object RzPanel6: TRzPanel
              Left = 2
              Top = 16
              Width = 533
              Height = 33
              Align = alTop
              BorderOuter = fsNone
              TabOrder = 0
            end
            object wwDBGrid1: TwwDBGrid
              Left = 2
              Top = 49
              Width = 533
              Height = 512
              Selected.Strings = (
                'SERIAL_NUMBER'#9'10'#9'A/A'
                'SUBJECT'#9'55'#9#920#941#956#945)
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              FixedCols = 1
              ShowHorzScrollBar = True
              Align = alClient
              DataSource = SeminarSubjectSRC
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
              TabOrder = 1
              TitleAlignment = taLeftJustify
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
            end
          end
          object RzPanel2: TRzPanel
            Left = 0
            Top = 0
            Width = 1065
            Height = 17
            Align = alTop
            BorderOuter = fsNone
            TabOrder = 0
          end
          object RzPanel5: TRzPanel
            Left = 537
            Top = 17
            Width = 48
            Height = 563
            Align = alLeft
            BorderOuter = fsNone
            TabOrder = 2
          end
        end
      end
      object StudentsTS: TTabSheet
        Caption = #931#965#956#956#949#964#941#967#959#957#964#949#962
        ImageIndex = 4
        OnShow = StudentsTSShow
        object RzPanel20: TRzPanel
          Left = 0
          Top = 0
          Width = 1065
          Height = 580
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object RzGroupBox1: TRzGroupBox
            Left = 0
            Top = 12
            Width = 532
            Height = 568
            Align = alLeft
            BorderSides = [sdLeft, sdTop, sdRight]
            Caption = #931#965#956#956#949#964#941#967#959#957#964#949#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object RzSizePanel2: TRzSizePanel
              Left = 1
              Top = 15
              Width = 530
              Height = 29
              Align = alTop
              TabOrder = 0
            end
            object AttendGRD: TwwDBGrid
              Left = 1
              Top = 44
              Width = 530
              Height = 523
              ControlType.Strings = (
                'IS_GUEST;CheckBox;Y;N')
              Selected.Strings = (
                'SERIAL_NUMBER'#9'8'#9'A/A'
                'SERIAL_QB'#9'8'#9'QB'
                'LAST_NAME'#9'17'#9#917#960#943#952#949#964#959
                'FIRST_NAME'#9'15'#9#908#957#959#956#945
                'NATIONAL_ID'#9'10'#9#932#945#965#964#972#964#951#964#945
                'IS_GUEST'#9'7'#9#917#954#964#945#954#964#959#962)
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              FixedCols = 5
              ShowHorzScrollBar = True
              Align = alClient
              BorderStyle = bsNone
              DataSource = AttendingSRC
              KeyOptions = []
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
              TabOrder = 1
              TitleAlignment = taLeftJustify
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = True
              OnTitleButtonClick = AttendGRDTitleButtonClick
              OnDblClick = AttendGRDDblClick
              OnUpdateFooter = AttendGRDUpdateFooter
            end
          end
          object RzPanel3: TRzPanel
            Left = 532
            Top = 12
            Width = 94
            Height = 568
            Align = alLeft
            BorderOuter = fsNone
            TabOrder = 2
            object ToRightBTN: TBitBtn
              Left = 3
              Top = 141
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
              TabOrder = 0
              OnClick = ToRightBTNClick
            end
            object ToLeftBTN: TBitBtn
              Left = 49
              Top = 216
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
              TabOrder = 1
              OnClick = ToLeftBTNClick
            end
          end
          object RzGroupBox2: TRzGroupBox
            Left = 626
            Top = 12
            Width = 450
            Height = 568
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
              Top = 84
              Width = 448
              Height = 483
              Selected.Strings = (
                'SERIAL_NUMBER'#9'10'#9'A/A'
                'SERIAL_QB'#9'8'#9'QB'
                'LAST_NAME'#9'21'#9#917#960#943#952#949#964#959
                'FIRST_NAME'#9'12'#9#908#957#959#956#945
                'NATIONAL_ID'#9'13'#9#932#945#965#964#972#964#951#964#945)
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              Align = alClient
              BorderStyle = bsNone
              Color = clBtnFace
              DataSource = NonAttendSRC
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
              OnTitleButtonClick = AllPersonsGRDTitleButtonClick
              OnDblClick = AllPersonsGRDDblClick
              OnKeyDown = AllPersonsGRDKeyDown
            end
            object RzSizePanel1: TRzSizePanel
              Left = 1
              Top = 15
              Width = 448
              Height = 69
              Align = alTop
              TabOrder = 0
              object Label25: TLabel
                Left = 8
                Top = 38
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
              object Label26: TLabel
                Left = 30
                Top = 10
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
              object SearchPersonFLD: TwwIncrementalSearch
                Left = 77
                Top = 7
                Width = 128
                Height = 22
                DataSource = NonAttendSRC
                SearchField = 'last_name'
                ShowMatchText = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnKeyDown = SearchPersonFLDKeyDown
              end
              object wwIncrementalSearch2: TwwIncrementalSearch
                Left = 75
                Top = 35
                Width = 128
                Height = 22
                DataSource = NonAttendSRC
                SearchField = 'NATIONAL_ID'
                ShowMatchText = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnKeyDown = SearchPersonFLDKeyDown
              end
            end
          end
          object Panel2: TRzPanel
            Left = 0
            Top = 0
            Width = 1065
            Height = 12
            Align = alTop
            BorderOuter = fsNone
            TabOrder = 0
          end
        end
      end
      object CompaniesTS: TTabSheet
        Caption = #917#964#945#953#961#949#943#949#962
        ImageIndex = 6
        OnShow = CompaniesTSShow
        object RzPanel24: TRzPanel
          Left = 0
          Top = 0
          Width = 1065
          Height = 580
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object RzGroupBox4: TRzGroupBox
            Left = 0
            Top = 12
            Width = 532
            Height = 568
            Align = alLeft
            BorderSides = [sdLeft, sdTop, sdRight]
            Caption = #931#965#956#956#949#964#941#967#959#957#964#949#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object RzSizePanel3: TRzSizePanel
              Left = 1
              Top = 15
              Width = 530
              Height = 29
              Align = alTop
              TabOrder = 0
            end
            object wwDBGrid4: TwwDBGrid
              Left = 1
              Top = 44
              Width = 530
              Height = 523
              ControlType.Strings = (
                'IS_GUEST;CheckBox;Y;N')
              Selected.Strings = (
                'SERIAL_NUMBER'#9'8'#9'A/A'
                'SERIAL_QB'#9'8'#9'QB'
                'LAST_NAME'#9'17'#9#917#960#943#952#949#964#959
                'FIRST_NAME'#9'15'#9#908#957#959#956#945
                'NATIONAL_ID'#9'10'#9#932#945#965#964#972#964#951#964#945)
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              FixedCols = 5
              ShowHorzScrollBar = True
              Align = alClient
              BorderStyle = bsNone
              DataSource = Co_companiesInSRC
              KeyOptions = [dgAllowDelete]
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
              ReadOnly = True
              TabOrder = 1
              TitleAlignment = taLeftJustify
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
              OnTitleButtonClick = AttendGRDTitleButtonClick
              OnDblClick = wwDBGrid4DblClick
              OnUpdateFooter = AttendGRDUpdateFooter
            end
          end
          object RzPanel25: TRzPanel
            Left = 532
            Top = 12
            Width = 94
            Height = 568
            Align = alLeft
            BorderOuter = fsNone
            TabOrder = 2
            object RemoveCompanyBTN: TBitBtn
              Left = 3
              Top = 141
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
              TabOrder = 0
              OnClick = RemoveCompanyBTNClick
            end
            object InsertCompanyBTN: TBitBtn
              Left = 49
              Top = 216
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
              TabOrder = 1
              OnClick = InsertCompanyBTNClick
            end
          end
          object RzGroupBox5: TRzGroupBox
            Left = 626
            Top = 12
            Width = 450
            Height = 568
            Align = alLeft
            Caption = #922#945#964#940#955#959#947#959#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            object AllCompGRD: TwwDBGrid
              Left = 1
              Top = 84
              Width = 448
              Height = 483
              Selected.Strings = (
                'SERIAL_NUMBER'#9'10'#9'A/A'
                'SERIAL_QB'#9'8'#9'QB'
                'LAST_NAME'#9'33'#9#917#960#943#952#949#964#959
                'NATIONAL_ID'#9'13'#9#932#945#965#964#972#964#951#964#945)
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              Align = alClient
              BorderStyle = bsNone
              Color = clBtnFace
              DataSource = Co_CompaniesOutSRC
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
              OnTitleButtonClick = AllCompGRDTitleButtonClick
              OnDblClick = AllPersonsGRDDblClick
              OnKeyDown = AllPersonsGRDKeyDown
            end
            object RzSizePanel4: TRzSizePanel
              Left = 1
              Top = 15
              Width = 448
              Height = 69
              Align = alTop
              TabOrder = 0
              object Label28: TLabel
                Left = 18
                Top = 38
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
              object Label29: TLabel
                Left = 54
                Top = 10
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
              object wwIncrementalSearch3: TwwIncrementalSearch
                Left = 104
                Top = 7
                Width = 273
                Height = 22
                DataSource = Co_CompaniesOutSRC
                SearchField = 'last_name'
                ShowMatchText = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnKeyDown = SearchPersonFLDKeyDown
              end
              object wwIncrementalSearch4: TwwIncrementalSearch
                Left = 104
                Top = 35
                Width = 128
                Height = 22
                DataSource = Co_CompaniesOutSRC
                SearchField = 'NATIONAL_ID'
                ShowMatchText = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnKeyDown = SearchPersonFLDKeyDown
              end
            end
          end
          object RzPanel26: TRzPanel
            Left = 0
            Top = 0
            Width = 1065
            Height = 12
            Align = alTop
            BorderOuter = fsNone
            TabOrder = 0
          end
        end
      end
      object CostTS: TTabSheet
        Caption = #922#972#963#964#959#962
        ImageIndex = 2
        OnShow = CostTSShow
        object aaa: TRzPanel
          Left = 0
          Top = 0
          Width = 1065
          Height = 580
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object GroupBox3: TGroupBox
            Left = 0
            Top = 17
            Width = 593
            Height = 563
            Align = alLeft
            Caption = #922#972#963#964#959#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object RzPanel11: TRzPanel
              Left = 2
              Top = 16
              Width = 589
              Height = 33
              Align = alTop
              BorderOuter = fsNone
              TabOrder = 0
              object wwDBNavigator3: TwwDBNavigator
                Left = 0
                Top = 0
                Width = 175
                Height = 33
                DataSource = SeminarCostItemSRC
                RepeatInterval.InitialDelay = 500
                RepeatInterval.Interval = 100
                Align = alLeft
                object wwNavButton8: TwwNavButton
                  Left = 0
                  Top = 0
                  Width = 25
                  Height = 25
                  Hint = 'Move to prior record'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'wwDBNavigator1Prior'
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 0
                  Style = nbsPrior
                end
                object wwNavButton9: TwwNavButton
                  Left = 25
                  Top = 0
                  Width = 25
                  Height = 25
                  Hint = 'Move to next record'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'wwDBNavigator1Next'
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 1
                  Style = nbsNext
                end
                object wwNavButton10: TwwNavButton
                  Left = 50
                  Top = 0
                  Width = 25
                  Height = 25
                  Hint = 'Insert new record'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'wwDBNavigator1Insert'
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 2
                  Style = nbsInsert
                end
                object wwNavButton11: TwwNavButton
                  Left = 75
                  Top = 0
                  Width = 25
                  Height = 25
                  Hint = 'Delete current record'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'wwDBNavigator1Delete'
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 3
                  Style = nbsDelete
                end
                object wwNavButton12: TwwNavButton
                  Left = 100
                  Top = 0
                  Width = 25
                  Height = 25
                  Hint = 'Post changes of current record'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'wwDBNavigator1Post'
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 4
                  Style = nbsPost
                end
                object wwNavButton13: TwwNavButton
                  Left = 125
                  Top = 0
                  Width = 25
                  Height = 25
                  Hint = 'Cancel changes made to current record'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'wwDBNavigator1Cancel'
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 5
                  Style = nbsCancel
                end
                object wwNavButton14: TwwNavButton
                  Left = 150
                  Top = 0
                  Width = 25
                  Height = 25
                  Hint = 'Refresh the contents of the dataset'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'wwDBNavigator1Refresh'
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 6
                  Style = nbsRefresh
                end
              end
            end
            object CostGRD: TwwDBGrid
              Left = 2
              Top = 49
              Width = 589
              Height = 304
              ControlType.Strings = (
                'FK_COST_ITEM;CustomEdit;CostTypeFLD;T')
              Selected.Strings = (
                'SERIAL_NUMBER'#9'10'#9'A/A'
                'FK_COST_ITEM'#9'10'#9#932#973#960#959#962' '#922#972#963#964#959#965#962
                'NUMBER_OF_ITEMS'#9'15'#9#913#961#953#952#956#972#962' '#924#959#957#940#948#969#957
                'AMOUNT_PER_ITEM'#9'14'#9#922#972#963#964#959#962'/'#924#959#957#940#948#945
                'TotalAmnt'#9'10'#9#931#973#957#959#955#959)
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              FixedCols = 1
              ShowHorzScrollBar = True
              DataSource = SeminarCostItemSRC
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
              TabOrder = 1
              TitleAlignment = taLeftJustify
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
              OnUpdateFooter = CostGRDUpdateFooter
              StyleElements = [seFont, seClient]
              object CostTypeFLD: TwwDBLookupCombo
                Left = 183
                Top = 88
                Width = 88
                Height = 22
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'COST_NAME'#9'20'#9'COST_NAME'#9'F'
                  'AMOUNT'#9'10'#9'AMOUNT'#9'F'#9)
                DataField = 'FK_COST_ITEM'
                DataSource = SeminarCostItemSRC
                LookupTable = CostItemTBL
                LookupField = 'SERIAL_NUMBER'
                Options = [loFixedDropDownHeight]
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnDropDown = CostTypeFLDDropDown
                OnCloseUp = CostTypeFLDCloseUp
              end
            end
          end
          object RzPanel13: TRzPanel
            Left = 0
            Top = 0
            Width = 1065
            Height = 17
            Align = alTop
            BorderOuter = fsNone
            TabOrder = 0
          end
        end
      end
      object ReminderTS: TTabSheet
        Caption = #917#961#947#945#963#943#949#962
        ImageIndex = 3
        OnShow = ReminderTSShow
        object RzPanel21: TRzPanel
          Left = 0
          Top = 0
          Width = 1065
          Height = 580
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object GroupBox4: TGroupBox
            Left = 0
            Top = 17
            Width = 577
            Height = 563
            Align = alLeft
            Caption = #933#960#949#957#952#965#956#943#963#949#953#962
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            object RzPanel12: TRzPanel
              Left = 1
              Top = 15
              Width = 575
              Height = 10
              Align = alTop
              BorderOuter = fsNone
              TabOrder = 0
            end
            object wwDBGrid3: TwwDBGrid
              Left = 1
              Top = 25
              Width = 552
              Height = 537
              ControlType.Strings = (
                'AFTER_OR_BEFORE;CustomEdit;AfterFLD;F'
                'DAYS_OR_MONTHS;CustomEdit;NamePersonFLD;F'
                'START_OR_END;CustomEdit;StartEndLD;F')
              Selected.Strings = (
                'SERIAL_NUMBER'#9'3'#9'A/A'
                'DESCRIPTION'#9'18'#9#928#949#961#953#947#961#945#966#942
                'NUMBER_OF_DAYS_MONTHS'#9'5'#9#931#949
                'DAYS_OR_MONTHS'#9'10'#9#919#956#941#961#949#962'/'#924#942#957#949#962
                'AFTER_OR_BEFORE'#9'8'#9#928#961#953#957'/'#924#949#964#940
                'START_OR_END'#9'11'#9#913#960#972' '
                'DATE_TARGETED'#9'12'#9#916#961#940#963#951)
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              FixedCols = 1
              ShowHorzScrollBar = True
              Align = alLeft
              Color = 12713983
              DataSource = SeminarReminderSRC
              Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
              ReadOnly = True
              TabOrder = 1
              TitleAlignment = taLeftJustify
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
              object AfterFLD: TwwDBComboBox
                Left = 94
                Top = 81
                Width = 76
                Height = 20
                ShowButton = True
                Style = csDropDownList
                MapList = True
                AllowClearKey = False
                AutoDropDown = True
                DataField = 'AFTER_OR_BEFORE'
                DataSource = SeminarReminderSRC
                DropDownCount = 8
                ItemHeight = 0
                Items.Strings = (
                  #924#949#964#940#9'A'
                  #928#961#953#957#9'B')
                Sorted = False
                TabOrder = 0
                UnboundDataType = wwDefault
              end
              object NamePersonFLD: TwwDBComboBox
                Left = 94
                Top = 137
                Width = 76
                Height = 20
                ShowButton = True
                Style = csDropDownList
                MapList = True
                AllowClearKey = False
                AutoDropDown = True
                DataField = 'DAYS_OR_MONTHS'
                DataSource = SeminarReminderSRC
                DropDownCount = 8
                ItemHeight = 0
                Items.Strings = (
                  #924#941#961#949#962#9'D'
                  #924#942#957#949#962#9'M')
                Sorted = False
                TabOrder = 1
                UnboundDataType = wwDefault
              end
              object StartEndLD: TwwDBComboBox
                Left = 198
                Top = 233
                Width = 76
                Height = 20
                ShowButton = True
                Style = csDropDownList
                MapList = True
                AllowClearKey = False
                AutoDropDown = True
                DataField = 'START_OR_END'
                DataSource = SeminarReminderSRC
                DropDownCount = 8
                ItemHeight = 0
                Items.Strings = (
                  #913#960#972' '#964#951#957' '#904#957#945#961#958#951#9'S'
                  #913#960#972' '#964#959' '#932#941#955#959#962#9'E')
                Sorted = False
                TabOrder = 2
                UnboundDataType = wwDefault
              end
            end
          end
          object GroupBox5: TGroupBox
            Left = 609
            Top = 17
            Width = 338
            Height = 563
            Align = alLeft
            Caption = #928#955#951#961#959#966#959#961#943#949#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            object Label14: TLabel
              Left = 35
              Top = 102
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
            object Label15: TLabel
              Left = 72
              Top = 77
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
              Left = 99
              Top = 73
              Width = 75
              Height = 20
              Alignment = taRightJustify
              BorderOuter = fsFlat
              BorderWidth = 1
              DataField = 'SERIAL_NUMBER'
              DataSource = SeminarReminderSRC
            end
            object Label17: TLabel
              Left = 50
              Top = 127
              Width = 43
              Height = 14
              Caption = #924#942#957#965#956#945
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 32
              Top = 205
              Width = 63
              Height = 14
              Alignment = taRightJustify
              Caption = #919#956#949#961#959#956#951#957#943#945
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 40
              Top = 241
              Width = 55
              Height = 14
              Caption = #931#951#956#945#957#964#953#954#972
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object REminderDescFLD: TwwDBEdit
              Left = 99
              Top = 99
              Width = 219
              Height = 22
              DataField = 'DESCRIPTION'
              DataSource = SeminarReminderSRC
              TabOrder = 1
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object RzDBRichEdit2: TRzDBRichEdit
              Left = 99
              Top = 127
              Width = 219
              Height = 49
              DataField = 'REMINDER_MESSAGE'
              DataSource = SeminarReminderSRC
              Font.Charset = GREEK_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              TabOrder = 2
              Zoom = 100
            end
            object Date1FLD: TwwDBDateTimePicker
              Left = 101
              Top = 202
              Width = 121
              Height = 22
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'Tahoma'
              CalendarAttributes.Font.Style = []
              CalendarAttributes.PopupYearOptions.StartYear = 2017
              DataField = 'DATE_TARGETED'
              DataSource = SeminarReminderSRC
              Epoch = 1950
              ShowButton = True
              TabOrder = 3
            end
            object HIghFLD: TRzDBCheckBox
              Left = 96
              Top = 240
              Width = 19
              Height = 15
              DataField = 'IS_HIGH'
              DataSource = SeminarReminderSRC
              ValueChecked = 'Y'
              ValueUnchecked = 'N'
              Alignment = taLeftJustify
              TabOrder = 4
              OnClick = HIghFLDClick
            end
            object RzPanel10: TRzPanel
              Left = 2
              Top = 16
              Width = 334
              Height = 39
              Align = alTop
              BorderInner = fsFlatRounded
              BorderOuter = fsNone
              BorderSides = [sdRight, sdBottom]
              TabOrder = 0
              object wwDBNavigator4: TwwDBNavigator
                Left = 1
                Top = 7
                Width = 184
                Height = 26
                AutosizeStyle = asSizeNavButtons
                DataSource = SeminarReminderSRC
                RepeatInterval.InitialDelay = 500
                RepeatInterval.Interval = 100
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                object wwNavButton15: TwwNavButton
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
                object wwNavButton16: TwwNavButton
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
                object wwNavButton17: TwwNavButton
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
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 2
                  Style = nbsNext
                end
                object wwNavButton18: TwwNavButton
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
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 3
                  Style = nbsLast
                end
                object wwNavButton19: TwwNavButton
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
                  OnClick = wwNavButton19Click
                  Index = 4
                  Style = nbsInsert
                end
                object wwNavButton20: TwwNavButton
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
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 5
                  Style = nbsDelete
                end
                object wwNavButton21: TwwNavButton
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
                object wwNavButton22: TwwNavButton
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
                DataSource = SeminarReminderSRC
                SearchField = 'Description'
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
          end
          object RzPanel14: TRzPanel
            Left = 0
            Top = 0
            Width = 1065
            Height = 17
            Align = alTop
            BorderOuter = fsNone
            TabOrder = 0
          end
          object RzPanel17: TRzPanel
            Left = 577
            Top = 17
            Width = 32
            Height = 563
            Align = alLeft
            BorderOuter = fsNone
            TabOrder = 2
          end
        end
      end
      object PictureTS: TTabSheet
        Caption = #922#949#943#956#949#957#959'/'#917#953#954#972#957#949#962
        ImageIndex = 5
        object RzPanel23: TRzPanel
          Left = 0
          Top = 0
          Width = 1065
          Height = 580
          Align = alClient
          TabOrder = 0
          object RzBitBtn2: TRzBitBtn
            Left = 43
            Top = 128
            Width = 125
            Height = 37
            Alignment = taLeftJustify
            Caption = 'Edit Certificate Template'
            DoubleBuffered = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            LightTextStyle = True
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 0
            OnClick = RzBitBtn1Click
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFBC8A57BC8A57BC8A57BC8A57BC8A57BC8A57BC8A57BC8A57BC8A57
              BC8A57BC8A57BC8A57BC8A57BC8A57BC8A57BC8A57BC8A57BC8A57BC8A57BC8A
              57BC8A57BC8A57FFFFFFBC8A57BC8A57BC8B58BC8B58BC8B58BC8B58BC8B58BC
              8B58BC8B58BC8B58BD8B58BD8C59BD8C59BD8C59BD8C59BD8C59BD8C59BD8C59
              BD8C59BD8C59BD8C58BC8B57BC8B57BC8A57B8844CDAC2A8F6F6F3F6F6F3F6F6
              F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6
              F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3DECBB5B8844CBA8750E0CDB8
              F6F6F3F6F6F3F6F8F6F6F8F5F6F8F6F6F6F3F6F6F3F6F6F3949190DCDBDCFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F3E6D8C8BA
              8750BB8851DDCAB3F6F6F3F6F6F38A56308A56308A56308A5630F6F6F3F6F6F3
              949190D9D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF6F6F3E3D4C3BB8851BB8853DDC9B3F6F6F3F6F6F38A56308A56308A56308A
              5630F6F6F3F6F6F3949190DBD9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF6F6F3E3D6C4BB8853BB8B54DFCBB6F6F6F3F6F6F3F4F3
              F0F4F3F0F4F3F0F3F2EEF6F6F3F6F6F394919094919096949296939296949296
              9492969492969492969492928F8E949190F6F6F3E4D6C4BB8B54BC8C56DFCCB6
              F5F7F6F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F39491909491909491
              90949190949190949190949190949190949190949190949190F6F6F3E4D6C5BC
              8C56BE8D58DFCCB6F3F1ECF6F6F3F3F1ECF3F1ECF3F1ECF6F6F3F6F6F3F6F6F3
              F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6
              F3F6F6F3E3D6C4BE8D58BE8F59DECDB7F3F1ECF6F6F3F6F6F3F6F6F3F6F6F3F6
              F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3
              F6F6F3F6F6F3F6F6F3F6F6F3E4D7C5BE8F59BF905ADFCEB8F6F6F3F6F6F3F6F6
              F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3949190DCDBDCFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F3E5D8C6BF905AC0915CDFCDB7
              F6F6F3F6F6F38A56308A56308A56308A5630F6F6F3F6F6F3949190D9D6D6FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F3E5D7C7C0
              915CC0915EDECCB7F6F6F3F6F6F38A56308A56308A56308A5630F6F6F3F6F6F3
              949190DBD9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF6F6F3E5D8C7C0915EC1925FDFCEB9F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6
              F6F3F6F6F3F6F6F3949190949190949190949190949190949190949190949190
              949190949190949190F6F6F3E5D7C7C1925FC29461E0CEB9F6F6F3F6F6F3F6F6
              F3F6F6F3F6F6F3F6F6F3F4F2EEF6F6F394919094919094919094919094919094
              9190949190949190949190949190949190F6F6F3E5D7C6C29461C29461E3D4C1
              F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6
              F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3F6F6F3E8DECFC2
              9461C79D6ED4B797E5D8C7E5D8C7E5D8C7E5D8C7E5D8C7E5D8C7E5D8C7E5D8C7
              E5D8C7E5D8C7E5D8C7E5D8C7E5D8C7E5D8C7E5D8C7E5D8C7E5D8C7E5D8C7E5D8
              C7E5D8C7D7BC9DC79D6EC8A377D5AF86E0BD97DDBA94DEBB95DEBB95DEBB95DE
              BB95DEBB95DEBB95DEBB95DEBB95DEBB95DEBB95DEBB95DEBB95DEBB95DEBB95
              DEBB95DEBB95DDBA94E0BD97D5AF85C8A377C9A479D5AF84DDB992DCB890DCB8
              90DCB890DCB890DCB890DCB890DCB890DCB890DCB890DCB890DCB890DCB890DC
              B890DCB890DCB890DCB890DCB890DCB890DEBA93D4AE84C9A479C7A275D5AF84
              DFBB95DDB991DEBA93DEBA93DEBA93DEBA93DEBA93DEBA93DEBA93DEBA93DEBA
              93DEBA93DEBA93DEBA93DEBA93DEBA93DEBA93DEBA93DDB991E0BC97D4AF84C7
              A275CDA679CFA97DD3AE82D3AE82D2AD81D3AD82D3AD82D3AD82D3AD82D3AD82
              D3AD82D3AD82D3AD82D3AD82D3AD82D3AD82D3AD82D3AD82D3AD82D2AD81D3AE
              82D4AE83CDA87BCDA679FFFFFFC6A172CBA87DCCAA80CCA97ECCA97ECCA97ECC
              A97ECCA97ECCA97ECCA97ECCA97ECCA97ECCA97ECCA97ECCA97ECCA97ECCA97E
              CCA97ECCA97ECCAA80CBA87CD4B792FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            Margin = -1
            Spacing = 8
          end
        end
      end
    end
  end
  object Panel4: TRzPanel
    Left = 0
    Top = 686
    Width = 1073
    Height = 43
    Align = alBottom
    BorderInner = fsFlatRounded
    BorderOuter = fsNone
    TabOrder = 2
    object RzPanel1: TRzPanel
      Left = 971
      Top = 2
      Width = 100
      Height = 39
      Align = alRight
      BorderOuter = fsNone
      TabOrder = 0
      object CLoseBTN: TRzBitBtn
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
        OnClick = CLoseBTNClick
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
    object AcceptBTN: TBitBtn
      Left = 11
      Top = 6
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
      OnClick = AcceptBTNClick
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
  object RzPanel22: TRzPanel
    Left = 0
    Top = 681
    Width = 1073
    Height = 5
    Align = alBottom
    BorderOuter = fsNone
    ShowDockClientCaptions = False
    TabOrder = 3
  end
  object SeminarSRC: TDataSource
    DataSet = SeminarSQL
    Left = 136
    Top = 25
  end
  object SeminarSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'GEN_SEMINAR'
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR'
      
        '  (SERIAL_NUMBER, ANAD_NUMBER, FK_SEMINAR, FK_INSTRUCTOR, FK_EXA' +
        'MINER, FK_VENUE, FK_COMPANY_PERSON_SERIAL, SEMINAR_NAME, DATE_ST' +
        'ARTED, DATE_COMPLETED, DURATION_DAYS, DURATION_HOURS, AMOUNT_ANA' +
        'D, COMMENTS, ANAD_APPROVED, STATUS, IS_INVOICED, IS_CERTIFICATED' +
        ', MAX_CAPACITY, HAS_EXPIRY, EXPIRY_PERIOD, TYPE_MONO_POLY, SEM_C' +
        'ATEGORY, FK_COMPANY_INVOICED, PASS_PERCENTAGE, SPECIFICATION_NUM' +
        'BER)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :ANAD_NUMBER, :FK_SEMINAR, :FK_INSTRUCTOR, :F' +
        'K_EXAMINER, :FK_VENUE, :FK_COMPANY_PERSON_SERIAL, :SEMINAR_NAME,' +
        ' :DATE_STARTED, :DATE_COMPLETED, :DURATION_DAYS, :DURATION_HOURS' +
        ', :AMOUNT_ANAD, :COMMENTS, :ANAD_APPROVED, :STATUS, :IS_INVOICED' +
        ', :IS_CERTIFICATED, :MAX_CAPACITY, :HAS_EXPIRY, :EXPIRY_PERIOD, ' +
        ':TYPE_MONO_POLY, :SEM_CATEGORY, :FK_COMPANY_INVOICED, :PASS_PERC' +
        'ENTAGE, :SPECIFICATION_NUMBER)')
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
        '_MONO_POLY = :TYPE_MONO_POLY, SEM_CATEGORY = :SEM_CATEGORY, FK_C' +
        'OMPANY_INVOICED = :FK_COMPANY_INVOICED, PASS_PERCENTAGE = :PASS_' +
        'PERCENTAGE, SPECIFICATION_NUMBER = :SPECIFICATION_NUMBER'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, ANAD_NUMBER, FK_SEMINAR, FK_INSTRUCTOR, FK' +
        '_EXAMINER, FK_VENUE, FK_COMPANY_PERSON_SERIAL, SEMINAR_NAME, DAT' +
        'E_STARTED, DATE_COMPLETED, DURATION_DAYS, DURATION_HOURS, AMOUNT' +
        '_ANAD, COMMENTS, ANAD_APPROVED, STATUS, IS_INVOICED, IS_CERTIFIC' +
        'ATED, MAX_CAPACITY, HAS_EXPIRY, EXPIRY_PERIOD, TYPE_MONO_POLY, S' +
        'EM_CATEGORY, FK_COMPANY_INVOICED, PASS_PERCENTAGE, SPECIFICATION' +
        '_NUMBER FROM SEMINAR'
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
      '*'
      'FROM'
      ' seminar '
      'where '
      ' serial_number= :SerialNumber'
      '')
    OnNewRecord = SeminarSQLNewRecord
    Left = 65
    Top = 37
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SerialNumber'
        Value = nil
      end>
    object SeminarSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
    end
    object SeminarSQLFK_SEMINAR: TIntegerField
      FieldName = 'FK_SEMINAR'
    end
    object SeminarSQLSEMINAR_NAME: TWideStringField
      FieldName = 'SEMINAR_NAME'
      Size = 160
    end
    object SeminarSQLFK_INSTRUCTOR: TIntegerField
      FieldName = 'FK_INSTRUCTOR'
    end
    object SeminarSQLFK_VENUE: TIntegerField
      FieldName = 'FK_VENUE'
    end
    object SeminarSQLDATE_STARTED: TDateField
      FieldName = 'DATE_STARTED'
      Required = True
    end
    object SeminarSQLDATE_COMPLETED: TDateField
      FieldName = 'DATE_COMPLETED'
      Required = True
    end
    object SeminarSQLDURATION_DAYS: TIntegerField
      FieldName = 'DURATION_DAYS'
    end
    object SeminarSQLDURATION_HOURS: TIntegerField
      FieldName = 'DURATION_HOURS'
    end
    object SeminarSQLAMOUNT_ANAD: TFloatField
      FieldName = 'AMOUNT_ANAD'
    end
    object SeminarSQLCOMMENTS: TWideStringField
      FieldName = 'COMMENTS'
      Size = 160
    end
    object SeminarSQLANAD_APPROVED: TWideStringField
      FieldName = 'ANAD_APPROVED'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SeminarSQLSTATUS: TWideStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object SeminarSQLIS_INVOICED: TWideStringField
      FieldName = 'IS_INVOICED'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SeminarSQLIS_CERTIFICATED: TWideStringField
      FieldName = 'IS_CERTIFICATED'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SeminarSQLMAX_CAPACITY: TIntegerField
      FieldName = 'MAX_CAPACITY'
      Required = True
    end
    object SeminarSQLFK_COMPANY_PERSON_SERIAL: TIntegerField
      FieldName = 'FK_COMPANY_PERSON_SERIAL'
    end
    object SeminarSQLHAS_EXPIRY: TWideStringField
      FieldName = 'HAS_EXPIRY'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SeminarSQLEXPIRY_PERIOD: TIntegerField
      FieldName = 'EXPIRY_PERIOD'
    end
    object SeminarSQLANAD_NUMBER: TWideStringField
      FieldName = 'ANAD_NUMBER'
      FixedChar = True
      Size = 30
    end
    object SeminarSQLFK_EXAMINER: TIntegerField
      FieldName = 'FK_EXAMINER'
    end
    object SeminarSQLTYPE_MONO_POLY: TWideStringField
      FieldName = 'TYPE_MONO_POLY'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SeminarSQLSEM_CATEGORY: TWideStringField
      FieldName = 'SEM_CATEGORY'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SeminarSQLFK_COMPANY_INVOICED: TIntegerField
      FieldName = 'FK_COMPANY_INVOICED'
    end
    object SeminarSQLPASS_PERCENTAGE: TIntegerField
      FieldName = 'PASS_PERCENTAGE'
    end
    object SeminarSQLSPECIFICATION_NUMBER: TWideStringField
      FieldName = 'SPECIFICATION_NUMBER'
      Size = 10
    end
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = U_databaseFRM.DataConnection
    Left = 217
    Top = 13
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = U_databaseFRM.DataConnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 336
    Top = 1
  end
  object DbImages: TImageList
    Left = 210
    Top = 101
    Bitmap = {
      494C010110008800980310001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC9966009933000099330000CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2009999990099999900B2B2B2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      000099330000CC660000CC660000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      990099999900CCCCCC00CCCCCC00999999000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000993300000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00999999000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000099330000CC9966000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990099999900B2B2B2000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      00000000000000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000000000009933000099330000993300009933
      00009933000099330000993300000000000000000000B2B2B20099999900CCCC
      CC0099999900B2B2B20000000000000000009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000CC660000CC66
      00009933000099330000CC660000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC009999990099999900CCCCCC00CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000099330000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900B2B2B20000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC6600009933
      0000000000000000000099330000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000099999900CCCCCC009999
      9900000000000000000099999900CCCCCC00CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000993300000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000099999900999999000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000000000000CC99660099330000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900B2B2B20000000000000000000000000000000000B2B2B20099999900CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      00000000000000000000000000000000000099330000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC009999990000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000CC9966009933000099330000CC6600009933
      0000CC660000CC660000993300000000000000000000B2B2B20099999900CCCC
      CC0099999900B2B2B20000000000B2B2B2009999990099999900CCCCCC009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00999999000000000000000000000000000000000099330000CC66
      0000CC660000993300009933000099330000CC660000CC66000099330000CC99
      660099330000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00999999009999990099999900CCCCCC00CCCCCC0099999900B2B2
      B20099999900CCCCCC0099999900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000009933
      000099330000CC660000CC660000CC6600009933000099330000000000000000
      0000000000009933000099330000000000000000000000000000000000009999
      990099999900CCCCCC00CCCCCC00CCCCCC009999990099999900000000000000
      0000000000009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC009999990000000000000000000000000000000000000000000000
      0000CC996600993300009933000099330000CC99660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B200999999009999990099999900B2B2B20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC6600009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000993300009933
      000099330000993300009933000099330000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099999900999999009999
      990099999900999999009999990099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC009999990000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC6600009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000993300009933
      000099330000993300009933000099330000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099999900999999009999
      990099999900999999009999990099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC9966009933000099330000CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2009999990099999900B2B2B2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      000099330000CC660000CC660000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      990099999900CCCCCC00CCCCCC00999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000099330000CC9966000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990099999900B2B2B2000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000993300000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00999999000000000000000000000000000000
      00000000000000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000000000009933000099330000993300009933
      00009933000099330000993300000000000000000000B2B2B20099999900CCCC
      CC0099999900B2B2B20000000000000000009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000099330000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900B2B2B20000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      00009933000099330000CC660000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC009999990099999900CCCCCC00CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC6600009933
      0000000000000000000099330000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000099999900CCCCCC009999
      9900000000000000000099999900CCCCCC00CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000000000000CC99660099330000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900B2B2B20000000000000000000000000000000000B2B2B20099999900CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000993300000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000099999900999999000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      99000000000000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000CC9966009933000099330000CC6600009933
      0000CC660000CC660000993300000000000000000000B2B2B20099999900CCCC
      CC0099999900B2B2B20000000000B2B2B2009999990099999900CCCCCC009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      00000000000000000000000000000000000099330000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000000000000000000000000000099330000CC66
      0000CC660000993300009933000099330000CC660000CC66000099330000CC99
      660099330000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00999999009999990099999900CCCCCC00CCCCCC0099999900B2B2
      B20099999900CCCCCC0099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000009933
      000099330000CC660000CC660000CC6600009933000099330000000000000000
      0000000000009933000099330000000000000000000000000000000000009999
      990099999900CCCCCC00CCCCCC00CCCCCC009999990099999900000000000000
      0000000000009999990099999900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000CC996600993300009933000099330000CC99660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B200999999009999990099999900B2B2B20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC6600009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000993300009933
      000099330000993300009933000099330000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099999900999999009999
      990099999900999999009999990099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC009999990000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC6600009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000993300009933
      000099330000993300009933000099330000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099999900999999009999
      990099999900999999009999990099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F3FFF3FFF0FFF0FFE1FFE1FFE0FFE0FFC0FFC0FFC0FFC0FF807F807F83018301
      803F803F870187018C1F8C1F8F818F819E0F9E0F87818781FF07FF0782018201
      FF83FF83C001C001FFC3FFC3E039E039FFE3FFE3F07FF07FFFF3FFF3FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFC7FFC7FFE3FFE3FF87FF87FFE1FFE1FF07FF07FFE0FFE0F
      E001E00180078007C001C001800380038001800180018001C001C00180038003
      E001E00180078007F07FF07FFE0FFE0FF87FF87FFE1FFE1FFC7FFC7FFE3FFE3F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F0FFF0FFF3FFF3FFE0FFE0FFE1FFE1FFC0FFC0FFC0FFC0FF83018301807F807F
      87018701803F803F8F818F818C1F8C1F878187819E0F9E0F82018201FF07FF07
      C001C001FF83FF83E039E039FFC3FFC3F07FF07FFFE3FFE3FFFFFFFFFFF3FFF3
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFC7FFC7FFE3FFE3FF87FF87FFE1FFE1FF07FF07FFE0FFE0F
      E001E00180078007C001C001800380038001800180018001C001C00180038003
      E001E00180078007F07FF07FFE0FFE0FF87FF87FFE1FFE1FFC7FFC7FFE3FFE3F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object AttendingSQL: TIBCQuery
    UpdatingTable = 'SEMINAR_PERSON'
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR_PERSON'
      
        '  (FK_SEMINAR_SERIAL, FK_PERSON_SERIAL, ATTENDANCE_STATUS, IS_GU' +
        'EST)'
      'VALUES'
      
        '  (:FK_SEMINAR_SERIAL, :FK_PERSON_SERIAL, :ATTENDANCE_STATUS, :I' +
        'S_GUEST)')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR_PERSON'
      'WHERE'
      
        '  FK_SEMINAR_SERIAL = :Old_FK_SEMINAR_SERIAL AND FK_PERSON_SERIA' +
        'L = :Old_FK_PERSON_SERIAL')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR_PERSON'
      'SET'
      
        '  FK_SEMINAR_SERIAL = :FK_SEMINAR_SERIAL, FK_PERSON_SERIAL = :FK' +
        '_PERSON_SERIAL, ATTENDANCE_STATUS = :ATTENDANCE_STATUS, IS_GUEST' +
        ' = :IS_GUEST'
      'WHERE'
      
        '  FK_SEMINAR_SERIAL = :Old_FK_SEMINAR_SERIAL AND FK_PERSON_SERIA' +
        'L = :Old_FK_PERSON_SERIAL')
    SQLRefresh.Strings = (
      
        'SELECT FK_SEMINAR_SERIAL, FK_PERSON_SERIAL, ATTENDANCE_STATUS, I' +
        'S_GUEST FROM SEMINAR_PERSON'
      'WHERE'
      
        '  FK_SEMINAR_SERIAL = :FK_SEMINAR_SERIAL AND FK_PERSON_SERIAL = ' +
        ':FK_PERSON_SERIAL')
    SQLLock.Strings = (
      'SELECT NULL FROM SEMINAR_PERSON'
      'WHERE'
      
        'FK_SEMINAR_SERIAL = :Old_FK_SEMINAR_SERIAL AND FK_PERSON_SERIAL ' +
        '= :Old_FK_PERSON_SERIAL'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SEMINAR_PERSON'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select'
      
        ' pe.serial_number,pe.serial_qb, pe.first_name,pe.last_name , pe.' +
        'national_id, sp.fk_seminar_serial, sp.fk_person_serial, sp.atten' +
        'dance_status,sp.IS_Guest'
      'from'
      '   seminar_person   sp  left outer join'
      '   person pe        on pe.serial_number=sp.fk_person_serial'
      'order by pe.last_name')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_SEMINAR_SERIAL'
    MasterSource = SeminarSRC
    Active = True
    Left = 90
    Top = 145
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object AttendingSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'A/A'
      DisplayWidth = 8
      FieldName = 'SERIAL_NUMBER'
      ReadOnly = True
    end
    object AttendingSQLSERIAL_QB: TIntegerField
      DisplayLabel = 'QB'
      DisplayWidth = 8
      FieldName = 'SERIAL_QB'
      ReadOnly = True
    end
    object AttendingSQLLAST_NAME: TWideStringField
      DisplayLabel = #917#960#943#952#949#964#959
      DisplayWidth = 17
      FieldName = 'LAST_NAME'
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object AttendingSQLFIRST_NAME: TWideStringField
      DisplayLabel = #908#957#959#956#945
      DisplayWidth = 15
      FieldName = 'FIRST_NAME'
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object AttendingSQLNATIONAL_ID: TWideStringField
      DisplayLabel = #932#945#965#964#972#964#951#964#945
      DisplayWidth = 10
      FieldName = 'NATIONAL_ID'
      ReadOnly = True
      FixedChar = True
    end
    object AttendingSQLIS_GUEST: TWideStringField
      DisplayLabel = #917#954#964#945#954#964#959#962
      DisplayWidth = 7
      FieldName = 'IS_GUEST'
      Required = True
      FixedChar = True
      Size = 1
    end
    object AttendingSQLATTENDANCE_STATUS: TWideStringField
      DisplayLabel = 'Status'
      DisplayWidth = 8
      FieldName = 'ATTENDANCE_STATUS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object AttendingSQLFK_SEMINAR_SERIAL: TIntegerField
      FieldName = 'FK_SEMINAR_SERIAL'
      Required = True
      Visible = False
    end
    object AttendingSQLFK_PERSON_SERIAL: TIntegerField
      FieldName = 'FK_PERSON_SERIAL'
      Required = True
      Visible = False
    end
  end
  object AttendingSRC: TDataSource
    DataSet = AttendingSQL
    Left = 56
    Top = 137
  end
  object NonAttendSQL: TIBCQuery
    UpdatingTable = 'person'
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR_PERSON'
      '  (FK_SEMINAR_SERIAL, FK_PERSON_SERIAL, ATTENDANCE_STATUS)'
      'VALUES'
      '  (:FK_SEMINAR_SERIAL, :FK_PERSON_SERIAL, :ATTENDANCE_STATUS)')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR_PERSON'
      'WHERE'
      
        '  FK_SEMINAR_SERIAL = :Old_FK_SEMINAR_SERIAL AND FK_PERSON_SERIA' +
        'L = :Old_FK_PERSON_SERIAL')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR_PERSON'
      'SET'
      
        '  FK_SEMINAR_SERIAL = :FK_SEMINAR_SERIAL, FK_PERSON_SERIAL = :FK' +
        '_PERSON_SERIAL, ATTENDANCE_STATUS = :ATTENDANCE_STATUS'
      'WHERE'
      
        '  FK_SEMINAR_SERIAL = :Old_FK_SEMINAR_SERIAL AND FK_PERSON_SERIA' +
        'L = :Old_FK_PERSON_SERIAL')
    SQLRefresh.Strings = (
      
        'SELECT FK_SEMINAR_SERIAL, FK_PERSON_SERIAL, ATTENDANCE_STATUS FR' +
        'OM SEMINAR_PERSON'
      'WHERE'
      
        '  FK_SEMINAR_SERIAL = :FK_SEMINAR_SERIAL AND FK_PERSON_SERIAL = ' +
        ':FK_PERSON_SERIAL')
    SQLLock.Strings = (
      'SELECT NULL FROM SEMINAR_PERSON'
      'WHERE'
      
        'FK_SEMINAR_SERIAL = :Old_FK_SEMINAR_SERIAL AND FK_PERSON_SERIAL ' +
        '= :Old_FK_PERSON_SERIAL'
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
      
        '     pout.serial_number,pout.serial_qb, pout.last_name,pout.firs' +
        't_name, pout.national_id,pout.is_company'
      ' from'
      ' person pout left outer join'
      '('
      'select'
      '    pe.serial_number, sp.fk_person_serial, sp.attendance_status'
      'from'
      '    person pe inner join'
      '    seminar_person sp on pe.serial_number=sp.fk_person_serial'
      '    where '
      '       sp.fk_seminar_serial= :seminarSerial'
      ') as PeFound'
      'on pout.serial_number= peFound.serial_number'
      'where '
      '   pout.status_active='#39'Y'#39
      '   and pout.is_company='#39'N'#39
      '   and pefound.serial_number is null'
      'order by pout.last_name'
      '    ')
    DetailFields = 'FK_SEMINAR_SERIAL'
    ReadOnly = True
    Active = True
    Left = 26
    Top = 193
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'seminarSerial'
        Value = nil
      end>
    object NonAttendSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'A/A'
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object NonAttendSQLSERIAL_QB: TIntegerField
      DisplayLabel = 'QB'
      DisplayWidth = 8
      FieldName = 'SERIAL_QB'
    end
    object NonAttendSQLLAST_NAME: TWideStringField
      DisplayLabel = #917#960#943#952#949#964#959
      DisplayWidth = 21
      FieldName = 'LAST_NAME'
      FixedChar = True
      Size = 30
    end
    object NonAttendSQLFIRST_NAME: TWideStringField
      DisplayLabel = #908#957#959#956#945
      DisplayWidth = 12
      FieldName = 'FIRST_NAME'
      FixedChar = True
      Size = 30
    end
    object NonAttendSQLNATIONAL_ID: TWideStringField
      DisplayLabel = #932#945#965#964#972#964#951#964#945
      DisplayWidth = 13
      FieldName = 'NATIONAL_ID'
      FixedChar = True
    end
  end
  object NonAttendSRC: TDataSource
    DataSet = NonAttendSQL
    Left = 88
    Top = 185
  end
  object seminarSubjectSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'GEN_SEMINAR_SUBJECT'
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR_SUBJECT'
      
        '  (SERIAL_NUMBER, FK_SEMINAR_SERIAL, SUBJECT, FK_SUBJECT_TYPE_SE' +
        'RIAL, FEE_NORMAL, FEE_REDUCED, FK_INSTRUCTOR, FK_EXAMINER, FK_VE' +
        'NUE)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_SEMINAR_SERIAL, :SUBJECT, :FK_SUBJECT_TYP' +
        'E_SERIAL, :FEE_NORMAL, :FEE_REDUCED, :FK_INSTRUCTOR, :FK_EXAMINE' +
        'R, :FK_VENUE)')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR_SUBJECT'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR_SUBJECT'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_SEMINAR_SERIAL = :FK_SEMINA' +
        'R_SERIAL, SUBJECT = :SUBJECT, FK_SUBJECT_TYPE_SERIAL = :FK_SUBJE' +
        'CT_TYPE_SERIAL, FEE_NORMAL = :FEE_NORMAL, FEE_REDUCED = :FEE_RED' +
        'UCED, FK_INSTRUCTOR = :FK_INSTRUCTOR, FK_EXAMINER = :FK_EXAMINER' +
        ', FK_VENUE = :FK_VENUE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_SEMINAR_SERIAL, SUBJECT, FK_SUBJECT_TYP' +
        'E_SERIAL, FEE_NORMAL, FEE_REDUCED, FK_INSTRUCTOR, FK_EXAMINER, F' +
        'K_VENUE FROM SEMINAR_SUBJECT'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM SEMINAR_SUBJECT'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SEMINAR_SUBJECT'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'SEMINAR_subject')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_SEMINAR_SERIAL'
    MasterSource = SeminarSRC
    Active = True
    Left = 9
    Top = 517
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object seminarSubjectSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'A/A'
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
    end
    object seminarSubjectSQLSUBJECT: TWideStringField
      DisplayLabel = #920#941#956#945
      DisplayWidth = 55
      FieldName = 'SUBJECT'
      Required = True
      FixedChar = True
      Size = 60
    end
    object seminarSubjectSQLFK_SEMINAR_SERIAL: TIntegerField
      FieldName = 'FK_SEMINAR_SERIAL'
      Required = True
      Visible = False
    end
    object seminarSubjectSQLFK_SUBJECT_TYPE_SERIAL: TIntegerField
      FieldName = 'FK_SUBJECT_TYPE_SERIAL'
      Visible = False
    end
    object seminarSubjectSQLFEE_NORMAL: TFloatField
      DisplayLabel = #932#953#956#942' '#922#945#957#959#957#953#954#942
      FieldName = 'FEE_NORMAL'
      Required = True
      Visible = False
    end
    object seminarSubjectSQLFEE_REDUCED: TFloatField
      DisplayLabel = #932#953#956#942' '#956#949' '#917#960#953#967#959#961#942#947#951#963#951
      FieldName = 'FEE_REDUCED'
      Required = True
      Visible = False
    end
    object seminarSubjectSQLFK_INSTRUCTOR: TIntegerField
      FieldName = 'FK_INSTRUCTOR'
      Visible = False
    end
    object seminarSubjectSQLFK_EXAMINER: TIntegerField
      FieldName = 'FK_EXAMINER'
      Visible = False
    end
    object seminarSubjectSQLFK_VENUE: TIntegerField
      FieldName = 'FK_VENUE'
      Visible = False
    end
  end
  object SeminarSubjectSRC: TDataSource
    DataSet = seminarSubjectSQL
    Left = 232
    Top = 353
  end
  object SeminarDaySQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'GEN_SEMINAR_SUBJECT_DAY'
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR_SUBJECT_DAY'
      
        '  (SERIAL_NUMBER, FK_SEMINAR_SUBJECT_SERIAL, SEMINAR_DAY, DURATI' +
        'ON_HOURS)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_SEMINAR_SUBJECT_SERIAL, :SEMINAR_DAY, :DU' +
        'RATION_HOURS)')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR_SUBJECT_DAY'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR_SUBJECT_DAY'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_SEMINAR_SUBJECT_SERIAL = :F' +
        'K_SEMINAR_SUBJECT_SERIAL, SEMINAR_DAY = :SEMINAR_DAY, DURATION_H' +
        'OURS = :DURATION_HOURS'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_SEMINAR_SUBJECT_SERIAL, SEMINAR_DAY, DU' +
        'RATION_HOURS FROM SEMINAR_SUBJECT_DAY'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM SEMINAR_SUBJECT_DAY'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SEMINAR_SUBJECT_DAY'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'SEMINAR_subject_day')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_SEMINAR_SUBJECT_SERIAL'
    MasterSource = SeminarSubjectSRC
    Active = True
    BeforeInsert = SeminarDaySQLBeforeInsert
    Left = 25
    Top = 397
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object SeminarDaySQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'A/A'
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
    end
    object SeminarDaySQLSEMINAR_DAY: TDateField
      DisplayLabel = #919#956#949#961#959#956#951#957#943#945
      DisplayWidth = 15
      FieldName = 'SEMINAR_DAY'
      Required = True
    end
    object SeminarDaySQLDURATION_HOURS: TIntegerField
      DisplayLabel = #916#953#940#961#954#949#953#945' ('#974#961#949#962')'
      DisplayWidth = 10
      FieldName = 'DURATION_HOURS'
      Required = True
    end
    object SeminarDaySQLFK_SEMINAR_SUBJECT_SERIAL: TIntegerField
      FieldName = 'FK_SEMINAR_SUBJECT_SERIAL'
      Required = True
      Visible = False
    end
  end
  object SeminarDaySRC: TDataSource
    DataSet = SeminarDaySQL
    Left = 32
    Top = 465
  end
  object SeminarCostItemSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'GEN_SEMINAR_COST_ITEM'
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR_COST_ITEM'
      
        '  (SERIAL_NUMBER, FK_COST_ITEM, AMOUNT_PER_ITEM, NUMBER_OF_ITEMS' +
        ', FK_SEMINAR_SERIAL)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_COST_ITEM, :AMOUNT_PER_ITEM, :NUMBER_OF_I' +
        'TEMS, :FK_SEMINAR_SERIAL)')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR_COST_ITEM'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR_COST_ITEM'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_COST_ITEM = :FK_COST_ITEM, ' +
        'AMOUNT_PER_ITEM = :AMOUNT_PER_ITEM, NUMBER_OF_ITEMS = :NUMBER_OF' +
        '_ITEMS, FK_SEMINAR_SERIAL = :FK_SEMINAR_SERIAL'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_COST_ITEM, AMOUNT_PER_ITEM, NUMBER_OF_I' +
        'TEMS, FK_SEMINAR_SERIAL FROM SEMINAR_COST_ITEM'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM SEMINAR_COST_ITEM'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SEMINAR_COST_ITEM'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'SEMINAR_cost_item')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_SEMINAR_SERIAL'
    MasterSource = SeminarSRC
    Active = True
    OnCalcFields = SeminarCostItemSQLCalcFields
    OnNewRecord = SeminarCostItemSQLNewRecord
    Left = 265
    Top = 221
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object SeminarCostItemSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'A/A'
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
    end
    object SeminarCostItemSQLFK_COST_ITEM: TIntegerField
      DisplayLabel = #932#973#960#959#962' '#922#972#963#964#959#965#962
      DisplayWidth = 10
      FieldName = 'FK_COST_ITEM'
      Required = True
    end
    object SeminarCostItemSQLNUMBER_OF_ITEMS: TIntegerField
      DisplayLabel = #913#961#953#952#956#972#962' '#924#959#957#940#948#969#957
      DisplayWidth = 15
      FieldName = 'NUMBER_OF_ITEMS'
    end
    object SeminarCostItemSQLAMOUNT_PER_ITEM: TFloatField
      DisplayLabel = #922#972#963#964#959#962'/'#924#959#957#940#948#945
      DisplayWidth = 14
      FieldName = 'AMOUNT_PER_ITEM'
      DisplayFormat = '0.00'
    end
    object SeminarCostItemSQLTotalAmnt: TFloatField
      DisplayLabel = #931#973#957#959#955#959
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'TotalAmnt'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object SeminarCostItemSQLFK_SEMINAR_SERIAL: TIntegerField
      FieldName = 'FK_SEMINAR_SERIAL'
      Required = True
      Visible = False
    end
  end
  object SeminarCostItemSRC: TDataSource
    DataSet = SeminarCostItemSQL
    Left = 400
    Top = 481
  end
  object CostItemTBL: TIBCTable
    TableName = 'COST_ITEM_TYPE'
    ReadOnly = True
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    IndexFieldNames = 'COST_NAME'
    Left = 372
    Top = 406
    object CostItemTBLCOST_NAME: TWideStringField
      DisplayWidth = 20
      FieldName = 'COST_NAME'
      FixedChar = True
      Size = 60
    end
    object CostItemTBLAMOUNT: TFloatField
      DisplayWidth = 10
      FieldName = 'AMOUNT'
    end
    object CostItemTBLSERIAL_NUMBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Visible = False
    end
  end
  object SeminarReminderSRC: TDataSource
    DataSet = SeminarReminderSQL
    Left = 176
    Top = 545
  end
  object SeminarReminderSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'GEN_SEMINAR_REMINDER'
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR_REMINDER'
      
        '  (SERIAL_NUMBER, FK_SEMINAR_SERIAL, DESCRIPTION, REMINDER_MESSA' +
        'GE, AFTER_OR_BEFORE, PERSON_OR_SEMINAR, START_OR_END, DAYS_OR_MO' +
        'NTHS, NUMBER_OF_DAYS_MONTHS, REMINDER_TYPE, IS_COMPLETED, DATE_T' +
        'ARGETED, DATE_COMPLETED, IS_HIGH, IS_INTERNAL)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_SEMINAR_SERIAL, :DESCRIPTION, :REMINDER_M' +
        'ESSAGE, :AFTER_OR_BEFORE, :PERSON_OR_SEMINAR, :START_OR_END, :DA' +
        'YS_OR_MONTHS, :NUMBER_OF_DAYS_MONTHS, :REMINDER_TYPE, :IS_COMPLE' +
        'TED, :DATE_TARGETED, :DATE_COMPLETED, :IS_HIGH, :IS_INTERNAL)')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR_REMINDER'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR_REMINDER'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_SEMINAR_SERIAL = :FK_SEMINA' +
        'R_SERIAL, DESCRIPTION = :DESCRIPTION, REMINDER_MESSAGE = :REMIND' +
        'ER_MESSAGE, AFTER_OR_BEFORE = :AFTER_OR_BEFORE, PERSON_OR_SEMINA' +
        'R = :PERSON_OR_SEMINAR, START_OR_END = :START_OR_END, DAYS_OR_MO' +
        'NTHS = :DAYS_OR_MONTHS, NUMBER_OF_DAYS_MONTHS = :NUMBER_OF_DAYS_' +
        'MONTHS, REMINDER_TYPE = :REMINDER_TYPE, IS_COMPLETED = :IS_COMPL' +
        'ETED, DATE_TARGETED = :DATE_TARGETED, DATE_COMPLETED = :DATE_COM' +
        'PLETED, IS_HIGH = :IS_HIGH, IS_INTERNAL = :IS_INTERNAL'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_SEMINAR_SERIAL, DESCRIPTION, REMINDER_M' +
        'ESSAGE, AFTER_OR_BEFORE, PERSON_OR_SEMINAR, START_OR_END, DAYS_O' +
        'R_MONTHS, NUMBER_OF_DAYS_MONTHS, REMINDER_TYPE, IS_COMPLETED, DA' +
        'TE_TARGETED, DATE_COMPLETED, IS_HIGH, IS_INTERNAL FROM SEMINAR_R' +
        'EMINDER'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM SEMINAR_REMINDER'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SEMINAR_REMINDER'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'SEMINAR_reminder'
      'order by Description')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_SEMINAR_SERIAL'
    MasterSource = SeminarSRC
    Active = True
    OnNewRecord = SeminarReminderSQLNewRecord
    Left = 81
    Top = 557
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object SeminarReminderSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'A/A'
      DisplayWidth = 3
      FieldName = 'SERIAL_NUMBER'
    end
    object SeminarReminderSQLDESCRIPTION: TWideStringField
      DisplayLabel = #928#949#961#953#947#961#945#966#942
      DisplayWidth = 18
      FieldName = 'DESCRIPTION'
      Required = True
      Size = 160
    end
    object SeminarReminderSQLNUMBER_OF_DAYS_MONTHS: TIntegerField
      DisplayLabel = #931#949
      DisplayWidth = 5
      FieldName = 'NUMBER_OF_DAYS_MONTHS'
    end
    object SeminarReminderSQLDAYS_OR_MONTHS: TWideStringField
      DisplayLabel = #919#956#941#961#949#962'/'#924#942#957#949#962
      DisplayWidth = 10
      FieldName = 'DAYS_OR_MONTHS'
      FixedChar = True
      Size = 1
    end
    object SeminarReminderSQLAFTER_OR_BEFORE: TWideStringField
      DisplayLabel = #928#961#953#957'/'#924#949#964#940
      DisplayWidth = 8
      FieldName = 'AFTER_OR_BEFORE'
      FixedChar = True
      Size = 1
    end
    object SeminarReminderSQLSTART_OR_END: TWideStringField
      DisplayLabel = #913#960#972' '
      DisplayWidth = 11
      FieldName = 'START_OR_END'
      FixedChar = True
      Size = 1
    end
    object SeminarReminderSQLDATE_TARGETED: TDateField
      DisplayLabel = #916#961#940#963#951
      DisplayWidth = 12
      FieldName = 'DATE_TARGETED'
    end
    object SeminarReminderSQLFK_SEMINAR_SERIAL: TIntegerField
      FieldName = 'FK_SEMINAR_SERIAL'
      Visible = False
    end
    object SeminarReminderSQLREMINDER_MESSAGE: TWideStringField
      FieldName = 'REMINDER_MESSAGE'
      Required = True
      Visible = False
      Size = 160
    end
    object SeminarReminderSQLPERSON_OR_SEMINAR: TWideStringField
      FieldName = 'PERSON_OR_SEMINAR'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object SeminarReminderSQLREMINDER_TYPE: TWideStringField
      FieldName = 'REMINDER_TYPE'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object SeminarReminderSQLIS_COMPLETED: TWideStringField
      FieldName = 'IS_COMPLETED'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object SeminarReminderSQLDATE_COMPLETED: TDateField
      FieldName = 'DATE_COMPLETED'
      Visible = False
    end
    object SeminarReminderSQLIS_HIGH: TWideStringField
      FieldName = 'IS_HIGH'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object SeminarReminderSQLIS_INTERNAL: TWideStringField
      FieldName = 'IS_INTERNAL'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 360
    Top = 199
  end
  object MainMenu1: TMainMenu
    Left = 748
    Top = 12
    object Help1: TMenuItem
      Caption = 'Help'
    end
    object N1: TMenuItem
      Caption = #917#957#964#965#960#945'-'#916#951#956#953#959#965#961#947#943#945
      object N2: TMenuItem
        Caption = #916#951#956#953#959#965#961#947#943#945' '#917#957#964#973#960#969#957
        OnClick = N2Click
      end
    end
  end
  object IBCSQLMonitor1: TIBCSQLMonitor
    Left = 311
    Top = 177
  end
  object CompanySQL: TIBCQuery
    Connection = U_databaseFRM.DataConnection
    SQL.Strings = (
      'select * from person where is_company='#39'Y'#39)
    ReadOnly = True
    Left = 483
    Top = 418
    object CompanySQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object CompanySQLFK_COMPANY_SERIAL: TIntegerField
      FieldName = 'FK_COMPANY_SERIAL'
    end
    object CompanySQLLAST_NAME: TWideStringField
      FieldName = 'LAST_NAME'
      FixedChar = True
      Size = 30
    end
    object CompanySQLFIRST_NAME: TWideStringField
      FieldName = 'FIRST_NAME'
      FixedChar = True
      Size = 30
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
    object CompanySQLADDRESS_POST_CODE: TWideStringField
      FieldName = 'ADDRESS_POST_CODE'
      FixedChar = True
      Size = 30
    end
    object CompanySQLADDRESS_CITY: TWideStringField
      FieldName = 'ADDRESS_CITY'
      FixedChar = True
      Size = 30
    end
    object CompanySQLADDRESS_DISTRICT: TWideStringField
      FieldName = 'ADDRESS_DISTRICT'
      FixedChar = True
      Size = 30
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
  end
  object instructorSelectSQL: TIBCQuery
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    SQL.Strings = (
      'select * from instructor where status_active= '#39'Y'#39)
    ReadOnly = True
    Left = 683
    Top = 242
    object instructorSelectSQLLAST_NAME: TWideStringField
      DisplayLabel = #917#960#943#952#949#964#959
      DisplayWidth = 12
      FieldName = 'LAST_NAME'
      FixedChar = True
      Size = 30
    end
    object instructorSelectSQLFIRST_NAME: TWideStringField
      DisplayLabel = #908#957#959#956#945
      DisplayWidth = 12
      FieldName = 'FIRST_NAME'
      FixedChar = True
      Size = 30
    end
    object instructorSelectSQLNATIONAL_ID: TWideStringField
      DisplayLabel = #932#945#965#964#972#964#951#964#945
      DisplayWidth = 10
      FieldName = 'NATIONAL_ID'
      FixedChar = True
    end
    object instructorSelectSQLPHONE_MOBILE: TWideStringField
      DisplayLabel = #922#953#957#951#964#972
      DisplayWidth = 10
      FieldName = 'PHONE_MOBILE'
      FixedChar = True
      Size = 15
    end
    object instructorSelectSQLSERIAL_NUMBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Visible = False
    end
    object instructorSelectSQLANAD_NUMBER: TWideStringField
      DisplayWidth = 30
      FieldName = 'ANAD_NUMBER'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object instructorSelectSQLFK_COMPANY_SERIAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_COMPANY_SERIAL'
      Visible = False
    end
    object instructorSelectSQLNICKNAME: TWideStringField
      DisplayWidth = 30
      FieldName = 'NICKNAME'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object instructorSelectSQLSTATUS: TWideStringField
      DisplayWidth = 3
      FieldName = 'STATUS'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object instructorSelectSQLOCCUPATION: TWideStringField
      DisplayWidth = 160
      FieldName = 'OCCUPATION'
      Visible = False
      Size = 160
    end
    object instructorSelectSQLPHONE_FIXED: TWideStringField
      DisplayWidth = 15
      FieldName = 'PHONE_FIXED'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object instructorSelectSQLPHONE_ALTERNATE: TWideStringField
      DisplayWidth = 15
      FieldName = 'PHONE_ALTERNATE'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object instructorSelectSQLFAX: TWideStringField
      DisplayWidth = 15
      FieldName = 'FAX'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object instructorSelectSQLEMAIL: TWideStringField
      DisplayWidth = 160
      FieldName = 'EMAIL'
      Visible = False
      Size = 160
    end
    object instructorSelectSQLEMAIL_2: TSmallintField
      DisplayWidth = 10
      FieldName = 'EMAIL_2'
      Visible = False
    end
    object instructorSelectSQLADDRESS: TWideStringField
      DisplayWidth = 160
      FieldName = 'ADDRESS'
      Visible = False
      Size = 160
    end
    object instructorSelectSQLADDRESS_STREET: TWideStringField
      DisplayWidth = 80
      FieldName = 'ADDRESS_STREET'
      Visible = False
      Size = 80
    end
    object instructorSelectSQLADDRESS_POST_CODE: TWideStringField
      DisplayWidth = 30
      FieldName = 'ADDRESS_POST_CODE'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object instructorSelectSQLADDRESS_CITY: TWideStringField
      DisplayWidth = 30
      FieldName = 'ADDRESS_CITY'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object instructorSelectSQLADDRESS_DISTRICT: TWideStringField
      DisplayWidth = 30
      FieldName = 'ADDRESS_DISTRICT'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object instructorSelectSQLDATE_STARTED: TDateField
      DisplayWidth = 10
      FieldName = 'DATE_STARTED'
      Visible = False
    end
    object instructorSelectSQLDATE_BIRTH: TDateField
      DisplayWidth = 10
      FieldName = 'DATE_BIRTH'
      Visible = False
    end
    object instructorSelectSQLDATE_USER: TDateField
      DisplayWidth = 10
      FieldName = 'DATE_USER'
      Visible = False
    end
    object instructorSelectSQLLIST_SOURCE: TWideStringField
      DisplayWidth = 160
      FieldName = 'LIST_SOURCE'
      Visible = False
      Size = 160
    end
    object instructorSelectSQLFACEBOOK: TWideStringField
      DisplayWidth = 160
      FieldName = 'FACEBOOK'
      Visible = False
      Size = 160
    end
    object instructorSelectSQLWEBSITE: TWideStringField
      DisplayWidth = 160
      FieldName = 'WEBSITE'
      Visible = False
      Size = 160
    end
    object instructorSelectSQLTWITTER: TWideStringField
      DisplayWidth = 160
      FieldName = 'TWITTER'
      Visible = False
      Size = 160
    end
    object instructorSelectSQLSTATUS_ACTIVE: TWideStringField
      DisplayWidth = 1
      FieldName = 'STATUS_ACTIVE'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object instructorSelectSQLCERTIFIED_ANAD: TWideStringField
      DisplayWidth = 1
      FieldName = 'CERTIFIED_ANAD'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object instructorSelectSQLJOB_TITLE: TWideStringField
      DisplayWidth = 160
      FieldName = 'JOB_TITLE'
      Visible = False
      Size = 160
    end
  end
  object ExaminerSelectSQL: TIBCQuery
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    SQL.Strings = (
      'select * from instructor where status_active= '#39'Y'#39)
    ReadOnly = True
    Left = 539
    Top = 186
    object WideStringField1: TWideStringField
      DisplayLabel = #917#960#943#952#949#964#959
      DisplayWidth = 12
      FieldName = 'LAST_NAME'
      FixedChar = True
      Size = 30
    end
    object WideStringField2: TWideStringField
      DisplayLabel = #908#957#959#956#945
      DisplayWidth = 12
      FieldName = 'FIRST_NAME'
      FixedChar = True
      Size = 30
    end
    object WideStringField3: TWideStringField
      DisplayLabel = #932#945#965#964#972#964#951#964#945
      DisplayWidth = 10
      FieldName = 'NATIONAL_ID'
      FixedChar = True
    end
    object WideStringField4: TWideStringField
      DisplayLabel = #922#953#957#951#964#972
      DisplayWidth = 10
      FieldName = 'PHONE_MOBILE'
      FixedChar = True
      Size = 15
    end
    object IntegerField1: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Visible = False
    end
    object WideStringField5: TWideStringField
      DisplayWidth = 30
      FieldName = 'ANAD_NUMBER'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object IntegerField2: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_COMPANY_SERIAL'
      Visible = False
    end
    object WideStringField6: TWideStringField
      DisplayWidth = 30
      FieldName = 'NICKNAME'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object WideStringField7: TWideStringField
      DisplayWidth = 3
      FieldName = 'STATUS'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object WideStringField8: TWideStringField
      DisplayWidth = 160
      FieldName = 'OCCUPATION'
      Visible = False
      Size = 160
    end
    object WideStringField9: TWideStringField
      DisplayWidth = 15
      FieldName = 'PHONE_FIXED'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object WideStringField10: TWideStringField
      DisplayWidth = 15
      FieldName = 'PHONE_ALTERNATE'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object WideStringField11: TWideStringField
      DisplayWidth = 15
      FieldName = 'FAX'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object WideStringField12: TWideStringField
      DisplayWidth = 160
      FieldName = 'EMAIL'
      Visible = False
      Size = 160
    end
    object SmallintField1: TSmallintField
      DisplayWidth = 10
      FieldName = 'EMAIL_2'
      Visible = False
    end
    object WideStringField13: TWideStringField
      DisplayWidth = 160
      FieldName = 'ADDRESS'
      Visible = False
      Size = 160
    end
    object WideStringField14: TWideStringField
      DisplayWidth = 80
      FieldName = 'ADDRESS_STREET'
      Visible = False
      Size = 80
    end
    object WideStringField15: TWideStringField
      DisplayWidth = 30
      FieldName = 'ADDRESS_POST_CODE'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object WideStringField16: TWideStringField
      DisplayWidth = 30
      FieldName = 'ADDRESS_CITY'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object WideStringField17: TWideStringField
      DisplayWidth = 30
      FieldName = 'ADDRESS_DISTRICT'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object DateField1: TDateField
      DisplayWidth = 10
      FieldName = 'DATE_STARTED'
      Visible = False
    end
    object DateField2: TDateField
      DisplayWidth = 10
      FieldName = 'DATE_BIRTH'
      Visible = False
    end
    object DateField3: TDateField
      DisplayWidth = 10
      FieldName = 'DATE_USER'
      Visible = False
    end
    object WideStringField18: TWideStringField
      DisplayWidth = 160
      FieldName = 'LIST_SOURCE'
      Visible = False
      Size = 160
    end
    object WideStringField19: TWideStringField
      DisplayWidth = 160
      FieldName = 'FACEBOOK'
      Visible = False
      Size = 160
    end
    object WideStringField20: TWideStringField
      DisplayWidth = 160
      FieldName = 'WEBSITE'
      Visible = False
      Size = 160
    end
    object WideStringField21: TWideStringField
      DisplayWidth = 160
      FieldName = 'TWITTER'
      Visible = False
      Size = 160
    end
    object WideStringField22: TWideStringField
      DisplayWidth = 1
      FieldName = 'STATUS_ACTIVE'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object WideStringField23: TWideStringField
      DisplayWidth = 1
      FieldName = 'CERTIFIED_ANAD'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object WideStringField24: TWideStringField
      DisplayWidth = 160
      FieldName = 'JOB_TITLE'
      Visible = False
      Size = 160
    end
  end
  object Co_CompaniesInSQL: TIBCQuery
    UpdatingTable = 'SEMINAR_COMPANY'
    SQLInsert.Strings = (
      'INSERT INTO PERSON'
      '  (SERIAL_NUMBER, SERIAL_QB, LAST_NAME, FIRST_NAME, NATIONAL_ID)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :SERIAL_QB, :LAST_NAME, :FIRST_NAME, :NATIONA' +
        'L_ID)')
    SQLDelete.Strings = (
      'DELETE FROM PERSON'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE PERSON'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, SERIAL_QB = :SERIAL_QB, LAST_N' +
        'AME = :LAST_NAME, FIRST_NAME = :FIRST_NAME, NATIONAL_ID = :NATIO' +
        'NAL_ID'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, SERIAL_QB, LAST_NAME, FIRST_NAME, NATIONAL' +
        '_ID FROM PERSON'
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
      
        ' pe.serial_number,pe.serial_qb, pe.first_name,pe.last_name , pe.' +
        'national_id, '
      'sp.fk_seminar_serial, sp.fk_person_serial'
      'from'
      '   seminar_company   sp  left outer join'
      '   person pe        on pe.serial_number=sp.fk_person_serial'
      'order by pe.last_name')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_SEMINAR_SERIAL'
    MasterSource = SeminarSRC
    Active = True
    Left = 274
    Top = 633
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object Co_CompaniesInSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'A/A'
      DisplayWidth = 8
      FieldName = 'SERIAL_NUMBER'
    end
    object Co_CompaniesInSQLSERIAL_QB: TIntegerField
      DisplayLabel = 'QB'
      DisplayWidth = 8
      FieldName = 'SERIAL_QB'
    end
    object Co_CompaniesInSQLLAST_NAME: TWideStringField
      DisplayLabel = #917#960#943#952#949#964#959
      DisplayWidth = 17
      FieldName = 'LAST_NAME'
      FixedChar = True
      Size = 30
    end
    object Co_CompaniesInSQLFIRST_NAME: TWideStringField
      DisplayLabel = #908#957#959#956#945
      DisplayWidth = 15
      FieldName = 'FIRST_NAME'
      FixedChar = True
      Size = 30
    end
    object Co_CompaniesInSQLNATIONAL_ID: TWideStringField
      DisplayLabel = #932#945#965#964#972#964#951#964#945
      DisplayWidth = 10
      FieldName = 'NATIONAL_ID'
      FixedChar = True
    end
    object Co_CompaniesInSQLFK_SEMINAR_SERIAL: TIntegerField
      FieldName = 'FK_SEMINAR_SERIAL'
      ReadOnly = True
      Required = True
      Visible = False
    end
    object Co_CompaniesInSQLFK_PERSON_SERIAL: TIntegerField
      FieldName = 'FK_PERSON_SERIAL'
      ReadOnly = True
      Required = True
      Visible = False
    end
  end
  object Co_companiesInSRC: TDataSource
    DataSet = Co_CompaniesInSQL
    Left = 336
    Top = 633
  end
  object Co_companiesOutSQL: TIBCQuery
    UpdatingTable = 'person'
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR_PERSON'
      '  (FK_SEMINAR_SERIAL, FK_PERSON_SERIAL, ATTENDANCE_STATUS)'
      'VALUES'
      '  (:FK_SEMINAR_SERIAL, :FK_PERSON_SERIAL, :ATTENDANCE_STATUS)')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR_PERSON'
      'WHERE'
      
        '  FK_SEMINAR_SERIAL = :Old_FK_SEMINAR_SERIAL AND FK_PERSON_SERIA' +
        'L = :Old_FK_PERSON_SERIAL')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR_PERSON'
      'SET'
      
        '  FK_SEMINAR_SERIAL = :FK_SEMINAR_SERIAL, FK_PERSON_SERIAL = :FK' +
        '_PERSON_SERIAL, ATTENDANCE_STATUS = :ATTENDANCE_STATUS'
      'WHERE'
      
        '  FK_SEMINAR_SERIAL = :Old_FK_SEMINAR_SERIAL AND FK_PERSON_SERIA' +
        'L = :Old_FK_PERSON_SERIAL')
    SQLRefresh.Strings = (
      
        'SELECT FK_SEMINAR_SERIAL, FK_PERSON_SERIAL, ATTENDANCE_STATUS FR' +
        'OM SEMINAR_PERSON'
      'WHERE'
      
        '  FK_SEMINAR_SERIAL = :FK_SEMINAR_SERIAL AND FK_PERSON_SERIAL = ' +
        ':FK_PERSON_SERIAL')
    SQLLock.Strings = (
      'SELECT NULL FROM SEMINAR_PERSON'
      'WHERE'
      
        'FK_SEMINAR_SERIAL = :Old_FK_SEMINAR_SERIAL AND FK_PERSON_SERIAL ' +
        '= :Old_FK_PERSON_SERIAL'
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
      
        '     pout.serial_number,pout.serial_qb, pout.last_name,pout.firs' +
        't_name, pout.national_id,pout.is_company'
      ' from'
      ' person pout left outer join'
      '('
      'select'
      '    pe.serial_number, sp.fk_person_serial, sp.attendance_status'
      'from'
      '    person pe inner join'
      '    seminar_company sp on pe.serial_number=sp.fk_person_serial'
      '    where '
      '       sp.fk_seminar_serial= :seminarSerial'
      ') as PeFound'
      'on pout.serial_number= peFound.serial_number'
      'where '
      '   pout.status_active='#39'Y'#39
      '   and pout.is_company='#39'Y'#39
      '   and pefound.serial_number is null')
    ReadOnly = True
    Active = True
    Left = 306
    Top = 681
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'seminarSerial'
        Value = nil
      end>
    object Co_companiesOutSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'A/A'
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object Co_companiesOutSQLSERIAL_QB: TIntegerField
      DisplayLabel = 'QB'
      DisplayWidth = 8
      FieldName = 'SERIAL_QB'
    end
    object Co_companiesOutSQLLAST_NAME: TWideStringField
      DisplayLabel = #917#960#943#952#949#964#959
      DisplayWidth = 33
      FieldName = 'LAST_NAME'
      FixedChar = True
      Size = 30
    end
    object Co_companiesOutSQLNATIONAL_ID: TWideStringField
      DisplayLabel = #932#945#965#964#972#964#951#964#945
      DisplayWidth = 13
      FieldName = 'NATIONAL_ID'
      FixedChar = True
    end
    object Co_companiesOutSQLFIRST_NAME: TWideStringField
      DisplayLabel = #908#957#959#956#945
      DisplayWidth = 12
      FieldName = 'FIRST_NAME'
      Visible = False
      FixedChar = True
      Size = 30
    end
  end
  object Co_CompaniesOutSRC: TDataSource
    DataSet = Co_companiesOutSQL
    Left = 392
    Top = 689
  end
end
