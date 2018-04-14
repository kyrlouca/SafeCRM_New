unit V_SeminarStages;

interface

uses
  Windows, Messages, SysUtils,System.DateUtils,System.math, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError,  Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit,  DBGrids, wwdbdatetimepicker, ppDB, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppProd, ppReport, ppComm, ppRelatv,
  ppCache, ppDBPipe,ppTypes,ppviewr, ppDesignLayer, ppParameter, RzButton,
  RzPanel, Vcl.Imaging.pngimage, VirtualTable, vcl.Wwdotdot, vcl.Wwdbcomb,
  RzLabel, RzDBLbl, vcl.wwdblook, vcl.wwclearpanel, RzStatus,G_KyrSQL,G_kyriacosTypes,
  Vcl.Menus, Vcl.ComCtrls, vcl.wwriched, RzEdit, System.ImageList, Vcl.ImgList,
  Vcl.DBCtrls;

type
  TReminderResult= Record
    daysLeft:Integer;
    DateFinal:Tdate;
  End;

  TV_SeminarStagesFRM = class(TForm)
    Panel4: TRzPanel;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    TableSQL: TIBCQuery;
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
    TableSQLFK_COMPANY_PERSON_SERIAL: TIntegerField;
    TableSQLLAST_NAME: TWideStringField;
    TableSRC: TIBCDataSource;
    RzPanel1: TRzPanel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Panel1: TRzPanel;
    RzGlyphStatus2: TRzGlyphStatus;
    TableSQLANAD_NUMBER: TWideStringField;
    TableSQLHAS_EXPIRY: TWideStringField;
    TableSQLEXPIRY_PERIOD: TIntegerField;
    TableSQLFK_EXAMINER: TIntegerField;
    TableSQLTYPE_MONO_POLY: TWideStringField;
    TableSQLSEM_CATEGORY: TWideStringField;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    AcceptBTN: TBitBtn;
    CanelBTN: TBitBtn;
    Panel2: TRzPanel;
    MainHelpRE: TwwDBRichEdit;
    MainMenu1: TMainMenu;
    Help1: TMenuItem;
    Certifcates1: TMenuItem;
    Panel3: TRzPanel;
    RzPanel2: TRzPanel;
    RzPanel6: TRzPanel;
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    FirstGRP: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    SerialFLD: TRzDBLabel;
    Label5: TLabel;
    Label4: TLabel;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
    SeminarFLD: TRzDBLabel;
    Companylbl: TLabel;
    RzDBLabel3: TRzDBLabel;
    Label1: TLabel;
    RzDBLabel4: TRzDBLabel;
    wwDBComboBox1: TwwDBComboBox;
    RzPanel7: TRzPanel;
    ErrorMemo: TRzMemo;
    RzPanel4: TRzPanel;
    ApprBTN: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    SemGRD: TwwDBGrid;
    ShowStageFLD: TwwDBComboBox;
    ShowCatFLD: TwwDBComboBox;
    RzPanel5: TRzPanel;
    Nav1: TwwDBNavigator;
    Nav1Button: TwwNavButton;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Button1: TwwNavButton;
    wwIncrementalSearch1: TwwIncrementalSearch;
    RzPanel3: TRzPanel;
    StatusChangeFLD: TwwDBComboBox;
    CreatedST: TRzBitBtn;
    ApprovedST: TRzBitBtn;
    CompletedST: TRzBitBtn;
    InvoicedST: TRzBitBtn;
    CertifiedST: TRzBitBtn;
    ImageList1: TImageList;
    procedure AcceptBTNClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure VtFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure TableSQLAfterScroll(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CanelBTNClick(Sender: TObject);
    procedure TableSQLAfterPost(DataSet: TDataSet);
    procedure StatusChangeFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure CategoryChangeFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure Certifcates1Click(Sender: TObject);
    procedure ApprBTNClick(Sender: TObject);
    procedure SemGRDTitleButtonClick(Sender: TObject; AFieldName: string);
  private
    { Private declarations }
    cn:TIBCConnection;
  procedure ShowStatus(Dataset:TDataset);
  procedure CompleteSeminar(Const seminarSerial:Integer);

  public
    { Public declarations }
  end;

var
  V_SeminarStagesFRM: TV_SeminarStagesFRM;

implementation

uses U_Database, G_SFCommonProcs,  G_generalProcs, H_Help;


{$R *.DFM}





procedure TV_SeminarStagesFRM.ApprBTNClick(Sender: TObject);
var
  qr:TksQuery;
  SeminarSerial:Integer;
  status:String;
  isError:Boolean;
  str:string;
begin
//check if anad
ErrorMemo.Clear;
ErrorMemo.Visible:=false;
isError:=false;

SeminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;
qr:=TksQuery.Create(cn,'select * from seminar sem where sem.serial_number= :SeminarSerial');
 try
    qr.ParamByName('seminarSerial').Value:=SeminarSerial;
    qr.Open;
    status:=qr.FieldByName('STATUS').AsString;
    If status<>'P' then begin
      ErrorMemo.Lines.Add('Μόνο σεμινάρια σε στάδιο ΕΤΟΙΜΑΣΙΑΣ μπορεί εγκριθούν') ;
      isError:=true;
    end;

    if (trim(qr.FieldByName('anad_number').AsString)='') and
    (trim(qr.FieldByName('TYPE_mono_poly').AsString)<>'N')
     then begin
      ErrorMemo.Lines.Add('Ο Αριθμός ΑΝΑΔ δεν είναι συμπληρωμένος');
      isError:=true;
    end;

    if (trim(qr.FieldByName('TYPE_mono_poly').AsString)='M') and
     (qr.FieldByName('FK_COMPANY_PERSON_SERIAL').AsInteger=0) then begin
      ErrorMemo.Lines.Add('Στα ΜΟΝΟ-Επιχειρισιακά πρέπει να υπάρχει Εταιρεία');
      isError:=true;
    end;

    if (qr.FieldByName('Date_Started').AsDateTime > qr.FieldByName('Date_COMPLETED').AsDateTime ) then begin
      ErrorMemo.Lines.Add('Η ημερομηνία Έναρξης είναι μεγαλύτερη από την ημερομηνία Ολοκλήρωσης');
      isError:=true;
    end;


    str:='select sub.fk_instructor, sub.fk_examiner from seminar_subject sub where sub.fk_seminar_serial = :seminarSerial';
    if ksCountRecVarSQL(cn,str,[seminarSerial])<1 then begin
      ErrorMemo.Lines.Add('Το Σεμινάριο πρέπει να έχει Τουλάχιστον ένα ΘΕΜΑ');
      isError:=true;
    end;

  str:=
  '   select sub.fk_seminar_serial from seminar_subject sub'
  +'    where'
  +'    sub.fk_seminar_serial = :seminarSerial'
  +'    and ((sub.fk_instructor is null ) or (sub.fk_examiner is null) or (sub.fk_venue is null) )';
      if ksCountRecVarSQL(cn,str,[seminarSerial])>0 then begin
      ErrorMemo.Lines.Add('Σε Όλα τα Θέματα πρέπει να υπάρχει Εκπαιδευτής, Αξιολογητής και Αίθουσα');
      isError:=true;
    end;

  str:=
  ' select sub.serial_number,sday.serial_number'
  +'  from'
  +'      seminar_subject sub left outer join'
  +'      seminar_subject_day sday on  sday.fk_seminar_subject_serial= sub.serial_number'
  +'  where'
  +'      sub.fk_seminar_serial = :seminarSerial'
  +'      and sday.serial_number is null';
  if ksCountRecVarSQL(cn,str,[seminarSerial])>0 then begin
      ErrorMemo.Lines.Add('Σε Όλα τα Θέματα πρέπει να υπάρχει ΗΜΕΡΑ Διεξαγωγής');
      isError:=true;
  end;

    str:= '   SELECT sp.fk_seminar_serial from seminar_person SP WhERE sp.fk_seminar_serial= :SeminarSerial';
      if ksCountRecVarSQL(cn,str,[seminarSerial])=0 then begin
      ErrorMemo.Lines.Add('Στο Σεμινάριο ΔΕΝ έχουν επιλεγεί ΕΚΠΑΙΔΕΥΟΜΕΝΟΙ');
      isError:=true;
    end;


 finally
    qr.Free;
 end;
 ErrorMemo.Visible:=isError;

if Not isError then begin
  Str:='update seminar sem set sem.status= ''A'' where sem.serial_number=:seminarSerial';
  ksExecSQLVar(cn,str,[SeminarSerial]);
  MessageDlg('ΟΚ. Το Σεμινάριο έχει ΕΓΚΡΙΘΕΙ', mtInformation, [mbOK], 0);
  TableSQL.Refresh;
end;

end;

procedure TV_SeminarStagesFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TV_SeminarStagesFRM.AcceptBTNClick(Sender: TObject);
begin
  if TableSQL.State in [dsEdit] then
    TableSQL.Post;

end;




procedure TV_SeminarStagesFRM.ppVariable3Calc(Sender: TObject; var Value: Variant);
begin
//   value:=FromDateFLD.Date;
end;

procedure TV_SeminarStagesFRM.RzBitBtn1Click(Sender: TObject);
var
  SeminarSerial:Integer;

begin
  SeminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;
  COmpleteSeminar(SeminarSerial);

end;

procedure TV_SeminarStagesFRM.CompleteSeminar(Const seminarSerial:Integer);
var
  qr:TksQuery;
  status:String;
  isError:Boolean;
  str:string;
  cnt:integer;
begin
//check if anad
ErrorMemo.Clear;
ErrorMemo.Visible:=false;
isError:=false;

 qr:=TksQuery.Create(cn,'select * from seminar sem where sem.serial_number= :SeminarSerial');
  try
    qr.ParamByName('seminarSerial').Value:=SeminarSerial;
    qr.Open;
    status:=qr.FieldByName('STATUS').AsString;
    If status<>'A' then begin
      ErrorMemo.Lines.Add('Μόνο σεμινάρια σε στάδιο ΕΓΚΡΙΣΗΣ μπορεί να ολοκληρωθούν') ;
      isError:=true;
    end;

  finally
    qr.Free;
  end;


  str:=
  '   select sub.serial_number,inv.serial_number as INvoice_Serial'
  +'    from'
  +'        seminar_subject sub left outer join'
  +'        invoice inv  on  inv.fk_subject_serial = sub.serial_number'
  +'    where'
  +'        sub.fk_seminar_serial = :seminarSerial'
  +'        and inv.serial_number is null';

  cnt:=ksCountRecVarSQL(cn,str,[SeminarSerial]);
  if cnt>0 then begin
      ErrorMemo.Lines.Add('ΔΕΝ είναι όλα τα θέματα ΤΙΜΟΛΟΓΗΜΕΝΑ ακόμα') ;
      isError:=true;
  end;

  ErrorMemo.Visible:=isError;

if Not isError then begin
  Str:='update seminar sem set sem.status= ''F'' where sem.serial_number=:seminarSerial';
  ksExecSQLVar(cn,str,[SeminarSerial]);
  MessageDlg('ΟΚ. Το Σεμινάριο έχει ΟΛΟΚΛΗΡΩΘΕΙ', mtInformation, [mbOK], 0);
  TableSQL.Refresh;
end;

end;


procedure TV_SeminarStagesFRM.TableSQLAfterPost(DataSet: TDataSet);
begin
ShowStatus(Dataset);
end;

procedure TV_SeminarStagesFRM.TableSQLAfterScroll(DataSet: TDataSet);
begin
ShowStatus(Dataset);
end;



procedure TV_SeminarStagesFRM.SemGRDTitleButtonClick(Sender: TObject;
  AFieldName: string);
var
         sortInfoHawb:TSOrtInfo;
         Table:TIBCQuery;
begin
        Table:=TIbcQuery(SemGRD.DataSource.DataSet);
        SortInfoHawb.Table:=Table;
        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawb);

end;

procedure TV_SeminarStagesFRM.ShowStatus(Dataset:TDataset);
type

  StatusType = (iCreated,iApproved,iCertified,iInvoiced,iCompleted);
Var
  isCreated:Boolean;
  isPlanned:Boolean;
  isApproved:Boolean;
  isCertified:Boolean;
  isInvoiced:Boolean;
  isCompleted:Boolean;
  SeminarSerial:integer;
  Status:String;

  BtnArray : Array of TrzBitBTN;
//  StArray : Array of TrzGlyphStatus;
  BoolArray : Array[0..4] of Boolean;
    i:integer;
    str:string;

begin
  BtnArray :=[CreatedSt,ApprovedSt,CertifiedSt,InvoicedSt,CompletedSt];
//  StArray := [CreatedST,ApprovedST,CertifiedST,InvoicedST,CompletedST];

  Status:= Dataset.FieldByName('Status').AsString;
  SeminarSerial:= Dataset.FieldByName('Serial_number').AsInteger;

  BoolArray[Ord(iCreated)]:= True;
  BoolArray[Ord(iApproved)]:= (status='A') or (status='F') ;
  BoolArray[Ord(iCertified)]:= ksCountRecVarSQL(cn,'select serial_number FROM seminar_certificate SEM where sem.fk_seminar_serial= :seminarSerial',[SeminarSerial])>0;
  str:=
  '   select ss.serial_number from'
  +'  invoice inv left outer join'
  +'  seminar_subject ss on inv.fk_subject_serial= ss.serial_number'
  +'  where ss.fk_seminar_serial = :seminarSerial';

  BoolArray[Ord(iInvoiced)]:=  ksCountRecVarSQL(cn,str,[SeminarSerial])>0;
  BoolArray[Ord(iCompleted)]:= (status='F');


  For i:=0 to Length(BtnArray)-1 do begin
    if Boolarray[i] then
      BtnArray[i].ImageIndex:=0
    else
      BtnArray[i].ImageIndex:=1;

//    StArray[i].ShowGlyph:= BoolArray[i];
  end;



end;

procedure TV_SeminarStagesFRM.StatusChangeFLDCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin
if not select then
  exit;
if TableSQL.State in [dsEdit] then
  TableSQL.Post;


end;

procedure TV_SeminarStagesFRM.VtFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  accept := Dataset.FieldByName('DaysCalc').asInteger >= 0;
end;


procedure TV_SeminarStagesFRM.CanelBTNClick(Sender: TObject);
begin
  if TableSQL.State in [dsEdit] then
    TableSQL.Cancel;
  close;

end;

procedure TV_SeminarStagesFRM.CategoryChangeFLDCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin
if not select then
  exit;
if TableSQL.State in [dsEdit] then
  TableSQL.Post;

end;

procedure TV_SeminarStagesFRM.Certifcates1Click(Sender: TObject);
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



procedure TV_SeminarStagesFRM.FormActivate(Sender: TObject);
begin
  ErrorMemo.Visible:=false;
  ksfillComboF1(cn,ShowCatFLD,'SEM_CATEGORY','category_code','TYPE_DESC_GR','order_NUMBER' );
  ksfillComboF1(cn,ShowStageFLD,'status_activity','status','DESCRIPTION_greek','order_NUMBER' );
//  ksfillComboF1(cn,CategoryChangeFLD,'SEM_CATEGORY','category_code','TYPE_DESC_GR','order_NUMBER' );
  ksfillComboF1(cn,StatusChangeFLD,'status_activity','status','DESCRIPTION_greek','order_NUMBER' );

ksOpenTables([TableSQL])
end;

procedure TV_SeminarStagesFRM.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if TableSQL.State in [dsEdit] then
  TableSQL.Post;
end;

procedure TV_SeminarStagesFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;

end;


end.
