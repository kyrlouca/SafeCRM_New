unit V_Seminar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot,
    vcl.Wwdbcomb,
  G_KyrSQL, G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl,
    vcl.Wwdbdatetimepicker,
  System.ImageList, System.DateUtils, System.TypInfo, Vcl.ImgList, RzTabs,
    vcl.wwcheckbox, RzSplit, RzPopups,
  Vcl.ComCtrls, RzDBEdit, RzRadGrp, RzDBRGrp, RzDTP, vcl.wwclearbuttongroup,
  vcl.wwradiogroup, RzRadChk, RzDBChk, G_debugUnit, codeSiteLogging,
    CodeSiteMessage,
  Vcl.ExtDlgs, vcl.wwriched, Vcl.Menus, RzCmboBx, RzDBCmbo, DASQLMonitor,
  IBCSQLMonitor;
type
//Function TV_SeminarFRM.FindActionDate(const StartDate,EndDate:TDate; Const UseStartDate:Boolean; Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Tdate;
  TactionDateRec = record
    StartDate: Tdate;
    EndDate: Tdate;
    UseStartDate: boolean;
    isAfter: boolean;
    isDayUnit: Boolean;
    NumberOfUnits: Integer;
  end;

  TV_SeminarFRM = class(TForm)
    Panel1: TPanel;
    SeminarSRC: TDataSource;
    SeminarSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    DbImages: TImageList;
    AttendingSQL: TIBCQuery;
    AttendingSRC: TDataSource;
    NonAttendSQL: TIBCQuery;
    NonAttendSRC: TDataSource;
    NonAttendSQLSERIAL_NUMBER: TIntegerField;
    NonAttendSQLLAST_NAME: TWideStringField;
    NonAttendSQLFIRST_NAME: TWideStringField;
    NonAttendSQLNATIONAL_ID: TWideStringField;
    seminarSubjectSQL: TIBCQuery;
    SeminarSubjectSRC: TDataSource;
    SeminarDaySQL: TIBCQuery;
    SeminarDaySRC: TDataSource;
    seminarSubjectSQLSERIAL_NUMBER: TIntegerField;
    seminarSubjectSQLFK_SEMINAR_SERIAL: TIntegerField;
    seminarSubjectSQLSUBJECT: TWideStringField;
    AttendingSQLSERIAL_NUMBER: TIntegerField;
    AttendingSQLFIRST_NAME: TWideStringField;
    AttendingSQLLAST_NAME: TWideStringField;
    AttendingSQLFK_SEMINAR_SERIAL: TIntegerField;
    AttendingSQLFK_PERSON_SERIAL: TIntegerField;
    AttendingSQLATTENDANCE_STATUS: TWideStringField;
    SeminarDaySQLSERIAL_NUMBER: TIntegerField;
    SeminarDaySQLFK_SEMINAR_SUBJECT_SERIAL: TIntegerField;
    SeminarDaySQLSEMINAR_DAY: TDateField;
    SeminarDaySQLDURATION_HOURS: TIntegerField;
    SeminarCostItemSQL: TIBCQuery;
    SeminarCostItemSRC: TDataSource;
    SeminarCostItemSQLSERIAL_NUMBER: TIntegerField;
    SeminarCostItemSQLFK_COST_ITEM: TIntegerField;
    SeminarCostItemSQLAMOUNT_PER_ITEM: TFloatField;
    SeminarCostItemSQLNUMBER_OF_ITEMS: TIntegerField;
    SeminarCostItemSQLFK_SEMINAR_SERIAL: TIntegerField;
    CostItemTBL: TIBCTable;
    CostItemTBLSERIAL_NUMBER: TIntegerField;
    CostItemTBLCOST_NAME: TWideStringField;
    CostItemTBLAMOUNT: TFloatField;
    SeminarCostItemSQLTotalAmnt: TFloatField;
    SeminarReminderSRC: TDataSource;
    SeminarReminderSQL: TIBCQuery;
    TitleLbl: TRzPanel;
    SeminarSQLSERIAL_NUMBER: TIntegerField;
    SeminarSQLFK_SEMINAR: TIntegerField;
    SeminarSQLSEMINAR_NAME: TWideStringField;
    SeminarSQLFK_INSTRUCTOR: TIntegerField;
    SeminarSQLFK_VENUE: TIntegerField;
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
    AttendingSQLIS_GUEST: TWideStringField;
    SeminarSQLFK_COMPANY_PERSON_SERIAL: TIntegerField;
    SeminarReminderSQLSERIAL_NUMBER: TIntegerField;
    SeminarReminderSQLFK_SEMINAR_SERIAL: TIntegerField;
    SeminarReminderSQLDESCRIPTION: TWideStringField;
    SeminarReminderSQLREMINDER_MESSAGE: TWideStringField;
    SeminarReminderSQLAFTER_OR_BEFORE: TWideStringField;
    SeminarReminderSQLPERSON_OR_SEMINAR: TWideStringField;
    SeminarReminderSQLSTART_OR_END: TWideStringField;
    SeminarReminderSQLDAYS_OR_MONTHS: TWideStringField;
    SeminarReminderSQLNUMBER_OF_DAYS_MONTHS: TIntegerField;
    SeminarReminderSQLREMINDER_TYPE: TWideStringField;
    SeminarReminderSQLIS_COMPLETED: TWideStringField;
    SeminarReminderSQLDATE_TARGETED: TDateField;
    SeminarReminderSQLDATE_COMPLETED: TDateField;
    SeminarSQLHAS_EXPIRY: TWideStringField;
    SeminarSQLEXPIRY_PERIOD: TIntegerField;
    SeminarSQLANAD_NUMBER: TWideStringField;
    SeminarSQLFK_EXAMINER: TIntegerField;
    SeminarSQLTYPE_MONO_POLY: TWideStringField;
    RzDBLabel2: TRzDBLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    MainMenu1: TMainMenu;
    Help1: TMenuItem;
    StatusFLD: TwwDBComboBox;
    SeminarSQLSEM_CATEGORY: TWideStringField;
    IBCSQLMonitor1: TIBCSQLMonitor;
    SeminarReminderSQLIS_HIGH: TWideStringField;
    seminarSubjectSQLFK_SUBJECT_TYPE_SERIAL: TIntegerField;
    seminarSubjectSQLFEE_NORMAL: TFloatField;
    seminarSubjectSQLFEE_REDUCED: TFloatField;
    CompanySQL: TIBCQuery;
    CompanySQLSERIAL_NUMBER: TIntegerField;
    CompanySQLFK_COMPANY_SERIAL: TIntegerField;
    CompanySQLLAST_NAME: TWideStringField;
    CompanySQLFIRST_NAME: TWideStringField;
    CompanySQLNATIONAL_ID: TWideStringField;
    CompanySQLNICKNAME: TWideStringField;
    CompanySQLOCCUPATION: TWideStringField;
    CompanySQLPHONE_MOBILE: TWideStringField;
    CompanySQLPHONE_FIXED: TWideStringField;
    CompanySQLPHONE_ALTERNATE: TWideStringField;
    CompanySQLFAX: TWideStringField;
    CompanySQLEMAIL: TWideStringField;
    CompanySQLEMAIL_2: TSmallintField;
    CompanySQLADDRESS: TWideStringField;
    CompanySQLADDRESS_STREET: TWideStringField;
    CompanySQLADDRESS_POST_CODE: TWideStringField;
    CompanySQLADDRESS_CITY: TWideStringField;
    CompanySQLADDRESS_DISTRICT: TWideStringField;
    CompanySQLDATE_STARTED: TDateField;
    CompanySQLDATE_BIRTH: TDateField;
    CompanySQLDATE_USER: TDateField;
    CompanySQLLIST_SOURCE: TWideStringField;
    CompanySQLFACEBOOK: TWideStringField;
    CompanySQLWEBSITE: TWideStringField;
    CompanySQLTWITTER: TWideStringField;
    CompanySQLSTATUS_ACTIVE: TWideStringField;
    CompanySQLSEX: TWideStringField;
    CompanySQLIS_COMPANY: TWideStringField;
    CompanySQLCOMPANY_OWNER: TWideStringField;
    CompanySQLCOMPANY_CONTACT: TWideStringField;
    CompanySQLCOMPANY_REGISTRATION_DATE: TDateField;
    CompanySQLPHONE_CONTACT: TWideStringField;
    RzPanel7: TRzPanel;
    AttendingSQLNATIONAL_ID: TWideStringField;
    PageControlPC: TPageControl;
    SeminarTS: TTabSheet;
    RzPanel18: TRzPanel;
    FirstGRP: TRzGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    SerialFLD: TRzDBLabel;
    Label3: TLabel;
    Label4: TLabel;
    Companylbl: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DescFLD: TwwDBEdit;
    SeminarTypeFLD: TwwDBComboBox;
    RzDBRichEdit1: TRzDBRichEdit;
    MonoRGP: TwwRadioGroup;
    CompanyFLD: TwwDBLookupCombo;
    StartDateFLD: TwwDBDateTimePicker;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    AnadFLD: TwwDBEdit;
    SecondGRP: TRzGroupBox;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    CompletedFLD: TwwCheckBox;
    wwDBEdit4: TwwDBEdit;
    SubjectTS: TTabSheet;
    RzPanel19: TRzPanel;
    RzPanel4: TRzPanel;
    GroupBox2: TGroupBox;
    RzPanel8: TRzPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwDBGrid2: TwwDBGrid;
    SeminarDayFLD: TwwDBDateTimePicker;
    RzPanel9: TRzPanel;
    GroupBox6: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    RzDBLabel3: TRzDBLabel;
    Label22: TLabel;
    Label23: TLabel;
    SubjectNameFLD: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    RzPanel15: TRzPanel;
    RzPanel16: TRzPanel;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton23: TwwNavButton;
    wwNavButton24: TwwNavButton;
    wwNavButton25: TwwNavButton;
    wwNavButton26: TwwNavButton;
    wwNavButton27: TwwNavButton;
    wwNavButton28: TwwNavButton;
    wwNavButton29: TwwNavButton;
    GroupBox1: TGroupBox;
    RzPanel6: TRzPanel;
    wwDBGrid1: TwwDBGrid;
    RzPanel2: TRzPanel;
    RzPanel5: TRzPanel;
    StudentsTS: TTabSheet;
    RzPanel20: TRzPanel;
    RzGroupBox1: TRzGroupBox;
    RzSizePanel2: TRzSizePanel;
    AttendGRD: TwwDBGrid;
    RzPanel3: TRzPanel;
    ToRightBTN: TBitBtn;
    ToLeftBTN: TBitBtn;
    RzGroupBox2: TRzGroupBox;
    AllPersonsGRD: TwwDBGrid;
    RzSizePanel1: TRzSizePanel;
    SearchPersonFLD: TwwIncrementalSearch;
    Panel2: TRzPanel;
    CostTS: TTabSheet;
    aaa: TRzPanel;
    GroupBox3: TGroupBox;
    RzPanel11: TRzPanel;
    wwDBNavigator3: TwwDBNavigator;
    wwNavButton8: TwwNavButton;
    wwNavButton9: TwwNavButton;
    wwNavButton10: TwwNavButton;
    wwNavButton11: TwwNavButton;
    wwNavButton12: TwwNavButton;
    wwNavButton13: TwwNavButton;
    wwNavButton14: TwwNavButton;
    CostGRD: TwwDBGrid;
    CostTypeFLD: TwwDBLookupCombo;
    RzPanel13: TRzPanel;
    ReminderTS: TTabSheet;
    RzPanel21: TRzPanel;
    GroupBox4: TGroupBox;
    RzPanel12: TRzPanel;
    wwDBGrid3: TwwDBGrid;
    AfterFLD: TwwDBComboBox;
    NamePersonFLD: TwwDBComboBox;
    StartEndLD: TwwDBComboBox;
    GroupBox5: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    RzDBLabel1: TRzDBLabel;
    Label17: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    REminderDescFLD: TwwDBEdit;
    RzDBRichEdit2: TRzDBRichEdit;
    Date1FLD: TwwDBDateTimePicker;
    HIghFLD: TRzDBCheckBox;
    RzPanel10: TRzPanel;
    wwDBNavigator4: TwwDBNavigator;
    wwNavButton15: TwwNavButton;
    wwNavButton16: TwwNavButton;
    wwNavButton17: TwwNavButton;
    wwNavButton18: TwwNavButton;
    wwNavButton19: TwwNavButton;
    wwNavButton20: TwwNavButton;
    wwNavButton21: TwwNavButton;
    wwNavButton22: TwwNavButton;
    wwIncrementalSearch1: TwwIncrementalSearch;
    RzPanel14: TRzPanel;
    RzPanel17: TRzPanel;
    Panel4: TRzPanel;
    RzPanel1: TRzPanel;
    CLoseBTN: TRzBitBtn;
    AcceptBTN: TBitBtn;
    CanelBTN: TBitBtn;
    RzPanel22: TRzPanel;
    PictureTS: TTabSheet;
    RzPanel23: TRzPanel;
    RzBitBtn2: TRzBitBtn;
    Label24: TLabel;
    wwDBEdit6: TwwDBEdit;
    SeminarSQLFK_COMPANY_INVOICED: TIntegerField;
    SeminarSQLPASS_PERCENTAGE: TIntegerField;
    NonAttendSQLSERIAL_QB: TIntegerField;
    AttendingSQLSERIAL_QB: TIntegerField;
    RzGroupBox3: TRzGroupBox;
    Label5: TLabel;
    Label11: TLabel;
    InstructorBTN: TSpeedButton;
    VenueBTN: TSpeedButton;
    Label9: TLabel;
    ExaminerBTN: TSpeedButton;
    VenueFLD: TwwDBComboBox;
    seminarSubjectSQLFK_INSTRUCTOR: TIntegerField;
    seminarSubjectSQLFK_EXAMINER: TIntegerField;
    seminarSubjectSQLFK_VENUE: TIntegerField;
    instructorSelectSQL: TIBCQuery;
    instructorSelectSQLSERIAL_NUMBER: TIntegerField;
    instructorSelectSQLANAD_NUMBER: TWideStringField;
    instructorSelectSQLNATIONAL_ID: TWideStringField;
    instructorSelectSQLFK_COMPANY_SERIAL: TIntegerField;
    instructorSelectSQLFIRST_NAME: TWideStringField;
    instructorSelectSQLLAST_NAME: TWideStringField;
    instructorSelectSQLNICKNAME: TWideStringField;
    instructorSelectSQLSTATUS: TWideStringField;
    instructorSelectSQLOCCUPATION: TWideStringField;
    instructorSelectSQLPHONE_MOBILE: TWideStringField;
    instructorSelectSQLPHONE_FIXED: TWideStringField;
    instructorSelectSQLPHONE_ALTERNATE: TWideStringField;
    instructorSelectSQLFAX: TWideStringField;
    instructorSelectSQLEMAIL: TWideStringField;
    instructorSelectSQLEMAIL_2: TSmallintField;
    instructorSelectSQLADDRESS: TWideStringField;
    instructorSelectSQLADDRESS_STREET: TWideStringField;
    instructorSelectSQLADDRESS_POST_CODE: TWideStringField;
    instructorSelectSQLADDRESS_CITY: TWideStringField;
    instructorSelectSQLADDRESS_DISTRICT: TWideStringField;
    instructorSelectSQLDATE_STARTED: TDateField;
    instructorSelectSQLDATE_BIRTH: TDateField;
    instructorSelectSQLDATE_USER: TDateField;
    instructorSelectSQLLIST_SOURCE: TWideStringField;
    instructorSelectSQLFACEBOOK: TWideStringField;
    instructorSelectSQLWEBSITE: TWideStringField;
    instructorSelectSQLTWITTER: TWideStringField;
    instructorSelectSQLSTATUS_ACTIVE: TWideStringField;
    instructorSelectSQLCERTIFIED_ANAD: TWideStringField;
    instructorSelectSQLJOB_TITLE: TWideStringField;
    InstructorFLD: TwwDBLookupCombo;
    ExaminerSelectSQL: TIBCQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    IntegerField1: TIntegerField;
    WideStringField5: TWideStringField;
    IntegerField2: TIntegerField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    SmallintField1: TSmallintField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    WideStringField17: TWideStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    DateField3: TDateField;
    WideStringField18: TWideStringField;
    WideStringField19: TWideStringField;
    WideStringField20: TWideStringField;
    WideStringField21: TWideStringField;
    WideStringField22: TWideStringField;
    WideStringField23: TWideStringField;
    WideStringField24: TWideStringField;
    ExaminerFLD: TwwDBLookupCombo;
    wwIncrementalSearch2: TwwIncrementalSearch;
    Label25: TLabel;
    Label26: TLabel;
    FirstFLD: TwwDBEdit;
    Label27: TLabel;
    SeminarSQLSPECIFICATION_NUMBER: TWideStringField;
    GroupBox7: TGroupBox;
    CategoryChangeFLD: TwwDBComboBox;
    CompaniesTS: TTabSheet;
    RzPanel24: TRzPanel;
    RzGroupBox4: TRzGroupBox;
    RzSizePanel3: TRzSizePanel;
    wwDBGrid4: TwwDBGrid;
    RzPanel25: TRzPanel;
    RemoveCompanyBTN: TBitBtn;
    InsertCompanyBTN: TBitBtn;
    RzGroupBox5: TRzGroupBox;
    AllCompGRD: TwwDBGrid;
    RzSizePanel4: TRzSizePanel;
    Label28: TLabel;
    Label29: TLabel;
    wwIncrementalSearch3: TwwIncrementalSearch;
    wwIncrementalSearch4: TwwIncrementalSearch;
    RzPanel26: TRzPanel;
    Co_CompaniesInSQL: TIBCQuery;
    Co_CompaniesInSQLSERIAL_NUMBER: TIntegerField;
    Co_CompaniesInSQLSERIAL_QB: TIntegerField;
    Co_CompaniesInSQLFIRST_NAME: TWideStringField;
    Co_CompaniesInSQLLAST_NAME: TWideStringField;
    Co_CompaniesInSQLNATIONAL_ID: TWideStringField;
    Co_CompaniesInSQLFK_SEMINAR_SERIAL: TIntegerField;
    Co_CompaniesInSQLFK_PERSON_SERIAL: TIntegerField;
    Co_companiesInSRC: TDataSource;
    Co_companiesOutSQL: TIBCQuery;
    Co_CompaniesOutSRC: TDataSource;
    Co_companiesOutSQLSERIAL_NUMBER: TIntegerField;
    Co_companiesOutSQLSERIAL_QB: TIntegerField;
    Co_companiesOutSQLLAST_NAME: TWideStringField;
    Co_companiesOutSQLFIRST_NAME: TWideStringField;
    Co_companiesOutSQLNATIONAL_ID: TWideStringField;
    N1: TMenuItem;
    N2: TMenuItem;
    SeminarReminderSQLIS_INTERNAL: TWideStringField;
    Label30: TLabel;
    wwDBEdit7: TwwDBEdit;
    RzDBLabel4: TRzDBLabel;
    CertificateTemplateBTN: TRzBitBtn;
    MonoPolyDisplayFLD: TwwDBComboBox;
    procedure AcceptBTNClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CLoseBTNClick(Sender: TObject);
    procedure InstructorBTNClick(Sender: TObject);
    procedure VenueBTNClick(Sender: TObject);
    procedure SeminarTypeFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure StudentsTSShow(Sender: TObject);
    procedure AllPersonsGRDDblClick(Sender: TObject);
    procedure AllPersonsGRDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MembersGRDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SearchPersonFLDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToRightBTNClick(Sender: TObject);
    procedure ToLeftBTNClick(Sender: TObject);
    procedure SeminarSQLNewRecord(DataSet: TDataSet);
    procedure SeminarTSShow(Sender: TObject);
    procedure SubjectTSShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CostTSShow(Sender: TObject);
    procedure CostTypeFLDDropDown(Sender: TObject);
    procedure CostTypeFLDCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure SeminarCostItemSQLCalcFields(DataSet: TDataSet);
    procedure CostGRDUpdateFooter(Sender: TObject);
    procedure ReminderTSShow(Sender: TObject);
    procedure wwNavButton19Click(Sender: TObject);
    procedure MonoRGPChange(Sender: TObject);
    procedure SeminarReminderSQLNewRecord(DataSet: TDataSet);
    procedure SelTopLeftBTNClick(Sender: TObject);
    procedure ClearTopLeftBTNClick(Sender: TObject);
    procedure SeminarCostItemSQLNewRecord(DataSet: TDataSet);
    procedure SeminarDaySQLBeforeInsert(DataSet: TDataSet);
    procedure CertificateTemplateBTNClick(Sender: TObject);
    procedure HIghFLDClick(Sender: TObject);
    procedure wwNavButton25Click(Sender: TObject);
    procedure wwNavButton26Click(Sender: TObject);
    procedure AllPersonsGRDTitleButtonClick(Sender: TObject;
      AFieldName: string);
    procedure AttendGRDTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure AttendGRDUpdateFooter(Sender: TObject);
    procedure ExaminerBTNClick(Sender: TObject);
    procedure CompaniesTSShow(Sender: TObject);
    procedure InsertCompanyBTNClick(Sender: TObject);
    procedure RemoveCompanyBTNClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure PageControlPCChanging(Sender: TObject; var AllowChange: Boolean);
    procedure AllCompGRDTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure AttendGRDDblClick(Sender: TObject);
    procedure wwDBGrid4DblClick(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    cn: TIBCConnection;
//  Function FindActionDate(const StartDate,EndDate:TDate; Const UseStartDate:Boolean; Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Tdate;


    function allowToModify(): Boolean;

    function FindActionDate(ActionDateRec: TActionDateRec): Tdate;

    procedure StartSeminar(const SeminarSerial: integer);
    procedure EditSeminar(const SeminarSerial: integer);
    procedure RemovePerson();
    procedure InsertPerson();
    procedure RemoveCompany();
    procedure InsertCompany();
    procedure UseSeminarTemplate(const SeminarSerial, TypeSerial: Integer);
    procedure CopyReminderFromTemplate(const SeminarSerial, TypeSerial: Integer);
    procedure CopyTemplatePIctures(const SeminarSerial, TypeSerial: Integer);

    function UpdateCostFooter(const SeminarSerial: Integer): Double;
    procedure UPdateAttendFooter();
    procedure InsertMonoCompany(Const CompanySerial:integer);

  public
    { Public declarations }
    IN_ACTION: string;
    IN_SEMINAR_SERIAL: Integer;

  end;

var
  V_SeminarFRM: TV_SeminarFRM;

implementation

uses U_Database, G_generalProcs, M_Instructor, M_Venue, G_SFCommonProcs,
  H_Help, v_SeminarPictureTemplate, R_AnadFIles, S_LoadDocs, M_seminarType,
  M_Student, M_CompanyNew, V_SeminarCertificateTemplate,
  V_SeminarCertificateTemplateNew;

{$R *.DFM}

procedure TV_SeminarFRM.AcceptBTNClick(Sender: TObject);
begin
  ksPostTables([SeminarSQL]);
  case PageControlPC.ActivePageIndex of
    0: begin
      ksPostTables([SeminarSQL]);
      InsertMonoCompany(0);
      SeminarSQL.Refresh;
    end;
    1: ksPostTables([seminarSubjectSQL]);
    2: ksPostTables([AttendingSQL]);
    3: ksPostTables([SeminarCostItemSQL]);
    4: ksPostTables([SeminarReminderSQL]);
//    5: ksPostTables([SeminarPictureSQL]);
  end;

end;

procedure TV_SeminarFRM.BitBtn2Click(Sender: TObject);
var
  seminarSerial: Integer;
begin

  seminarSerial := SeminarSQL.FieldByName('serial_number').AsInteger;
  StartSeminar(seminarSerial);
  SeminarSQL.Refresh;
end;

procedure TV_SeminarFRM.ReminderTSShow(Sender: TObject);
begin
  ksOpenTables([SeminarReminderSQL]);

end;

procedure TV_SeminarFRM.ToLeftBTNClick(Sender: TObject);
begin
  InsertPerson();
    UPdateAttendFooter();
end;

procedure TV_SeminarFRM.ToRightBTNClick(Sender: TObject);
begin
  RemovePerson();
  UPdateAttendFooter();
end;

procedure TV_SeminarFRM.SeminarCostItemSQLCalcFields(DataSet: TDataSet);
begin
  dataset.FieldByName('totalAmnt').Value :=
    Dataset.FieldByName('AMOUNT_PER_ITEM').AsFloat
    * Dataset.FieldByName('NUMBER_OF_ITEMS').AsInteger;
end;

procedure TV_SeminarFRM.SeminarCostItemSQLNewRecord(DataSet: TDataSet);
var
  cnt: Integer;
  SEminarSerial: Integer;
begin
  SEminarSErial := SeminarSQL.FieldByName('serial_number').AsInteger;
  cnt := ksCountRecVarSQL(cn,
    'select * from seminar_person sp where sp.fk_seminar_serial= :SeminarSerial',
    [SeminarSerial]);
  Dataset.FieldByName('Number_of_items').Value := cnt;

  CostGRD.setfocus;
  CostGRD.SetActiveField('FK_COst_item');

end;

procedure TV_SeminarFRM.SeminarDaySQLBeforeInsert(DataSet: TDataSet);
begin
  if seminarSubjectSQL.State in [dsEdit, dsInsert] then
    seminarSubjectSQL.Post;

end;

procedure TV_SeminarFRM.SeminarReminderSQLNewRecord(DataSet: TDataSet);
begin

  Dataset.FieldByName('reminder_type').Value := 'S';
  Dataset.FieldByName('PERSON_OR_SEMINAR').Value := 'S';
  Dataset.FieldByName('is_completed').Value := 'N';
  Dataset.FieldByName('is_iNTERNAL').Value := 'N';
  Dataset.FieldByName('is_high').Value := 'N';
end;

procedure TV_SeminarFRM.SeminarSQLNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('Status').Value := 'P';
  Dataset.FieldByName('ANAD_APPROVED').Value := 'Y';
  Dataset.FieldByName('TYPE_MONo_pOLY').Value := 'P';
  Dataset.FieldByName('sem_category').Value := 'N';
  Dataset.FieldByName('is_invoiced').Value := 'N';
  Dataset.FieldByName('is_certificated').Value := 'N';
  Dataset.FieldByName('Max_capacity').Value := 0;
  Dataset.FieldByName('hAS_EXPIRY').Value := 'N';

end;

procedure TV_SeminarFRM.SeminarTSShow(Sender: TObject);
begin
  try

    SeminarSQL.DisableControls;
    ksfillComboF1(cn,CategoryChangeFLD,'SEM_CATEGORY','category_code','TYPE_DESC_GR','order_NUMBER' );

    ksOpenTables([CompanySQL]);
    ksOpenTables([seminarSubjectSQL, SeminarDaySQL]);
    AnadFLD.SetFocus;

  finally
    SeminarSQL.EnableControls;

  end;

end;

procedure TV_SeminarFRM.SeminarTypeFLDCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
var
  TypeSerial: Integer;
  SeminarSerial: Integer;
//  ReminderSerial:Integer;
begin
  if SeminarSQL.State in [dsEdit, dsInsert] then
  begin
    DescFLD.Text := seminarTypeFLD.Text;
    SeminarSQL.Post;
  end;

  SeminarSerial := SeminarSQL.FieldByName('serial_number').AsInteger;
  TYpeserial := SeminarSQL.FieldByName('FK_Seminar').AsInteger;
  if (not select) or (Seminarserial < 1) or (TypeSerial < 1) then
    exit;
  UseSeminarTEmplate(SeminarSerial, TypeSerial);
  CopyReminderFromTemplate(SEminarSerial, TYpeSerial);
  CopyTemplatePIctures(SEminarSerial, TYpeSerial);

  SeminarSQL.close;
  seminarSQL.ParamByName('serialNumber').Value := seminarSerial;
  seminarSQL.Open;
  DescFLD.SetFocus;

end;

procedure TV_SeminarFRM.UseSeminarTemplate(const SeminarSerial, TypeSerial:
  Integer);
var
  serial: Integer;
  subjectSerial: Integer;
  qr: TksQuery;
  fhours, fdays: integer;
  fName, fAnad: string;
  fcost: double;
//  FFeeActual: Double;
//  fFeeANad: double;
  feeNormal,FeeReduced:Double;
  fMaxCapacity: Integer;
  fexpiry: string;
  fexpiryMonths: Integer;
  fpercent:integer;
  fSpec:String;
  str: string;
begin

  qr := TksQuery.Create(cn,
    'select * from seminar_type where serial_number= :serial');
  try
    qr.ParamByName('serial').Value := TYpeSerial;
    qr.Open;

    fname := qr.FieldByName('seminar_name').AsString;
    fAnad := qr.FieldByName('ANAD_APPROVED').AsString;
    fhours := qr.FieldByName('DURATION_HOURS').AsInteger;
    fpercent := qr.FieldByName('pass_PERCENTAGE').AsInteger;
    fspec := qr.FieldByName('SPECIFICATION_NUMBER').AsString;

    fMaxCapacity := qr.FieldByName('Max_capacity').AsInteger;
//   fDays:=qr.FieldByName('DURATION_DAYS').AsInteger;
    fCost := qr.FieldByName('SEMINAR_COST').AsFloat;

//    fFeeactual := qr.FieldByName('FEE_actual').AsFloat;
//    fFeeAnad := qr.FieldByName('FEE_with_anad_sub').AsFloat;
    fExpiry := qr.FieldByName('has_expiry').AsString;
    fExpiryMOnths := qr.FieldByName('expiry_period').AsInteger;

    str :=
      ' update seminar sem set'
      + '    seminar_Name= :fname, anad_approved= :fAnad,Duration_hours = :fhours, max_capacity= :FMaxCapacity,  '
      + '    sem.has_expiry = :fHasExpiry, sem.expiry_period= :fExpirymonths, sem.pass_PERCENTAGE = :aper, sem.SPECIFICATION_NUMBER= :spec'
      + '  where  sem.serial_number= :fSerial';

    ksExecSQLVar(cn, str,
      [fname, fAnad, fhours, fMaxCapacity, fExpiry,
        fExpiryMonths, fpercent,fspec,seminarSerial]);

  finally
    qr.Free;
  end;

 //NOw the subjects (may be a different functions)
  ksExecSQLVar(cn,
    'delete from seminar_subject where fk_seminar_serial= :semSerial',
    [SeminarSerial]);
  qr := TksQuery.Create(cn,
    'select * from seminar_type_subject where FK_SEMINAR_TYPE_SERIAL= :serial');
  try
    qr.ParamByName('serial').Value := TypeSerial;
    qr.Open;
    while not qr.Eof do
    begin
      serial := ksGenerateSerial(cn, 'GEN_SEMINAR_SUBJECT');
      fname := qr.FieldByName('SUBJECT').AsString;
      feeNormal := qr.FieldByName('FEE_NORMAL').AsFloat;
      feeReduced := qr.FieldByName('FEE_REDUCED').AsFloat;
      subjectSerial := qr.FieldByName('serial_number').AsInteger;
      ksExecSQLVar(cn,
        'INSERT INTO SEMINAR_SUBJECT (SERIAL_NUMBER, FK_SEMINAR_SERIAL,fk_subject_type_serial,SUBJECT ,fee_normal,fee_reduced) VALUES (:serial,:semSerial,:subjectSerial, :subject,:feeNorm,:feeRed)',
        [serial, seminarSerial, subjectSerial, fname, feeNormal,feeReduced]);
      qr.Next;
    end;

  finally
    qr.Free;
  end;
end;

procedure TV_SeminarFRM.CopyReminderFromTemplate(const SeminarSerial, TypeSerial:
  Integer);
var
  serial: Integer;
  qr: TksQuery;
  str: string;
  fdesc, fmessage, fafter, fperson, fstart, fDays: string;
  fnumber_of_days: Integer;
  ActionDate: TDate;
  ActionDateRec: TActionDateRec;
begin

  qr := TksQuery.Create(cn,
    'select Date_Started, date_completed from seminar where serial_number= :SeminarSerial');
  try
    qr.ParamByName('SeminarSerial').Value := SeminarSerial;
    qr.Open;
    ActionDateRec.StartDate := qr.FieldByName('date_started').AsDateTime;
    ActionDateRec.EndDate := qr.FieldByName('date_completed').AsDateTime;
  finally
    qr.Free;
  end;

  ksExecSQLVar(cn,
    'delete from SEMINAR_REMINDER where fk_seminar_serial=:serial',
    [SeminarSerial]);

  str :=
    ' INSERT INTO SEMINAR_REMINDER'
    + '  (SERIAL_NUMBER,fk_seminar_serial, description,reminder_message,after_or_before,person_or_seminar,number_of_days_months,start_or_end,days_or_months,reminder_type,is_completed,date_targeted,Is_internal)'
    + '  VALUES (:serial,:seminarSerial, :a3,:A4, :a5, :A6,:A7,:a8,:A9,:a10,:a11,:a12,:a13)';

  qr := TksQuery.Create(cn,
    'select * from seminar_type_reminder where fk_seminar_type_serial= :Typeserial');
  try
    qr.ParamByName('Typeserial').Value := TYpeSerial;
    qr.Open;
    while not qr.Eof do
    begin

      serial := ksGenerateSerial(cn, 'GEN_SEMINAR_reminder');
      fdesc := qr.FieldByName('Description').AsString;
      fmessage := qr.FieldByName('reminder_message').AsString;
      fafter := qr.FieldByName('after_or_before').AsString;
      fperson := qr.FieldByName('person_or_seminar').AsString;
      fstart := qr.FieldByName('START_OR_END').AsString;
      fnumber_of_days := qr.FieldByName('NUMBER_OF_DAYS_MONTHS').AsInteger;
      ;
      fDays := qr.FieldByName('DAYS_OR_MONTHS').AsString;

      ActionDateRec.UseStartDate := (fstart = 'S');
      ActionDateRec.isAfter := (fafter = 'A');
      ActionDateRec.isAfter := (fafter = 'A');
      ActionDateRec.isDayUnit := (fdays = 'D');
      ActionDateRec.NumberOfUnits := fnumber_of_days;

      G_DebugUnit.TRecViewer<TActionDateREc>.GetFields(ActionDateRec);
      ActionDate := FindActionDate(ActionDateRec);
      ksExecSQLVar(cn, str, [serial, SeminarSerial, fdesc, fmessage, fafter,
        fperson, fnumber_of_days, fstart, fdays, 'S', 'N', ActionDate,'N']);
      qr.Next;

    end;
  finally
    qr.Free;
  end;

end;

procedure TV_SeminarFRM.CopyTemplatePIctures(const SeminarSerial, TypeSerial:  Integer);
var
  serial: Integer;
  Typeqr: TksQuery;
  seminarQr: TksQuery;
  str: string;
  fdesc, fmessage, fafter, fperson, fstart, fDays: string;
  fnumber_of_days: Integer;
  ActionDate: TDate;
  ActionDateRec: TActionDateRec;
  blobRead, blobWrite: TBlobField;
  streamRead, StreamWrite: TStream;
  img: TImage;
  I: Integer;
begin

  ksExecSQLVar(cn,
    'delete from SEMINAR_pictures where fk_seminar_serial=:serial',
    [SeminarSerial]);

  str :=
    ' INSERT INTO SEMINAR_PICTURES'
    + '   (SERIAL_NUMBER,  FK_SEMINAR_SERIAL,LANGUAGE_GREEK_OR_ENGLISH,'
    + '   LINE_A1, LINE_A2, LINE_B1, LINE_B2, LINE_B3,LINE_C1,'
    + '   picture_top_l1,picture_top_r1, picture_bot_l1,picture_bot_r1,'
    + '   tl_x,tl_y, tr_x,tr_y, bl_x,bl_y,br_x,br_y)'
    + '    VALUES ('
    + '    :s1,:s2,:s3,'
    + '    :l1,:l2,:l3,:l4,:l5,:l6,'
    + '    :p1,:p2,:p3,:p4,'
    + '    :t1,:t2,:t3,:t4,:t5,:t6,:t7,:t8)';

// img:=Timage.Create(self);
  SeminarQr := TksQuery.Create(cn,
    ' select * from seminar_pictures where fk_seminar_serial= :seminarSerial');
  Typeqr := TksQuery.Create(cn,
    'select * from seminar_type_pictures where fk_seminar_type_serial= :Typeserial');
  try
    Typeqr.ParamByName('Typeserial').Value := TYpeSerial;
    Typeqr.Open;
    SeminarQr.ParamByName('seminarSerial').Value := SeminarSerial;
    SeminarQR.Open;

    try

      while not Typeqr.Eof do
      begin

        serial := ksGenerateSerial(cn, 'GEN_SEMINAR_PICTURES');

//    blobRead := Typeqr.FieldByName('picture_seminar') as TBlobField;
//    streamRead := Typeqr.CreateBlobStream(blobRead, bmRead);
//    Img.Picture.LoadFromStream(streamRead);

        SeminarQR.Insert;
        SeminarQR.FieldByName('Serial_number').value := Serial;
        SeminarQR.FieldByName('FK_Seminar_serial').value := SeminarSerial;
        CopyDataRecord(typeQr, SeminarQR);
//    blobWrite := Seminarqr.FieldByName('picture_seminar') as TBlobField;
//    streamWrite := Seminarqr.CreateBlobStream(blobWrite, bmWrite);
//    StreamWrite.Position:=0;
//    Img.Picture.SaveToStream(streamWrite);
        SeminarQR.Post;
        TypeQr.Next;
      end;
    finally
//    streamWrite.Free;
//    streamRead.Free;

    end;
  finally
    Typeqr.Free;
    SeminarQr.Free;
//   img.Free;
  end;

end;

procedure TV_SeminarFRM.HIghFLDClick(Sender: TObject);
begin
  if HighFLD.Checked then
    HighFld.Color:=clRed
  else
    highFLD.Color:=clBtnFace;
end;

procedure TV_SeminarFRM.StudentsTSShow(Sender: TObject);
var
  SeminarSerial: Integer;
  st: string;
  allowModify: BOolean;
begin

  SeminarSerial := SEminarSQL.FieldByName('serial_number').AsInteger;
  NonAttendSQL.Close;
  NonAttendSQL.ParamByName('seminarSerial').Value := seminarSerial;
  NonAttendSQL.Open;

  ksOpenTables([AttendingSQL]);
  AttendingSQL.ReadOnly:=not allowToModify();

//  st:=SeminarSQL.FieldByName('status').AsString;
//  allowModify := (St='P') or (St='N') or (St='W');
//
//  Dataset.ReadOnly:= not allowModify;

end;

procedure TV_SeminarFRM.InstructorBTNClick(Sender: TObject);
var

  Frm: TM_InstructorFRM;
  Serial: Integer;
begin
  if seminarSQL.State in [dsEdit] then
    SeminarSQL.Post;
  serial := SeminarSubjectSQL.FieldByName('fk_instructor').AsInteger;
  if Serial < 1 then
    exit;
  frm := TM_InstructorFRM.Create(nil);
  frm.IN_ACTION := 'DISPLAY';
  frm.in_INSTRUCTOR_SERIAL := Serial;
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TV_SeminarFRM.MembersGRDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if KEY = VK_RETURN then
  begin
    RemovePerson();
  end;
end;

procedure TV_SeminarFRM.MonoRGPChange(Sender: TObject);
begin
  CompanyFLD.Visible := MonoRGP.Value = 'M';
  Companylbl.Visible := MonoRGP.Value = 'M';
//  ShowMessage(seminarSQL.FieldByName('type_mono_poly').AsString);
end;

procedure TV_SeminarFRM.VenueBTNClick(Sender: TObject);
var

  Frm: TM_venuFRM;
  Serial: Integer;
begin
  if seminarSQL.State in [dsEdit] then
    SeminarSQL.Post;
  serial := strToIntdef(venueFLD.Value, 0);
  if Serial < 1 then
    exit;
  frm := TM_venuFRM.Create(nil);
  frm.IN_ACTION := 'DISPLAY';
  frm.in_SERIAL := Serial;
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TV_SeminarFRM.AttendGRDDblClick(Sender: TObject);
vAR
  Frm:TM_StudentFRM;
  studentSerial:Integer;
begin
  studentSerial:=attendingsql.FieldByName('serial_number').AsInteger;
  if studentSerial<1 then
    exit;
  frm := TM_StudentFRM.Create(nil);
  try
    frm.IN_ACTION:='EDIT';
    frm.IN_studentSerial:= studentSerial;
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TV_SeminarFRM.AttendGRDTitleButtonClick(Sender: TObject;
  AFieldName: string);
  var
         sortInfoHawb:TSOrtInfo;
         Table:TIBCQuery;


  begin
        Table:=TIbcQuery(AttendGRD.DataSource.DataSet);
        SortInfoHawb.Table:=Table;
        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawb);
end;

procedure TV_SeminarFRM.UPdateAttendFooter();
var
  Count:Integer;
  SeminarSErial: Integer;
begin

  SeminarSErial := seminarSQL.FieldByName('Serial_number').AsInteger;
   count:=ksCountRecVarSQL(cn,'select * from seminar_person sp where sp.fk_seminar_serial= :seminarSerial',[SeminarSerial]);
    AttendGRD.ColumnByName('serial_number').FooterValue := IntToStr(Count);
end;


procedure TV_SeminarFRM.AttendGRDUpdateFooter(Sender: TObject);
begin
  UPdateAttendFooter();
end;

procedure TV_SeminarFRM.AllCompGRDTitleButtonClick(Sender: TObject;
  AFieldName: string);
  var
         sortInfoHawb:TSOrtInfo;
         Table:TIBCQuery;


  begin
        Table:=TIbcQuery(AllCompGRD.DataSource.DataSet);
        SortInfoHawb.Table:=Table;
        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawb);

end;

procedure TV_SeminarFRM.wwDBGrid4DblClick(Sender: TObject);
vAR
  Frm:TM_companyNewFRM;
  studentSerial:Integer;
begin
  studentSerial:=Co_CompaniesInSQL.FieldByName('serial_number').AsInteger;
  if studentSerial<1 then
    exit;
  frm := TM_companyNewFRM.Create(nil);
  try
    frm.IN_ACTION:='EDIT';
    frm.IN_company_Serial:= studentSerial;
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TV_SeminarFRM.wwNavButton19Click(Sender: TObject);
begin
  REminderDescFLD.SetFocus;
end;

procedure TV_SeminarFRM.wwNavButton25Click(Sender: TObject);
begin
SubjectNameFLD.SetFocus;
end;

procedure TV_SeminarFRM.wwNavButton26Click(Sender: TObject);
var
  cnt:integer;
  SubjectSerial:Integer;
begin
   subjectSerial:= seminarSubjectSQL.FieldByName('serial_number').AsInteger;
  cnt:=ksCountRecVarSQL(cn,'select inv.* from invoice inv  where inv.fk_subject_serial = :SubjectSerial',[SUbjectSerial]);
  if cnt>0 then begin
    if MessageDlg('INVOICES exists and will be DELETED!!'+#13+#10+'Proceed?', mtWarning, [mbOK, mbCancel], 0)<> mrOK then begin
          abort;
    end;
  end;
  ksExecSQLVar(cn,'delete from invoice where fk_subject_serial= :SubjectSerial',[SubjectSerial]);
  ksExecSQLVar(cn,'delete from seminar_subject where serial_number= :SubjectSerial',[SubjectSerial]);
  ksOpenTables([seminarSubjectSQL]);
  abort;
end;

procedure TV_SeminarFRM.CompaniesTSShow(Sender: TObject);
var
  SeminarSerial: Integer;
  st: string;
  allowModify: BOolean;
begin

  SeminarSerial := SEminarSQL.FieldByName('serial_number').AsInteger;

  Co_companiesOutSQL.Close;
  Co_companiesOutSQL.ParamByName('seminarSerial').Value := seminarSerial;
  Co_companiesOutSQL.Open;

  ksOpenTables([Co_CompaniesInSQL]);
end;

procedure TV_SeminarFRM.CostGRDUpdateFooter(Sender: TObject);
var
  amount: Double;
  SeminarSErial: Integer;
begin

  SeminarSErial :=
    costgrd.DataSource.DataSet.FieldByName('fk_seminar_serial').AsInteger;
  Amount := UpdateCostFooter(SeminarSerial);

  CostGRD.ColumnByName('TotalAmnt').FooterValue :=
    FloatToStrF(Amount, ffCurrency, 10, 2);

end;

procedure TV_SeminarFRM.SearchPersonFLDKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  if KEY = VK_RETURN then
  begin
    if SearchPersonFLD.Text = '' then
      exit;
    InsertPerson();
    SearchPersonFLD.Clear;
    SearchPersonFLD.ClearSelection;

  end;

    if key=VK_DOWN then begin
    AllPersonsGRD.SetFocus;
    exit;
  end;

end;

procedure TV_SeminarFRM.AllPersonsGRDDblClick(Sender: TObject);
vAR
  Frm:TM_StudentFRM;
  studentSerial:Integer;
begin
  studentSerial:=(sender as twwdbgrid).DataSource.DataSet.FieldByName('serial_number').AsInteger;
  if studentSerial<1 then
    exit;
  frm := TM_StudentFRM.Create(nil);
  try
    frm.IN_ACTION:='EDIT';
    frm.IN_studentSerial:= studentSerial;
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TV_SeminarFRM.InsertPerson();
var
  qr: TksQuery;
  Personserial: Integer;
  seminarSerial: Integer;
  str: string;
begin

  if not allowToModify() then
  begin
    ShowMessage('Cannot Modify');
    exit;
  end;

  PersonSerial := NonAttendSQL.FieldByName('serial_number').AsInteger;
  SeminarSerial := SeminarSQL.FieldByName('serial_number').AsInteger;
  if Personserial < 1 then
    exit;
  str := ' insert into seminar_person  (fk_seminar_serial,fk_person_serial,attendance_status,is_guest) '
    + ' values(:seminar,:person,:attend,:gest)';
  ksExecSQLVar(cn, str, [seminarSerial, Personserial, 'fff', 'N']);

  AttendingSQL.Refresh;
  NonAttendSQL.Refresh;

end;

procedure TV_SeminarFRM.InsertCompany();
var
  qr: TksQuery;
  Personserial: Integer;
  seminarSerial: Integer;
  str: string;
begin

  if not allowToModify() then
  begin
    ShowMessage('Cannot Modify');
    exit;
  end;

  PersonSerial := Co_companiesOutSQL.FieldByName('serial_number').AsInteger;
  SeminarSerial := SeminarSQL.FieldByName('serial_number').AsInteger;
  if Personserial < 1 then
    exit;
  str := ' insert into seminar_COMPANY  (fk_seminar_serial,fk_person_serial) '
    + ' values(:seminar,:person)';
  ksExecSQLVar(cn, str, [seminarSerial, Personserial]);

  Co_CompaniesInSQL.Refresh;
  Co_companiesOutSQL.Refresh;

end;


procedure TV_SeminarFRM.InsertCompanyBTNClick(Sender: TObject);
begin
InsertCompany();
end;

procedure TV_SeminarFRM.AllPersonsGRDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if KEY = VK_RETURN then
  begin
    InsertPerson();
  end;


end;


procedure TV_SeminarFRM.InsertMonoCompany(Const CompanySerial:integer);
var
  qr: TksQuery;
  Personserial: Integer;
  seminarSerial: Integer;
  str: string;
  isMono:boolean;
begin


  if not allowToModify() then
  begin
//    ShowMessage('Cannot Modify');
    exit;
  end;

  SeminarSerial := SeminarSQL.FieldByName('serial_number').AsInteger;
  PersonSerial := SeminarSQL.FieldByName('fk_company_person_serial').AsInteger;
  isMono := SeminarSQL.FieldByName('TYPE_MONO_POLY').AsString='M';


//  only if mono and has a mono Company
// Delete all companies and insert the mono compoany
  if not( (Personserial>0) and  isMono )then
    exit;

  str:=
   ' Delete from seminar_company sc where sc.fk_seminar_serial = :seminarSerial and '
  +' exists (select serial_number from seminar sem where sem.type_mono_poly= :mono and  sc.fk_seminar_serial=sem.serial_number)';

  {
str:=
' Delete from seminar_company sc where sc.fk_seminar_serial = :seminarSerial and'
  +'  exists ('
  +'  select serial_number from seminar sem where'
  +'  sc.fk_seminar_serial=sem.serial_number and'
  +'  sem.type_mono_poly= :mono or sem.type_mono_poly= :simple'
  +');'
}
  ksExecSQLVar(cn, str, [SeminarSerial,'M']);

  str := ' insert into seminar_COMPANY  (fk_seminar_serial,fk_person_serial) '
    + ' values(:seminar,:person)';
  ksExecSQLVar(cn, str, [seminarSerial, Personserial]);

end;




procedure TV_SeminarFRM.AllPersonsGRDTitleButtonClick(Sender: TObject;
  AFieldName: string);
  var
         sortInfoHawbAll:TSOrtInfo;
         Table:TIBCQuery;


  begin
        Table:=TIbcQuery(AllPersonsGRD.DataSource.DataSet);
        SortInfoHawbAll.Table:=Table;
        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawbAll);

end;

procedure TV_SeminarFRM.CLoseBTNClick(Sender: TObject);
begin
  ksPostTables([SeminarSQL, AttendingSQL]);
  close;
end;


procedure TV_SeminarFRM.SelTopLeftBTNClick(Sender: TObject);
begin
{
  SeminarSerial:=SeminarSQL.fieldbyName('serial_number').AsInteger;
  if SelectPicturex(CertTopLeftImg) then begin
    SavePictureX(SeminarSerial, LanguageRGP.Value,CertTopLeftImg);
    ShowPictureX(SeminarSerial,LanguageRGP.Value,CertTopLeftImg);
//    ShowPictureData(TypeSerial,LanguageRGP.Value);
  end;
}
end;

procedure TV_SeminarFRM.ClearTopLeftBTNClick(Sender: TObject);
var
  SeminarSerial: Integer;
begin
{
  SeminarSerial:=SeminarSQL.fieldbyName('serial_number').AsInteger;
  CertTopLeftImg.Picture:=nil;
  SavePictureX(SeminarSerial, LanguageRGP.Value,CertTopLeftImg);
}
end;

procedure TV_SeminarFRM.FormActivate(Sender: TObject);
begin
  ksfillComboF1(cn, SeminarTYpeFLD, 'SEMINAR_TYPE', 'SERIAL_NUMBER',    'SEMINAR_NAME', 'SEMINAR_NAME');
//  ksfillComboF1(cn, InstructorFLD, 'INSTRUCTOR', 'SERIAL_NUMBER', 'Last_NAME',    'last_NAME');
//  ksfillComboF1(cn, ExaminerFLD, 'INSTRUCTOR', 'SERIAL_NUMBER', 'Last_NAME',    'last_NAME');
  ksfillComboF1(cn, VenueFLD, 'VENUE', 'SERIAL_NUMBER', 'VENUE_NAME','VENUE_NAME');
  ksfillComboF1(cn, StatusFLD, 'status_activity', 'status', 'description');
//  ksfillComboF1(cn, MonoPolyDisplayFLD, '', 'TYPE_MONO_POLY', 'description');
  ksOpenTables([SeminarSQL]);
  if IN_ACTION = 'INSERT' then
  begin
    SeminarSQL.Insert;
  end
  else if IN_ACTION = 'EDIT' then
  begin
    EditSeminar(IN_SEMINAR_SERIAL);
  end;
  PageControlPC.ActivePageIndex := 0;

end;

procedure TV_SeminarFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ksPostTables([SeminarSQL])
end;

procedure TV_SeminarFRM.FormCreate(Sender: TObject);
begin
  cn := U_databaseFRM.DataConnection;
end;

procedure TV_SeminarFRM.RemovePerson();
var
  qr: TksQuery;
  Personserial: Integer;
  seminarSerial: Integer;
  str: string;
  st: string;
  AllowModify: Boolean;
begin
  if not allowToModify() then
  begin
    ShowMessage('Cannot Modify');
    exit;
  end;

  PersonSerial := AttendingSQL.FieldByName('fk_person_serial').AsInteger;
  SeminarSerial := AttendingSQL.FieldByName('fk_seminar_serial').AsInteger;
  if (Personserial < 1) or (seminarSerial < 1) then
    exit;
  str :=
    ' delete from seminar_person where fk_person_serial= :personSerial and fk_seminar_serial= :seminarSerial';
  ksExecSQLVar(cn, str, [Personserial, seminarSerial]);

  AttendingSQL.Refresh;
  NonAttendSQL.Refresh;
end;

procedure TV_SeminarFRM.RzBitBtn2Click(Sender: TObject);
var
  Frm: TV_SeminarPictureTemplateFRM;
begin
  frm := TV_SeminarPictureTemplateFRM.Create(nil);
  try

    frm.IN_SeminarSerial:=SeminarSQL.FieldByName('serial_number').AsInteger;
    frm.IN_allowModify:=true;
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TV_SeminarFRM.RemoveCompany();
var
  qr: TksQuery;
  Personserial: Integer;
  seminarSerial: Integer;
  str: string;
  st: string;
  AllowModify: Boolean;
begin
  if not allowToModify() then
  begin
    ShowMessage('Cannot Modify');
    exit;
  end;

  PersonSerial := Co_CompaniesInSQL.FieldByName('fk_person_serial').AsInteger;
  SeminarSerial := Co_CompaniesInSQL.FieldByName('fk_seminar_serial').AsInteger;
  if (Personserial < 1) or (seminarSerial < 1) then
    exit;
  str :=
    ' delete from seminar_Company where fk_person_serial= :personSerial and fk_seminar_serial= :seminarSerial';
  ksExecSQLVar(cn, str, [Personserial, seminarSerial]);

  Co_CompaniesInSQL.Refresh;
  Co_companiesOutSQL.Refresh;
end;


procedure TV_SeminarFRM.RemoveCompanyBTNClick(Sender: TObject);
begin
RemoveCompany();
end;

procedure TV_SeminarFRM.CertificateTemplateBTNClick(Sender: TObject);
var
  Frm: TV_SeminarCertificateTemplateNewFRM;
begin
  frm := TV_SeminarCertificateTemplateNewFRM.Create(nil);
  try

    frm.IN_SeminarTypeSerial:=SeminarSQL.FieldByName('serial_number').AsInteger;
    frm.IN_allowModify:=true;
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;


procedure TV_SeminarFRM.N2Click(Sender: TObject);
var
  Frm:TS_LoadDocsFRM;
  BaseFolder:string;
  SeminarSerial:Integer;
  param:G_generalProcs.TParameterRecord;
begin

  SeminarSerial:=SeminarSQL.FieldByName('serial_number').AsInteger;
  if SeminarSerial<1 then
    exit;

  frm := TS_LoadDocsFRM.Create(nil);
  try
    frm.IN_SeminarSerial:=SeminarSerial;
    frm.IN_DocTYpe:='WORD';
    frm.CreateTheFiles;
  finally
    frm.Free;
  end;
{
  frm := TR_AnadFilesFRM.Create(nil);
  try
    frm.IN_SeminarSerial:=SeminarSerial;
    frm.CreateSeminarRequestFile(SeminarSerial);
  finally
    frm.Free;
  end;
}
end;



procedure TV_SeminarFRM.PageControlPCChanging(Sender: TObject;
  var AllowChange: Boolean);
begin

  allowChange:=true;

  Try

    case PageControlPC.ActivePageIndex of
    0: begin
      ksPostTables([SeminarSQL]);
      InsertMonoCompany(0);
       SeminarSQL.Refresh;
     end;
    1: ksPostTables([seminarSubjectSQL]);
//    2: ksPostTables([AttendingSQL]);
    4: ksPostTables([SeminarCostItemSQL]);
    5: ksPostTables([SeminarReminderSQL]);
   end;
  except
    On E : Exception do begin
        ShowMessage(E.Message);
      AllowChange:=false;
    end;
  end;

end;

procedure TV_SeminarFRM.CanelBTNClick(Sender: TObject);
begin
  SeminarSQL.Cancel;
  close;
end;

procedure TV_SeminarFRM.CostTSShow(Sender: TObject);
var
  allowModify: boolean;
begin
  ksOpenTables([CostItemTBL, SeminarCostItemSQL]);
  AllowmodifY := allowToModify();
//  CostItemTBL.ReadOnly:=not allowmodify;
  SeminarCostItemSQL.ReadOnly := not allowmodify;

end;

procedure TV_SeminarFRM.CostTypeFLDCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  FillTable.FieldByName('amount_per_item').AsFloat :=
    LookupTable.FieldByName('amount').AsFloat;
end;

procedure TV_SeminarFRM.CostTypeFLDDropDown(Sender: TObject);
begin
  with (Sender as TwwDBLookupCombo) do
    (LookupTable as TIBCTable).IndexFieldNames := 'COST_NAME';
//    'COST_ITEM_TYPE_NAME_IDX';
end;

procedure TV_SeminarFRM.SubjectTSShow(Sender: TObject);
var
  allowmodify: Boolean;
begin

  ksOpenTables([seminarSubjectSQL, SeminarDaySQL,instructorSelectSQL]);

  AllowmodifY := allowToModify();
  seminarSubjectSQL.ReadOnly := not allowmodify;
  SeminarDaySQL.ReadOnly := not allowmodify;

end;

procedure TV_SeminarFRM.EditSeminar(const SeminarSerial: integer);
var
  Dataset: TIBCQuery;
  allowModify: Boolean;
  St: string;
begin
  Dataset := SeminarSQL;
  with Dataset do
  begin
    close;
    ParamByName('SerialNumber').value := SeminarSerial;
    Open;
    if Dataset.IsEmpty then
    begin
      Dataset.Close;
      self.Close;
    end;
    st := Dataset.FieldByName('status').AsString;

    allowModify := (St = 'P') or (St = 'N') or (St = 'W');
    Dataset.ReadOnly := not allowModify;
  end;

  if AnadFLD.CanFocus then
    AnadFLD.SetFocus;
  TitleLBL.Caption := Trim(SeminarSQL.FieldByName('seminar_name').AsString);

end;

procedure TV_SeminarFRM.ExaminerBTNClick(Sender: TObject);
var

  Frm: TM_InstructorFRM;
  Serial: Integer;
begin
  if seminarSQL.State in [dsEdit] then
    SeminarSQL.Post;
  serial := SeminarSubjectSQL.FieldByName('fk_examiner').AsInteger;
  if Serial < 1 then
    exit;
  frm := TM_InstructorFRM.Create(nil);
  frm.IN_ACTION := 'DISPLAY';
  frm.in_INSTRUCTOR_SERIAL := Serial;
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TV_SeminarFRM.StartSeminar(const SeminarSerial: integer);
var
  qr: TksQuery;
  status: string;
begin
  if SeminarSerial < 1 then
    exit;
  qr := TksQuery.Create(cn,
    'select * from Seminar where serial_number= :serial');
  try
    qr.ParamByName('serial').AsInteger := seminarSerial;
    qr.Open;
    status := qr.FieldByName('status').AsString;
    if status = 'P' then
    begin
      ksExecSQLVar(cn,
        'update seminar set status= ''A'' where serial_number= :serial',
        [SeminarSerial]);
    end;
  finally
    qr.Free;
  end;

end;

function TV_SeminarFRM.UpdateCostFooter(const SeminarSerial: Integer): Double;
var
  qr: TksQuery;
  str: string;

begin

  if SeminarSerial < 1 then
  begin
    result := 0;
    exit;
  end;
  Str :=
    ' select'
    + '  sum(nullif(  sci.number_of_items ,0)*NulliF(sci.amount_per_item,0) ) as Total'
    + '  from seminar_cost_item sci'
    + '  where sci.fk_seminar_serial= :seminarSerial';

  qr := TksQuery.Create(cn, str);
  try
    with qr do
    begin
      ParamByName('SeminarSerial').Value := Seminarserial;
      open;
      result := FieldbyName('Total').AsFloat;
      close;
    end;

  finally
    qr.Free;
  end;
end;

function TV_SeminarFRM.FindActionDate(ActionDateRec: TActionDateRec): Tdate;
var
  mySign: Integer;
  DateReminder: TDate;
  RefDate: TDate;
  dt: TactionDateRec;
begin
  dt := ActionDateRec;
  if dt.UseStartDate then
    RefDate := dt.StartDate
  else
    RefDate := dt.EndDate;

  if dt.isAfter then
    mySign := 1
  else
    mySign := -1;

  try
    if dt.IsDayUnit then
      DateReminder := IncDay(RefDate, mySign * dt.NumberOfUnits)
    else
      DateReminder := IncMonth(RefDate, mySign * dt.NumberOFUnits);

    Result := Trunc(DateREminder);
  except
    result := EncodeDate(1900, 01, 01);
  end;

end;

////////////////////////////////////////
///
///
///


//////////////////////////////////////////

function TV_SeminarFRM.allowToModify(): Boolean;
var
  st: string;
begin
  st := SeminarSQL.FieldByName('status').AsString;
  result := (St = 'P');

end;
end.

