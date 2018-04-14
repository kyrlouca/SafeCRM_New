unit R_InvoicesUnpaid;

interface

uses
  Windows, Messages, SysUtils,System.DateUtils,System.math, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError,  Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit,  DBGrids, wwdbdatetimepicker, ppDB, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppProd, ppReport, ppComm, ppRelatv,
  ppCache, ppDBPipe,ppTypes,ppviewr, ppDesignLayer, ppParameter, RzButton,
  RzPanel, Vcl.Imaging.pngimage, VirtualTable, vcl.Wwdotdot, vcl.Wwdbcomb,
  RzLabel, RzDBLbl, vcl.wwdblook;

type
  TReminderResult= Record
    daysLeft:Integer;
    DateFinal:Tdate;
  End;

  TR_invoicesUnpaidFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    InvoiceSQL: TIBCQuery;
    InvoiceSRC: TDataSource;
    InvoicePIP: TppDBPipeline;
    PrintRBtn: TBitBtn;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    ppReport1: TppReport;
    ppParameterList3: TppParameterList;
    ppTitleBand3: TppTitleBand;
    ppLabel4: TppLabel;
    ppImage3: TppImage;
    ppHeaderBand3: TppHeaderBand;
    ppLine5: TppLine;
    ppLabel5: TppLabel;
    ddBand: TppDetailBand;
    ppDBText4: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppLine6: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppDBText6: TppDBText;
    PersonPIP: TppDBPipeline;
    ppDBText8: TppDBText;
    PersonSQL: TIBCQuery;
    PersonSrc: TDataSource;
    PersonSQLSERIAL_NUMBER: TIntegerField;
    PersonSQLFK_COMPANY_SERIAL: TIntegerField;
    PersonSQLLAST_NAME: TWideStringField;
    PersonSQLFIRST_NAME: TWideStringField;
    PersonSQLNATIONAL_ID: TWideStringField;
    PersonSQLNICKNAME: TWideStringField;
    PersonSQLOCCUPATION: TWideStringField;
    PersonSQLPHONE_MOBILE: TWideStringField;
    PersonSQLPHONE_FIXED: TWideStringField;
    PersonSQLPHONE_ALTERNATE: TWideStringField;
    PersonSQLFAX: TWideStringField;
    PersonSQLEMAIL: TWideStringField;
    PersonSQLEMAIL_2: TSmallintField;
    PersonSQLADDRESS: TWideStringField;
    PersonSQLADDRESS_STREET: TWideStringField;
    PersonSQLADDRESS_POST_CODE: TWideStringField;
    PersonSQLADDRESS_CITY: TWideStringField;
    PersonSQLADDRESS_DISTRICT: TWideStringField;
    PersonSQLDATE_STARTED: TDateField;
    PersonSQLDATE_BIRTH: TDateField;
    PersonSQLDATE_USER: TDateField;
    PersonSQLLIST_SOURCE: TWideStringField;
    PersonSQLFACEBOOK: TWideStringField;
    PersonSQLWEBSITE: TWideStringField;
    PersonSQLTWITTER: TWideStringField;
    PersonSQLSTATUS_ACTIVE: TWideStringField;
    PersonSQLSEX: TWideStringField;
    PersonSQLIS_COMPANY: TWideStringField;
    PersonSQLCOMPANY_OWNER: TWideStringField;
    PersonSQLCOMPANY_CONTACT: TWideStringField;
    PersonSQLCOMPANY_REGISTRATION_DATE: TDateField;
    PersonSQLPHONE_CONTACT: TWideStringField;
    PersonSQLCOMPANY_CONTACT_FIRST: TWideStringField;
    PersonSQLCOMPANY_CONTACT_LAST: TWideStringField;
    PersonSQLCOMPANY_OWNER_REG: TWideStringField;
    PersonSQLCOMPANY_CONTACT_PHONE: TWideStringField;
    PersonSQLCOMPANY_CONTACT_EMAIL: TWideStringField;
    PersonSQLCOMPANY_CONTACT_FAX: TWideStringField;
    PersonSQLCOMPANY_SOCIAL_SEC: TWideStringField;
    ppLabel8: TppLabel;
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
    InvoiceSQLFULL_NAME: TWideStringField;
    InvoiceSQLPAYMENT: TFloatField;
    InvoiceSQLREMAINING: TFloatField;
    ppLabel11: TppLabel;
    ppDBText3: TppDBText;
    ppLabel12: TppLabel;
    ppLabel2: TppLabel;
    ppDBText9: TppDBText;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    PersonSQLSERIAL_QB: TIntegerField;
    PersonSQLCOMPANY_EMPLOYEES: TIntegerField;
    PersonSQLPHONE_MOBILE_2: TWideStringField;
    PersonSQLLINKED_IN: TWideStringField;
    PersonSQLJOB: TWideStringField;
    PersonSQLIS_SAFE_COMPANY: TWideStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure VtFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  Function CalcDaysLeft():TReminderResult;
  procedure PrintTheSeminar(const PersonSerial:Integer);
  public
    { Public declarations }
  IN_PersonSerial:Integer;
   IN_SQL:String;

  procedure PrintInvoices();
  end;

var
  R_invoicesUnpaidFRM: TR_invoicesUnpaidFRM;

implementation

uses U_Database, G_SFCommonProcs, G_KyrSQL;


{$R *.DFM}





procedure TR_invoicesUnpaidFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TR_invoicesUnpaidFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;




procedure TR_invoicesUnpaidFRM.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  (sender as TppReport).PreviewForm.WindowState := wsMaximized;
  TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;


procedure TR_invoicesUnpaidFRM.ppVariable3Calc(Sender: TObject; var Value: Variant);
begin
//   value:=FromDateFLD.Date;
end;

procedure TR_invoicesUnpaidFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;




procedure TR_invoicesUnpaidFRM.VtFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  accept := Dataset.FieldByName('DaysCalc').asInteger >= 0;
end;

Function TR_invoicesUnpaidFRM.CalcDaysLeft():TReminderResult;
begin


end;




procedure TR_invoicesUnpaidFRM.PrintInvoices();
begin
    PrintTheSeminar(IN_PersonSerial);

end;


procedure TR_invoicesUnpaidFRM.PrintTheSeminar(const PersonSerial:Integer);

Var
   FromDate:TDateTime;
   DaysLeft:integer;

begin

  InvoiceSQL.Close;
  InvoiceSQL.SQL.Clear;
  InvoiceSQL.SQL.Add(IN_SQL);
   InvoiceSQL.Open;

  PpReport1.Print;

end;

procedure TR_invoicesUnpaidFRM.FormActivate(Sender: TObject);
begin
//SeminarSQL.Close;
//SeminarSQL.ParamByName('seminarSerial').Value:=IN_SeminarSerial;
//SeminarSQL.Open;
//
//ksOpenTables([ SelectSubjectSQL]);
end;

procedure TR_invoicesUnpaidFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;


end.
