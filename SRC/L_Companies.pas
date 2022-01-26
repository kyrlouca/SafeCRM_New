unit L_Companies;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  Vcl.WinXCtrls, Vcl.Menus;
type
  TL_companiesFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    Panel5: TPanel;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    Grid1: TwwDBGrid;
    RzPanel4: TRzPanel;
    InsertHawbBTN: TRzBitBtn;
    DeletehawbBTN: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    Label2: TLabel;
    FilterBox: TwwDBComboBox;
    EditBTN: TRzBitBtn;
    Nav1: TwwDBNavigator;
    Nav1Button: TwwNavButton;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Button1: TwwNavButton;
    Nav1Insert: TwwNavButton;
    Nav1Delete: TwwNavButton;
    TableSQL: TIBCQuery;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLNATIONAL_ID: TWideStringField;
    TableSQLFK_COMPANY_SERIAL: TIntegerField;
    TableSQLFIRST_NAME: TWideStringField;
    TableSQLLAST_NAME: TWideStringField;
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
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    NameFLD: TwwIncrementalSearch;
    wwIncrementalSearch3: TwwIncrementalSearch;
    wwIncrementalSearch4: TwwIncrementalSearch;
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure TableSQLAfterInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Grid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure InsertHawbBTNClick(Sender: TObject);
    procedure Grid1DblClick(Sender: TObject);
    procedure DeletehawbBTNClick(Sender: TObject);
    procedure Nav1InsertClick(Sender: TObject);
    procedure FilterBoxCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure EditBTNClick(Sender: TObject);
    procedure SafeBTNClick(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
    procedure EditCompany();
    procedure DeleteCompany();
  procedure MakeItSafe(Const PersonSerial:Integer);
  procedure ShowFiltered(Const Status:String);
  procedure  InsertCompany();
  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;

  end;

var
  L_companiesFRM: TL_companiesFRM;

implementation

uses   U_Database, G_generalProcs, V_Seminar, M_CompanyNew;


{$R *.DFM}

procedure TL_companiesFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TL_companiesFRM.TableSRCStateChange(Sender: TObject);
begin


  with TableSQL do begin
     If State<>dsInsert then begin
//         StationIDFLD.Enabled:=false;
     end  else begin
//         StationIDFLD.Enabled:=true;
     end;
  end;//with

end;

procedure TL_companiesFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TL_companiesFRM.SafeBTNClick(Sender: TObject);
var
  PersonSerial:Integer;
begin
  PersonSerial:=TableSQL.FieldByName('serial_number').AsInteger;
  if PersonSerial<1 then exit;
  MakeItSafe(PersonSerial);

end;

procedure TL_companiesFRM.MakeItSafe(Const PersonSerial:Integer);
begin

  if MessageDlg('Select this Company as Safe Partners.'+#13+#10+'Are you sure ?', mtWarning, [mbOk, mbCancel], 0,mbCancel)= mrOk then begin
    ksExecSQLVar(cn,'update person set is_safe_company=''N'' ',[]);
    ksExecSQLVar(cn,'update person set is_safe_company=''Y'' where serial_number= :SeminarSerial',[PersonSerial]);
  end;
end;

procedure TL_companiesFRM.EditBTNClick(Sender: TObject);
begin
  EditCompany();
end;

procedure TL_companiesFRM.TableSQLAfterInsert(DataSet: TDataSet);
begin
//      StationIDFLD.SetFocus;

end;




procedure TL_companiesFRM.FilterBoxCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
Var
  Status:String;
begin
  if not select then exit;
  status:= FilterBox.Value;
  ShowFiltered(Status);
end;

procedure TL_companiesFRM.ShowFiltered(Const Status:String);
begin
  TableSQL.RestoreSQL;

  if Status='Y' then begin
    TableSQL.AddWhere('status_active = ''Y'' ')
  end else if  status='N' then begin
    TableSQL.AddWhere('status_active = ''N'' ')
  end;
  TableSQL.Open;

end;

procedure TL_companiesFRM.FormActivate(Sender: TObject);
var
  Status:String;
begin


  filterBox.ItemIndex:=1;
  status:= FilterBox.Value;
  ShowFiltered(Status);
  if NameFLD.CanFocus then nameFLD.SetFocus;

end;

procedure TL_companiesFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TL_companiesFRM.Grid1DblClick(Sender: TObject);
begin
  EditCompany();
end;

procedure TL_companiesFRM.EditCompany();
vAR
  serial:Integer;
  Frm:TM_companyNewFRM;
begin
  SERIAL:=TableSQL.FieldByName('serial_number').AsInteger;
  if serial<1 then exit;

  frm := TM_companyNewFRM.Create(nil);
  frm.IN_ACTION :='EDIT';
  frm.IN_company_Serial:=serial;
  try
    frm.ShowModal;
    ksOpenTables([TableSQL]);
  finally
    frm.Free;
  end;


end;

procedure TL_companiesFRM.DeleteCompany();
vAR
  serial:Integer;
  Frm:TV_SeminarFRM;
begin
  SERIAL:=TableSQL.FieldByName('serial_number').AsInteger;
  if serial<1 then exit;
  ksExecSQLVar(cn,'delete from person where serial_number= :serial',[serial]);
  ksOpenTables([TableSQL])


end;



procedure TL_companiesFRM.Grid1TitleButtonClick(Sender: TObject;
  AFieldName: string);
  var
         sortInfoHawb:TSOrtInfo;
         Table:TIBCQuery;


  begin
        Table:=TIbcQuery(Grid1.DataSource.DataSet);
        SortInfoHawb.Table:=Table;
        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawb);

end;

procedure TL_companiesFRM.InsertHawbBTNClick(Sender: TObject);
begin
  InsertCompany();
  ksOpenTables([TableSQL]);
end;


procedure TL_companiesFRM.InsertCompany();
vAR
Frm:TM_companyNewFRM;
begin
  frm := TM_companyNewFRM.Create(nil);
  frm.IN_ACTION :='INSERT';
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;


procedure TL_companiesFRM.Nav1InsertClick(Sender: TObject);
begin
  InsertCompany();
  ksOpenTables([TableSQL]);

  abort;
end;

procedure TL_companiesFRM.CanelBTNClick(Sender: TObject);
begin
TableSQL.Cancel;
close;
end;

procedure TL_companiesFRM.DeletehawbBTNClick(Sender: TObject);
begin
DeleteCompany();
end;

End.
