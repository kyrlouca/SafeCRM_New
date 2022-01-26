unit l_listInvoices;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  vcl.wwcheckbox, Vcl.Menus;
type
  TL_listInvoicesFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    wwIncrementalSearch1: TwwIncrementalSearch;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    Grid1: TwwDBGrid;
    wwIncrementalSearch2: TwwIncrementalSearch;
    wwIncrementalSearch3: TwwIncrementalSearch;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    RzPanel4: TRzPanel;
    RzPanel5: TRzPanel;
    RzGroupBox1: TRzGroupBox;
    Label2: TLabel;
    PayStatusFLD: TwwDBComboBox;
    PrintRBtn: TBitBtn;
    MainMenu1: TMainMenu;
    Reports1: TMenuItem;
    N3: TMenuItem;
    TableSQLPAYMENT: TFloatField;
    TableSQLREMAINING: TFloatField;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLFK_PERSON_SERIAL: TIntegerField;
    TableSQLINVOICE_STATUS: TWideStringField;
    TableSQLDATE_INVOICED: TDateField;
    TableSQLVAT_RATE: TFloatField;
    TableSQLDISCOUNT_BY_SAFE: TFloatField;
    TableSQLDISCOUNT_CUSTOMER: TFloatField;
    TableSQLAMOUNT_GROSS: TFloatField;
    TableSQLAMOUNT_NET: TFloatField;
    TableSQLAMOUNT_VAT: TFloatField;
    TableSQLAMOUNT_WITH_VAT: TFloatField;
    TableSQLIS_ANAD: TWideStringField;
    TableSQLLAST_NAME: TWideStringField;
    TableSQLFIRST_NAME: TWideStringField;
    TableSQLFK_SUBJECT_SERIAL: TIntegerField;
    TableSQLSUBJECT_NAME: TWideStringField;
    TableSQLFULL_NAME: TWideStringField;
    TableSQLLAST_FIRST_NAME: TWideStringField;
    TableSQLNATIONAL_ID: TWideStringField;
    TableSQLPHONE_MOBILE: TWideStringField;
    IBCQuery1: TIBCQuery;
    TableSQLPERSON_NATIONAL_ID: TWideStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Grid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure TableSQLNewRecord(DataSet: TDataSet);
    procedure Grid1DblClick(Sender: TObject);
    procedure PayStatusFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure PrintRBtnClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
    procedure DisplayFilter;
  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;

  end;

var
  L_listInvoicesFRM: TL_listInvoicesFRM;

implementation

uses   U_Database, G_generalProcs, M_payment, P_ViewPayment, R_InvoicesUnpaid;


{$R *.DFM}

procedure TL_listInvoicesFRM.PayStatusFLDCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin
DisplayFIlter();

end;

procedure TL_listInvoicesFRM.PrintRBtnClick(Sender: TObject);
var
  Frm: TP_ViewPaymentFRM;
begin
  frm := TP_ViewPaymentFRM.Create(nil);
  try

    frm.IN_Invoice_Serial:=TableSQL.FieldByName('serial_number').AsInteger;
    frm.ShowModal;
    ksOpenTables([TableSQL])
  finally
    frm.Free;
  end;
end;

procedure TL_listInvoicesFRM.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TL_listInvoicesFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TL_listInvoicesFRM.TableSQLNewRecord(DataSet: TDataSet);
begin
Dataset.FieldByName('status_active').Value:='Y';
//Dataset.FieldByName('is_company').Value:='N';

end;

procedure TL_listInvoicesFRM.TableSRCStateChange(Sender: TObject);
begin


  with TableSQL do begin
     If State<>dsInsert then begin
//         StationIDFLD.Enabled:=false;
     end  else begin
//         StationIDFLD.Enabled:=true;
     end;
  end;//with

end;

procedure TL_listInvoicesFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TL_listInvoicesFRM.FormActivate(Sender: TObject);
begin
//ksOpenTables([TableSQL]);
DisplayFilter();

end;

procedure TL_listInvoicesFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if TableSQL.State in [dsInsert, dsEdit] then
   TableSQL.Post;
end;

procedure TL_listInvoicesFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TL_listInvoicesFRM.Grid1DblClick(Sender: TObject);
var
  Frm: TP_ViewPaymentFRM;
begin
  frm := TP_ViewPaymentFRM.Create(nil);
  try

    frm.IN_Invoice_Serial:=TableSQL.FieldByName('serial_number').AsInteger;
    frm.ShowModal;
    ksOpenTables([TableSQL])
  finally
    frm.Free;
  end;
end;



procedure TL_listInvoicesFRM.Grid1TitleButtonClick(Sender: TObject;
  AFieldName: string);
  var
         sortInfoHawb:TSOrtInfo;
         Table:TIBCQuery;


  begin
        Table:=TIbcQuery(Grid1.DataSource.DataSet);
        SortInfoHawb.Table:=Table;
        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawb);

end;

procedure TL_listInvoicesFRM.N3Click(Sender: TObject);
vAR
  Frm:TR_invoicesUnpaidFRM;
  seminarSerial:Integer;

begin
//  seminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;

  frm :=  TR_invoicesUnpaidFRM.Create(nil);
//  frm.IN_certificate_serial:=0;
    frm.IN_SQL:=TableSQL.FinalSQL;
  try
    frm.PrintInvoices;
  finally
    frm.Free;
  end;
end;

procedure TL_listInvoicesFRM.CanelBTNClick(Sender: TObject);
begin
TableSQL.Cancel;
close;
end;



procedure TL_listInvoicesFRM.DisplayFilter;
var
  SeminarSerial:Integer;
begin
TableSQL.Close;
TableSQL.RestoreSQL;
//index:=sender.ItemIndex;
  if PayStatusFld.ItemIndex=0 then begin
      TableSQL.AddWhere('invoice_status = ''U'' ')
  end else if PayStatusFLD.ItemIndex=1 then begin
      TableSQL.AddWhere('invoice_status = ''P'' ');
  end;


  TableSQL.Open;


end;


End.
