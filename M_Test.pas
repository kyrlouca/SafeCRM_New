unit M_Test;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker, Vcl.ComCtrls, Data.Bind.Components,
  Data.Bind.ObjectScope, Datasnap.DBClient;
type
  TM_TestFRM = class(TForm)
    Panel4: TPanel;
    Panel2: TPanel;
    Nav1: TwwDBNavigator;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Insert: TwwNavButton;
    Nav1Delete: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1Cancel: TwwNavButton;
    TableSRC: TDataSource;
    Panel5: TPanel;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    SerialFLD: TRzDBLabel;
    FirstFLD: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwIncrementalSearch1: TwwIncrementalSearch;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    Grid1: TwwDBGrid;
    Label17: TLabel;
    Nav1Button: TwwNavButton;
    Nav1Button1: TwwNavButton;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLSERIAL_QB: TIntegerField;
    TableSQLFK_COMPANY_SERIAL: TIntegerField;
    TableSQLNATIONAL_ID: TWideStringField;
    TableSQLNICKNAME: TWideStringField;
    TableSQLOCCUPATION: TWideStringField;
    TableSQLPHONE_MOBILE: TWideStringField;
    TableSQLPHONE_FIXED: TWideStringField;
    TableSQLPHONE_ALTERNATE: TWideStringField;
    TableSQLFAX: TWideStringField;
    TableSQLEMAIL: TWideStringField;
    TableSQLEMAIL_2: TSmallintField;
    TableSQLADDRESS: TWideStringField;
    TableSQLADDRESS_STREET: TWideStringField;
    TableSQLADDRESS_POST_CODE: TWideStringField;
    TableSQLADDRESS_CITY: TWideStringField;
    TableSQLADDRESS_DISTRICT: TWideStringField;
    TableSQLDATE_STARTED: TDateField;
    TableSQLDATE_BIRTH: TDateField;
    TableSQLDATE_USER: TDateField;
    TableSQLLIST_SOURCE: TWideStringField;
    TableSQLFACEBOOK: TWideStringField;
    TableSQLWEBSITE: TWideStringField;
    TableSQLTWITTER: TWideStringField;
    TableSQLSTATUS_ACTIVE: TWideStringField;
    TableSQLSEX: TWideStringField;
    TableSQLIS_COMPANY: TWideStringField;
    TableSQLCOMPANY_OWNER: TWideStringField;
    TableSQLCOMPANY_CONTACT: TWideStringField;
    TableSQLCOMPANY_REGISTRATION_DATE: TDateField;
    TableSQLPHONE_CONTACT: TWideStringField;
    TableSQLCOMPANY_OWNER_REG: TWideStringField;
    TableSQLCOMPANY_CONTACT_PHONE: TWideStringField;
    TableSQLCOMPANY_CONTACT_EMAIL: TWideStringField;
    TableSQLCOMPANY_CONTACT_FAX: TWideStringField;
    TableSQLCOMPANY_SOCIAL_SEC: TWideStringField;
    TableSQLCOMPANY_EMPLOYEES: TIntegerField;
    TableSQLPHONE_MOBILE_2: TWideStringField;
    TableSQLLINKED_IN: TWideStringField;
    TableSQLJOB: TWideStringField;
    TableSQLIS_SAFE_COMPANY: TWideStringField;
    TableSQLCOMPANY_OWNER_ID: TWideStringField;
    TableSQLU_LAST_NAME: TWideStringField;
    TableSQLU_FIRST_NAME: TWideStringField;
    TableSQLU_COMPANY_CONTACT_FIRST: TWideStringField;
    TableSQLU_COMPANY_CONTACT_LAST: TWideStringField;
    TableSQLLAST_NAME: TWideStringField;
    TableSQLFIRST_NAME: TWideStringField;
    TableSQLCOMPANY_CONTACT_LAST: TWideStringField;
    TableSQLCOMPANY_CONTACT_FIRST: TWideStringField;
    TableSQLADDRESS_DISTRICT_WIN1253: TWideStringField;
    TableSQLADDRESS_CITY_WIN1253: TWideStringField;
    TableSQLCOMPANY_CONTACT_ID: TWideStringField;
    TableSQLCOMPANY_CONTACT_POSITION: TWideStringField;
    TableSQLCOMPANY_OWNER_PHONE: TWideStringField;
    TableSQLCOMPANY_OWNER_FAX: TWideStringField;
    TableSQLCOMPANY_OWNER_EMAIL: TWideStringField;
    TableSQLCOMPANY_MANAGER_FIRST: TWideStringField;
    TableSQLCOMPANY_MANAGER_LAST: TWideStringField;
    TableSQLCOMPANY_MANAGER_PHONE: TWideStringField;
    TableSQLCOMPANY_MANAGER_EMAIL: TWideStringField;
    TableSQLCOMPANY_MANAGER_FAX: TWideStringField;
    TableSQLCOMPANY_MANAGER_POSITION: TWideStringField;
    TableSQLCOMPANY_MANAGER_ID: TWideStringField;
    TableSQLCOMPANY_MAIN_ACTIVITY: TWideStringField;
    PrototypeBindSource1: TPrototypeBindSource;
    ListView1: TListView;
    ClientDataSet1: TClientDataSet;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure TableSQLAfterInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Nav1InsertClick(Sender: TObject);
    procedure Grid1TitleButtonClick(Sender: TObject; AFieldName: string);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;

  end;

var
  M_TestFRM: TM_TestFRM;

implementation

uses   U_Database, G_generalProcs;


{$R *.DFM}

procedure TM_TestFRM.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TM_TestFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TM_TestFRM.TableSRCStateChange(Sender: TObject);
begin


  with TableSQL do begin
     If State<>dsInsert then begin
//         StationIDFLD.Enabled:=false;
     end  else begin
//         StationIDFLD.Enabled:=true;
     end;
  end;//with

end;

procedure TM_TestFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TM_TestFRM.TableSQLAfterInsert(DataSet: TDataSet);
begin
//      StationIDFLD.SetFocus;

end;


procedure TM_TestFRM.FormActivate(Sender: TObject);
begin
ksOpenTables([TableSQL]);
if IN_ACTION='INSERT' then begin
   TableSQL.Insert;
end;

end;

procedure TM_TestFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if TableSQL.State in [dsInsert, dsEdit] then
   TableSQL.Post;
end;

procedure TM_TestFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TM_TestFRM.Grid1TitleButtonClick(Sender: TObject;
  AFieldName: string);
  var
         sortInfoHawb:TSOrtInfo;
         Table:TIBCQuery;


  begin
        Table:=TIbcQuery(Grid1.DataSource.DataSet);
        SortInfoHawb.Table:=Table;
        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawb);

end;

procedure TM_TestFRM.Nav1InsertClick(Sender: TObject);
begin
  FirstFLD.SetFocus;
end;

procedure TM_TestFRM.CanelBTNClick(Sender: TObject);
begin
TableSQL.Cancel;
close;
end;

End.
