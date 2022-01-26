unit SN_ModifyPassword;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, Wwdatsrc,  DBAccess, IBC, MemDS, IBCError,  Mask,
  wwdbedit, Wwdotdot, Wwdbcomb, Grids, Wwdbigrd, Wwdbgrid, wwSpeedButton,
  wwDBNavigator, wwdblook, wwclearpanel, DBCGrids;


type
  TSN_ModifyPasswordFRM = class(TForm)
    TopPanelPNL: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    UserIDFLD: TwwDBEdit;
    OldPassFLD: TwwDBEdit;
    ReadTrans: TIBCTransaction;
    WriteTrans: TIBCTransaction;
    Label4: TLabel;
    NewPass1FLD: TwwDBEdit;
    Label5: TLabel;
    NewPass2FLD: TwwDBEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
    IN_TableAction:String;
    IN_UserId:String;
  end;

var
  SN_ModifyPasswordFRM: TSN_ModifyPasswordFRM;

implementation

uses  SN_SecurityAccess, SN_User, G_KyrSQL,  U_Database, M_Main;


{$R *.DFM}




procedure TSN_ModifyPasswordFRM.BitBtn1Click(Sender: TObject);
begin
  close;
end;



procedure TSN_ModifyPasswordFRM.BitBtn2Click(Sender: TObject);
var
  qr:TksQuery;
  userID:String;
  passOld:String;
  pass1,pass2:String;
  dbPass:String;
begin
  userId:=Trim(UserIDFLD.Text);
  passOld:=UpperCase( Trim(OldPassFLD.Text));
  pass1:= UpperCase( Trim( NewPass1FLD.Text));
  pass2:= UpperCase( Trim(NewPass2FLD.Text));


  if UserID='' then begin
    MessageDlg('Enter Use ID', mtError, [mbOK], 0);
    exit;
  end;

  if UserID<> M_mainFRM.Global_UserID then begin
    MessageDlg('Not allowed to change password of this ID', mtError, [mbOK], 0);
    exit;
  end;


  if Length(Pass1) < 6 then begin
    MessageDlg('New Password must be at least 6 characters', mtError, [mbOK], 0);
    exit;
  end;


  if Pass1<> pass2 then begin
    MessageDlg('New Passwords not the SAME', mtError, [mbOK], 0);
    exit;
  end;

  qr:= TksQuery.Create(cn,'select * from security_user where user_id = :userId');
  try
    qr.ParamByName('userID').Value:=UserID;
    qr.Open;
    dbPass:=qr.FieldByName('user_password').AsString;
    if dbPass<> PassOld then begin
      MessageDlg('User id and Password do not match', mtError, [mbOK], 0);
      exit;
    end;
  finally
    qr.Free;
  end;

  ksExecSQLVar(cn,'update security_user set user_password= :userPass where user_id= :userID',[pass1,userId]);
  MessageDlg('Password has been updated', mtInformation, [mbOK], 0);
  UserIDFLD.Clear;
  OldPassFLD.Clear;
  NewPass1FLD.Clear;
  NewPass2FLD.Clear;


End;

procedure TSN_ModifyPasswordFRM.BitBtn6Click(Sender: TObject);
begin
end;//with

procedure TSN_ModifyPasswordFRM.FormActivate(Sender: TObject);
begin
UserIDFLD.SetFocus;
end;

procedure TSN_ModifyPasswordFRM.FormCreate(Sender: TObject);
begin
cn:=U_databaseFRM.DataConnection;
end;

END.
