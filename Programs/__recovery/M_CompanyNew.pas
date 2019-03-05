unit M_CompanyNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  vcl.wwcheckbox, RzTabs, RzSplit, Vcl.ComCtrls;
type
  TM_companyNewFRM = class(TForm)
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
    IncludedPersonsSQL: TIBCQuery;
    IncludedPersonsSRC: TDataSource;
    ExcludedPersonsSQL: TIBCQuery;
    ExcludedPersonsSRC: TDataSource;
    PageControlPC: TPageControl;
    InfoTS: TTabSheet;
    EmployeesTS: TTabSheet;
    RzPanel4: TRzPanel;
    RzPanel5: TRzPanel;
    DetailsGRP: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    SerialFLD: TRzDBLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label28: TLabel;
    FirstFLD: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    DatePassedFLD: TwwDBDateTimePicker;
    wwDBEdit13: TwwDBEdit;
    wwDBEdit22: TwwDBEdit;
    ConactGRP: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    wwDBEdit16: TwwDBEdit;
    ContactPersonGRP: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    wwDBEdit17: TwwDBEdit;
    wwDBEdit18: TwwDBEdit;
    wwDBEdit19: TwwDBEdit;
    wwDBEdit20: TwwDBEdit;
    wwDBEdit21: TwwDBEdit;
    RzGroupBox1: TRzGroupBox;
    RzSizePanel1: TRzSizePanel;
    Grid1: TwwDBGrid;
    RzPanel3: TRzPanel;
    RzPanel2: TRzPanel;
    ToLeftBTN: TBitBtn;
    ToRightBTN: TBitBtn;
    RzGroupBox2: TRzGroupBox;
    AllPersonsGRD: TwwDBGrid;
    RzSizePanel2: TRzSizePanel;
    PersonSearchFLD: TwwIncrementalSearch;
    AddressGRP: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    wwDBEdit25: TwwDBEdit;
    wwDBEdit26: TwwDBEdit;
    wwDBEdit27: TwwDBEdit;
    wwDBEdit28: TwwDBEdit;
    wwCheckBox1: TwwCheckBox;
    RzDBLabel1: TRzDBLabel;
    IncludedPersonsSQLSERIAL_NUMBER: TIntegerField;
    IncludedPersonsSQLFIRST_NAME: TWideStringField;
    IncludedPersonsSQLLAST_NAME: TWideStringField;
    IncludedPersonsSQLNATIONAL_ID: TWideStringField;
    IncludedPersonsSQLPHONE_MOBILE: TWideStringField;
    IncludedPersonsSQLCOMP_NAME: TWideStringField;
    IncludedPersonsSQLCOMP_SERIAL: TIntegerField;
    IncludedPersonsSQLCOMP_REG: TWideStringField;
    ExcludedPersonsSQLSERIAL_NUMBER: TIntegerField;
    ExcludedPersonsSQLLAST_NAME: TWideStringField;
    ExcludedPersonsSQLFIRST_NAME: TWideStringField;
    ExcludedPersonsSQLNATIONAL_ID: TWideStringField;
    ExcludedPersonsSQLPHONE_MOBILE: TWideStringField;
    Label7: TLabel;
    wwDBEdit4: TwwDBEdit;
    CompanySQLSERIAL_NUMBER: TIntegerField;
    CompanySQLSERIAL_QB: TIntegerField;
    CompanySQLFK_COMPANY_SERIAL: TIntegerField;
    CompanySQLNATIONAL_ID: TWideStringField;
    CompanySQLNICKNAME: TWideStringField;
    CompanySQLOCCUPATION: TWideStringField;
    CompanySQLPHONE_MOBILE: TWideStringField;
    CompanySQLPHONE_FIXED: TWideStringField;
    CompanySQLPHONE_ALTERNATE: TWideStringField;
    CompanySQLFAX: TWideStringField;
    CompanySQLEMAIL: TWideStringField;
    CompanySQLEMAIL_2: TSmallintField;
    CompanySQLADDRESS: TWideStringField;
    CompanySQLADDRESS_STREET: TWideStringField;
    CompanySQLDATE_STARTED: TDateField;
    CompanySQLDATE_BIRTH: TDateField;
    CompanySQLDATE_USER: TDateField;
    CompanySQLLIST_SOURCE: TWideStringField;
    CompanySQLFACEBOOK: TWideStringField;
    CompanySQLWEBSITE: TWideStringField;
    CompanySQLTWITTER: TWideStringField;
    CompanySQLSTATUS_ACTIVE: TWideStringField;
    CompanySQLSEX: TWideStringField;
    CompanySQLIS_COMPANY: TWideStringField;
    CompanySQLCOMPANY_OWNER: TWideStringField;
    CompanySQLCOMPANY_CONTACT: TWideStringField;
    CompanySQLCOMPANY_REGISTRATION_DATE: TDateField;
    CompanySQLPHONE_CONTACT: TWideStringField;
    CompanySQLCOMPANY_OWNER_REG: TWideStringField;
    CompanySQLCOMPANY_CONTACT_PHONE: TWideStringField;
    CompanySQLCOMPANY_CONTACT_EMAIL: TWideStringField;
    CompanySQLCOMPANY_CONTACT_FAX: TWideStringField;
    CompanySQLCOMPANY_SOCIAL_SEC: TWideStringField;
    CompanySQLCOMPANY_EMPLOYEES: TIntegerField;
    CompanySQLPHONE_MOBILE_2: TWideStringField;
    CompanySQLLINKED_IN: TWideStringField;
    CompanySQLJOB: TWideStringField;
    CompanySQLIS_SAFE_COMPANY: TWideStringField;
    CompanySQLCOMPANY_OWNER_ID: TWideStringField;
    CompanySQLU_LAST_NAME: TWideStringField;
    CompanySQLU_FIRST_NAME: TWideStringField;
    CompanySQLU_COMPANY_CONTACT_FIRST: TWideStringField;
    CompanySQLU_COMPANY_CONTACT_LAST: TWideStringField;
    CompanySQLLAST_NAME: TWideStringField;
    CompanySQLFIRST_NAME: TWideStringField;
    CompanySQLCOMPANY_CONTACT_LAST: TWideStringField;
    CompanySQLCOMPANY_CONTACT_FIRST: TWideStringField;
    SafeFLD: TwwCheckBox;
    CompanySQLADDRESS_POST_CODE: TWideStringField;
    CompanySQLADDRESS_CITY: TWideStringField;
    CompanySQLADDRESS_DISTRICT_WIN1253: TWideStringField;
    CompanySQLADDRESS_CITY_WIN1253: TWideStringField;
    CompanySQLADDRESS_DISTRICT: TWideStringField;
    OwnerGRP: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit14: TwwDBEdit;
    wwDBEdit15: TwwDBEdit;
    CompanySQLCOMPANY_CONTACT_ID: TWideStringField;
    CompanySQLCOMPANY_CONTACT_POSITION: TWideStringField;
    CompanySQLCOMPANY_OWNER_PHONE: TWideStringField;
    CompanySQLCOMPANY_OWNER_FAX: TWideStringField;
    CompanySQLCOMPANY_OWNER_EMAIL: TWideStringField;
    Label6: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label5: TLabel;
    wwDBEdit1: TwwDBEdit;
    ManagerGRP: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit23: TwwDBEdit;
    wwDBEdit24: TwwDBEdit;
    wwDBEdit29: TwwDBEdit;
    wwDBEdit30: TwwDBEdit;
    wwDBEdit31: TwwDBEdit;
    CompanySQLCOMPANY_MANAGER_FIRST: TWideStringField;
    CompanySQLCOMPANY_MANAGER_LAST: TWideStringField;
    CompanySQLCOMPANY_MANAGER_PHONE: TWideStringField;
    CompanySQLCOMPANY_MANAGER_EMAIL: TWideStringField;
    CompanySQLCOMPANY_MANAGER_FAX: TWideStringField;
    CompanySQLCOMPANY_MANAGER_POSITION: TWideStringField;
    CompanySQLCOMPANY_MANAGER_ID: TWideStringField;
    CompanySQLCOMPANY_MAIN_ACTIVITY: TWideStringField;
    wwDBEdit32: TwwDBEdit;
    Label36: TLabel;
    Label37: TLabel;
    wwDBEdit33: TwwDBEdit;
    Label38: TLabel;
    wwDBEdit34: TwwDBEdit;
    ExcludedPersonsSQLFK_COMPANY_SERIAL: TIntegerField;
    ExcludedPersonsSQLIS_COMPANY: TWideStringField;
    ExcludedPersonsSQLCOMPANY_NAME: TWideStringField;
    ExcludedPersonsSQLCOMPANY_SERIAL: TIntegerField;
    Label39: TLabel;
    wwIncrementalSearch1: TwwIncrementalSearch;
    Label40: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Nav1InsertClick(Sender: TObject);
    procedure Grid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure CompanySQLNewRecord(DataSet: TDataSet);
    procedure ToRightBTNClick(Sender: TObject);
    procedure ToLeftBTNClick(Sender: TObject);
    procedure AllPersonsGRDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PersonSearchFLDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EmployeesTSShow(Sender: TObject);
    procedure PageControlPCChanging(Sender: TObject; var AllowChange: Boolean);
    procedure InfoTSShow(Sender: TObject);
    procedure SafeFLDClick(Sender: TObject);
    procedure Grid1DblClick(Sender: TObject);
    procedure AllPersonsGRDDblClick(Sender: TObject);
    procedure AllPersonsGRDTitleButtonClick(Sender: TObject;
      AFieldName: string);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;
    IN_company_Serial:Integer;
    Procedure EditCompany(Const CompanySerial:integer);
  procedure RemovePerson();
  procedure InsertPerson();

  end;

var
  M_companyNewFRM: TM_companyNewFRM;

implementation

uses   U_Database, G_generalProcs, M_Student;


{$R *.DFM}

procedure TM_companyNewFRM.AllPersonsGRDDblClick(Sender: TObject);
vAR
  Frm:TM_StudentFRM;
  studentSerial:Integer;
begin
  studentSerial:=(sender as twwdbgrid).DataSource.DataSet.FieldByName('serial_number').AsInteger;
  if studentSerial<1 then
    exit;
  frm := TM_StudentFRM.Create(nil);
  try
    frm.IN_ACTION:='EDIT';
    frm.IN_studentSerial:= studentSerial;
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TM_companyNewFRM.AllPersonsGRDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_RETURN then
  InsertPerson();
end;

procedure TM_companyNewFRM.AllPersonsGRDTitleButtonClick(Sender: TObject;
  AFieldName: string);
var
         sortInfoHawb:TSOrtInfo;
         Table:TIBCQuery;


  begin
        Table:=TIbcQuery(AllPersonsGRD.DataSource.DataSet);
        SortInfoHawb.Table:=Table;
        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawb);

end;

procedure TM_companyNewFRM.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TM_companyNewFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TM_companyNewFRM.ToLeftBTNClick(Sender: TObject);
begin
InsertPerson();
end;

procedure TM_companyNewFRM.ToRightBTNClick(Sender: TObject);
begin
RemovePerson();
end;

procedure TM_companyNewFRM.SafeFLDClick(Sender: TObject);
var
  PersonSerial:integer;
  IsSafe:String;
  box:TwwDBCustomCheckBox;
  str:string;
begin
  box:=TwwDBCustomCheckBox(sender);
  if not box.Modified then    exit;
  if box.Checked then begin
    personSerial:=box.DataSource.DataSet.FieldByName('serial_number').AsInteger;
    str:='update person per set per.is_safe_company= :No where per.serial_number <> :PersonSerial';
    ksExecSQLVar(cn,str,['N', PersonSerial])
  end else begin
  end


end;

procedure TM_companyNewFRM.CompanySQLNewRecord(DataSet: TDataSet);
begin
Dataset.FieldByName('status_active').Value:='Y';
Dataset.FieldByName('is_company').Value:='Y';
Dataset.FieldByName('SEX').Value:='M';
Dataset.FieldByName('serial_QB').Value:=Dataset.FieldByName('serial_number').AsInteger;

end;

procedure TM_companyNewFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TM_companyNewFRM.FormActivate(Sender: TObject);
begin
ksOpenTables([CompanySQL]);
  if IN_ACTION='INSERT' then begin
    CompanySQL.Insert;
  end else if IN_ACTION='EDIT' then begin
     EditCompany(IN_Company_Serial);
  end;

//PageControlPC.ActivePageIndex:=0;
PageControlPC.ActivePageIndex:=0;



end;

Procedure TM_companyNewFRM.EditCompany(Const CompanySerial:integer);
Var
        Dataset:TIBCQuery;
Begin
  Dataset:=CompanySQL;
  with Dataset do begin
    close;
    ParamByName('CompanySerial').value:=CompanySerial;
    Open;
  end;

  if FirstFLD.CanFocus then
  firstFLD.SetFocus;

End;



procedure TM_companyNewFRM.EmployeesTSShow(Sender: TObject);
begin
  IncludedPersonsSQL.Close;
  IncludedPersonsSQL.ParamByName('CompanySerial').Value:=CompanySQL.FieldByName('serial_number').AsInteger;
  IncludedPersonsSQL.Open;

  ExcludedPersonsSQL.Close;
//  ExcludedPersonsSQL.ParamByName('CompanySerial').Value:=CompanySQL.FieldByName('serial_number').AsInteger;
  ExcludedPersonsSQL.Open;


end;

procedure TM_companyNewFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if CompanySQL.State in [dsInsert, dsEdit] then
   CompanySQL.Post;
end;

procedure TM_companyNewFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TM_companyNewFRM.Grid1DblClick(Sender: TObject);
vAR
  Frm:TM_StudentFRM;
  studentSerial:Integer;
begin
  studentSerial:=(sender as twwdbgrid).DataSource.DataSet.FieldByName('serial_number').AsInteger;
  if studentSerial<1 then
    exit;
  frm := TM_StudentFRM.Create(nil);
  try
    frm.IN_ACTION:='EDIT';
    frm.IN_studentSerial:= studentSerial;
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TM_companyNewFRM.Grid1TitleButtonClick(Sender: TObject;
  AFieldName: string);
var
         sortInfoHawb:TSOrtInfo;
         Table:TIBCQuery;


  begin
        Table:=TIbcQuery(Grid1.DataSource.DataSet);
        SortInfoHawb.Table:=Table;
        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawb);

end;


procedure TM_companyNewFRM.Nav1InsertClick(Sender: TObject);
begin
  FirstFLD.SetFocus;
end;


procedure TM_companyNewFRM.PageControlPCChanging(Sender: TObject;
  var AllowChange: Boolean);
begin

  allowChange:=true;
  try
    If CompanySQL.State in [dsEdit,dsInsert] then
      CompanySQL.Post;
  except
    On E : Exception do begin
        ShowMessage(E.Message);
      AllowChange:=false;
    end;

  end;

End;

procedure TM_companyNewFRM.PersonSearchFLDKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key=VK_RETURN then
  InsertPerson()
else if key=VK_DOWN  then
  AllPersonsGRD.SetFocus;

end;

procedure TM_companyNewFRM.CanelBTNClick(Sender: TObject);
begin
CompanySQL.Cancel;
close;
end;


procedure TM_companyNewFRM.RemovePerson();
var
  qr:TksQuery;
  Personserial:Integer;
  CompanySerial:Integer;
  str:string;
begin
  PersonSerial:=IncludedPersonsSQL.FieldByName('serial_number').AsInteger;
  if (Personserial<1) then exit;
  str:='update person set fk_company_serial = null where serial_number = :PersonSerial';
  ksExecSQLVar(cn,str,[Personserial]);

  IncludedPersonsSQL.Refresh;
  excludedPersonsSQL.Refresh;
end;

procedure TM_companyNewFRM.InfoTSShow(Sender: TObject);
begin
FIrstFLD.SetFocus;
end;

procedure TM_companyNewFRM.InsertPerson();
var
  qr:TksQuery;
  Personserial:Integer;
  CompanySerial:Integer;
  ExistingCompany:Integer;

  str:string;
begin
  PersonSerial:=ExcludedPersonsSQL.FieldByName('serial_number').AsInteger;
  ExistingCompany:=ExcludedPersonsSQL.FieldByName('Fk_company_serial').AsInteger;
  If ExistingCompany>0 then begin
    ShowMessage('Already assigned to a Company');
    exit;
  end;


  CompanySerial:=companySQL.FieldByName('serial_number').AsInteger;

  if Personserial<1 then exit;
  str:='update person set fk_company_serial = :company_serial where serial_number= :PersonSerial';
  ksExecSQLVar(cn,str,[CompanySerial,Personserial]);

  IncludedPersonsSQL.Refresh;
  excludedPersonsSQL.Refresh;
  PersonSearchFLD.Clear;


end;



End.
