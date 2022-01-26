unit M_reminderComplete;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  vcl.wwcheckbox, RzTabs, RzSplit, Vcl.ComCtrls, vcl.wwriched, RzDBEdit;
type
  TM_ReminderCompleteFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    CompanySRC: TDataSource;
    CompanySQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    CompanySQLSERIAL_NUMBER: TIntegerField;
    CompanySQLFK_SEMINAR_SERIAL: TIntegerField;
    CompanySQLDESCRIPTION: TWideStringField;
    CompanySQLREMINDER_MESSAGE: TWideStringField;
    CompanySQLAFTER_OR_BEFORE: TWideStringField;
    CompanySQLPERSON_OR_SEMINAR: TWideStringField;
    CompanySQLSTART_OR_END: TWideStringField;
    CompanySQLDAYS_OR_MONTHS: TWideStringField;
    CompanySQLNUMBER_OF_DAYS_MONTHS: TIntegerField;
    CompanySQLREMINDER_TYPE: TWideStringField;
    CompanySQLIS_COMPLETED: TWideStringField;
    CompanySQLDATE_TARGETED: TDateField;
    CompanySQLDATE_COMPLETED: TDateField;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    SerialFLD: TRzDBLabel;
    Label10: TLabel;
    CompanySQLSEMINAR_NAME: TWideStringField;
    CompanySQLSEMINAR_SERIAL: TIntegerField;
    GroupBox2: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBDateTimePicker5: TwwDBDateTimePicker;
    CompanySQLSEMINAR_DATE_STARTED: TDateField;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
    RzDBLabel3: TRzDBLabel;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    CompletedFLD: TwwCheckBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure CompanySRCStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure CompanySQLNewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CompletedFLDClick(Sender: TObject);
    procedure CompleteBTNClick(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;
    IN_PERSON_Serial:Integer;
    Procedure EditCompany(Const CompanySerial:integer);

  end;

var
  M_ReminderCompleteFRM: TM_ReminderCompleteFRM;

implementation

uses   U_Database, G_generalProcs;


{$R *.DFM}

procedure TM_ReminderCompleteFRM.BitBtn1Click(Sender: TObject);
begin
 if CompanySQL.State in [dsEdit, dsInsert] then begin
         CompanySQL.Post;
 end;

end;

procedure TM_ReminderCompleteFRM.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TM_ReminderCompleteFRM.CompanySQLNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('reminder_type').Value:='S';
  Dataset.FieldByName('PERSON_OR_SEMINAR').Value:='S';
  Dataset.FieldByName('is_completed').Value:='N';

end;

procedure TM_ReminderCompleteFRM.CompanySRCStateChange(Sender: TObject);
begin


  with CompanySQL do begin
     If State<>dsInsert then begin
//         StationIDFLD.Enabled:=false;
     end  else begin
//         StationIDFLD.Enabled:=true;
     end;
  end;//with

end;

procedure TM_ReminderCompleteFRM.CompleteBTNClick(Sender: TObject);
begin
  if CompanySQL.State in [dsBrowse] then CompanySQL.Edit;

  if Completedfld.Checked then
    CompanySQL.FieldByName('date_completed').AsDateTime:=Date
  else
    CompanySQL.FieldByName('date_completed').Clear;

end;

procedure TM_ReminderCompleteFRM.CompletedFLDClick(Sender: TObject);
begin
  if CompanySQL.State in [dsBrowse] then CompanySQL.Edit;

  if Completedfld.Checked then
    CompanySQL.FieldByName('date_completed').AsDateTime:=Date
  else
    CompanySQL.FieldByName('date_completed').Clear;

end;

procedure TM_ReminderCompleteFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TM_ReminderCompleteFRM.FormActivate(Sender: TObject);
begin
ksOpenTables([CompanySQL]);
  if IN_ACTION='INSERT' then begin
    CompanySQL.Insert;
//    FirstFLD.SetFocus;
  end else if IN_ACTION='EDIT' then begin
     EditCompany(IN_PERSON_Serial);
  end;




end;

Procedure TM_ReminderCompleteFRM.EditCompany(Const CompanySerial:integer);
Var
        Dataset:TIBCQuery;
Begin
  Dataset:=CompanySQL;
  with Dataset do begin
    close;
    ParamByName('SerialNumber').value:=CompanySerial;
    Open;
  end;


End;



procedure TM_ReminderCompleteFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if CompanySQL.State in [dsInsert, dsEdit] then
   CompanySQL.Post;
end;

procedure TM_ReminderCompleteFRM.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if CompanySQL.State in [dsEdit,dsInsert] then begin
    COmpanySQL.Post;
  end;
end;

procedure TM_ReminderCompleteFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TM_ReminderCompleteFRM.CanelBTNClick(Sender: TObject);
begin
  CompanySQL.Cancel;
  close;
end;




End.
