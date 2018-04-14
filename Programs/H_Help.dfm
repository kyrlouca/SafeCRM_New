object H_HelpFRM: TH_HelpFRM
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'H_HelpFRM'
  ClientHeight = 474
  ClientWidth = 574
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 574
    Height = 41
    Align = alTop
    BorderOuter = fsGroove
    Caption = 'Help Screen'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 546
  end
  object RzPanel3: TRzPanel
    Left = 0
    Top = 41
    Width = 574
    Height = 433
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 1
    ExplicitWidth = 546
    ExplicitHeight = 445
    object RzPanel2: TRzPanel
      Left = 0
      Top = 392
      Width = 574
      Height = 41
      Align = alBottom
      TabOrder = 0
      ExplicitTop = 404
      ExplicitWidth = 546
      object RzButton1: TRzButton
        Left = 456
        Top = 6
        ModalResult = 1
        Caption = 'OK'
        TabOrder = 0
        OnClick = RzButton1Click
      end
    end
    object RzPageControl1: TRzPageControl
      Left = 0
      Top = 0
      Width = 574
      Height = 392
      Hint = ''
      ActivePage = TabSheet1
      Align = alClient
      TabIndex = 0
      TabOrder = 1
      ExplicitLeft = 96
      ExplicitTop = 40
      ExplicitWidth = 300
      ExplicitHeight = 150
      FixedDimension = 19
      object TabSheet1: TRzTabSheet
        Caption = 'Keys '
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object HelpFDL: TwwDBRichEdit
          Left = 0
          Top = 0
          Width = 570
          Height = 369
          Align = alClient
          AutoURLDetect = False
          Font.Charset = GREEK_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          GutterWidth = 3
          HideSelection = False
          ParentFont = False
          PrintJobName = 'TariffsProject - RAD Studio 10.2 - LN_ListDutyEntries2 [Built]'
          ReadOnly = True
          TabOrder = 0
          EditorOptions = [reoShowPrint, reoShowPrintPreview, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons, reoShowZoomCombo]
          EditorCaption = 'Edit Rich Text'
          EditorPosition.Left = 0
          EditorPosition.Top = 0
          EditorPosition.Width = 0
          EditorPosition.Height = 0
          MeasurementUnits = muInches
          PrintMargins.Top = 1.000000000000000000
          PrintMargins.Bottom = 1.000000000000000000
          PrintMargins.Left = 1.000000000000000000
          PrintMargins.Right = 1.000000000000000000
          PrintHeader.VertMargin = 0.500000000000000000
          PrintHeader.Font.Charset = DEFAULT_CHARSET
          PrintHeader.Font.Color = clWindowText
          PrintHeader.Font.Height = -11
          PrintHeader.Font.Name = 'Tahoma'
          PrintHeader.Font.Style = []
          PrintFooter.VertMargin = 0.500000000000000000
          PrintFooter.Font.Charset = DEFAULT_CHARSET
          PrintFooter.Font.Color = clWindowText
          PrintFooter.Font.Height = -11
          PrintFooter.Font.Name = 'Tahoma'
          PrintFooter.Font.Style = []
          DoubleBuffered = False
          ParentDoubleBuffered = False
          RichEditVersion = 2
          ExplicitTop = 3
          Data = {
            B60000007B5C727466315C616E73695C616E7369637067313235335C64656666
            305C6465666C616E67313033327B5C666F6E7474626C7B5C66305C666E696C5C
            6663686172736574313631205461686F6D613B7D7B5C66315C666E696C5C6663
            68617273657430205461686F6D613B7D7D0D0A5C766965776B696E64345C7563
            315C706172645C625C66305C66733234202D2D2D2D5C62305C7061720D0A5C70
            61720D0A5C6C616E67313033335C66315C7061720D0A7D0D0A00}
        end
      end
    end
  end
end
