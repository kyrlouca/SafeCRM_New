unit L_Seminar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  Vcl.WinXCtrls, Vcl.Menus;
type
  TL_SeminarFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    Panel5: TPanel;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    Grid1: TwwDBGrid;
    RzPanel4: TRzPanel;
    InsertHawbBTN: TRzBitBtn;
    DeletehawbBTN: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    Label2: TLabel;
    StatusFLD: TwwDBComboBox;
    EditBTN: TRzBitBtn;
    Nav1: TwwDBNavigator;
    Nav1Button: TwwNavButton;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Button1: TwwNavButton;
    Nav1Insert: TwwNavButton;
    Nav1Delete: TwwNavButton;
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
    TableSQLDESCRIPTION: TWideStringField;
    TableSQLDESCRIPTION_GREEK: TWideStringField;
    TableSQLLAST_NAME: TWideStringField;
    CertificatesBTN: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    InvoiceBTN: TRzBitBtn;
    TableSQLFK_COMPANY_PERSON_SERIAL: TIntegerField;
    TableSQLMAX_CAPACITY: TIntegerField;
    TableSQLHAS_EXPIRY: TWideStringField;
    TableSQLEXPIRY_PERIOD: TIntegerField;
    TableSQLFK_EXAMINER: TIntegerField;
    TableSQLTYPE_MONO_POLY: TWideStringField;
    Label4: TRzLabel;
    StatusShowFLD: TwwDBComboBox;
    Label1: TLabel;
    CategoryFLD: TwwDBComboBox;
    TableSQLSEM_CATEGORY: TWideStringField;
    MainMenu1: TMainMenu;
    Reports1: TMenuItem;
    N3: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    CategoryShowFLD: TwwDBComboBox;
    N6: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    RzGroupBox2: TRzGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    wwIncrementalSearch1: TwwIncrementalSearch;
    wwIncrementalSearch2: TwwIncrementalSearch;
    Label6: TLabel;
    MonoFLD: TwwDBComboBox;
    TableSQLSPECIFICATION_NUMBER: TWideStringField;
    TableSQLANAD_NUMBER: TWideStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Grid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure InsertHawbBTNClick(Sender: TObject);
    procedure Grid1DblClick(Sender: TObject);
    procedure DeletehawbBTNClick(Sender: TObject);
    procedure Nav1InsertClick(Sender: TObject);
    procedure CertificatesBTNClick(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure TableSQLNewRecord(DataSet: TDataSet);
    procedure InvoiceBTNClick(Sender: TObject);
    procedure wwIncrementalSearch1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StatusFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure CategoryFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure MonoFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure EditBTNClick(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
    procedure EditSeminar();
    procedure DeleteSeminar();
    procedure FilterSeminars;

  procedure  InsertSeminar();
  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;

  end;

var
  L_SeminarFRM: TL_SeminarFRM;

implementation

uses   U_Database, G_generalProcs, V_Seminar, I_certificates, p_attendance,
  I_invoiceSeminar, R_Certificate, R_invoices, r_certificateDates,
  R_SeminarRevenues;


{$R *.DFM}

procedure TL_SeminarFRM.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TL_SeminarFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TL_SeminarFRM.TableSQLNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('reminder_type').Value:='S';
  Dataset.FieldByName('PERSON_OR_SEMINAR').Value:='S';
  Dataset.FieldByName('is_completed').Value:='N';

end;

procedure TL_SeminarFRM.TableSRCStateChange(Sender: TObject);
begin


  with TableSQL do begin
     If State<>dsInsert then begin
//         StationIDFLD.Enabled:=false;
     end  else begin
//         StationIDFLD.Enabled:=true;
     end;
  end;//with

end;

procedure TL_SeminarFRM.wwIncrementalSearch1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=VK_DOWN then begin
    Grid1.SetFocus;
    exit;
  end;


end;

procedure TL_SeminarFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TL_SeminarFRM.RzBitBtn3Click(Sender: TObject);
vAR
  Frm:TP_attendanceFRM;
seminarSerial:Integer;
seminarStatus:string;
SeminarCategory:string;
str:string;
begin
  seminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;

//  SeminarStatus:=TableSQL.FieldByName('status').AsString;
//  if SeminarStatus<>'A' then begin
//    MessageDlg('Δεν γίνεται να καταγραφούν παρουσίες γιατί το Σεμινάριο δεν είναι σε στάδιο ''APPROVED'' ', mtWarning, [mbOK], 0);
//    abort;
//  end;


  SeminarCategory:= CategorySHowFLD.Text;
  SeminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;
  str:= 'select sc.category_code,sc.is_invoice from'
      +' seminar sem        left outer join '
      +' sem_category sc    on sem.sem_category=sc.category_code'
      +' where  sem.serial_number = :SeminarSerial and sc.is_CERTIFICATE=''Y'' ';
  if ksCountRecVarSQL(cn,str,[SeminarSerial])=0 then begin
    MessageDlg('Για Σεμινάρια του τύπου: '+ SeminarCategory +' ΔΕΝ κρατούνται Παρουσίες', mtWarning, [mbOK], 0);
    exit;
  end;


  frm :=  TP_attendanceFRM.Create(nil);
  frm.IN_ACTION :='INSERT';
  frm.IN_seminar_serial :=seminarSerial;
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TL_SeminarFRM.FilterSeminars;
begin
  TableSQL.close;
  TableSQL.RestoreSQL;
  if statusFLD.Value>'' then begin
      TableSQL.AddWhere('sem.status = :status');
      TableSQL.ParamByName('status').Value:=StatusFLD.Value;
  end;

  if (MonoFLD.Value>'') And (MonoFLD.Value <>'A') then begin
      TableSQL.AddWhere('sem.type_mono_poly = :mono');
      TableSQL.ParamByName('mono').Value:=MonoFLD.Value;
  end;

  if CategoryFLD.Value>'' then begin
      TableSQL.AddWhere('sem.sem_category = :cat');
      TableSQL.ParamByName('cat').Value:=CategoryFLD.Value;

  end;
  TableSQL.Open;

end;


procedure TL_SeminarFRM.StatusFLDCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
var
  val:string;
begin
if not select then exit;
FilterSeminars();
//  TableSQL.close;
//  TableSQL.RestoreSQL;
//    if Sender.Value>'' then begin
//      TableSQL.AddWhere('sem.status = :status');
//      TableSQL.ParamByName('status').Value:=Sender.Value;
//
//    end;
//  TableSQL.Open;

end;

procedure TL_SeminarFRM.FormActivate(Sender: TObject);
begin
ksfillComboF1(cn,StatusFLD, 'status_activity','status','description_greek','',false,True);
ksfillComboF1(cn,CategoryFLD,'sem_category','Category_code','TYPE_DESC_GR','',false,True);
ksfillComboF1(cn,StatusShowFLD, 'status_activity','status','description_greek');
ksfillComboF1(cn,CategoryShowFLD,'sem_category','Category_code','TYPE_DESC_GR','',false,True);

statusFLD.ItemIndex:=0;
//tableSQL.AddWhere('sem.status = '''' ');

CategoryFLD.ItemIndex:=0;
//tableSQL.AddWhere('sem.sem_category= ''N'' ');

ksOpenTables([TableSQL]);


if IN_ACTION='INSERT' then begin
   TableSQL.Insert;
end;

end;

procedure TL_SeminarFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if TableSQL.State in [dsInsert, dsEdit] then
   TableSQL.Post;
end;

procedure TL_SeminarFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TL_SeminarFRM.Grid1DblClick(Sender: TObject);
begin
  EditSeminar;
end;

procedure TL_SeminarFRM.EditBTNClick(Sender: TObject);
begin
EditSeminar();
end;

procedure TL_SeminarFRM.EditSeminar();
vAR
  serial:Integer;
  Frm:TV_SeminarFRM;
begin
  SERIAL:=TableSQL.FieldByName('serial_number').AsInteger;
  if serial<1 then exit;

  frm := TV_SeminarFRM.Create(nil);
  frm.IN_ACTION :='EDIT';
  frm.IN_SEMINAR_SERIAL:=serial;
  try
    frm.ShowModal;
    ksOpenTables([TableSQL]);
  finally
    frm.Free;
  end;


end;

procedure TL_SeminarFRM.DeleteSeminar();
vAR
  serial:Integer;
  Frm:TV_SeminarFRM;
  str:String;
begin
  SERIAL:=TableSQL.FieldByName('serial_number').AsInteger;
  if serial<1 then exit;
  str:=
 '   select sub.fk_seminar_serial'
  +'    from'
  +'    invoice inv left outer join'
  +'    seminar_subject sub on inv.fk_subject_serial= sub.serial_number'
  +'    where sub.fk_seminar_serial = :seminarSerial';


  if ksCountRecVarSQL(cn,str,[serial])>0 then begin
   if MessageDlg('Seminar Has INVOICES (and maybe Payments) that will be DELETED!'+#13+#10+'DELETE ?', mtWarning, [mbOK, mbCancel], 0)<> mrOk then begin
      abort;
   end;

  end;

  str:=
'   delete'
  +'    from'
  +'    invoice inv where'
  +'    exists'
  +'    ('
  +'      select * from'
  +'    seminar_subject sub'
  +'      where'
  +'      inv.fk_subject_serial= sub.serial_number'
  +'      and sub.fk_seminar_serial = :seminarSerial'
  +'    )';

  ksExecSQLVar(cn,str,[serial]);

  ksExecSQLVar(cn,'delete from seminar where serial_number= :serial',[serial]);
  ksOpenTables([TableSQL])


end;



procedure TL_SeminarFRM.Grid1TitleButtonClick(Sender: TObject;
  AFieldName: string);
  var
         sortInfoHawb:TSOrtInfo;
         Table:TIBCQuery;


  begin
        Table:=TIbcQuery(Grid1.DataSource.DataSet);
        SortInfoHawb.Table:=Table;
        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawb);

end;

procedure TL_SeminarFRM.InsertHawbBTNClick(Sender: TObject);
begin
  InsertSeminar();
  ksOpenTables([TableSQL]);
end;


procedure TL_SeminarFRM.InsertSeminar();
vAR
Frm:TV_SeminarFRM;
begin
  frm := TV_SeminarFRM.Create(nil);
  frm.IN_ACTION :='INSERT';
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;


procedure TL_SeminarFRM.InvoiceBTNClick(Sender: TObject);
vAR
  Frm:TI_InvoiceSeminarFRM;
seminarSerial:Integer;
SeminarStatus:string;
SeminarCategory:String;
str:string;
begin
  seminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;

  //Let it be so user can see invoices
  //  SeminarStatus:=TableSQL.FieldByName('status').AsString;
//  if SeminarStatus='P' then begin
//    MessageDlg('Δεν εκδίδονται Τιμολόγια γιατί το Σεμινάριο δεν έχει γίνει ''APPROVED'' ', mtWarning, [mbOK], 0);
//    abort;
//  end;

  SeminarCategory:=CategorySHowFLD.Text;
  SeminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;
  str:= 'select sc.category_code,sc.is_invoice from'
      +' seminar sem        left outer join '
      +' sem_category sc    on sem.sem_category=sc.category_code'
      +' where  sem.serial_number = :SeminarSerial and sc.is_invoice=''Y'' ';
  if ksCountRecVarSQL(cn,str,[SeminarSerial])=0 then begin
    MessageDlg('Σεμινάρια του τύπου: '+ SeminarCategory +' δεν τιμολογούνται', mtWarning, [mbOK], 0);
    exit;
  end;


  frm :=  TI_InvoiceSeminarFRM.Create(nil);
  frm.IN_ACTION :='INSERT';
  frm.IN_seminar_serial :=seminarSerial;
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;

end;

procedure TL_SeminarFRM.MonoFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
var
  val:string;
begin
if not select then exit;
FIlterSeminars();
//  TableSQL.close;
//  TableSQL.RestoreSQL;
//    if (Sender.Value>'') And (sender.Value <>'A') then begin
//      TableSQL.AddWhere('sem.type_mono_poly = :mono');
//      TableSQL.ParamByName('mono').Value:=Sender.Value;
//    end;
//  TableSQL.Open;
end;

procedure TL_SeminarFRM.N1Click(Sender: TObject);
vAR
  Frm:TR_certificateFRM;
  seminarSerial:Integer;

begin
  seminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;

  frm :=  TR_certificateFRM.Create(nil);
  frm.IN_seminar_serial :=seminarSerial;
  frm.IN_certificate_serial:=0;
//  frm.IN_Day_Serial :=0;
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;



procedure TL_SeminarFRM.N2Click(Sender: TObject);
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

procedure TL_SeminarFRM.N3Click(Sender: TObject);
vAR
  Frm:TR_InvoicesFRM;
  seminarSerial:Integer;

begin
  seminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;

  frm :=  TR_InvoicesFRM.Create(nil);
  frm.IN_SeminarSerial:=SeminarSerial;

  try
    frm.ShowModal();
  finally
    frm.Free;
  end;
end;

procedure TL_SeminarFRM.N6Click(Sender: TObject);
vAR
  Frm:TR_SeminarRevenuesFRM;
  seminarSerial:Integer;

begin
  seminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;

  frm :=  TR_SeminarRevenuesFRM.Create(nil);
  frm.IN_SeminarSerial:=SeminarSerial;

  try
    frm.ShowModal();
  finally
    frm.Free;
  end;
end;

procedure TL_SeminarFRM.Nav1InsertClick(Sender: TObject);
begin
  InsertSeminar();
  ksOpenTables([TableSQL]);

  abort;
end;

procedure TL_SeminarFRM.CanelBTNClick(Sender: TObject);
begin
TableSQL.Cancel;
close;
end;

procedure TL_SeminarFRM.CategoryFLDCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
var
  val:string;
begin
if not select then exit;
FIlterSeminars();
//  TableSQL.close;
//  TableSQL.RestoreSQL;
//    if Sender.Value>'' then begin
//      TableSQL.AddWhere('sem.sem_category = :cat');
//      TableSQL.ParamByName('cat').Value:=Sender.Value;
//
//    end;
//  TableSQL.Open;

end;

procedure TL_SeminarFRM.CertificatesBTNClick(Sender: TObject);
vAR
  Frm:TI_CertificatesFRM;
seminarSerial:Integer;
SeminarStatus:String;
SeminarCategory:string;
  str:String;
begin

  seminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;

  SeminarStatus:=TableSQL.FieldByName('status').AsString;
//  if SeminarStatus<>'F' then begin
//    MessageDlg('Δεν εκδίδονται πιστοιητικά γιατί το σεμινάριο δεν έχει γίνει ''COMPLETED'' ', mtWarning, [mbOK], 0);
//    abort;
//  end;

  SeminarCategory:= CategorySHowFLD.Text;
  SeminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;
  str:= 'select sc.category_code,sc.is_invoice from'
      +' seminar sem        left outer join '
      +' sem_category sc    on sem.sem_category=sc.category_code'
      +' where  sem.serial_number = :SeminarSerial and sc.is_CERTIFICATE=''Y'' ';
  if ksCountRecVarSQL(cn,str,[SeminarSerial])=0 then begin
    MessageDlg('Για Σεμινάρια του τύπου: '+ SeminarCategory +' δεν εκδίδονται Πιστοποιητικά', mtWarning, [mbOK], 0);
    exit;
  end;




  frm :=  TI_CertificatesFRM.Create(nil);
  frm.IN_ACTION :='INSERT';
  frm.IN_seminar_serial :=seminarSerial;
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;

end;

procedure TL_SeminarFRM.DeletehawbBTNClick(Sender: TObject);
VAR
  isAllow:Boolean;
begin
  isAllow:=TableSQL.FieldByName('status').AsString='P';
  if not isAllow then begin;
    MessageDlg('Το Σεμινάριο ΔΕΝ επιτρέπεται να διαγραφεί.'+#13+#10+'Δεν είναι σε σταδιο Προετοιμασίας.', mtError, [mbOK], 0);
    exit;
  end;
  DeleteSeminar();
end;

End.
