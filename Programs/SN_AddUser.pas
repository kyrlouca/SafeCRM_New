unit SN_AddUser;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, Wwdatsrc,  DBAccess, IBC, MemDS, IBCError,  Mask,
  wwdbedit, Wwdotdot, Wwdbcomb, Grids, Wwdbigrd, Wwdbgrid, wwSpeedButton,
  wwDBNavigator, wwdblook, wwclearpanel, DBCGrids;


type
  TSN_AddUserFRM = class(TForm)
    TopPanelPNL: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    UserIDFLD: TwwDBEdit;
    UserNameFLD: TwwDBEdit;
    PasswordFLD: TwwDBEdit;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    ReadTrans: TIBCTransaction;
    WriteTrans: TIBCTransaction;
    TableSRC: TIBCDataSource;
    TableSQL: TIBCQuery;
    TableSQLUSER_ID: TWideStringField;
    TableSQLUSER_PASSWORD: TWideStringField;
    TableSQLUSER_NAME: TWideStringField;
    TableSQLFK_USER_STATION: TIntegerField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    IN_TableAction:String;
    IN_UserId:String;
  end;

var
  SN_AddUserFRM: TSN_AddUserFRM;

implementation

uses U_Database, SN_SecurityAccess, SN_User, G_KyrSQL;


{$R *.DFM}




procedure TSN_AddUserFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;



procedure TSN_AddUserFRM.BitBtn2Click(Sender: TObject);
begin

  If TableSQL.State in [dsInsert, dsEdit] then begin
    TableSQL.Post;
  end;
  close;

End;

procedure TSN_AddUserFRM.BitBtn6Click(Sender: TObject);
begin
  TableSQL.Cancel;
  close;
end;//with

procedure TSN_AddUserFRM.FormActivate(Sender: TObject);
Begin
  ksOpenTables([TableSQL]);
  if IN_TableAction ='ADD' then begin
   if TableSQL.State in [dsInsert,dsEdit] then
     TableSQL.Cancel;
   TableSQl.Insert;
   UserIdFLD.ReadOnly:=false;
   UserIdFLD.Color:=clWindow;
   UserIDFLD.SetFocus;

  end else if IN_TableAction='EDIT' then begin
   if TableSQL.State in [dsInsert,dsEdit] then
     TableSQL.Cancel;
   TableSQL.Close;
   TableSQL.ParamByName('userId').Value:=IN_UserID;
   TableSQL.Open;

   UserIdFLD.ReadOnly:=true;
   UserIdFLD.Color:=clBtnFace;
   UserNameFLD.SetFocus;
  end;


End;

procedure TSN_AddUserFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   UserIdFLD.ReadOnly:=false;
   UserIdFLD.Color:=clBtnFace;

end;

END.
