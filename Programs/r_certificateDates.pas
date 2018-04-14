unit r_certificateDates;

interface

uses
  Windows, Messages, SysUtils,System.DateUtils,System.math, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError,  Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit,  DBGrids, wwdbdatetimepicker, ppDB, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppProd, ppReport, ppComm, ppRelatv,
  ppCache, ppDBPipe,ppTypes,ppviewr, ppDesignLayer, ppParameter, RzButton,
  RzPanel, Vcl.Imaging.pngimage, VirtualTable, myChkBox, ppStrtch, ppSubRpt;

type
  TReminderResult= Record
    daysLeft:Integer;
    DateFinal:Tdate;
  End;

  TR_CertificateDatesFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    CertificateSQL: TIBCQuery;
    CertificateSRC: TDataSource;
    CertificatePIP: TppDBPipeline;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    FromDateFLD: TwwDBDateTimePicker;
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
    ppLabel1: TppLabel;
    ppLabel9: TppLabel;
    ppShape1: TppShape;
    ppLabel10: TppLabel;
    ppLabel13: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel2: TppLabel;
    ppLabel14: TppLabel;
    ppDBText2: TppDBText;
    myDBCheckBox2: TmyDBCheckBox;
    ppLabel16: TppLabel;
    DaysLeftLBL: TppDBText;
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
    CertificateSQLSUBJECT_HOURS: TIntegerField;
    CertificateSQLSEMINAR_CERTIFICATE: TWideStringField;
    CertificateSQLSEX: TWideStringField;
    CertificateSQLANAD_NUMBER: TWideStringField;
    CertificateSQLDATE_CREATED: TDateField;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    CertificateSubjectSQL: TIBCQuery;
    CertificateSubjectSRC: TDataSource;
    CertificateSubjectSQLFK_SEMINAR_CERTIFICATE_SERIAL: TIntegerField;
    CertificateSubjectSQLFK_SEMINAR_SUBJECT_SERIAL: TIntegerField;
    CertificateSubjectSQLHOURS: TIntegerField;
    CertificateSubjectSQLIS_PRESENT: TWideStringField;
    CertificateSubjectSQLDATE_LAST: TDateField;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppTitleBand1: TppTitleBand;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBText6: TppDBText;
    CertSubjectPIP: TppDBPipeline;
    CertificateSubjectSQLSUBJECT: TWideStringField;
    CertificateSubjectSQLANAD_NUMBER: TWideStringField;
    ppDBText8: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    SeminarSQL: TIBCQuery;
    SeminarSRC: TDataSource;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    SeminarPIP: TppDBPipeline;
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
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    NameFLD: TppVariable;
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure FormActivate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure NameFLDCalc(Sender: TObject; var Value: Variant);
    procedure FormCreate(Sender: TObject);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure CertificateSQLCalcFields(DataSet: TDataSet);
    procedure PrintRBtnClick(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  Function FindActionDate(const DateSeminar:TDate;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Tdate;
  Function CalcDaysLeft():TReminderResult;
    Procedure PrintSeminar(Const SeminarSerial:Integer);

  public
    { Public declarations }
    IN_SeminarSerial:Integer;
    Procedure PrintTheSeminar();

  end;

var
  R_CertificateDatesFRM: TR_CertificateDatesFRM;

implementation

uses U_Database, G_SFCommonProcs, G_KyrSQL;


{$R *.DFM}





procedure TR_CertificateDatesFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TR_CertificateDatesFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;




procedure TR_CertificateDatesFRM.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  (sender as TppReport).PreviewForm.WindowState := wsMaximized;
  TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;


procedure TR_CertificateDatesFRM.NameFLDCalc(Sender: TObject; var Value: Variant);
begin
  Value:=Trim(CertificateSQL.FieldByName('First_name').asString) + ' '+TRim(CertificateSQL.FieldByName('Last_name').AsString);
end;

procedure TR_CertificateDatesFRM.ppVariable2Calc(Sender: TObject; var Value: Variant);
begin
// value:=vt.FieldByName('ActionDate').AsDateTime;

end;

procedure TR_CertificateDatesFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;




procedure TR_CertificateDatesFRM.CertificateSQLCalcFields(DataSet: TDataSet);
var
  days:integer;

begin
end;

Function TR_CertificateDatesFRM.CalcDaysLeft():TReminderResult;
begin

end;



Function TR_CertificateDatesFRM.FindActionDate(const DateSeminar:TDate;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Tdate;
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


procedure TR_CertificateDatesFRM.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
Text:= 'Reference Date :'+ FromDateFLD.Text;

end;

Procedure TR_CertificateDatesFRM.PrintTheSeminar();
begin
  PrintSeminar(IN_SeminarSerial);
end;

procedure TR_CertificateDatesFRM.PrintRBtnClick(Sender: TObject);
begin
PrintSeminar(IN_SeminarSerial);
end;

Procedure TR_CertificateDatesFRM.PrintSeminar(Const SeminarSerial:Integer);
Var
   FromDate:TDateTime;
   DaysLeft:integer;
begin

  fromDate:=FromDateFLD.Date;
  SeminarSQL.Close;
  SeminarSQL.ParamByName('SeminarSerial').Value:=SeminarSerial;
  SeminarSQL.Open;

  CertificateSQL.Close;
  CertificateSQL.ParamByName('SeminarSerial').Value:=SeminarSerial;
  CertificateSQL.Open;

  ksOpenTables([CertificateSubjectSQL]);


  PpReport1.Print;

end;


procedure TR_CertificateDatesFRM.FormActivate(Sender: TObject);
begin

if (Trim(FromDateFLD.text)='') then
   FromDateFLD.Date:=date;

end;


procedure TR_CertificateDatesFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;




end.
