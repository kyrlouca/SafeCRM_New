unit P_makePayment;

interface

uses WinApi.Windows,Dialogs, System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Forms, Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, RzPanel,
  Data.DB, MemDS, DBAccess, IBC, vcl.Wwdotdot, vcl.Wwdbcomb,
  vcl.Wwdbdatetimepicker, vcl.wwcheckbox, Vcl.Mask, vcl.Wwdbedit, RzLabel,
  RzDBLbl;

type
  TP_MakePaymentFRM = class(TForm)
    Panel4: TRzPanel;
    RzPanel1: TRzPanel;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    Panel1: TRzPanel;
    RzPanel2: TRzPanel;
    PaymentSql: TIBCQuery;
    PaymentSrc: TDataSource;
    WriteTrans: TIBCTransaction;
    m: TIBCTransaction;
    SecondGRP: TRzGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    AmountFLD: TwwDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    PayTypeFLD: TwwDBComboBox;
    RzDBLabel1: TRzDBLabel;
    PaymentSqlSERIAL_NUMBER: TIntegerField;
    PaymentSqlFK_INVOICE_SERIAL: TIntegerField;
    PaymentSqlAMOUNT_PAID: TFloatField;
    PaymentSqlPAYMENT_METHOD: TWideStringField;
    PaymentSqlDATE_PAYMENT: TDateField;
    PaymentSqlCHEQUE_NUMBER: TWideStringField;
    PaymentSqlPERSON_NAME: TWideStringField;
    Label3: TLabel;
    RzDBLabel2: TRzDBLabel;
    PaymentSqlFK_PERSON_SERIAL: TIntegerField;
    Label6: TLabel;
    wwDBEdit1: TwwDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    cn:TIBCConnection;
  procedure MakePayment(const InvoiceSerial:Integer);
  function CheckAMount(const InvoiceSerial:Integer):Double;
  public
    { Public declarations }
    IN_INVOICE_SERIAL:integer;
  end;

var
  P_MakePaymentFRM: TP_MakePaymentFRM;

implementation

{$R *.dfm}

uses U_Database, G_KyrSQL;

procedure TP_MakePaymentFRM.BitBtn1Click(Sender: TObject);
var
  PayAmount:Double;
  remainAmount:Double;
  status:String;
begin

  RemainAmount:=CheckAMount(IN_INVOICE_SERIAL);
  payAMount:=PaymentSql.FieldByName('amount_paid').AsFloat;
  if PayAmount > RemainAmount then begin
    MessageDlg('Το ποσό πληρωμής είναι μεγαλύτερο από το υπόλοιπο', mtError, [mbOK], 0);
    abort;
  end;

  IF PaymentSql.State in [dsInsert] then begin

    paymentSQL.Post;

    remainAmount:=CheckAMount(IN_Invoice_Serial);
    if remainAmount=0 then
      status:='P'
    else
      status:='U';
    ksExecSQLVar(cn, 'update invoice  set invoice_status= :status where serial_number= :invoiceSerial',[status,IN_INVOICE_SERIAL]);

    close;
  end;

end;

procedure TP_MakePaymentFRM.CanelBTNClick(Sender: TObject);
begin
  paymentSQL.cancel;
  close;
end;

procedure TP_MakePaymentFRM.FormActivate(Sender: TObject);
begin
  if IN_INVOICE_SERIAL<1 then begin
    close;
  end;
  MakePayment(IN_INVOICE_SERIAL);
  AmountFLD.SetFocus;
end;

procedure TP_MakePaymentFRM.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose:= PaymentSql.State <> dsInsert ;

end;

procedure TP_MakePaymentFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;

end;

function TP_MakePaymentFRM.CheckAMount(const InvoiceSerial:Integer):double;
var
  i:integer;
  qr:TksQuery;
  str:string;
  TotalPay:Double;
  InvAmount:double;

begin
  str:=
  ' select inv.fk_person_serial ,inv.amount_with_vat, per.*'
  +'  from'
  +'  invoice inv left outer join'
  +'  person_view per on inv.fk_person_serial= per.serial_number'
  +' where inv.serial_number = :InvoiceSerial';

  try
    qr:=TksQuery.Create(cn,'select    sum(pay.amount_paid) as Total from invoice_payment pay where  pay.fk_invoice_serial= :InvoiceSerial');
    qr.ParamByName('invoiceSerial').Value:=InvoiceSerial;
    qr.Open;
    totalPay:= qr.FieldByName('total').AsFloat;
  finally
    qr.Free;
  end;

  try
    qr:=TksQuery.Create(cn,'select inv.amount_with_vat from invoice inv where inv.serial_number= :InvoiceSerial');
    qr.ParamByName('invoiceSerial').Value:=InvoiceSerial;
    qr.Open;
    invAMount:= qr.FieldByName('amount_with_vat').AsFloat;
  finally
    qr.Free;
  end;


  result:=InvAmount-TotalPay;
End;


procedure TP_MakePaymentFRM.MakePayment(const InvoiceSerial:Integer);
var
  i:integer;
  qr:TksQuery;
  str:string;
begin
  str:=
  ' select inv.fk_person_serial ,inv.amount_with_vat, per.*'
  +'  from'
  +'  invoice inv left outer join'
  +'  person_view per on inv.fk_person_serial= per.serial_number'
  +' where inv.serial_number = :InvoiceSerial';

  try
    qr:=TksQuery.Create(cn,str);
    qr.ParamByName('invoiceSerial').Value:=InvoiceSerial;
    qr.Open;
    PaymentSQL.Close;
    PaymentSQL.Open;
    PaymentSQL.Insert;
    PaymentSQL.FieldByName('fk_invoice_serial').AsInteger:=IN_INVOICE_SERIAL;
    PaymentSQL.FieldByName('FK_PERSON_sERIAL').value:=qr.FieldByName('FK_PERSON_SERIAL').AsInteger;
    PaymentSQL.FieldByName('person_name').value:=qr.FieldByName('FIRST_last_name').AsString;
    PaymentSQL.FieldByName('DATE_PAYMENT').AsDateTime:=DATE;
    PaymentSQL.FieldByName('PAYMENT_METHOD').value:='C';
    PaymentSQL.FieldByName('amount_paid').value:=qr.FieldByName('AMOUNT_WITH_VAT').AsFloat;



  finally
    qr.Free;
  end;



end;





end.

