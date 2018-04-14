unit R_invoices;

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

  TR_InvoicesFRM = class(TForm)
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
    ppDBText3: TppDBText;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppDBText6: TppDBText;
    ppShape1: TppShape;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    SelectSubjectSQL: TIBCQuery;
    SeminarSubjectSRC: TDataSource;
    SeminarPIP: TppDBPipeline;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText5: TppDBText;
    ppLabel2: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppDBText11: TppDBText;
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
    FirstGRP: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    SerialFLD: TRzDBLabel;
    Label4: TLabel;
    Label1: TLabel;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
    Label5: TLabel;
    RzDBLabel4: TRzDBLabel;
    RzDBLabel5: TRzDBLabel;
    wwDBComboBox1: TwwDBComboBox;
    InvoiceSQLFK_SUBJECT_SERIAL: TIntegerField;
    InvoiceSQLSUBJECT_NAME: TWideStringField;
    Label6: TLabel;
    RzDBLabel6: TRzDBLabel;
    GroupBox1: TGroupBox;
    RzPanel1: TRzPanel;
    wwDBGrid1: TwwDBGrid;
    SeminarSQL: TIBCQuery;
    SeminarSRC: TDataSource;
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
    SelectSubjectSQLSERIAL_NUMBER: TIntegerField;
    SelectSubjectSQLFK_SEMINAR_SERIAL: TIntegerField;
    SelectSubjectSQLSUBJECT: TWideStringField;
    SelectSubjectSQLFK_SUBJECT_TYPE_SERIAL: TIntegerField;
    SelectSubjectSQLFEE_NORMAL: TFloatField;
    SelectSubjectSQLFEE_REDUCED: TFloatField;
    SeminarSubjectPIP: TppDBPipeline;
    ppLabel13: TppLabel;
    ppDBText12: TppDBText;
    SelectSubjectSRC: TDataSource;
    SeminarSubjectSQL: TIBCQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure PrintRBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure VtFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  Function FindActionDate(const DateSeminar:TDate;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Tdate;
  Function CalcDaysLeft():TReminderResult;
  procedure PrintTheSeminar(const SeminarSerial, SeminarSubjectSerial:integer);
  public
    { Public declarations }
    IN_SeminarSubjectSerial:Integer;
    IN_SeminarSerial:Integer;
  procedure PrintSeminar();
  end;

var
  R_InvoicesFRM: TR_InvoicesFRM;

implementation

uses U_Database, G_SFCommonProcs, G_KyrSQL;


{$R *.DFM}





procedure TR_InvoicesFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TR_InvoicesFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;




procedure TR_InvoicesFRM.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  (sender as TppReport).PreviewForm.WindowState := wsMaximized;
  TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;


procedure TR_InvoicesFRM.ppVariable3Calc(Sender: TObject; var Value: Variant);
begin
//   value:=FromDateFLD.Date;
end;

procedure TR_InvoicesFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;




procedure TR_InvoicesFRM.VtFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  accept := Dataset.FieldByName('DaysCalc').asInteger >= 0;
end;

Function TR_InvoicesFRM.CalcDaysLeft():TReminderResult;
begin


end;



Function TR_InvoicesFRM.FindActionDate(const DateSeminar:TDate;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Tdate;
var
  mySign:Integer;
  DateReminder:TDate;
begin
  if isAfter then
    mySign:=1
  else
    mySign:=-1;

  try
    if IsDayUnit then
      DateReminder:= IncDay( DateSeminar, mySign * NumberOfUnits)
    else
      DateReminder:= IncMonth( DateSeminar, mySign * NumberOFUnits);

    Result:=Trunc( DateREminder);
  except
    result:=EncodeDate(1900,01,01);
  end;


end;

procedure TR_InvoicesFRM.PrintRBtnClick(Sender: TObject);
var
   SubjectSerial:Integer;
begin
  subjectSerial:=SelectSubjectSQL.FieldByName('serial_number').AsInteger;
  if SubjectSerial>0 then
    PrintTheSeminar(IN_SeminarSerial,SubjectSerial);
end;

procedure TR_InvoicesFRM.PrintSeminar();
begin
  if (IN_SeminarSerial>0)  then
    PrintTheSeminar(IN_SeminarSerial,IN_SeminarSubjectSerial);

end;


procedure TR_InvoicesFRM.PrintTheSeminar(const SeminarSerial, SeminarSubjectSerial:integer);

Var
   FromDate:TDateTime;
   DaysLeft:integer;

begin

  if SeminarSubjectSerial<1 then begin
    showMessage('Invalid Selected Seminar Subject');
    exit;
  end;

  SeminarSQL.Close;
  SeminarSQL.ParamByName('SeminarSerial').Value:=SeminarSerial;
  SeminarSQL.Open;

  SeminarSubjectSQL.Close;
  SeminarSubjectSQL.ParamByName('SubjectSerial').Value:=SeminarSubjectSerial;
  SeminarSubjectSQL.Open;

  InvoiceSQL.Close;
  InvoiceSQL.ParamByName('SubjectSerial').Value:=SeminarSubjectSerial;
  InvoiceSQL.Open;


  PpReport1.Print;

end;

procedure TR_InvoicesFRM.FormActivate(Sender: TObject);
begin
SeminarSQL.Close;
SeminarSQL.ParamByName('seminarSerial').Value:=IN_SeminarSerial;
SeminarSQL.Open;

ksOpenTables([ SelectSubjectSQL]);
end;

procedure TR_InvoicesFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;


end.
