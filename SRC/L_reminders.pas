unit L_reminders;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  Vcl.WinXCtrls, vcl.wwcheckbox, Vcl.Menus, RzRadChk;
type
  TL_RemindersFRM = class(TForm)
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
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    RzPanel4: TRzPanel;
    InsertHawbBTN: TRzBitBtn;
    DeletehawbBTN: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    Label2: TLabel;
    ActiveSFLD: TwwDBComboBox;
    EditBTN: TRzBitBtn;
    wwIncrementalSearch1: TwwIncrementalSearch;
    TableSQL: TIBCQuery;
    Grid1: TwwDBGrid;
    CompletedFLD: TwwCheckBox;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    SeminarSQL: TIBCQuery;
    SeminarSQLSERIAL_NUMBER: TIntegerField;
    SeminarSQLFK_SEMINAR: TIntegerField;
    SeminarSQLFK_INSTRUCTOR: TIntegerField;
    SeminarSQLFK_VENUE: TIntegerField;
    SeminarSQLFK_COMPANY_PERSON_SERIAL: TIntegerField;
    SeminarSQLSEMINAR_NAME: TWideStringField;
    SeminarSQLDATE_STARTED: TDateField;
    SeminarSQLDATE_COMPLETED: TDateField;
    SeminarSQLDURATION_DAYS: TIntegerField;
    SeminarSQLDURATION_HOURS: TIntegerField;
    SeminarSQLAMOUNT_ANAD: TFloatField;
    SeminarSQLCOMMENTS: TWideStringField;
    SeminarSQLANAD_APPROVED: TWideStringField;
    SeminarSQLSTATUS: TWideStringField;
    SeminarSQLIS_INVOICED: TWideStringField;
    SeminarSQLIS_CERTIFICATED: TWideStringField;
    SeminarSQLMAX_CAPACITY: TIntegerField;
    SeminarSRC: TDataSource;
    SeminarSFLD: TwwDBLookupCombo;
    Label1: TLabel;
    Label3: TLabel;
    DateSFld: TwwDBComboBox;
    RzBitBtn3: TRzBitBtn;
    MainMenu1: TMainMenu;
    Reports1: TMenuItem;
    N3: TMenuItem;
    CompleteBTN: TRzBitBtn;
    SeminarSQLTYPE_MONO_POLY: TWideStringField;
    HighFLD: TwwCheckBox;
    TableSQLDAYSLEFT: TIntegerField;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLFK_SEMINAR_SERIAL: TIntegerField;
    TableSQLDESCRIPTION: TWideStringField;
    TableSQLREMINDER_MESSAGE: TWideStringField;
    TableSQLAFTER_OR_BEFORE: TWideStringField;
    TableSQLPERSON_OR_SEMINAR: TWideStringField;
    TableSQLSTART_OR_END: TWideStringField;
    TableSQLDAYS_OR_MONTHS: TWideStringField;
    TableSQLNUMBER_OF_DAYS_MONTHS: TIntegerField;
    TableSQLREMINDER_TYPE: TWideStringField;
    TableSQLIS_COMPLETED: TWideStringField;
    TableSQLDATE_TARGETED: TDateField;
    TableSQLDATE_COMPLETED: TDateField;
    TableSQLIS_HIGH: TWideStringField;
    TableSQLSEMINAR_NAME: TWideStringField;
    TableSQLSEMINAR_SERIAL: TIntegerField;
    TableSQLANAD_NUMBER: TWideStringField;
    TableSQLIS_INTERNAL: TWideStringField;
    Label5: TLabel;
    Label6: TLabel;
    isHighFLD: TRzCheckBox;
    IsCompanyFLD: TRzCheckBox;
    procedure BitBtn2Click(Sender: TObject);
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
    procedure TableSQLNewRecord(DataSet: TDataSet);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure ActiveSFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure SeminarSFLDCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure DateSFldCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure EditBTNClick(Sender: TObject);
    procedure TableSQLCalcFields(DataSet: TDataSet);
    procedure DateRefFLDCloseUp(Sender: TObject);
    procedure CompleteBTNClick(Sender: TObject);
    procedure HighFLDClick(Sender: TObject);
    procedure IsHighFLDClick(Sender: TObject);
    procedure cb1Click(Sender: TObject);
    procedure IsCompanyFLDClick(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
    procedure DisplayFilter;
    procedure EditCompany();
    procedure CompleteTask();
    procedure DeleteCompany();
  procedure  InsertCompany();
  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;

  end;

var
  L_RemindersFRM: TL_RemindersFRM;

implementation

uses   U_Database, G_generalProcs, R_Reminders, M_reminder, M_reminderComplete;


{$R *.DFM}

procedure TL_RemindersFRM.ActiveSFLDCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin
DisplayFIlter();

end;

procedure TL_RemindersFRM.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TL_RemindersFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TL_RemindersFRM.TableSQLCalcFields(DataSet: TDataSet);
var
  days:integer;
begin
  Days:= Trunc(Dataset.FieldByName('date_targeted').AsDateTime - Date);
  Dataset.FieldByName('daysLeft').AsInteger:=days;
end;

procedure TL_RemindersFRM.TableSQLNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('reminder_type').Value:='S';
  Dataset.FieldByName('PERSON_OR_SEMINAR').Value:='S';
  Dataset.FieldByName('is_completed').Value:='N';

end;

procedure TL_RemindersFRM.TableSRCStateChange(Sender: TObject);
begin


  with TableSQL do begin
     If State<>dsInsert then begin
//         StationIDFLD.Enabled:=false;
     end  else begin
//         StationIDFLD.Enabled:=true;
     end;
  end;//with

end;

procedure TL_RemindersFRM.IsCompanyFLDClick(Sender: TObject);
begin
DisplayFilter();
end;

procedure TL_RemindersFRM.IsHighFLDClick(Sender: TObject);
begin
//ShowMessage(isHighFLD.Caption);
end;

procedure TL_RemindersFRM.HighFLDClick(Sender: TObject);
begin
  if HighFLD.Checked then
    HighFld.Color:=clRed
  else
    highFLD.Color:=clBtnFace;
end;

procedure TL_RemindersFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TL_RemindersFRM.CompleteBTNClick(Sender: TObject);
begin
  CompleteTask();
  DisplayFilter();
end;

procedure TL_RemindersFRM.EditBTNClick(Sender: TObject);
begin
  EditCompany();
  DisplayFilter();
end;

procedure TL_RemindersFRM.RzBitBtn3Click(Sender: TObject);
begin
DisplayFilter();

end;

procedure TL_RemindersFRM.cb1Click(Sender: TObject);
begin
DisplayFilter();
end;

procedure TL_RemindersFRM.SeminarSFLDCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
DisplayFIlter();
end;

procedure TL_RemindersFRM.DisplayFilter;
var
  SeminarSerial:Integer;
begin
TableSQL.Close;
TableSQL.RestoreSQL;
//index:=sender.ItemIndex;
  if ActiveSFld.ItemIndex=0 then begin
      TableSQL.AddWhere('is_completed = ''N'' ');
  end else if ActiveSFLD.ItemIndex=1 then begin
      TableSQL.AddWhere('is_completed = ''Y'' ');
  end;


  if DateSFld.ItemIndex=0 then begin
      TableSQL.AddWhere('Date_targeted is not null');
  end else if DateSFld.ItemIndex=1 then begin
      TableSQL.AddWhere('Date_targeted is  null');
  end;

  seminarSerial:= SeminarSFLD.lookupTable.FieldByName('serial_number').AsInteger;
  if (Trim(SeminarSFLD.text)>'') and  (SeminarSerial >0)  then begin
    TableSQL.AddWhere('fk_seminar_serial = :seminarSerial');
  end;

  if TableSQL.FindParam('SeminarSerial')<>nil then begin
    TableSQL.ParamByName('seminarSerial').Value:=SeminarSerial;
  end;
  TableSQL.ParamByName('theDate').AsDate:= Date;


  if IsHighFLD.State = cbChecked then begin
      TableSQL.AddWhere('is_High = ''Y'' ');
  end;

  if IsCompanyFLD.State = cbChecked then begin
      TableSQL.AddWhere('is_internal = ''Y'' ');
  end;

  TableSQL.Open;


end;

procedure TL_RemindersFRM.TableSQLAfterInsert(DataSet: TDataSet);
begin
//      StationIDFLD.SetFocus;

end;


procedure TL_RemindersFRM.FormActivate(Sender: TObject);
begin
  ksOpenTables([SeminarSQL]);
  SeminarSFld.Clear;
  DisplayFilter;
end;

procedure TL_RemindersFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TL_RemindersFRM.Grid1DblClick(Sender: TObject);
begin
  EditCompany();
end;

procedure TL_RemindersFRM.EditCompany();
vAR
  serial:Integer;
  Frm:TM_reminderFRM;
begin

  SERIAL:=TableSQL.FieldByName('serial_number').AsInteger;
  if serial<1 then exit;

  frm :=  TM_reminderFRM.Create(nil);
  frm.IN_ACTION :='EDIT';
  frm.IN_PERSON_Serial:=Serial;
  try
    frm.ShowModal;
    ksOpenTables([TableSQL]);
  finally
    frm.Free;
  end;


end;

procedure TL_RemindersFRM.COmpleteTask();
vAR
  serial:Integer;
  Frm:TM_ReminderCompleteFRM;
begin

  SERIAL:=TableSQL.FieldByName('serial_number').AsInteger;
  if serial<1 then exit;

  frm :=  TM_ReminderCompleteFRM.Create(nil);
  frm.IN_ACTION :='EDIT';
  frm.IN_PERSON_Serial:=Serial;
  try
    frm.ShowModal;
    ksOpenTables([TableSQL]);
  finally
    frm.Free;
  end;


end;



procedure TL_RemindersFRM.DateRefFLDCloseUp(Sender: TObject);
begin
DisplayFIlter();

end;

procedure TL_RemindersFRM.DateSFldCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin
DisplayFIlter();

end;

procedure TL_RemindersFRM.DeleteCompany();
vAR
  serial:Integer;

begin

  SERIAL:=TableSQL.FieldByName('serial_number').AsInteger;
  if serial<1 then exit;
  ksExecSQLVar(cn,'delete from person where serial_number= :serial',[serial]);
  ksOpenTables([TableSQL])


end;



procedure TL_RemindersFRM.Grid1TitleButtonClick(Sender: TObject;
  AFieldName: string);
  var
         sortInfoHawb:TSOrtInfo;
         Table:TIBCQuery;


  begin
        Table:=TIbcQuery(Grid1.DataSource.DataSet);
        SortInfoHawb.Table:=Table;
        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawb);

end;

procedure TL_RemindersFRM.InsertHawbBTNClick(Sender: TObject);
begin
  InsertCompany();
  ksOpenTables([TableSQL]);
end;


procedure TL_RemindersFRM.InsertCompany();
vAR

  Frm:TM_reminderFRM;
begin

  frm := TM_reminderFRM.Create(nil);
  frm.IN_ACTION :='INSERT';
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;

end;


procedure TL_RemindersFRM.N3Click(Sender: TObject);
vAR
  Frm:TR_remindersFRM;
  seminarSerial:Integer;


begin
  seminarSerial:=SeminarSQL.FieldByName('serial_number').AsInteger;
  if Trim(SeminarSFLD.Text)='' then
    SeminarSerial:=0;

  frm :=  TR_remindersFRM.Create(nil);
  frm.IN_seminarSerial :=seminarSerial;
  frm.IN_DateRef := Date;
  frm.IN_SQL:=TableSQL.FinalSQL;

  try
    frm.PrintTheSeminar();
  finally
    frm.Free;
  end;
end;

procedure TL_RemindersFRM.Nav1InsertClick(Sender: TObject);
begin
  InsertCompany();
  ksOpenTables([TableSQL]);

  abort;
end;

procedure TL_RemindersFRM.CanelBTNClick(Sender: TObject);
begin
TableSQL.Cancel;
close;
end;

procedure TL_RemindersFRM.DeletehawbBTNClick(Sender: TObject);
begin
DeleteCompany();
end;

End.
