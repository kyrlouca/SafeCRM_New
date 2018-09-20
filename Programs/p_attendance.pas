unit p_attendance;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  RzPopups, vcl.wwcheckbox, vcl.wwDialog, vcl.wwIDlg, vcl.wwmonthcalendar,
  vcl.wwlocate, VirtualTable, Vcl.Menus;
type
  TP_attendanceFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    DaySQL: TIBCQuery;
    vPresenceSRC: TIBCDataSource;
    TableSRC: TIBCDataSource;
    DaySRC: TIBCDataSource;
    VPresenceSQL: TVirtualTable;
    wwDBGrid1: TwwDBGrid;
    RzPanel2: TRzPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    VPresenceSQLpercentage_present: TIntegerField;
    VPresenceSQLPersonSerial: TIntegerField;
    VPresenceSQLIs_Present: TStringField;
    DaySQLSEMINARSERIAL: TIntegerField;
    DaySQLSEMINAR_NAME: TWideStringField;
    DaySQLDATE_STARTED: TDateField;
    DaySQLDATE_COMPLETED: TDateField;
    DaySQLSUBJECTSERIAL: TIntegerField;
    DaySQLFK_SEMINAR_SERIAL: TIntegerField;
    DaySQLSUBJECT: TWideStringField;
    DaySQLDAYSERIAL: TIntegerField;
    DaySQLSEMINAR_DAY: TDateField;
    DaySQLDURATION_HOURS: TIntegerField;
    VPresenceSQLDaySerial: TIntegerField;
    DaySQLFK_SEMINAR_SUBJECT_SERIAL: TIntegerField;
    RzPanel5: TRzPanel;
    RzPanel6: TRzPanel;
    SavePresBTN: TBitBtn;
    CanelBTN: TBitBtn;
    wwDBNavigator1Button: TwwNavButton;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLFK_SEMINAR: TIntegerField;
    TableSQLFK_INSTRUCTOR: TIntegerField;
    TableSQLFK_VENUE: TIntegerField;
    TableSQLFK_COMPANY_PERSON_SERIAL: TIntegerField;
    TableSQLSEMINAR_NAME: TWideStringField;
    TableSQLDATE_STARTED: TDateField;
    TableSQLDATE_COMPLETED: TDateField;
    TableSQLDURATION_DAYS: TIntegerField;
    TableSQLDURATION_HOURS: TIntegerField;
    TableSQLAMOUNT_ANAD: TFloatField;
    TableSQLCOMMENTS: TWideStringField;
    TableSQLANAD_APPROVED: TWideStringField;
    TableSQLSTATUS: TWideStringField;
    TableSQLIS_INVOICED: TWideStringField;
    TableSQLIS_CERTIFICATED: TWideStringField;
    TableSQLMAX_CAPACITY: TIntegerField;
    VPresenceSQLHours_Present: TStringField;
    PresentFLD: TwwCheckBox;
    wwDBNavigator1Button1: TwwNavButton;
    wwDBNavigator1Button2: TwwNavButton;
    PanelX: TRzPanel;
    RzPanel3: TRzPanel;
    RzPanel4: TRzPanel;
    Grid1: TwwDBGrid;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    RzDBLabel4: TRzDBLabel;
    RzDBLabel5: TRzDBLabel;
    RzDBLabel6: TRzDBLabel;
    Companylbl: TLabel;
    RzDBLabel7: TRzDBLabel;
    wwDBComboBox2: TwwDBComboBox;
    TableSQLLAST_NAME: TWideStringField;
    MainMenu1: TMainMenu;
    Reports1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    TableSQLANAD_NUMBER: TWideStringField;
    TableSQLHAS_EXPIRY: TWideStringField;
    TableSQLEXPIRY_PERIOD: TIntegerField;
    TableSQLFK_EXAMINER: TIntegerField;
    TableSQLTYPE_MONO_POLY: TWideStringField;
    TableSQLSEM_CATEGORY: TWideStringField;
    Label2: TLabel;
    SerialFLD: TRzDBLabel;
    Label1: TLabel;
    RzDBLabel1: TRzDBLabel;
    N4: TMenuItem;
    BitBtn1: TBitBtn;
    VPresenceSQLfirst_name: TWideStringField;
    VPresenceSQLLast_name: TWideStringField;
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure DateFLDClick(Sender: TObject);
    procedure Sd1SyncDataSets(Sender: TObject; MoveDataSet,
      BaseDataSet: TDataSet);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure TableSQLAfterScroll(DataSet: TDataSet);
    procedure DaySQLAfterScroll(DataSet: TDataSet);
    procedure SavePresBTNClick(Sender: TObject);
    procedure VPresenceSQLNewRecord(DataSet: TDataSet);
    procedure PresentFLDClick(Sender: TObject);
    procedure VPresenceSQLBeforePost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DaySQLBeforeScroll(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure Reports1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  procedure UpdatePresenceTable(const seminarSerial, DaySerial:integer);
  procedure SavePresenceTable();
  procedure TickALl();
  public
    { Public declarations }
    IN_ACTION:String;
    IN_Seminar_serial:Integer;

  end;

var
  P_attendanceFRM: TP_attendanceFRM;

implementation

uses   U_Database, G_generalProcs, R_Presence, R_PresenceTotal,
  R_presencePerDay;


{$R *.DFM}

procedure TP_attendanceFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TP_attendanceFRM.TableSRCStateChange(Sender: TObject);
begin


  with TableSQL do begin
     If State<>dsInsert then begin
//         StationIDFLD.Enabled:=false;
     end  else begin
//         StationIDFLD.Enabled:=true;
     end;
  end;//with

end;

procedure TP_attendanceFRM.wwDBGrid1Exit(Sender: TObject);
BEGIN
  if TableSQL.State in [dsInsert, dsEdit] then
   TableSQL.Post;
  SavePresenceTable();

END;


procedure TP_attendanceFRM.wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
var
  serial:Integer;
  begin
  serial:=LookupTable.FieldByName('serial_number').AsInteger;

//  showMessage(IntToStr(serial));


end;

procedure TP_attendanceFRM.Reports1Click(Sender: TObject);
begin
  if TableSQL.State in [dsInsert, dsEdit] then
   TableSQL.Post;
  SavePresenceTable();

end;

procedure TP_attendanceFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TP_attendanceFRM.Sd1SyncDataSets(Sender: TObject; MoveDataSet,
  BaseDataSet: TDataSet);
begin
  TIBCQuery(MoveDataset).Locate('serial_number',TibcQuery(BaseDataset).FieldByName('serial_number').AsInteger,[]);
end;

procedure TP_attendanceFRM.DateFLDClick(Sender: TObject);
var
  aDate:TDate;
begin

//  aDate:=DateFLD.Date;
//  showMessage(FormatDateTime('dd-mmm-yyyy',aDate));
end;

procedure TP_attendanceFRM.DaySQLAfterScroll(DataSet: TDataSet);
var
  daySerial:Integer;
  seminarSerial:Integer;
    status:string;
  Allow:Boolean;
Begin




  VpresenceSQL.close;
  VpresenceSQL.Open;
  SeminarSerial:=DaySQL.FieldByName('SeminarSerial').AsInteger;
  daySerial:=DaySQL.FieldByName('Dayserial').AsInteger;
  if Dayserial=0 then begin
    VpresenceSQL.Close;
    VpresenceSQL.OPen;
    exit;
  end;

  status:=TableSQL.FieldByName('status').AsString;
  allow:= (Status='A');

  if allow then begin
    UpdatePresenceTable(seminarSerial,daySerial);
  end;
end;

procedure TP_attendanceFRM.DaySQLBeforeScroll(DataSet: TDataSet);
begin
  SavePresenceTable();

end;

procedure TP_attendanceFRM.TableSQLAfterScroll(DataSet: TDataSet);
begin

  daySQL.Close;
  daySQL.ParamByName('SeminarSerial').Value:=Dataset.FieldByName('serial_number').AsInteger;
  daySQL.Open;


end;

procedure TP_attendanceFRM.FormActivate(Sender: TObject);
var
  allowModify: boolean;
  st:string;
status:string;
isAllow:boolean;
begin
// personSQL.Close;
// personSQL.ParamByName('seminarSerial').Value:=IN_seminar_serial;
// personSQL.Open;


  TableSQL.Close;
  TableSQL.ParamByName('seminarSerial').Value:= IN_seminar_serial;
  TableSQL.open;

  daySQL.Close;
  daySQL.ParamByName('SeminarSerial').Value:=TableSQL.FieldByName('serial_number').AsInteger;
  daySQL.Open;

  status:=TableSQL.FieldByName('status').AsString;
  isallow:= (Status='A');

  if isallow then begin
//    UpdatePresenceTable(seminarSerial,daySerial);
  end else begin
        MessageDlg('Tο σεμινάριο δεν είναι σε στάδιο ΕΓΚΡΙΣΗΣ. '+#13+#10+'Χρησιμοποιείστε τα Reports για εκτύπωση.', mtWarning, [mbOK], 0);
  end;
  VPresenceSQL.ReadOnly:= not isallow;



end;

procedure TP_attendanceFRM.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if TableSQL.State in [dsInsert, dsEdit] then
   TableSQL.Post;

  if daySQL.FieldByName('DaySerial').AsInteger >0 then begin
  SavePresenceTable();
  end;



end;

procedure TP_attendanceFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;



procedure TP_attendanceFRM.N2Click(Sender: TObject);
vAR
  Frm:TR_presenceTotalFRM;
  seminarSerial:Integer;
begin
  seminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;

  frm :=  TR_presenceTotalFRM.Create(nil);
  frm.IN_seminar_serial :=seminarSerial;
  try
     frm.PrintTheSeminar();
  finally
    frm.Free;
  end;
end;

procedure TP_attendanceFRM.N3Click(Sender: TObject);
vAR
  Frm:TR_presenceFRM;
  seminarSerial:Integer;
  DaySerial:Integer;
begin
  seminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;
  DaySerial:=DaySQL.FieldByName('DaySerial').AsInteger;

  frm :=  TR_presenceFRM.Create(nil);
  frm.IN_seminar_serial :=seminarSerial;
  frm.IN_Day_Serial:=DaySerial;
  try
    frm.PrintTheSeminar();
  finally
    frm.Free;
  end;
end;

procedure TP_attendanceFRM.N4Click(Sender: TObject);
vAR
  Frm:TR_presencePErDayFRM;
  seminarSerial:Integer;
begin
  seminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;

  frm :=  TR_presencePErDayFRM.Create(nil);
  frm.IN_SeminarSerial :=seminarSerial;
  try
     frm.PrintTheReport;
  finally
    frm.Free;
  end;
end;

procedure TP_attendanceFRM.N1Click(Sender: TObject);
vAR
  Frm:TR_presenceFRM;
  seminarSerial:Integer;
begin
  seminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;

  frm :=  TR_presenceFRM.Create(nil);
  frm.IN_seminar_serial :=seminarSerial;
  frm.IN_Day_Serial :=0;
  try
    frm.PrintTheSeminar();
  finally
    frm.Free;
  end;
end;


procedure TP_attendanceFRM.PresentFLDClick(Sender: TObject);
var
  IsPresent:Boolean;
  hours:Integer;
begin
  if not PresentFLD.Modified then
    exit;

  if VPresenceSQL.State in [dsInactive] then
    exit;

  if vPresenceSQL.FieldByName('personSerial').AsInteger=0 then
    exit;


  isPresent:=VPresenceSQL.FieldByName('is_present').AsString='Y';

  if VPresenceSQL.State in [dsBrowse] then VPresenceSQL.Edit;


  hours:=daySQL.FieldByName('DURATION_HOURS').AsInteger;

  if PresentFLD.Checked then
    VPresenceSQL.FieldByName('hours_present').Value:=hours
  else
    VPresenceSQL.FieldByName('Hours_present').Value:=0;

end;

procedure TP_attendanceFRM.UpdatePresenceTable(const seminarSerial, DaySerial:integer);
var
  qr:TksQuery;
  str:string;
  hours:integer;
  DayDuration:Integer;
  IsPresent:String;
begin

//populate memory table from database tables

// Get all the persons in the seminar (from seminar_person)
//and attach to them a person_presence for that day (if there is one)
// person presence is attached to a person and a day
//complicate but neccessary. Cannot just use the seminar outer with presence because
// it will get presence from different days


qr:= TksQuery.Create(cn,'select * from  seminar_subject_day where serial_number= :daySerial');
  try
    qr.ParamByName('daySerial').AsInteger:=DaySerial;
    qr.Open;
    dayDuration:=qr.FieldByName('duration_hours').AsInteger;
    qr.Close;
  finally
    qr.Free;
  end;

str:=
  ' select * from ('
  +'   SELECT'
  +'          sp.fk_seminar_serial,  sp.fk_person_serial as PersonSerial,'
  +'          pp.first_name,pp.last_name'
  +'      from'
  +'           seminar_person sp left outer join'
  +'           person pp on sp.fk_person_serial=pp.serial_number'
  +''
  +'  where sp.fk_seminar_serial= :seminarSerial'
  +'  ) as xOut'
  +'  left outer join'
  +'  ('
  +'    select'
  +'      inPP.fk_person_serial as PersonSerial, inPP.is_present,inPP.percentage_present,inPP.hours_present '
  +'    from'
  +'            seminar_person inSP inner join'
  +'            person_presence inPP on inPP.fk_person_serial= inSP.fk_person_serial'
  +'    where'
  +'            inSP.fk_seminar_serial= :SeminarSerial and inPP.fk_day_serial = :DaySerial'
  +'  )as yIn'
  +'  on  xOUt.PersonSerial = yIN.PersonSerial'
  +'  order by last_name desc, first_name desc';



  if not VPresenceSQL.Active then
    VPresenceSQL.Open;

  qr:=TksQuery.Create(cn,str);
  try
    qr.ParamByName('SeminarSerial').Value:= SeminarSerial;
    qr.ParamByName('DaySerial').Value:=DaySerial;
    qr.Open;
    while not qr.Eof do begin
      VPresenceSQL.Insert;
      VPresenceSQL.FieldByName('first_Name').Value:=qr.FieldByName('first_name').AsString;
      VPresenceSQL.FieldByName('Last_Name').Value:=qr.FieldByName('Last_name').AsString;

      VPresenceSQL.FieldByName('PersonSerial').Value:=qr.FieldByName('PersonSerial').AsInteger;
      VPresenceSQL.FieldByName('DaySerial').Value:= DaySerial; //may be null if no person_presence
//  seminar_subject_day
      VPresenceSQL.FieldByName('Percentage_present').Value:=qr.FieldByName('percentage_present').AsInteger;
      hours :=qr.FieldByName('Hours_present').AsInteger;
      if Hours=0 then begin
        VPresenceSQL.FieldByName('Hours_present').Value:=DayDuration;
      end else begin
        VPresenceSQL.FieldByName('Hours_present').Value:=qr.FieldByName('Hours_present').AsInteger;
      end;

      VPresenceSQL.FieldByName('is_present').Value:=qr.FieldByName('is_present').AsString;
      vPresenceSQL.Post;

      qr.Next;
    end;
  finally
    qr.Free;
  end;
end;

procedure TP_attendanceFRM.VPresenceSQLBeforePost(DataSet: TDataSet);
var
   maxHours:Integer;
begin
  if daySQL.FieldByName('DaySerial').AsInteger <1 then begin
    Dataset.Cancel;
    exit;
  end;


  if Dataset.FieldByName('is_present').AsString<>'Y' then begin
    Dataset.FieldByName('hours_present').AsInteger:=0;
  end else begin
    maxHours:=daySQL.FieldByName('DURATION_HOURS').AsInteger;
    if Dataset.FieldByName('hours_Present').AsInteger < 0 then
      Dataset.FieldByName('hours_present').AsInteger:=0;

    if Dataset.FieldByName('hours_Present').AsInteger > maxHours then
      Dataset.FieldByName('hours_present').AsInteger:=maxHours;


  end;

end;

procedure TP_attendanceFRM.VPresenceSQLNewRecord(DataSet: TDataSet);
begin
  if daySQL.FieldByName('DaySerial').AsInteger <1 then begin
    exit;
  end;
  Dataset.FieldByName('hours_present').AsInteger:=99;
end;

procedure TP_attendanceFRM.SavePresBTNClick(Sender: TObject);
begin
  if daySQL.FieldByName('DaySerial').AsInteger <1 then begin
    exit;
  end;
  SavePresenceTable();

end;

procedure TP_attendanceFRM.SavePresenceTable();
var
  qr:TksQuery;
  str:string;
  serial:Integer;
  PersonSerial,DaySerial :Integer;
  IsPresent :String;
  Percentage: Integer;
  Hours:Integer;
begin
 if vPresenceSQL.State in [dsEdit,dsInsert] then
  VPresenceSQL.Post;
str:=
  ' Insert Into person_presence'
  +'  (serial_number, fk_person_serial, fk_day_serial,is_present,percentage_present,hours_present)'
  +'  values( :serial, :personSerial, :DaySerial, :isPresent,:percentage,:hours)' ;

  VPresenceSQL.First;
  while not  VPresenceSQL.Eof do begin
    serial:=ksGenerateSerial(cn,'GEN_PERSON_PRESENCE');
    personSerial:=VPresenceSQL.FieldByName('PersonSerial').AsInteger;
    DaySerial:=VPresenceSQL.FieldByName('DaySerial').AsInteger;
    Percentage:=VPresenceSQL.FieldByName('Percentage_Present').AsInteger;
    Hours:=VPresenceSQL.FieldByName('Hours_Present').AsInteger;
    IsPresent:=VPresenceSQL.FieldByName('Is_present').AsString;
    if IsPresent='' then IsPresent:='N';
    if Percentage>0 then  IsPresent:='Y';

    ksExecSQLVar(cn,'delete from person_presence where fk_person_serial= :Ps and fk_day_serial= :ds',[PersonSerial,DaySerial]);
    ksExecSQLVar(cn,str,[serial,PersonSerial,DaySerial,IsPresent,Percentage,Hours]);

    VPresenceSQL.Next;
  end;

end;


procedure TP_attendanceFRM.BitBtn1Click(Sender: TObject);
begin
  TickAll();
end;

procedure TP_attendanceFRM.Button1Click(Sender: TObject);
var
  daySerial:Integer;
  seminarSerial:Integer;
begin
  VpresenceSQL.close;
  VpresenceSQL.Open;
  SeminarSerial:=DaySQL.FieldByName('SeminarSerial').AsInteger;
  daySerial:=DaySQL.FieldByName('Dayserial').AsInteger;
   UpdatePresenceTable(seminarSerial,daySerial);
end;

procedure TP_attendanceFRM.CanelBTNClick(Sender: TObject);
var
  daySerial:Integer;
  seminarSerial:Integer;
begin
  VpresenceSQL.close;
  VpresenceSQL.Open;
  SeminarSerial:=DaySQL.FieldByName('SeminarSerial').AsInteger;
  daySerial:=DaySQL.FieldByName('Dayserial').AsInteger;
   UpdatePresenceTable(seminarSerial,daySerial);
end;


procedure TP_attendanceFRM.TickALl();
var
  hours:Integer;
begin

  if VPresenceSQL.State in [dsInactive] then
    exit;

  VPresenceSQL.First;
  while not VPresenceSQL.eof do begin
    if VPresenceSQL.State in [dsBrowse] then VPresenceSQL.Edit;
      hours:=daySQL.FieldByName('DURATION_HOURS').AsInteger;
      VPresenceSQL.FieldByName('hours_present').Value:=hours;
      VPresenceSQL.FieldByName('is_present').AsString :='Y';
      VPresenceSQL.Post;
    VPresenceSQL.Next;
  end;
  VpresenceSQL.First;


end;


End.
