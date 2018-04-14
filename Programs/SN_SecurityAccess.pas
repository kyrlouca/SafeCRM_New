unit SN_SecurityAccess;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,Menus, Db,  DBAccess, IBC, MemDS, IBCError, Buttons, ExtCtrls, Mask, wwdbedit,
  RzButton, RzPanel;

type
  TSN_SecurityAccessFRM = class(TForm)
    SecMenu: TMainMenu;
    ScreenSQL: TIBCQuery;
    FindSQL: TIBCQuery;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    AddMenuBTN: TButton;
    FreeMenuBTN: TButton;
    CheckBTN: TButton;
    GroupBox1: TGroupBox;
    UserIDFLD: TwwDBEdit;
    UserNameFLD: TwwDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    ReadTrans: TIBCTransaction;
    WriteTrans: TIBCTransaction;
    FindSQLUSER_ID: TWideStringField;
    FindSQLSCREEN_ID: TWideStringField;
    FindSQLIS_ALLOWED: TWideStringField;
    ScreenSQLSCREEN_ID: TWideStringField;
    ScreenSQLSCREEN_NAME: TWideStringField;
    procedure AddMenuBTNClick(Sender: TObject);
    procedure FreeMenuBTNClick(Sender: TObject);
    procedure ItemClick(Sender: TObject);
    procedure CheckBTNClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CheckItem(TheItemTheUser,TheScreen:String;ToDelete:Boolean);

  end;

var
  SN_SecurityAccessFRM: TSN_SecurityAccessFRM;
  UserID:String;
  UserName:String;

implementation

uses M_Main, U_Database;

{$R *.DFM}

procedure TSN_SecurityAccessFRM.AddMenuBTNClick(Sender: TObject);
Var
   TheMainForm:TForm;
   TheMainMenu:TMenu;
   MainItem:TMenuITem;
   MainSubItem:TMenuItem;
   CountItems:Integer;
   CountSubItems:Integer;
   SecItem:TMenuItem;
   SecSubITem:TMEnuITem;
   I,J:Integer;
begin

TheMainForm:=M_MainFRM;

TheMainMenu:=TheMainForm.Menu;

//TheMainMenu:=TheMainForm.MainMenu1;
CountItems:=TheMainMenu.Items.COunt;

For I := 0 to CountItems-1 do
begin
     MainItem:=TheMainMenu.Items[i];
     SecItem:=TMenuItem.Create(Self);
     SecItem.Caption:=MainItem.Caption;
     SecItem.Name :=MainItem.Name;
//     SecItem.OnClick:=ItemClick;
     SecMenu.Items.Add(SecItem);

     CountSubItems:=MainItem.Count;

     For J:=0 to CountSubItems-1 do
     begin
          MainSubItem:=MainItem.Items[j];
          SecSubItem:=TMenuItem.Create(Self);
          SecSubItem.Caption:=MainSubItem.Caption;
          SecSubItem.Name:=MainSubItem.Name;
          SecSubItem.OnClick:=ItemClick;
          SecItem.Add(SecSubItem);

     end; // for J
end;//FOr i


end;

procedure TSN_SecurityAccessFRM.FreeMenuBTNClick(Sender: TObject);
Var
   TheItem:TMenuITem;
   CountItems:Integer;
   CountSubItems:Integer;
   TheSubItem:TMenuItem;
   i,J:integer;
   TheName:String;
begin

CountItems:=SecMenu.Items.Count;

For I := CountItems-1 downto 0 do
begin

     TheItem:=SecMenu.Items[i];
     CountSubItems:=TheItem.Count;

     For J:= CountSubItems-1 downto 0 do
     begin
          TheSubItem:=TheItem.Items[j];
          TheName:=TheSubItem.Caption;
          If theName='ff' then
             ShowMessage('ff');
          TheItem.Remove(TheSubItem);
          TheSubItem.Free;
     end; // for J
     SecMenu.Items.Remove(TheItem);
     TheItem.Free;

end;//FOr i


End;

procedure TSN_SecurityAccessFRM.ItemClick(Sender: TObject);
Var
   TheMenuItem:TMenuItem;
   IsChecked:Boolean;
   ScreenID:String;
   ScreenName:String;
   UserName:String;
begin

If (sender is TMenuItem) then
begin

     TheMenuItem:=(sender as TMenuItem);
     ScreenID:=TheMenuItem.Name;
     ScreenName:=TheMenuItem.Caption;
     IsChecked:=TheMenuItem.Checked;


// If the menu item is not in the sec_screen table then insert it anyway
with ScreenSQL do
begin
     close;
     If not Prepared then prepare;
     ParamByName('TheScreen').Value:=ScreenID;
     Open;
     If IsEmpty then
     begin
          Insert;
          FieldByName('Screen_ID').value:=ScreenID;
          FieldByName('Screen_Name').value:=ScreenName;
          Post;
     end;
end; // with screenSQL


with FIndSQL do
begin
     Close;
     If not Prepared then prepare;
     ParamBYName('TheUser').Value:=UserID;
     ParamBYName('TheScreen').Value:=ScreenID;
     Open;
     If IsChecked then
     begin
          delete;
     end
     else
     begin
          Insert;
          FieldByName('USER_ID').Value:=UserID;
          FieldByName('SCREEN_ID').Value:=ScreenID;
          FieldByName('IS_AllOWED').Value:='Y';
          Post;
     end;
     TheMenuItem.Checked:=(not TheMenuItem.Checked);
     close;

end; // with FIndSQL

end; // if Sender
End;


procedure TSN_SecurityAccessFRM.CheckItem(TheItemTheUser,TheScreen:String;ToDelete:Boolean);
begin
end;

procedure TSN_SecurityAccessFRM.CheckBTNClick(Sender: TObject);
Var
   I,J:Integer;
   ItemsCount,SubItemsCount:Integer;
   Item,SubItem:TMenuItem;
   ScreenID:String;

begin
ItemsCount:= SecMenu.Items.Count;

For I := 0 to ItemsCount-1 do
begin
     Item:= SecMenu.Items[i]; // this is the main menu item
     SubItemsCount:=Item.Count;

     For J:=0 to SubItemsCount-1 do
     begin
          SubItem:=Item.Items[j];
          //Item.Checked:=not Item.Checked;
          ScreenID:=SubItem.Name;

          with FIndSQL do
          begin
               Close;
               If not Prepared then prepare;
               ParamBYName('TheUser').Value:=UserID;
               ParamBYName('TheScreen').Value:=ScreenID;
               Open;
               IF (not FindSQL.IsEmpty) then
                  SubItem.Checked:=True
               else
                   SubItem.Checked:=false;
               close;
          end;//FindSQL
     end; // for J
end;//FOr i

end;

procedure TSN_SecurityAccessFRM.BitBtn1Click(Sender: TObject);
begin
     close;
end;

procedure TSN_SecurityAccessFRM.FormActivate(Sender: TObject);
begin
UserIDFLD.Text:=UserID;
UserNameFLD.TExt:=UserName;
FreeMenuBTN.Click;
AddMenuBTN.Click;
CheckBTN.click;
end;

procedure TSN_SecurityAccessFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FreeMenuBTN.Click;
Close;
end;

END.
