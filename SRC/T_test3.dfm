inherited T_test3Frm: TT_test3Frm
  Align = alTop
  Caption = 'Test3'
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    inherited Label4: TLabel
      Width = 1187
      Height = 45
      Caption = 'Test3'
      ExplicitWidth = 70
    end
  end
  inherited Panel3: TPanel
    inherited Panel5: TPanel
      inherited wwDBGrid1: TwwDBGrid
        ExplicitLeft = -16
        ExplicitTop = -20
        ExplicitWidth = 672
      end
    end
    inherited PanelX: TRzPanel
      inherited RzPanel4: TRzPanel
        inherited Grid1: TwwDBGrid
          ExplicitLeft = 3
          ExplicitTop = 3
        end
      end
    end
  end
  inherited TableSQL: TIBCQuery
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'Person')
    Active = False
    ParamData = <>
  end
  inherited VPresenceSQL: TVirtualTable
    Left = 512
    Top = 284
  end
end
