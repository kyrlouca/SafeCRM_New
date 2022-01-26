unit R_expiry;

interface

uses
  Windows, Messages, SysUtils,System.DateUtils,System.math, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError,  Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit,  DBGrids, wwdbdatetimepicker, ppDB, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppProd, ppReport, ppComm, ppRelatv,
  ppCache, ppDBPipe,ppTypes,ppviewr, ppDesignLayer, ppParameter, RzButton,
  RzPanel, Vcl.Imaging.pngimage, VirtualTable, myChkBox, vcl.wwdblook;

type
  TReminderResult= Record
    daysLeft:Integer;
    DateFinal:Tdate;
  End;

  TR_ExpiryFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    TableSQL: TIBCQuery;
    TableSRC: TDataSource;
    TablePIP: TppDBPipeline;
    GroupBox1: TGroupBox;
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
    ppFooterBand3: TppFooterBand;
    ppLine6: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppDBText1: TppDBText;
    ppDBText5: TppDBText;
    ppLabel1: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppShape1: TppShape;
    ppVariable3: TppVariable;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText3: TppDBText;
    ppLabel13: TppLabel;
    ppLabel3: TppLabel;
    DaysLeftLBL: TppDBText;
    TableSQLPERSON_SERIAL: TIntegerField;
    TableSQLSEMINAR_SERIAL: TIntegerField;
    TableSQLTYPE_SERIAL: TIntegerField;
    TableSQLHAS_EXPIRY: TWideStringField;
    TableSQLEXPIRY_PERIOD: TIntegerField;
    TableSQLDATE_COMPLETED: TDateField;
    TableSQLFINDATE: TDateField;
    PersonSQL: TIBCQuery;
    PersonSRC: TDataSource;
    PersonPIP: TppDBPipeline;
    TableSQLdaysLeft: TIntegerField;
    DaysLeftVrb: TppVariable;
    CompanySQL: TIBCQuery;
    Label1: TLabel;
    CompanySFLD: TwwDBLookupCombo;
    Label2: TLabel;
    SeminarSFLD: TwwDBLookupCombo;
    Label3: TLabel;
    FromDateFLD: TwwDBDateTimePicker;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    SeminarSQL: TIBCQuery;
    SeminarSQLSERIAL_NUMBER: TIntegerField;
    SeminarSQLFK_SEMINAR: TIntegerField;
    SeminarSQLFK_INSTRUCTOR: TIntegerField;
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
    CompanySQLSERIAL_NUMBER: TIntegerField;
    CompanySQLLAST_NAME: TWideStringField;
    PersonSQLPERSON_SERIAL: TIntegerField;
    PersonSQLLAST_NAME: TWideStringField;
    PersonSQLCOMP_NAME: TWideStringField;
    PersonSQLCOMP_SERIAL: TIntegerField;
    PersonSQLFK_SEMINAR_SERIAL: TIntegerField;
    PersonSQLATTENDANCE_STATUS: TWideStringField;
    PersonSQLIS_GUEST: TWideStringField;
    PersonSQLPERSON_SERIAL_1: TIntegerField;
    PersonSQLFK_COMPANY_SERIAL: TIntegerField;
    PersonSQLLAST_NAME_1: TWideStringField;
    PersonSQLFIRST_NAME: TWideStringField;
    PersonSQLFIRST_LAST_NAME: TWideStringField;
    PersonSQLLAST_FIRST_NAME: TWideStringField;
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
    PersonSQLSEMINAR_SERIAL: TIntegerField;
    PersonSQLSEMINAR_NAME: TWideStringField;
    PersonSQLSEMINAR_DATE_STARTED: TDateField;
    PersonSQLSEMINAR_HAS_EXPIRY: TWideStringField;
    PersonSQLSEMINAR_EXPIRY_PERIOD: TIntegerField;
    TableSQLCOMPANY_SERIAL: TIntegerField;
    CompanySQLNATIONAL_ID: TWideStringField;
    SeminarSQLANAD_NUMBER: TWideStringField;
    SeminarSQLFK_EXAMINER: TIntegerField;
    SeminarSQLTYPE_MONO_POLY: TWideStringField;
    SeminarSQLSEM_CATEGORY: TWideStringField;
    ppLabel14: TppLabel;
    ppDBText4: TppDBText;
    PersonSQLSEMINAR_ANAD: TWideStringField;
    ppLabel15: TppLabel;
    ppDBText6: TppDBText;
    PersonSQLPERSON_QB: TIntegerField;
    Label4: TLabel;
    SeminarTypeFLD: TwwDBLookupCombo;
    SeminarTypeSQL: TIBCQuery;
    SeminarTypeSQLSERIAL_NUMBER: TIntegerField;
    SeminarTypeSQLSEMINAR_NAME: TWideStringField;
    SeminarTypeSQLSEMINAR_COST: TFloatField;
    SeminarTypeSQLANAD_APPROVED: TWideStringField;
    SeminarTypeSQLSEMINAR_CATEGORY: TWideStringField;
    SeminarTypeSQLDURATION_HOURS: TIntegerField;
    SeminarTypeSQLDURATION_DAYS: TIntegerField;
    SeminarTypeSQLCOMMENTS: TWideStringField;
    SeminarTypeSQLMAX_CAPACITY: TIntegerField;
    SeminarTypeSQLHAS_EXPIRY: TWideStringField;
    SeminarTypeSQLEXPIRY_PERIOD: TIntegerField;
    SeminarTypeSQLTYPE_MONO_POLY: TWideStringField;
    SeminarTypeSQLPASS_PERCENTAGE: TIntegerField;
    SeminarTypeSQLSPECIFICATION_NUMBER: TWideStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure FormActivate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure FormCreate(Sender: TObject);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure TableSQLCalcFields(DataSet: TDataSet);
    procedure DaysLeftLBLPrint(Sender: TObject);
    procedure PrintRBtnClick(Sender: TObject);
    procedure DaysLeftVrbCalc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
    cn:TIBCConnection;
  Function FindActionDate(const DateSeminar:TDate;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Tdate;
  Function CalcDaysLeft():TReminderResult;
  procedure DisplayFilter;

  public
    { Public declarations }
    IN_SeminarSerial:Integer;
    IN_isCompleted:String;
    IN_HasDate:String;
    IN_DateRef:TDate;
    Procedure PrintTheSeminar();

  end;

var
  R_ExpiryFRM: TR_ExpiryFRM;

implementation

uses U_Database, G_SFCommonProcs, G_KyrSQL;


{$R *.DFM}





procedure TR_ExpiryFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TR_ExpiryFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;




procedure TR_ExpiryFRM.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  (sender as TppReport).PreviewForm.WindowState := wsMaximized;
  TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;


procedure TR_ExpiryFRM.ppVariable1Calc(Sender: TObject; var Value: Variant);
begin
// value:=vt.FieldByName('DaysCalc').AsInteger;
end;

procedure TR_ExpiryFRM.ppVariable2Calc(Sender: TObject; var Value: Variant);
begin
// value:=vt.FieldByName('ActionDate').AsDateTime;

end;

procedure TR_ExpiryFRM.ppVariable3Calc(Sender: TObject; var Value: Variant);
begin
   value:=FromDateFLD.Date
end;

procedure TR_ExpiryFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;




procedure TR_ExpiryFRM.TableSQLCalcFields(DataSet: TDataSet);
var
  days:integer;
begin
//  Days:= Trunc(Dataset.FieldByName('date_targeted').AsDateTime - IN_DateRef);
//  Dataset.FieldByName('daysLeft').AsInteger:=days;
end;

Function TR_ExpiryFRM.CalcDaysLeft():TReminderResult;
begin

end;



Function TR_ExpiryFRM.FindActionDate(const DateSeminar:TDate;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Tdate;
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


procedure TR_ExpiryFRM.DaysLeftLBLPrint(Sender: TObject);
begin
{
  if (TableSQL.FieldByName('DaysLeft').AsInteger<8)
  and (TableSQL.FieldByName('is_completed').AsString<>'Y') then
  begin
    DaysLeftLBL.Font.Color:=clRed;
    DaysLeftLBL.Font.Size:=12;
  end else begin
    DaysLeftLBL.Font.Color:=clBlack;
    DaysLeftLBL.Font.Size:=9;

  end;
  }
end;

procedure TR_ExpiryFRM.DaysLeftVrbCalc(Sender: TObject; var Value: Variant);
var
  days:integer;
begin
  Days:= Trunc( TableSQL.FieldByName('finDate').AsDateTime - FromDateFLD.Date );
  value:=Days;

end;

procedure TR_ExpiryFRM.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
Text:= 'Reference Date :'+ FromDateFLD.Text;

end;

procedure TR_ExpiryFRM.PrintRBtnClick(Sender: TObject);
begin
// working with person_seminar (the record of each person attending a seminar)
//for each person take the LATEST of each seminar type
// how to do that ? join two tables
// ---the first table is per person grouped by seminar type to get the latest date
// -- however, this table does not provide the individual SERIAL NUMBER of the seminar type- only the latest date of the groop
// therefore  we join the first table with another table (without the grouping)
// the join is performed on the person and the seminar type AND The DATE
// As a result, we get the indiviual MAX record of each in the table!!
// in this case, for each person, we get the latest of each seminar type
// add to that date the number of months after the date completed to find the expiry date!

PrintTheSeminar;

end;

Procedure TR_ExpiryFRM.PrintTheSeminar();

Var
   FromDate:TDateTime;
   DaysLeft:integer;
begin

//fromDate:=FromDateFLD.Date;
    DisplayFilter;
     PpReport1.Print;

end;


procedure TR_ExpiryFRM.FormActivate(Sender: TObject);
begin
ksOpenTables([CompanySQL,SeminarSQL,SeminarTypeSQL]);
SeminarSFLD.Clear;
SeminarTypeFLD.Clear;
CompanySFLD.Clear;
//DisplayFilter;
if (Trim(FromDateFLD.text)='') then
   FromDateFLD.Date:=date;

end;


procedure TR_ExpiryFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TR_ExpiryFRM.DisplayFilter;
var
  SeminarSerial:Integer;
  SeminarTypeSerial:Integer;
  CompanySerial:Integer;
begin
TableSQL.Close;
TableSQL.RestoreSQL;
//index:=sender.ItemIndex;

  seminarSerial:= SeminarSFLD.lookupTable.FieldByName('serial_number').AsInteger;
  if (Trim(SeminarSFLD.text)>'') and  (SeminarSerial >0)  then begin
    TableSQL.AddWhere('seminar_serial = :seminarSerial');
  end;

  seminarTypeSerial:= SeminarTypeFLD.lookupTable.FieldByName('serial_number').AsInteger;
  if (Trim(SeminarTypeFLD.text)>'') and  (SeminarTypeSerial >0)  then begin
    TableSQL.AddWhere('Type_serial = :seminarTypeSerial');
  end;


  CompanySerial:= CompanySFLD.lookupTable.FieldByName('serial_number').AsInteger;
  if (Trim(CompanySFLD.text)>'') and  (CompanySerial >0)  then begin
    TableSQL.AddWhere('company_serial = :CompanySerial');
  end;


//////////////////////////////////////

  if TableSQL.FindParam('SeminarSerial')<>nil then begin
    TableSQL.ParamByName('seminarSerial').Value:=SeminarSerial;
  end;

  if TableSQL.FindParam('SeminarTypeSerial')<>nil then begin
    TableSQL.ParamByName('seminarTypeSerial').Value:=SeminarTypeSerial;
  end;


  if TableSQL.FindParam('CompanySerial')<>nil then begin
    TableSQL.ParamByName('CompanySerial').Value:=CompanySerial;
  end;


  TableSQL.Open;
  if not PersonSQL.Active then
    PersonSQL.Open;


end;


end.
