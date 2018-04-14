unit P_ViewPayment;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  vcl.wwcheckbox, RzTabs, RzSplit, Vcl.ComCtrls, vcl.wwriched, RzDBEdit;
type
  TP_ViewPaymentFRM = class(TForm)
    Panel4: TrzPanel;
    InvoiceSRC: TDataSource;
    InvoiceSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    m: TIBCTransaction;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    BodyPANEL: TRzPanel;
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
    InvoiceSQLLAST_NAME: TWideStringField;
    InvoiceSQLFIRST_NAME: TWideStringField;
    InvoiceSQLPERSON_NATIONAL_ID: TWideStringField;
    InvoiceSQLFK_SUBJECT_SERIAL: TIntegerField;
    InvoiceSQLSUBJECT_NAME: TWideStringField;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    Grid1: TwwDBGrid;
    RzPanel4: TRzPanel;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    wwDBEdit2: TRzDBLabel;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
    RzDBLabel3: TRzDBLabel;
    RzDBLabel4: TRzDBLabel;
    Label6: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    RzPanel5: TRzPanel;
    Panel2: TRzPanel;
    Panel1: TRzPanel;
    PaymentSql: TIBCQuery;
    PaymentSrc: TDataSource;
    PaymentSqlSERIAL_NUMBER: TIntegerField;
    PaymentSqlFK_INVOICE_SERIAL: TIntegerField;
    PaymentSqlAMOUNT_PAID: TFloatField;
    PaymentSqlPAYMENT_METHOD: TWideStringField;
    PaymentSqlCHEQUE_NUMBER: TWideStringField;
    PaymentSqlDATE_PAYMENT: TDateField;
    RzPanel6: TRzPanel;
    InsertHawbBTN: TRzBitBtn;
    DeletehawbBTN: TRzBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Nav1InsertClick(Sender: TObject);
    procedure InvoiceSQLNewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure InsertHawbBTNClick(Sender: TObject);
    procedure DeletehawbBTNClick(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
    IN_ACTION:String;
    IN_Invoice_Serial:Integer;
    Procedure ShowPayment(Const Serial:integer);

  end;

var
  P_ViewPaymentFRM: TP_ViewPaymentFRM;

implementation

uses   U_Database, G_generalProcs, P_makePayment;


{$R *.DFM}

procedure TP_ViewPaymentFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TP_ViewPaymentFRM.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TP_ViewPaymentFRM.InsertHawbBTNClick(Sender: TObject);
var
  Frm: TP_MakePaymentFRM;
begin
  frm := TP_MakePaymentFRM.Create(nil);
  try

    frm.IN_INVOICE_SERIAL:=invoiceSQL.FieldByName('serial_number').AsInteger;
    frm.ShowModal;
    ksOpenTables([PaymentSQL])
  finally
    frm.Free;
  end;
end;

procedure TP_ViewPaymentFRM.InvoiceSQLNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('reminder_type').Value:='S';
  Dataset.FieldByName('PERSON_OR_SEMINAR').Value:='S';
  Dataset.FieldByName('is_completed').Value:='N';

end;

procedure TP_ViewPaymentFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TP_ViewPaymentFRM.FormActivate(Sender: TObject);
begin
  if IN_Invoice_Serial<1 then begin
    close;
  end;
     ShowPayment(IN_Invoice_Serial);
end;

Procedure TP_ViewPaymentFRM.ShowPayment(Const Serial:integer);
Var
        Dataset:TIBCQuery;
Begin
  Dataset:=InvoiceSQL;
  with Dataset do begin
    close;
    ParamByName('SerialNumber').value:=Serial;
    Open;
  end;
  ksOpenTables([PaymentSQL])

//  if FirstFLD.CanFocus then
//  firstFLD.SetFocus;

End;



procedure TP_ViewPaymentFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TP_ViewPaymentFRM.Nav1InsertClick(Sender: TObject);
begin
//  FirstFLD.SetFocus;
end;

procedure TP_ViewPaymentFRM.CanelBTNClick(Sender: TObject);
begin
  close;
end;


procedure TP_ViewPaymentFRM.DeletehawbBTNClick(Sender: TObject);
var
  PaySerial:Integer;
begin
  paySerial:=PaymentSql.FieldByName('serial_number').AsInteger;
  ksExecSQLVar(cn,'delete from invoice_payment pay where pay.serial_number= :PaymentSerial',[PaySerial]);
  ksOpenTables([PaymentSql]);
end;

End.
