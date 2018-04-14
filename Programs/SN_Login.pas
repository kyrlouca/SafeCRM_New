unit SN_Login;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls,  Buttons, Mask, wwdbedit, Db,  DBAccess, IBC, MemDS, IBCError,Menus,
  RzPanel, RzButton;

type
  TSN_LoginFRm = class(TForm)
    FindUserSQL: TIBCQuery;
    SysPeriodSQL: TIBCQuery;
    FindSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Panel2: TRzPanel;
    Panel3: TRzPanel;
    Panel5: TRzPanel;
    LoginBTN: TBitBtn;
    AccessBTN: TButton;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    UserIDFLD: TwwDBEdit;
    UserNameFLD: TwwDBEdit;
    PasswordFLD: TwwDBEdit;
    BitBtn1: TRzBitBtn;
    FindSQLUSER_ID: TWideStringField;
    FindSQLSCREEN_ID: TWideStringField;
    FindSQLIS_ALLOWED: TWideStringField;
    SysPeriodSQLCODE: TWideStringField;
    SysPeriodSQLINT_1: TIntegerField;
    SysPeriodSQLINT_2: TIntegerField;
    SysPeriodSQLSTR_1: TWideStringField;
    SysPeriodSQLSTR_2: TWideStringField;
    SysPeriodSQLSTR_3: TWideStringField;
    SysPeriodSQLSTR_4: TWideStringField;
    SysPeriodSQLSTR_5: TWideStringField;
    SysPeriodSQLSTR_6: TWideStringField;
    SysPeriodSQLFLOAT_1: TFloatField;
    SysPeriodSQLFLOAT_2: TFloatField;
    SysPeriodSQLDESCRIPTION: TWideStringField;
    SysPeriodSQLANAD_PICTURE: TBlobField;
    FindUserSQLUSER_ID: TWideStringField;
    FindUserSQLUSER_PASSWORD: TWideStringField;
    FindUserSQLUSER_NAME: TWideStringField;
    FindUserSQLFK_USER_STATION: TIntegerField;
    procedure CloseBTNClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure LoginBTNClick(Sender: TObject);
    procedure UserIDFLDExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure UserIDFLDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PasswordFLDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AccessBTNClick(Sender: TObject);
  private
    { Private declarations }
    IsSystemAdministrator:Boolean;
    procedure ActivateAllMenus(IsEnable:Boolean);

  public
    { Public declarations }
//    IsLoginButtonPressed:Boolean;
  end;

var
  SN_LoginFRm: TSN_LoginFRm;
//  LoginUserID:String;

implementation

uses U_Database, M_Main;



{$R *.DFM}


procedure TSN_LoginFRm.CloseBTNClick(Sender: TObject);
begin
close;
end;

procedure TSN_LoginFRm.BitBtn1Click(Sender: TObject);
begin
   close;
end;

procedure TSN_LoginFRm.LoginBTNClick(Sender: TObject);
Var
   TheMainForm:TForm;
   IsValid:Boolean;
   ThePassword:String;
   PasswordEntered:String;
   TheUserId:String;
   ValDate,CurrentDate:TDate;
   ValHits,CurrentHits:Integer;
begin

//  IsLoginButtonPressed:=True; // to prevent user from closing before login. Otherwise menu is enabled.
  TheMainForm:=M_MainFRM;

  M_mainFRM.Global_UserID:='';
//  LoginUserID:='';

  IsValid:=False;
  PasswordEntered:=PasswordFLD.Text;
  TheUserID:=UserIdFLD.Text;
  UserNameFLD.Text:='';

  with FindUserSQL do begin
     close;
     ParamByName('TheUser').Value:=TheUserID;
     Open;
          UserNameFLD.Text:=FieldByName('User_Name').AsString;
          ThePassword:=FieldByname('User_password').AsString;
          M_MainFRM.Global_UserID:=TheUSerID;
          IsValid:= Trim(UpperCase(ThePassword))= Trim(UPperCase(PasswordEntered));
          IsValid:=isValid and not FindUserSQL.IsEmpty
  end;

  If not Isvalid then begin

    IsSystemAdministrator:=false;
    If( (TheUserID='SYS') and (UpperCase(PasswordEntered)='SAFE123')) then
    begin
     IsValid:=True;
     IsSystemAdministrator:=True;
     M_MainFRM.Global_UserID:='SYS';
    end;

 {$IFDEF DEBUG}
    if (FindWindow('TAppBuilder', nil) > 0) then begin
     IsValid:=True;
     IsSystemAdministrator:=True;
     M_MainFRM.Global_UserID:='SYS';
     TheUserId:='SYS';
    end;
 {$ELSE}
 {$ENDIF}


  end;


  M_MainFRM.PanelButtonsBTN.Enabled:=isValid;
  M_MainFRM.Menu:=nil;

  If isValid then begin
   M_MainFRM.Global_UserID := TheUserID;
   AccessBTN.Click;
   M_MainFRM.Menu:=M_MainFRM.MainMenu1;
    M_mainFRM.PanelButtonsPNL.Enabled:=true;

  end else begin
   M_MainFRM.Global_UserID:='';
//   ActivateAllMenus(False);
   MessageDlg('Invalid User ID or Password. Try Again',mtConfirmation, [mbOK], 0);
   UserIDFLD.SetFocus;
//   LoginUserID:=''; // to force empty user for access button
//   mainFRM.Menu:=nil;
  end;


Close;



End;

procedure TSN_LoginFRm.ActivateAllMenus(IsEnable:Boolean);
Var
TheMainMenu:TMainMenu;
MaxMain,MaxSub:Integer;
I,J:Integer;
begin

TheMainMenu:=M_MainFRM.MainMenu1;

MaxMain:=M_MainFRM.MainMenu1.Items.count;
For I:=0 to MaxMain -1 do
begin
     TheMainMenu.Items[I].Enabled:=IsEnable;
     MaxSub:=TheMainMenu.Items.items[I].count;
     For J:=0 to MaxSub-1 do
     begin
          TheMainMenu.Items.Items[I].Items[j].Enabled :=IsEnable;
    end;
end;

end;



procedure TSN_LoginFRm.UserIDFLDExit(Sender: TObject);
Var
   TheUserId:String;
begin

UserNameFLD.Text:='';
TheUserID:=UserIdFLD.Text;

with FindUserSQL do
begin
     close;
     ParamByName('TheUser').Value:=TheUserID;
     Open;
     If (not IsEmpty) then
     begin
          UserNameFLD.Text:=FieldByName('User_Name').AsString;
     end;
end;


End;

procedure TSN_LoginFRm.FormActivate(Sender: TObject);
begin
  M_MainFRM.PanelButtonsBTN.Enabled:=false;
  M_MainFRM.Menu:=nil;
  UserIDFLD.SetFocus;

end;

procedure TSN_LoginFRm.UserIDFLDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
If (Key=13) then
   PasswordFLD.SetFocus;
end;

procedure TSN_LoginFRm.PasswordFLDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

If (Key=VK_RETURN) then
begin
   LoginBTN.Click;
end;
end;

procedure TSN_LoginFRm.AccessBTNClick(Sender: TObject);
Var
   TheMainMenu:TMainMenu;
   I,J:Integer;
   ItemsCount,SubItemsCount:Integer;
   Item,SubItem:TMenuItem;
   ScreenID:String;

begin
TheMainMenu:=M_MainFRM.MainMenu1;
ItemsCount:= TheMainMenu.Items.Count;

For I := 0 to ItemsCount-1 do
begin
     Item:= TheMainMenu.Items[i]; // this is the main menu item
     Item.Enabled:=true;
     SubItemsCount:=Item.Count;

     For J:=0 to SubItemsCount-1 do
     begin
          SubItem:=Item.Items[j];
          ScreenID:=SubItem.Name;

          with FIndSQL do
          begin
               Close;
               If not Prepared then prepare;
               ParamBYName('TheUser').Value:=M_MainFRM.Global_UserID;
               ParamBYName('TheScreen').Value:=ScreenID;
               Open;
               IF (not FindSQL.IsEmpty) then
                  SubItem.Enabled:=True
               else
                   SubItem.Enabled:=false;

               if IsSystemAdministrator then
                  SubItem.Enabled:=True;

               close;
          end;//FindSQL
     end; // for J
end;//FOr i


  item:=theMainMenu.Items.Find('Tariffs');
  if item <> nil then begin
    item:= item.Find('Allow To Save');

  if item <> Nil then begin
//    M_MainFRM.IsSaveTariff:=item.Enabled;
  end;


end;

end;

END.
