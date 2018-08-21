unit I_certificates;

interface

uses
  Windows, Messages, SysUtils,Math, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  RzPopups, vcl.wwcheckbox, vcl.wwDialog, vcl.wwIDlg, vcl.wwmonthcalendar,
  vcl.wwlocate, VirtualTable, Vcl.Menus, Vcl.ComCtrls, vcl.wwriched,
  vcl.wwclearbuttongroup, vcl.wwradiogroup;
type

  THoursRec= REcord
    SubjectSerial:Integer;
    Hours:integer;
    maxdate:Tdate;
    isPresent:boolean;
  End;
  TI_CertificatesFRM = class(TForm)
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
    PanelX: TRzPanel;
    RzPanel3: TRzPanel;
    FirstGRP: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    SerialFLD: TRzDBLabel;
    Label5: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    Label1: TLabel;
    TableSRC: TIBCDataSource;
    RzPanel2: TRzPanel;
    RzPanel4: TRzPanel;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
    RzPanel5: TRzPanel;
    RzPanel6: TRzPanel;
    SavePresBTN: TBitBtn;
    CanelBTN: TBitBtn;
    CertificateSRC: TIBCDataSource;
    wwDBNavigator2: TwwDBNavigator;
    Nav1Button: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    Nav1Delete: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1Cancel: TwwNavButton;
    CertificatesBTN: TRzBitBtn;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLFK_SEMINAR: TIntegerField;
    TableSQLSEMINAR_NAME: TWideStringField;
    TableSQLFK_INSTRUCTOR: TIntegerField;
    TableSQLFK_VENUE: TIntegerField;
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
    personSQL: TIBCQuery;
    personSQLFIRST_NAME: TWideStringField;
    personSQLLAST_NAME: TWideStringField;
    personSQLSERIAL_NUMBER: TIntegerField;
    TableSQLFK_COMPANY_PERSON_SERIAL: TIntegerField;
    Companylbl: TLabel;
    TableSQLLAST_NAME: TWideStringField;
    RzDBLabel3: TRzDBLabel;
    Read1: TIBCTransaction;
    write1: TIBCTransaction;
    wwDBGrid1: TwwDBGrid;
    CertificateSQL: TIBCQuery;
    CertificateSQLSERIAL_NUMBER: TIntegerField;
    CertificateSQLFK_SEMINAR_SERIAL: TIntegerField;
    CertificateSQLFK_PERSON_SERIAL: TIntegerField;
    CertificateSQLDATE_ISSUED: TDateField;
    CertificateSQLHOURS_COMPLETED: TIntegerField;
    CertificateSQLPERCENTAGE_COMPLETED: TIntegerField;
    CertificateSQLIS_VALID: TWideStringField;
    CertificateSQLLAST_NAME: TWideStringField;
    CertificateSQLFIRST_NAME: TWideStringField;
    CertificateSQLNATIONAL_ID: TWideStringField;
    CertificateSQLSEMINAR_SUBJECT: TWideStringField;
    CertificateSQLSEMINAR_DURATION: TIntegerField;
    CertificateSQLINSTRUCTOR_NAME: TWideStringField;
    CertificateSQLINSTRUCTOR_JOB_TITLE: TWideStringField;
    CertificateSQLHAS_ANOTHER_DATE: TWideStringField;
    MainMenu1: TMainMenu;
    Reports1: TMenuItem;
    TableSQLANAD_NUMBER: TWideStringField;
    TableSQLHAS_EXPIRY: TWideStringField;
    TableSQLEXPIRY_PERIOD: TIntegerField;
    TableSQLFK_EXAMINER: TIntegerField;
    TableSQLTYPE_MONO_POLY: TWideStringField;
    CertificateSQLSUBJECT_HOURS: TIntegerField;
    CertificateSQLSEMINAR_CERTIFICATE: TWideStringField;
    CertificateSQLSEX: TWideStringField;
    CertificateSQLANAD_NUMBER: TWideStringField;
    Label9: TLabel;
    RzDBLabel4: TRzDBLabel;
    RzDBLabel5: TRzDBLabel;
    TableSQLSEM_CATEGORY: TWideStringField;
    CertificateSQLDATE_CREATED: TDateField;
    N1: TMenuItem;
    MainHelpRE: TwwDBRichEdit;
    Help1: TMenuItem;
    N2: TMenuItem;
    TableSQLSERIAL_QB: TIntegerField;
    Label6: TLabel;
    RzDBLabel6: TRzDBLabel;
    TableSQLPASS_PERCENTAGE: TIntegerField;
    CertificateSQLSERIAL_MANUAL: TIntegerField;
    PrintOneBTN: TRzBitBtn;
    PrintAllBTN: TRzBitBtn;
    LanguageRGP: TwwRadioGroup;
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure DateFLDClick(Sender: TObject);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure SavePresBTNClick(Sender: TObject);
    procedure CertificatesBTNClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CanelBTNClick(Sender: TObject);
    procedure InvoiceSQLBeforePost(DataSet: TDataSet);
    procedure InvoiceGRDCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure PrintOneBTNClick(Sender: TObject);
    procedure PrintAllBTNClick(Sender: TObject);
  private
    { Private declarations }
    VatRate:Double;
    cn:TIBCConnection;
    procedure GetInvoices();
    procedure GenerateCertificates(Const SeminarSerial:integer);
  Function NewFindGuestHours(Const SubjectSerial,subjectTypeSerial, PersonSerial:Integer):THoursRec;
  Function IsOneDayEmpty(Const SeminarSerial:Integer):Boolean;

  public
    { Public declarations }
    IN_ACTION:String;
    IN_seminar_serial:Integer;

  end;

var
  I_CertificatesFRM: TI_CertificatesFRM;

implementation

uses   U_Database, G_generalProcs, R_Certificate, G_SFCommonProcs,
  r_certificateDates, H_Help;


{$R *.DFM}

procedure TI_CertificatesFRM.GetInvoices();
var
  SEminarSerial:Integer;
begin

  SEminarSerial := TableSQL.FieldByName('serial_number').AsInteger;
  if personSQL.Active then
    personSQL.Close;
  personSQL.ParamByName('SeminarSerial').Value:=seminarSerial;
  personSQL.Open;

  if CertificateSQL.Active then
    CertificateSQL.Close;
  CertificateSQL.ParamByName('SeminarSerial').Value:=seminarSerial;
  CertificateSQL.Open;


end;

procedure TI_CertificatesFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TI_CertificatesFRM.InvoiceGRDCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if (field.FieldName='AMOUNT_VAT')OR (field.FieldName='AMOUNT_WITH_VAT') then begin
    Abrush.Color:=clBtnFace;
  end;
end;

procedure TI_CertificatesFRM.InvoiceSQLBeforePost(DataSet: TDataSet);
Var
  vatAMount,AmountForVat:Double;
  Gross,DiscountCust,DiscountSafe:Double;
  AmountCharged:DOuble;
begin

//  AmountForVat:=Dataset.FieldByName('amount_gross').AsFloat -Dataset.FieldByName('Discount_customer').AsFloat;
//  VatAmount:=AmountForVat *Dataset.FieldByName('vat_rate').AsFloat/100.00;
//  AmountCharged:= AmountForVat -Dataset.FieldByName('Discount_by_safe').AsFloat + VAtAmount;
//
//  VatAmount:=Max(0,VatAmount);
//  AmountCharged:=Max(0,AmountCharged);
//  Dataset.FieldByName('amount_vat').Value:=VatAmount;
  Dataset.FieldByName('hours_completed').Value:=444;
//

end;

procedure TI_CertificatesFRM.N1Click(Sender: TObject);
vAR
  Frm:TR_CertificateDatesFRM;
  seminarSerial:Integer;

begin

  seminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;

  frm :=  TR_CertificateDatesFRM.Create(nil);
  frm.IN_SeminarSerial :=seminarSerial;
  try
    frm.PrintTheSeminar;
  finally
    frm.Free;
  end;
end;

procedure TI_CertificatesFRM.N2Click(Sender: TObject);
vAR
  Frm:TH_HelpFRM;
begin
  frm := TH_HelpFRM.Create(nil);
  try
    frm.IN_RichEdit:=MainHelpRE;
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TI_CertificatesFRM.wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
getInvoices();
end;

procedure TI_CertificatesFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TI_CertificatesFRM.DateFLDClick(Sender: TObject);
var
  aDate:TDate;
begin

end;

procedure TI_CertificatesFRM.FormActivate(Sender: TObject);
var
  params:G_generalProcs.TParameterRecord;
begin
//  ksOpenTables([TableSQL]);

//  DateFLD.Date :=Date;
 personSQL.Close;
 personSQL.ParamByName('seminarSerial').Value:=IN_seminar_serial;
 personSQL.Open;


  TableSQL.Close;
  TableSQL.ParamByName('seminarSerial').Value:= IN_seminar_serial;
  TableSQL.open;

//  if not CertificateSQL.UpdateTransaction.Active then
//   CertificateSQL.UpdateTransaction.StartTransaction;

  CertificateSQL.Close;
  CertificateSQL.ParamByName('seminarSerial').Value:= IN_seminar_serial;
  CertificateSQL.open;
//    if not CertificateSQL.UpdateTransaction.Active then
//      CertificateSQL.UpdateTransaction.StartTransaction;
//
//CertificateSQL.Close;
//CertificateSQL.ParamByName('seminarSerial').Value:= IN_seminar_serial;
//CertificateSQL.open;


end;

procedure TI_CertificatesFRM.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  Canclose:= not CertificateSQL.UpdatesPending;
  if not CanClose then
    showMessage('Save Or Cancel before Exit');
end;

procedure TI_CertificatesFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;



procedure TI_CertificatesFRM.SavePresBTNClick(Sender: TObject);
VAR
  dataset:TIBCQuery;
  str:String;
begin

  if CertificateSQL.State in [dsEdit,dsInsert] then begin
    CertificateSQL.Post;
  end;

//  if not CertificateSQL.UpdatesPending then begin
//   showMessage('no updates');
//   exit;
//  end;
//
//  if not CertificateSQL.UpdateTransaction.Active then
//    CertificateSQL.UpdateTransaction.StartTransaction;
//
//  try
//    CertificateSQL.ApplyUpdates;
//    CertificateSQL.UpdateTransaction.commit;
//  except
//    CertificateSQL.UpdateTransaction.Rollback;
//    CertificateSQL.RestoreUpdates;
//    raise;
//  end;



end;


procedure TI_CertificatesFRM.CertificatesBTNClick(Sender: TObject);
var
  SeminarSerial:Integer;
  SeminarStatus:string;
begin

  SeminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;

  SeminarStatus:=TableSQL.FieldByName('status').AsString;

  if SeminarStatus<>'F' then begin
    MessageDlg('Δεν εκδίδονται πιστοιητικά γιατί το σεμινάριο δεν έχει γίνει ''COMPLETED'' ', mtWarning, [mbOK], 0);
    abort;
  end;

  if IsOneDayEmpty(SeminarSerial) then begin
    MessageDlg('Δεν υπάρχουν Παρουσίες για μια ΟΛΟΚΛΗΡΗ ΜΕΡΑ', mtWarning, [mbOK], 0);
    abort;
  end;

    GenerateCertificates(seminarSerial);
    ksOpenTables([CertificateSQL]);
//    exit;

//    if  CertificateSQL.UpdateTransaction.Active then begin
//      ShowMessage('save or Cancel First');
//      exit;
//    end;

//    if not CertificateSQL.UpdateTransaction.Active then
//      CertificateSQL.UpdateTransaction.StartTransaction;

//    CertificateSQL.Close;


    personSQL.Close;
    personSQL.ParamByName('seminarSerial').Value:=SeminarSErial;
    personSQL.Open;


//  GenerateInvoices(seminarSerial);

//  if CertificateSQL.UpdateTransaction.Active then
//      CertificateSQL.UpdateTransaction.commit;

end;

procedure TI_CertificatesFRM.CanelBTNClick(Sender: TObject);
begin


  CertificateSQL.Cancel;
  if  CertificateSQL.UpdatesPending then begin
//    CertificateSQL.CancelUpdates;
//    if CertificateSQL.Connection.InTransaction then  NO NEED FOR THIS
//      CertificateSQL.Connection.Rollback;

  end;

end;


Function TI_CertificatesFRM.IsOneDayEmpty(Const SeminarSerial:Integer):Boolean;
var
  str:string;
  qr:TksQuery;

begin
str:=
  ' select sd.dayserial,sd.seminar_day, coalesce(dd.Day_hours,0) as total_hours'
  +'  from seminar_day_view sd'
  +'  left outer join'
  +'  ('
  +'      select spv.day_serial, sum(spv.present_hours) as Day_hours'
  +'      from person_presence_view spv'
  +'      group by'
  +'      spv.day_serial'
  +'  )dd on sd.dayserial= dd.day_serial'
  +'   where sd.seminar_serial= :seminarSerial'
  +'  and ((dd.Day_hours =0) or (dd.day_hours is null))';



  qr:= TksQuery.Create(cn,str);
  try
    qr.ParamByName('seminarSerial').value:=SeminarSerial;
    qr.open;
    result:= (not qr.IsEmpty);
//    result:= qr.FieldByName('Total_hours').AsInteger=0;
  finally
    qr.Free;
  end;

end;



procedure TI_CertificatesFRM.GenerateCertificates(Const SeminarSerial:integer);
type
  Tperson=record
    FirstName:String;
    LastName:String;
    NationalId:string;
    Sex:String;
  end;

var
  qr,PersonQr:TksQuery;
  subjectQr:TksQuery;
  subjectHoursQR:TksQuery;
  hoursQr:TksQuery;

  str:String;
  CertificateSerial:integer;
  SubjectSerial:Integer;
  SubjectTypeSerial:Integer;
//  isMono:Boolean;
  PriceNormal,PriceAnad,PriceUsed:Double;
  SeminarDate:TDate;
  SeminarSubject:String;
  SeminarType:Integer;
  ANadNumber:String;

  PersonSerial:Integer;

  InstName:String;
  InstJob:String;
  person:  TPerson;

  isFOund:Boolean;
  isGuest:boolean;
//  isPass:Boolean;
  isAbsent:boolean;



  HasAnotherDate:String;

  HoursSeminar:Integer;
  HoursCertActual:Integer;
  PercentPass:Integer;
  percentActual:Double;

  xAllSubsOK:Boolean;
  xSeminarHours:Integer;
  xDateLast:TDate;
  xTypeSerial:Integer;
  xGuestHours:THoursRec;
  xSubjectSerial:Integer;
  xIsPresent:String;
  isValidCert:boolean;
  isValidstr:String;
  isHasAnotherDay:Boolean;

  SubjectHours:integer;

begin


//  percentPass:=gpGetGeneralParam(cn,'T00' ).P_Integer1;

  str:= ' select'
  +' sem.*, inst.first_name,inst.last_name, inst.job_title'
  +'  from'
  +'  seminar sem left outer join'
  +'  instructor inst on inst.serial_number=sem.fk_instructor'
  +'  where sem.serial_number= :SeminarSerial';
  qr:= TksQuery.Create(cn,str);
  try
    qr.ParamByName('seminarSerial').value:=SeminarSerial;
    qr.open;
    seminarType:=qr.FieldByName('fk_seminar').AsInteger;
    SeminarSubject:=qr.FieldByName('seminar_name').asString;
    SeminarDate:=qr.FieldByName('Date_completed').AsDateTime;
    percentPass:=qr.FieldByName('pass_percentage').AsInteger;

    AnadNumber:=qr.FieldByName('ANad_number').asString;
    InstName:=trim(qr.FieldByName('first_name').asString)+' '+trim(qr.FieldByName('Last_name').asString);
    InstJob:=qr.FieldByName('job_title').asString;
  finally
    qr.Free;
  end;


  str:= ' Select sum(sday.duration_hours) as Seminar_hours'
  +'  from seminar_day_view sday where'
  +'  sday.seminar_serial= :SeminarSerial';
   qr:= TksQuery.Create(cn,str);
  try
    qr.ParamByName('seminarSerial').value:=SeminarSerial;
    qr.open;
    HoursSeminar:=qr.FieldByName('SEMINAR_Hours').asInteger;
  finally
    qr.Free;
  end;

  ////////////////////////////////////////////////
  str:=
    'select serial_number,FK_SUBJECT_TYPE_SERIAL from seminar_subject ss where ss.fk_seminar_serial= :SeminarSerial';
  subjectQR:=TksQuery.Create(cn,str);


    str:=
   ' select sum(ssd.duration_hours) as SubjectHours from seminar_subject_day ssd'
    +' where ssd.fk_seminar_subject_serial = :SubjectSerial' ;
    subjectHoursQR:=TksQuery.Create(cn,str);

  //one record for each subject  for all days presence of the person . calc the sum of hours and Use latest date.
  //will create a row in Seminar_certificate_subject
  str:=
    'select sum(pv.present_hours) as Total_hours, max(pv.present_ispresent) as isPresent,  max(pv.day_date) as maxDate '
    +' from person_presence_view pv '
    +' where pv.person_serial = :PersonSerial and pv.subject_serial = :subjectSerial ';
  hoursQr:=TksQuery.Create(cn,str);

  str:=
    ' select * from'
    +'  seminar_person_view spv where'
    +'  spv.is_guest<>''Y'' and spv.fk_seminar_serial= :SeminarSerial';
  qr:= TksQuery.Create(cn,str);
  ////////////////////////////////////////////////

  try
   qr.ParamByName('seminarSerial').value:=SeminarSerial;
   qr.open;

    while not qr.Eof do begin
        //for each seminar person
        PersonSerial:=qr.FieldByName('Person_serial').AsInteger;
        isFound:=ksCountRecVarSQL(cn,'select * from seminar_certificate where fk_seminar_serial=:Seminar and fk_person_serial= :person',[SeminarSerial,PersonSerial])>0;
        if isFound then begin
           qr.Next;
           continue;
        end;

        HoursCertActual:=0;
        IsValidCert:=true;
        isHasAnotherDay:=false;

        try

        CertificateSQL.close;
        CertificateSQL.open;
        CertificateSQL.Insert;

        CertificateSerial:=ksGenerateSerial(cn,'GEN_SEMINAR_CERTIFICATE');
        CertificateSQL.FieldByName('serial_number').Value:=CertificateSerial;
        CertificateSQL.FieldByName('serial_Manual').Value:=CertificateSerial;
        CertificateSQL.FieldByName('fk_seminar_serial').Value:=SEminarSerial;
        CertificateSQL.FieldByName('fk_PERSON_serial').Value:=PersonSerial;

        CertificateSQL.FieldByName('first_name').Value:=qr.FieldByName('first_name').AsString;
        CertificateSQL.FieldByName('Last_name').Value:=qr.FieldByName('last_name').AsString;
        CertificateSQL.FieldByName('National_id').Value:=qr.FieldByName('national_id').AsString;
        CertificateSQL.FieldByName('SEX').Value:=qr.FieldByName('sex').AsString;
        CertificateSQL.FieldByName('seminar_subject').Value:=SeminarSubject;
        CertificateSQL.FieldByName('seminar_duration').Value:=HoursSeminar;
        CertificateSQL.FieldByName('ANAD_number').Value:=AnadNumber;

        CertificateSQL.FieldByName('instructor_name').Value:=InstName;
        CertificateSQL.FieldByName('instructor_job_title').Value:=InstJob;

        CertificateSQL.FieldByName('is_valid').Value:='Y';
//        CertificateSQL.FieldByName('hours_completed').Value:=xSeminarHours;
//        CertificateSQL.FieldByName('percentage_completed').Value:=xSeminarHours/SeminarHours * 100;
        CertificateSQL.FieldByName('DATE_Issued').AsDateTime:=SeminarDate;
        CertificateSQL.FieldByName('DATE_created').AsDateTime:=Date;
        CertificateSQL.FieldByName('HAS_ANOTHER_DATE').AsString:= 'N';

        CertificateSQL.Post;

        finally

        end;

        subjectQR.Close;
        subjectQR.ParamByName('SeminarSerial').Value:=SeminarSerial;
        SubjectQr.open;
        SubjectQR.First;
        while not SubjectQR.Eof do begin
        //for each SUBJECT
          SubjectSerial:=subjectQR.FieldByName('serial_number').AsInteger;
          SubjectTypeSerial:=subjectQR.FieldByName('FK_SUBJECT_TYPE_SERIAL').AsInteger;

          SubjectHoursQR.Close;
          SubjectHoursQR.ParamByName('SubjectSerial').Value:=SubjectSerial;
          SubjectHoursQR.Open;
          SubjectHours:= SubjectHoursQR.FieldbyName('subjectHours').AsInteger;


          hoursQr.Close;
          hoursQr.ParamByName('PersonSerial').Value:=Personserial;
          hoursQr.ParamByName('SubjectSerial').Value:=Subjectserial;
          hoursQr.Open;
            //check in another seminar
          xSeminarHours:=hoursQr.FieldByName('Total_hours').AsInteger;

          xDateLast:=hoursQr.FieldByName('maxDate').AsDateTime;
          xSubjectSerial:=SubjectSerial;

          isAbsent:= hoursQr.IsEmpty or (hoursqr.FieldByName('TOtal_hours').AsInteger=0)or (hoursqr.FieldByName('isPresent').AsString='N');

          //*********** check if isPresent is EMPTY STRING === do it
          if isAbsent then  begin
//            PresentStr:='N';
            xGuestHours:=NewFindGuestHours(SubjectSerial,SubjectTypeSerial,PersonSerial);

            xSeminarHours:=min(xGuestHours.Hours,SubjectHours);
            xDateLast:=xGuestHours.maxdate;
            xSubjectSerial:=xGuestHours.SubjectSerial;
            ///isAbsent is checked again after looking into other seminars above

            //is is recent ...
            if abs(XDateLast- date)<200 then begin
              isAbsent:= not xGuestHours.isPresent;
              isHasAnotherDay:= isHasAnotherDay OR (xSeminarHours>0);   //any subject may have another day
            end else begin
              isAbsent:=true;
              xSeminarHours:=0;
            end;


          end;
          if isAbsent then
            xIsPresent:='N'
          else
            xIsPresent:='Y';


          if IsAbsent then begin
            str:=
            ' INSERT INTO SEMINAR_CERTIFICATE_SUBJECT'
            +'  (FK_SEMINAR_CERTIFICATE_SERIAL, FK_SEMINAR_SUBJECT_SERIAL, HOURS, IS_PRESENT)'
            +'   VALUES ( :cert,:subject,:HOURS,:IS_PRESENT)';
            ksExecSQLVar(cn,str,[CertificateSerial,SubjectSerial,xSeminarHours,xIsPresent]);

          end else begin
            str:=
            ' INSERT INTO SEMINAR_CERTIFICATE_SUBJECT'
            +'  (FK_SEMINAR_CERTIFICATE_SERIAL, FK_SEMINAR_SUBJECT_SERIAL, HOURS, IS_PRESENT,date_last)'
            +'   VALUES ( :cert,:subject,:HOURS,:IS_PRESENT,:lDate)';
            ksExecSQLVar(cn,str,[CertificateSerial,SubjectSerial,xSeminarHours,xIsPresent,xDateLast]);
          end;
          HoursCertActual:=HoursCertActual+xSeminarHours;
          isValidCert:= isValidCert and not isAbsent;

          subjectQR.Next;
        end;



        if HoursSeminar<=0 then
          percentActual:=0
        else
          percentActual:=HoursCertActual/HoursSeminar * 100;

       isValidCert:= isValidCert and (percentActual>= PercentPass);
       if isValidCert then
          isValidStr:='Y'
        else
          isValidStr:='N';

       HasAnotherDate:= G_Boolean(isHasAnotherDay);

        str:='update seminar_certificate set is_valid= :isValid,  hours_completed= :hc, percentage_completed= :pc, HAS_ANOTHER_DATE= :hasD where serial_number= :serial';
        ksExecSQLVar(cn,str,[isValidstr,HoursCertActual, percentActual,HasAnotherDate,CertificateSerial]);

       qr.Next;
    end;

  finally
      qr.Free;
      hoursQr.Free;
      SubjectQr.Free;
      SubjectHoursQR.free;

  end;

  end;


Function TI_CertificatesFRM.NewFindGuestHours(Const SubjectSerial,subjectTypeSerial, PersonSerial:Integer):THoursRec;
var
  al:Integer;
  GuestQr:TksQuery;
  str:string;

begin

  str:=
  ' select'
  +'      first 1 pp.subject_serial, sum(pp.present_hours) as hours, max(pp.present_ispresent) as isPresent, max(pp.day_date) as maxDate'
  +'        ,abs(  ( max(pp.day_date) - Current_date ) ) as daysDiff '
  +'  from'
  +'      person_presence_view pp'
  +'  where'
  +''
  +'      pp.person_serial = :personSerial and'
  +'      pp.subject_serial <> :SubjectSerial and'
  +'      pp.subject_type_serial = :subjectTypeSerial and'
  +'      pp.is_guest=''Y'' '
  +'  group by'
  +'   pp.subject_serial'
  +'  order by'
  +'  maxDate desc';

  GuestQr:=TksQuery.Create(cn,str);
  try
    GuestQr.Close;
    GuestQr.ParamByName('PersonSerial').Value:=PersonSerial;
    GuestQr.ParamByName('SubjectSerial').Value:=subjectSerial;
    GuestQr.ParamByName('subjectTypeSerial').Value:=subjectTypeSerial;
    GuestQr.Open;
    result.isPresent:= GuestQR.FieldByName('hours').AsInteger>0;
    result.SubjectSerial:=GuestQR.FieldByName('subject_serial').AsInteger;
    result.Hours :=GuestQR.FieldByName('hours').AsInteger;
    result.maxdate:=GuestQR.FieldByName('maxDate').AsDateTime;
    if result.isPresent then begin

    end;
    guestqr.Close;
  finally

    guestqr.Free;
  end;

end;


procedure TI_CertificatesFRM.PrintAllBTNClick(Sender: TObject);
var
 Frm:TR_certificateFRM;
  SeminarSerial:Integer;
  language:string;

begin
  SeminarSerial:= TableSQL.FieldByName('serial_number').AsInteger;
  if SeminarSerial<1 then  begin
    ShowMessage('can not find Seminar');
    exit;
  end;

  Language:=LanguageRGP.Values[LanguageRGP.ItemIndex];

  frm :=  TR_certificateFRM.Create(nil);
  try
    frm.PrintSeminar(SeminarSerial,0,Language);
  finally
    frm.Free;
  end;



end;

procedure TI_CertificatesFRM.PrintOneBTNClick(Sender: TObject);
var
 Frm:TR_certificateFRM;
SeminarSerial:Integer;
CertSerial:integer;
language:string;
isValid:Boolean;
begin

  SeminarSerial:= TableSQL.FieldByName('serial_number').AsInteger;
  if SeminarSerial<1 then
  begin
    ShowMessage('can not find Seminar');
    exit;
  end;

  certSerial:=CertificateSQL.FieldByName('serial_number').AsInteger;
  if certSerial<1 then
  begin
    ShowMessage('can not find Certificate');
    exit;
  end;

  isValid:=CertificateSQL.FieldByName('is_valid').AsString='Y';
  if Not IsValid then begin
    MessageDlg('Certificate is NOT valid. Canot be printed', mtWarning, [mbOK], 0);
    exit;
  end;
  Language:=LanguageRGP.Values[LanguageRGP.ItemIndex];

  frm :=  TR_certificateFRM.Create(nil);
  try
    frm.PrintSeminar(SeminarSerial,certSerial,Language);
  finally
    frm.Free;
  end;


end;

End.
