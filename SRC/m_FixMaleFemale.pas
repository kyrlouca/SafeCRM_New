unit m_FixMaleFemale;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  vcl.wwcheckbox, Vcl.Menus;
type
  TM_FixMaleFemaleFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    Grid1: TwwDBGrid;
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
    RzPanel4: TRzPanel;
    TableSQLSERIAL_QB: TIntegerField;
    TableSQLPHONE_CONTACT: TWideStringField;
    TableSQLPHONE_MOBILE_2: TWideStringField;
    TableSQLLINKED_IN: TWideStringField;
    TableSQLJOB: TWideStringField;
    TableSQLCOMPANY_SERIAL: TIntegerField;
    TableSQLCOMPANY_NAME: TWideStringField;
    SexFLD: TwwDBEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Grid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure TableSQLNewRecord(DataSet: TDataSet);
    procedure N3Click(Sender: TObject);
    procedure FilterBoxCloseUp(Sender: TwwDBComboBox; Select: Boolean);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;
  procedure ShowFiltered(Const Status:String);

  end;

var
  M_FixMaleFemaleFRM: TM_FixMaleFemaleFRM;

implementation

uses   U_Database, G_generalProcs, R_seminarAttend;


{$R *.DFM}

procedure TM_FixMaleFemaleFRM.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TM_FixMaleFemaleFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;

procedure TM_FixMaleFemaleFRM.ShowFiltered(Const Status:String);
begin
  TableSQL.RestoreSQL;

  if Status='Y' then begin
    TableSQL.AddWhere('per.status_active = ''Y'' ')
  end else if  status='N' then begin
    TableSQL.AddWhere('per.status_active = ''N'' ')
  end;
  TableSQL.Open;

end;



procedure TM_FixMaleFemaleFRM.TableSQLNewRecord(DataSet: TDataSet);
begin
Dataset.FieldByName('status_active').Value:='Y';
Dataset.FieldByName('is_company').Value:='N';
Dataset.FieldByName('serial_qb').Value:= Dataset.FieldByName('serial_number').AsInteger;

end;

procedure TM_FixMaleFemaleFRM.TableSRCStateChange(Sender: TObject);
begin


  with TableSQL do begin
     If State<>dsInsert then begin
//         StationIDFLD.Enabled:=false;
     end  else begin
//         StationIDFLD.Enabled:=true;
     end;
  end;//with

end;

procedure TM_FixMaleFemaleFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TM_FixMaleFemaleFRM.FilterBoxCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
Var
  Status:String;
begin
end;

procedure TM_FixMaleFemaleFRM.FormActivate(Sender: TObject);
var
  status:String;
begin
ksOpenTables([TableSQL]);
end;

procedure TM_FixMaleFemaleFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if TableSQL.State in [dsInsert, dsEdit] then
   TableSQL.Post;
end;

procedure TM_FixMaleFemaleFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TM_FixMaleFemaleFRM.Grid1TitleButtonClick(Sender: TObject;
  AFieldName: string);
  var
         sortInfoHawb:TSOrtInfo;
         Table:TIBCQuery;


  begin
        Table:=TIbcQuery(Grid1.DataSource.DataSet);
        SortInfoHawb.Table:=Table;
        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawb);

end;

procedure TM_FixMaleFemaleFRM.N3Click(Sender: TObject);
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

procedure TM_FixMaleFemaleFRM.CanelBTNClick(Sender: TObject);
begin
TableSQL.Cancel;
close;
end;

End.
