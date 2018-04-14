unit SN_User;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, Wwdatsrc,  DBAccess, IBC, MemDS, IBCError, Mask,
  wwdbedit, Wwdotdot, Wwdbcomb, Grids, Wwdbigrd, Wwdbgrid, wwSpeedButton,
  wwDBNavigator, wwdblook, wwclearpanel, DBCGrids,
   RzButton, RzPanel;

type
  TSN_UserFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    UpdateUserBTN: Tbitbtn;
    UserAccessBTN: Tbitbtn;
    DeleteUserBTN: Tbitbtn;
    AddUserBTN: Tbitbtn;
    wwDBGrid1: TwwDBGrid;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    UserSRC: TIBCDataSource;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    UserTBL: TIBCQuery;
    UserTBLUSER_ID: TWideStringField;
    UserTBLUSER_PASSWORD: TWideStringField;
    UserTBLUSER_NAME: TWideStringField;
    UserTBLFK_USER_STATION: TIntegerField;
    procedure BitBtn1Click(Sender: TObject);
    procedure wwDBLookupCombo1NotInList(Sender: TObject;
      LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure UserIDFLDCheckValue(Sender: TObject;
      PassesPictureTest: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure fcShapeBtn4Click(Sender: TObject);
    procedure UserAccessBTNClick(Sender: TObject);
    procedure AddUserBTNClick(Sender: TObject);
    procedure UpdateUserBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
  end;

var
  SN_UserFRM: TSN_UserFRM;

implementation

uses SN_SecurityAccess, U_Database, G_KyrSQL, SN_AddUser;

{$R *.DFM}




procedure TSN_UserFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;



procedure TSN_UserFRM.wwDBLookupCombo1NotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
accept:=false;
end;

procedure TSN_UserFRM.BitBtn2Click(Sender: TObject);
begin
UserID:=UserTBL.FieldByName('User_ID').AsString;
UserName:=UserTBL.FieldByName('User_Name').AsString;
If UserTBL.State=dsInsert then
   UserTBL.Post;
SN_SecurityAccessFRM.SHowModal;
end;

procedure TSN_UserFRM.UserIDFLDCheckValue(Sender: TObject;
  PassesPictureTest: Boolean);
begin
if (UserTBL.State<>dsInsert) then
   abort;
end;


procedure TSN_UserFRM.FormActivate(Sender: TObject);
begin
  ksOpenTables([UserTBL]);
End;


procedure TSN_UserFRM.FormCreate(Sender: TObject);
begin
cn:=U_databaseFRM.DataConnection;
end;

procedure TSN_UserFRM.fcShapeBtn4Click(Sender: TObject);
Var
   TheUser:String;
begin
  TheUser:=UserTBL.FieldByName('User_ID').AsString;
  if MessageDlg('Delete User?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then   begin
      ksExecSQLVar(cn,'Delete from security_user_screen where user_id=  :userid',[TheUser]);
      ksExecSQLVar(cn,'Delete from security_user where user_id = :userid',[TheUser]);
  end;
  ksOpenTables([UserTBL]);

end;

procedure TSN_UserFRM.UserAccessBTNClick(Sender: TObject);
var
 myForm: TSN_SecurityAccessFRM;
begin
  UserID:=UserTBL.FieldByName('User_ID').AsString;
  UserName:=UserTBL.FieldByName('User_Name').AsString;
  If UserTBL.State=dsInsert then
    UserTBL.Post;

  myForm := TSN_SecurityAccessFRM.Create(nil) ;
  try
//      myForm.IN_TableAction:='ADD';
//      MyForm.TopPanelPNL.Caption:='Add User';
      myForm.ShowModal;
   finally
     myForm.Free;
   end;
  ksOpenTables([UserTBL]);


end;

procedure TSN_UserFRM.AddUserBTNClick(Sender: TObject);
var
 myForm: TSN_AddUserFRM;
begin

  myForm := TSN_AddUserFRM.Create(nil) ;
  try
      myForm.IN_TableAction:='ADD';
      MyForm.TopPanelPNL.Caption:='Add User';
      myForm.ShowModal;
   finally
     myForm.Free;
   end;
  ksOpenTables([UserTBL]);



end;

procedure TSN_UserFRM.UpdateUserBTNClick(Sender: TObject);
var
 myForm: TSN_AddUserFRM;
begin

  myForm := TSN_AddUserFRM.Create(nil) ;
  try
      myForm.IN_TableAction:='EDIT';
      MyForm.TopPanelPNL.Caption:='Update User';
      myFOrm.IN_UserId:=UserTBL.FieldByName('USer_id').AsString;
      myForm.ShowModal;
   finally
     myForm.Free;
   end;
  ksOpenTables([UserTBL]);


end;

END.
