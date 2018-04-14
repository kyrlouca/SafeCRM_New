unit I_invoiceSeminar;

interface

uses
  Windows, Messages, SysUtils,Math, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  RzPopups, vcl.wwcheckbox, vcl.wwDialog, vcl.wwIDlg, vcl.wwmonthcalendar,
  vcl.wwlocate, VirtualTable, Vcl.Menus;
type
  TI_InvoiceSeminarFRM = class(TForm)
    Panel4: TPanel;
    BodyPanel: TRzPanel;
    Panel5: TPanel;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    PanelX: TRzPanel;
    RzPanel3: TRzPanel;
    RzPanel2: TRzPanel;
    RzPanel4: TRzPanel;
    InvoiceSQL: TIBCQuery;
    InvoiceSRC: TIBCDataSource;
    wwDBNavigator2: TwwDBNavigator;
    Nav1Button: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    Nav1Delete: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1Cancel: TwwNavButton;
    InvoiceGRD: TwwDBGrid;
    InvoiceSQLSERIAL_NUMBER: TIntegerField;
    InvoiceSQLFK_PERSON_SERIAL: TIntegerField;
    InvoiceSQLINVOICE_STATUS: TWideStringField;
    InvoiceSQLDATE_INVOICED: TDateField;
    InvoiceSQLVAT_RATE: TFloatField;
    InvoiceSQLDISCOUNT_BY_SAFE: TFloatField;
    InvoiceSQLDISCOUNT_CUSTOMER: TFloatField;
    InvoiceSQLAMOUNT_GROSS: TFloatField;
    InvoiceSQLAMOUNT_NET: TFloatField;
    InvoiceSQLAMOUNT_VAT: TFloatField;
    InvoiceSQLAMOUNT_WITH_VAT: TFloatField;
    InvoiceSQLIS_ANAD: TWideStringField;
    AnadCheckFLD: TwwCheckBox;
    Read1: TIBCTransaction;
    write1: TIBCTransaction;
    SeminarSQL: TIBCQuery;
    SeminarSRC: TIBCDataSource;
    MainMenu1: TMainMenu;
    Reports1: TMenuItem;
    N3: TMenuItem;
    SeminarSQLSERIAL_NUMBER: TIntegerField;
    SeminarSQLANAD_NUMBER: TWideStringField;
    SeminarSQLFK_SEMINAR: TIntegerField;
    SeminarSQLFK_INSTRUCTOR: TIntegerField;
    SeminarSQLFK_EXAMINER: TIntegerField;
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
    SeminarSQLHAS_EXPIRY: TWideStringField;
    SeminarSQLEXPIRY_PERIOD: TIntegerField;
    SeminarSQLTYPE_MONO_POLY: TWideStringField;
    SeminarSQLSEM_CATEGORY: TWideStringField;
    SeminarSQLLAST_NAME: TWideStringField;
    InvoiceSQLLAST_NAME: TWideStringField;
    InvoiceSQLFIRST_NAME: TWideStringField;
    InvoiceSQLPERSON_NATIONAL_ID: TWideStringField;
    GroupBox1: TGroupBox;
    RzPanel7: TRzPanel;
    wwDBGrid1: TwwDBGrid;
    SeminarSubjectSQL: TIBCQuery;
    SeminarSubjectSRC: TIBCDataSource;
    SeminarSubjectSQLSERIAL_NUMBER: TIntegerField;
    SeminarSubjectSQLFK_SEMINAR_SERIAL: TIntegerField;
    SeminarSubjectSQLSUBJECT: TWideStringField;
    SeminarSubjectSQLFK_SUBJECT_TYPE_SERIAL: TIntegerField;
    SeminarSubjectSQLFEE_NORMAL: TFloatField;
    SeminarSubjectSQLFEE_REDUCED: TFloatField;
    InvoiceBTN: TRzBitBtn;
    Panel1: TRzPanel;
    Panel2: TRzPanel;
    InvoiceSQLFK_SUBJECT_SERIAL: TIntegerField;
    InvoiceSQLSUBJECT_NAME: TWideStringField;
    InvoiceSQLFULL_NAME: TWideStringField;
    RzPanel8: TRzPanel;
    FirstGRP: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    SerialFLD: TRzDBLabel;
    Label4: TLabel;
    Label1: TLabel;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
    Companylbl: TLabel;
    RzDBLabel3: TRzDBLabel;
    Label5: TLabel;
    RzDBLabel4: TRzDBLabel;
    RzDBLabel5: TRzDBLabel;
    wwDBComboBox1: TwwDBComboBox;
    RzPanel9: TRzPanel;
    RzPanel5: TRzPanel;
    RzPanel6: TRzPanel;
    SavePresBTN: TBitBtn;
    CanelBTN: TBitBtn;
    RzPanel10: TRzPanel;
    RzPanel11: TRzPanel;
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure DateFLDClick(Sender: TObject);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure SavePresBTNClick(Sender: TObject);
    procedure InvoiceBTNClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CanelBTNClick(Sender: TObject);
    procedure TableSQLAfterScroll(DataSet: TDataSet);
    procedure InvoiceGRDColEnter(Sender: TObject);
    procedure InvoiceSQLBeforePost(DataSet: TDataSet);
    procedure InvoiceGRDCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure N3Click(Sender: TObject);
    procedure SeminarSubjectSQLAfterScroll(DataSet: TDataSet);
    procedure AnadCheckFLDClick(Sender: TObject);
    procedure SeminarSubjectSQLBeforeScroll(DataSet: TDataSet);
    procedure InvoiceSQLNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    VatRate:Double;
    cn:TIBCConnection;
    procedure GenerateInvoices(COnst seminarSubjectSerial:Integer);
    procedure GetInvoices();
  public
    { Public declarations }
    IN_ACTION:String;
    IN_seminar_serial:Integer;
  end;

var
  I_InvoiceSeminarFRM: TI_InvoiceSeminarFRM;

implementation

uses   U_Database, G_generalProcs, R_invoices;


{$R *.DFM}

procedure TI_InvoiceSeminarFRM.TableSQLAfterScroll(DataSet: TDataSet);
var
  isInvoiced:Boolean;
  isApproved:boolean;
begin
    isAPproved:=Dataset.FieldByName('status').AsString='A';
    invoiceBTN.Enabled:=isApproved;
    GetInvoices();
end;


procedure TI_InvoiceSeminarFRM.GetInvoices();
var
  SubjectSerial:Integer;
begin

  SubjectSerial := SeminarSubjectSQL.FieldByName('serial_number').AsInteger;

  if invoiceSQL.Active then
    InvoiceSQL.Close;
  InvoiceSQL.ParamByName('SubjectSerial').Value:=subjectSerial;
  InvoiceSQL.Open;


end;

procedure TI_InvoiceSeminarFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TI_InvoiceSeminarFRM.InvoiceGRDCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if (field.FieldName='AMOUNT_VAT')OR (field.FieldName='AMOUNT_WITH_VAT') then begin
    Abrush.Color:=clBtnFace;
  end;
end;

procedure TI_InvoiceSeminarFRM.InvoiceGRDColEnter(Sender: TObject);
var
  selectedField:String;
begin
  SelectedFIeld:=InvoiceGRD.SelectedField.FieldName;
  if (selectedField ='AMOUNT_VAT')OR(selectedFIeld='AMOUNT_WITH_VAT') then begin
    InvoiceGRD.SetActiveField('discount_customer');
  end;
end;

procedure TI_InvoiceSeminarFRM.InvoiceSQLBeforePost(DataSet: TDataSet);
Var
  vatAMount,AmountForVat:Double;
  Gross,DiscountCust,DiscountSafe:Double;
  AmountCharged:DOuble;
  AmountNEt:Double;
  PriceNormal,PriceANAD:Double;
begin

  AmountForVat:=Dataset.FieldByName('amount_gross').AsFloat -Dataset.FieldByName('Discount_customer').AsFloat;
  VatAmount:=AmountForVat *Dataset.FieldByName('vat_rate').AsFloat/100.00;
  AmountCharged:= AmountForVat -Dataset.FieldByName('Discount_by_safe').AsFloat + VAtAmount;
  AmountNet:= Dataset.FieldByName('amount_gross').AsFloat
       -Dataset.FieldByName('Discount_by_safe').AsFloat
       -Dataset.FieldByName('Discount_Customer').AsFloat;

  VatAmount:=Max(0,VatAmount);
  AmountCharged:=Max(0,AmountCharged);
  Dataset.FieldByName('amount_vat').Value:=VatAmount;
  Dataset.FieldByName('amount_with_vat').Value:=AmountCharged;
  Dataset.FieldByName('amount_net').Value:=AmountNet;
//

end;

procedure TI_InvoiceSeminarFRM.InvoiceSQLNewRecord(DataSet: TDataSet);
begin

    dataset.FieldByName('is_ANAD').AsString :='Y';
    Dataset.FieldByName('amount_gross').AsFloat :=SeminarSubjectSQL.FieldByName('FEE_Reduced').AsFloat;

end;

procedure TI_InvoiceSeminarFRM.N3Click(Sender: TObject);
vAR
  Frm:TR_InvoicesFRM;
  seminarSubjectSerial:Integer;

begin

  frm :=  TR_InvoicesFRM.Create(nil);
  frm.IN_SeminarSerial:=SeminarSQL.FieldByName('serial_number').AsInteger;
  frm.IN_SeminarSubjectSerial :=SeminarSubjectSQL.FieldByName('serial_number').AsInteger;
  try
    frm.PrintSeminar();
  finally
    frm.Free;
  end;
end;

procedure TI_InvoiceSeminarFRM.wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
getInvoices();
end;

procedure TI_InvoiceSeminarFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TI_InvoiceSeminarFRM.DateFLDClick(Sender: TObject);
var
  aDate:TDate;
begin

end;

procedure TI_InvoiceSeminarFRM.FormActivate(Sender: TObject);
var
  params:G_generalProcs.TParameterRecord;
  SeminarStatus:String;
begin




  if not InvoiceSQL.UpdateTransaction.Active then
     InvoiceSQL.UpdateTransaction.StartTransaction;

  SeminarSQL.Close;
  SeminarSQL.ParamByName('seminarSerial').Value:= IN_seminar_serial;
  SeminarSQL.open;

  ksOpenTables([SEminarSubjectSQL]) ;

  InvoiceSQL.Close;
  InvoiceSQL.ParamByName('subjectSerial').Value:= SeminarSubjectSQL.FieldByName('serial_number').AsInteger;
  InvoiceSQL.open;

  SeminarStatus:=SeminarSQL.FieldByName('status').AsString;
  invoiceSQL.ReadOnly:= (SeminarStatus<>'A')
end;

procedure TI_InvoiceSeminarFRM.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  Canclose:= not InvoiceSQL.UpdatesPending;
  if not CanClose then
    showMessage('Save Or Cancel before Exit');
end;

procedure TI_InvoiceSeminarFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;



procedure TI_InvoiceSeminarFRM.SavePresBTNClick(Sender: TObject);
VAR
  dataset:TIBCQuery;
  str:String;
begin

  if InvoiceSQL.State in [dsEdit,dsInsert] then begin
    InvoiceSQL.Post;
  end;

  if not InvoiceSQL.UpdatesPending then begin
   showMessage('no updates');
   exit;
  end;

  //  if not InvoiceSQL.Connection.DefaultTransaction.Active then NOPEE!
  if not InvoiceSQL.Connection.InTransaction then
    InvoiceSQL.Connection.StartTransaction;

  try
    InvoiceSQL.Connection.ApplyUpdates;//it will commit because applyupdates is on the connection
  except
    InvoiceSQL.Connection.Rollback;
    InvoiceSQL.RestoreUpdates;
    raise;
  end;

end;



procedure TI_InvoiceSeminarFRM.SeminarSubjectSQLAfterScroll(DataSet: TDataSet);
begin
  InvoiceSQL.Close;
  InvoiceSQL.ParamByName('subjectSerial').Value:= SeminarSubjectSQL.FieldByName('serial_number').AsInteger;
  InvoiceSQL.open;

end;

procedure TI_InvoiceSeminarFRM.SeminarSubjectSQLBeforeScroll(DataSet: TDataSet);
var
  CanClose:Boolean;

begin
  Canclose:= not InvoiceSQL.UpdatesPending;
  if not CanClose then begin
    showMessage('Save Or Cancel before Exit');
    abort;
  end;

end;

procedure TI_InvoiceSeminarFRM.GenerateInvoices(COnst seminarSubjectSerial:Integer);
var
  qr:TksQuery;
  str,PerViewStr:String;
  SerialNumber:integer;
  SeminarSerial:Integer;
  isMono:Boolean;
  PriceNormal,PriceAnad,PriceUsed:Double;

  PersonSerial:Integer;
  amountVat:Double;
  AmountTotal:Double;
  DiscountNormal:Double;
  DiscountSafe:Double;
  isFOund:Boolean;
  param:TParameterRecord;
  SubjectName:string;

  PriceJ:Double;
  cntStudents:Integer;

  vatRate:Double;
begin


 param:=gpGetGeneralParam(cn,'T00');
  VatRate:=param.P_Float1;

//  ksExecSQLVar(cn,'delete from invoice where fk_seminar_serial= :SeminarSerial',[SeminarSerial]);
  invoiceSQL.Close;
  invoiceSQL.Open;

  Str:=
  '   select sub.*, sem.type_mono_poly,sem.anad_approved     from'
  +'  seminar_subject sub left outer join'
  +'  seminar sem on sem.serial_number=sub.fk_seminar_serial'
  +'  where'
  +'  sub.serial_number= :SsSerial';
  qr:= TksQuery.Create(cn,str);
  try
    qr.ParamByName('SsSerial').value:=SeminarSubjectSerial;
    qr.open;
    isMono:=qr.FieldByName('TYPE_MONO_POLY').Value='M';
    PriceNormal:=qr.FieldByName('fee_normal').AsFloat;
    PriceANAD:=qr.FieldByName('fee_reduced').AsFloat;    //take this as default
    SeminarSerial:=qr.FieldByName('fk_seminar_serial').AsInteger;
    SubjectName:=qr.FieldByName('subject').AsString;
  finally
    qr.Free;
  end;

  If (PriceANAD<=0) or (PriceNormal <=0) then begin
    ShowMessage('Το Θέμα δεν έχει Χρεώσεις');
    exit;
  end;
  //////////////////////////////////////////////////////////////////
  ///
  if isMono then begin
    //company will be invoiced
    PerViewStr:=
    ' select'
    +'  first 1 sem.fk_company_person_serial as per_Serial, per.NATIONAL_ID, per.last_name as Inv_Last_name, per.first_name as inv_first_name'
    +'  from'
    +'      seminar sem left outer join'
    +'      person per on sem.fk_company_person_serial= per.serial_number'
    +'  where'
    +'  sem.serial_number = :SeminarSerial';


    str:='select sp.fk_seminar_serial from seminar_person sp where sp.is_guest=''N'' and sp.fk_seminar_serial= :SeminarSerial';
    cntStudents:=  ksCountRecVarSQL(cn,str,[SeminarSerial]);
    priceJ:=cntStudents * priceAnad;

  end else begin
    PerViewStr:=
    '   select'
    +'    sp.person_serial as per_serial, sp.national_id, sp.last_name as INv_last_name, sp.first_name as inv_first_name'
    +'  from'
    +'      seminar_person_view sp'
    +'  where'
    +'      sp.fk_seminar_serial = :SeminarSerial    and sp.is_guest<>''Y''  ';

    priceJ:=PriceAnad;
  end;

  qr:= TksQuery.Create(cn,PerViewstr);
  try
    qr.ParamByName('seminarSerial').value:=SeminarSerial;
    qr.open;

    if not INvoiceSQL.Active then
      InvoiceSql.Open;

    while not qr.Eof do begin

        PersonSerial := qr.FieldByName('per_serial').AsInteger;
        isFound:=ksCountRecVarSQL(cn,'select * from invoice where fk_Subject_serial=:SSerial and fk_person_serial= :person',[SeminarSubjectSerial,PersonSerial])>0;
        if isFound then begin
          qr.Next;
          continue;
        end;

        SerialNumber:=ksGenerateSerial(cn,'GEN_INVOICE');

        InvoiceSQL.Insert;
        InvoiceSQL.FieldByName('serial_number').Value:=SerialNumber;
        InvoiceSQL.FieldByName('fk_Subject_serial').Value:=SEminarSubjectSerial;
        InvoiceSQL.FieldByName('Subject_Name').Value:=SubjectName;
        InvoiceSQL.FieldByName('fk_PERSON_serial').Value:=qr.FieldByName('per_serial').AsInteger;
        InvoiceSQL.FieldByName('last_name').Value       :=qr.FieldByName('inv_last_name').AsString;
        InvoiceSQL.FieldByName('first_name').Value:=qr.FieldByName('inv_first_name').AsString;
        InvoiceSQL.FieldByName('FUll_name').Value:=qr.FieldByName('inv_first_name').AsString;
        InvoiceSQL.FieldByName('PERSON_NATIONAL_ID').Value:=Trim(qr.FieldByName('national_id').AsString);
//        +' '+Trim(qr.FieldByName('inv_last_name').AsString);

        InvoiceSQL.FieldByName('Discount_Customer').Value:=0; //will change in beforePost
        InvoiceSQL.FieldByName('Discount_by_safe').Value:=0;
        InvoiceSQL.FieldByName('AMOUNT_NET').AsFloat:=0;

        InvoiceSQL.FieldByName('AMOUNT_GROSS').AsFloat:=PriceJ;
        InvoiceSQL.FieldByName('VAT_RATE').AsFloat:=VatRate;

        AmountVat:= PriceAnad* vatRate/100.00;
        AmountTotal:=PriceAnad+amountVat;


        InvoiceSQL.FieldByName('IS_ANAD').Value:='Y';
        InvoiceSQL.FieldByName('Invoice_status').Value:='U';
        InvoiceSQL.FieldByName('DATE_INVOICED').Value:=NOW;
        InvoiceSQL.Post;
        qr.Next;
    end;
  finally
    qr.Free;
  end;

end;


procedure TI_InvoiceSeminarFRM.InvoiceBTNClick(Sender: TObject);
var
  SeminarSerial:Integer;
  seminarSubjectSerial:Integer;
  SeminarStatus:String;
  SeminarCategory:String;
  str:string;
begin
  SeminarStatus:=SeminarSQL.FieldByName('status').AsString;
  if SeminarStatus<>'A' then begin
    MessageDlg('Το σεμινάριο  δεν μπορεί να τιμολογηθεί γιατί δεν είναι σε στάδιο  ''ΕΓΚΡΙΣΗΣ'' ', mtWarning, [mbOK], 0);
    abort;
  end;

  SeminarCategory:=SeminarSQL.FieldByName('sem_category').AsString;
  SeminarSerial:=SeminarSQL.FieldByName('serial_number').AsInteger;
  str:= 'select sc.category_code,sc.is_invoice from'
      +' seminar sem        left outer join '
      +' sem_category sc    on sem.sem_category=sc.category_code'
      +' where  sem.serial_number = :SeminarSerial and sc.is_invoice=''Y'' ';
  if ksCountRecVarSQL(cn,str,[SeminarSerial])=0 then begin
    MessageDlg('Seminar Type '+ SeminarCategory +' cannot be Invoiced', mtWarning, [mbOK], 0);
    exit;
  end;

  if InvoiceSQL.State in [dsEdit,dsInsert] then begin
    InvoiceSQL.Post;
  end;

  if InvoiceSQL.UpdatesPending then begin
   showMessage('Save or Cancel First ');
   exit;
  end;


  SeminarSerial:=IN_seminar_serial;
  SeminarSubjectSerial:=seminarSubjectSQL.FieldByName('serial_number').asInteger;
  if seminarSubjectSerial <1 then begin
    MessageDlg('Select SUBJECT first', mtError, [mbOK], 0);
    exit;
  end;


//   if not InvoiceSQL.Connection.InTransaction then
//    InvoiceSQL.Connection.StartTransaction;
    if not InvoiceSQL.UpdateTransaction.Active then
      InvoiceSQL.UpdateTransaction.StartTransaction;

  GenerateInvoices(seminarSubjectSerial);

  if InvoiceSQL.UpdateTransaction.Active then
      InvoiceSQL.UpdateTransaction.commit;

//   if  InvoiceSQL.Connection.InTransaction then
//    InvoiceSQL.Connection.Commit;
end;

procedure TI_InvoiceSeminarFRM.AnadCheckFLDClick(Sender: TObject);
var
  SeminarSerial:Integer;
  IsMono:Boolean;
  CountMembers:Integer;
  str:string;
begin
  if TwwCheckBox(sender).Modified then begin

    seminarSerial:=SeminarSQL.FieldByName('serial_number').AsInteger;

    str:='select * from seminar sem where sem.serial_number= :SeminarSerial and sem.type_mono_poly = :Mono ';

    countMembers:=ksExecSQLVar(cn,str,[SeminarSerial,'M']);
    IsMOno:= ksCountRecVarSQL(cn,str,[SeminarSerial,'M'])>0;

    str:='select sp.fk_person_serial from seminar_person sp where sp.fk_seminar_serial= :SeminarSerial';
    CountMembers:= ksCountRecVarSQL(cn,str,[SeminarSerial]);

    if not isMono then  //for mono will only invoice ONE company multiply by number of students
       CountMembers:=1;

    if invoiceSQL.State in [dsBrowse] then
      invoiceSQL.edit;



    if (AnadCheckFLD.Checked) then begin
    //CHECK VALUE before the click
      InvoiceSQL.FieldByName('amount_gross').AsFloat :=CountMembers * SeminarSubjectSQL.FieldByName('fee_Reduced').AsFloat;
    end else begin
      InvoiceSQL.FieldByName('amount_gross').AsFloat :=CountMembers * SeminarSubjectSQL.FieldByName('FEE_Normal').AsFloat;
    end;

  end;
end;

procedure TI_InvoiceSeminarFRM.Button1Click(Sender: TObject);
var
  seminarSerial:Integer;
begin
end;

procedure TI_InvoiceSeminarFRM.CanelBTNClick(Sender: TObject);
begin


  InvoiceSQL.Cancel;
  if  InvoiceSQL.UpdatesPending then begin
    InvoiceSQL.CancelUpdates;
//    if InvoiceSQL.Connection.InTransaction then  NO NEED FOR THIS
//      INvoiceSQL.Connection.Rollback;

  end;

end;

End.
