unit M_Student;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  vcl.wwcheckbox, Vcl.Menus;
type
  TM_StudentFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    wwIncrementalSearch1: TwwIncrementalSearch;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    Grid1: TwwDBGrid;
    wwIncrementalSearch2: TwwIncrementalSearch;
    wwIncrementalSearch3: TwwIncrementalSearch;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    RzPanel4: TRzPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    SerialFLD: TRzDBLabel;
    Label15: TLabel;
    Label16: TLabel;
    FirstFLD: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    DatePassedFLD: TwwDBDateTimePicker;
    wwDBEdit13: TwwDBEdit;
    wwDBComboBox1: TwwDBComboBox;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    RzPanel5: TRzPanel;
    Nav1: TwwDBNavigator;
    Nav1Button: TwwNavButton;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Button1: TwwNavButton;
    Nav1Insert: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1Cancel: TwwNavButton;
    GroupBox3: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    wwDBEdit18: TwwDBEdit;
    wwDBEdit19: TwwDBEdit;
    wwDBEdit20: TwwDBEdit;
    wwDBEdit21: TwwDBEdit;
    wwCheckBox1: TwwCheckBox;
    QbFLD: TwwDBEdit;
    Label6: TLabel;
    MainMenu1: TMainMenu;
    Reports1: TMenuItem;
    N3: TMenuItem;
    Label7: TLabel;
    wwIncrementalSearch4: TwwIncrementalSearch;
    Label8: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label9: TLabel;
    wwDBEdit5: TwwDBEdit;
    Label18: TLabel;
    wwDBEdit6: TwwDBEdit;
    RzGroupBox1: TRzGroupBox;
    Label17: TLabel;
    FilterBox: TwwDBComboBox;
    RzGroupBox2: TRzGroupBox;
    RzDBLabel2: TRzDBLabel;
    RzDBLabel3: TRzDBLabel;
    Label19: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label20: TLabel;
    Label21: TLabel;
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
    TableSQLCOMPANY_SERIAL: TIntegerField;
    TableSQLCOMPANY_NAME: TWideStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Nav1InsertClick(Sender: TObject);
    procedure Grid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure TableSQLNewRecord(DataSet: TDataSet);
    procedure N3Click(Sender: TObject);
    procedure FilterBoxCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure wwIncrementalSearch1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;
    IN_studentSerial:Integer;
  procedure ShowFiltered(Const Status:String);

  end;

var
  M_StudentFRM: TM_StudentFRM;

implementation

uses   U_Database, G_generalProcs, R_seminarAttend;


{$R *.DFM}

procedure TM_StudentFRM.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TM_StudentFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;

procedure TM_StudentFRM.ShowFiltered(Const Status:String);
begin
  TableSQL.RestoreSQL;

  if Status='Y' then begin
    TableSQL.AddWhere('per.status_active = ''Y'' ')
  end else if  status='N' then begin
    TableSQL.AddWhere('per.status_active = ''N'' ')
  end;
  TableSQL.Open;

end;



procedure TM_StudentFRM.TableSQLNewRecord(DataSet: TDataSet);
begin
Dataset.FieldByName('status_active').Value:='Y';
Dataset.FieldByName('is_company').Value:='N';
Dataset.FieldByName('serial_qb').Value:= Dataset.FieldByName('serial_number').AsInteger;

end;

procedure TM_StudentFRM.TableSRCStateChange(Sender: TObject);
begin


  with TableSQL do begin
     If State<>dsInsert then begin
//         StationIDFLD.Enabled:=false;
     end  else begin
//         StationIDFLD.Enabled:=true;
     end;
  end;//with

end;

procedure TM_StudentFRM.wwIncrementalSearch1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=VK_DOWN then begin
    Grid1.SetFocus;
    exit;
  end;

end;

procedure TM_StudentFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TM_StudentFRM.FilterBoxCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
Var
  Status:String;
begin
  if not select then exit;
  status:= FilterBox.Value;
  ShowFiltered(Status);
end;

procedure TM_StudentFRM.FormActivate(Sender: TObject);
var
  status:String;
begin

  if IN_ACTION='EDIT' then begin
    TableSQL.Close;
    tABLESQL.AddWhere('PER.serial_number = :serial');
    TableSQL.ParamByName('serial').Value:=IN_studentSerial;
    TableSQL.Open;
    If firstFLD.CanFocus then
      FirstFLD.SetFocus;

  end ELSE if IN_ACTION='INSERT' then begin
   TableSQL.Insert;

  end ELSE begin
    filterBox.ItemIndex:=1;
    status:= FilterBox.Value;
    ShowFiltered(Status);

  end;





end;

procedure TM_StudentFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if TableSQL.State in [dsInsert, dsEdit] then
   TableSQL.Post;
end;

procedure TM_StudentFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TM_StudentFRM.Grid1TitleButtonClick(Sender: TObject;
  AFieldName: string);
  var
         sortInfoHawb:TSOrtInfo;
         Table:TIBCQuery;


  begin
        Table:=TIbcQuery(Grid1.DataSource.DataSet);
        SortInfoHawb.Table:=Table;
        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawb);

end;

procedure TM_StudentFRM.N3Click(Sender: TObject);
vAR
  Frm:TR_seminarsAttendFRM;
  PersonSerial:Integer;

begin
  personSerial:=TableSQL.FieldByName('serial_number').AsInteger;

  frm :=  TR_seminarsAttendFRM.Create(nil);
  frm.IN_PersonSerial:=PersonSerial;

  try
    frm.PrintSeminar;
  finally
    frm.Free;
  end;
end;

procedure TM_StudentFRM.Nav1InsertClick(Sender: TObject);
begin
  qbflD.SetFocus;
end;

procedure TM_StudentFRM.CanelBTNClick(Sender: TObject);
begin
TableSQL.Cancel;
close;
end;

End.
