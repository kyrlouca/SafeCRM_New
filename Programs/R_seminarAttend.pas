unit R_seminarAttend;

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

  TR_seminarsAttendFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    SeminarPerSQL: TIBCQuery;
    SeminarPerSRC: TDataSource;
    SeminarPerPIP: TppDBPipeline;
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
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppShape1: TppShape;
    ppLabel10: TppLabel;
    SelectSubjectSQL: TIBCQuery;
    SeminarSubjectSRC: TDataSource;
    PersonPIP: TppDBPipeline;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel2: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppDBText11: TppDBText;
    PersonSQL: TIBCQuery;
    PersonSrc: TDataSource;
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
    SeminarPerSQLSERIAL_NUMBER: TIntegerField;
    SeminarPerSQLANAD_NUMBER: TWideStringField;
    SeminarPerSQLFK_SEMINAR: TIntegerField;
    SeminarPerSQLFK_INSTRUCTOR: TIntegerField;
    SeminarPerSQLFK_EXAMINER: TIntegerField;
    SeminarPerSQLFK_VENUE: TIntegerField;
    SeminarPerSQLFK_COMPANY_PERSON_SERIAL: TIntegerField;
    SeminarPerSQLSEMINAR_NAME: TWideStringField;
    SeminarPerSQLDATE_STARTED: TDateField;
    SeminarPerSQLDATE_COMPLETED: TDateField;
    SeminarPerSQLDURATION_DAYS: TIntegerField;
    SeminarPerSQLDURATION_HOURS: TIntegerField;
    SeminarPerSQLAMOUNT_ANAD: TFloatField;
    SeminarPerSQLCOMMENTS: TWideStringField;
    SeminarPerSQLANAD_APPROVED: TWideStringField;
    SeminarPerSQLSTATUS: TWideStringField;
    SeminarPerSQLIS_INVOICED: TWideStringField;
    SeminarPerSQLIS_CERTIFICATED: TWideStringField;
    SeminarPerSQLMAX_CAPACITY: TIntegerField;
    SeminarPerSQLHAS_EXPIRY: TWideStringField;
    SeminarPerSQLEXPIRY_PERIOD: TIntegerField;
    SeminarPerSQLTYPE_MONO_POLY: TWideStringField;
    SeminarPerSQLSEM_CATEGORY: TWideStringField;
    SeminarPerSQLFK_COMPANY_INVOICED: TIntegerField;
    SeminarPerSQLPASS_PERCENTAGE: TIntegerField;
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
    PersonSQLSERIAL_QB: TIntegerField;
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
  procedure PrintSeminar();
  end;

var
  R_seminarsAttendFRM: TR_seminarsAttendFRM;

implementation

uses U_Database, G_SFCommonProcs, G_KyrSQL;


{$R *.DFM}





procedure TR_seminarsAttendFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TR_seminarsAttendFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;




procedure TR_seminarsAttendFRM.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  (sender as TppReport).PreviewForm.WindowState := wsMaximized;
  TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;


procedure TR_seminarsAttendFRM.ppVariable3Calc(Sender: TObject; var Value: Variant);
begin
//   value:=FromDateFLD.Date;
end;

procedure TR_seminarsAttendFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;




procedure TR_seminarsAttendFRM.VtFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  accept := Dataset.FieldByName('DaysCalc').asInteger >= 0;
end;

Function TR_seminarsAttendFRM.CalcDaysLeft():TReminderResult;
begin


end;




procedure TR_seminarsAttendFRM.PrintSeminar();
begin
  if (IN_PersonSerial>0)  then
    PrintTheSeminar(IN_PersonSerial);

end;


procedure TR_seminarsAttendFRM.PrintTheSeminar(const PersonSerial:Integer);

Var
   FromDate:TDateTime;
   DaysLeft:integer;

begin


  PersonSQL.Close;
  PersonSQL.ParamByName('PersonSerial').Value:=PersonSerial;
  PersonSQL.Open;


  SeminarPerSQL.Close;
  SeminarPerSQL.ParamByName('PersonSerial').Value:=PersonSerial;
  SeminarPerSQL.Open;


  PpReport1.Print;

end;

procedure TR_seminarsAttendFRM.FormActivate(Sender: TObject);
begin
//SeminarSQL.Close;
//SeminarSQL.ParamByName('seminarSerial').Value:=IN_SeminarSerial;
//SeminarSQL.Open;
//
//ksOpenTables([ SelectSubjectSQL]);
end;

procedure TR_seminarsAttendFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;


end.
