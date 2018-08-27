unit M_seminarType;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  vcl.wwcheckbox, Vcl.ComCtrls, RzDBEdit, RzTabs, RzRadGrp, RzDBRGrp,
  Vcl.ExtDlgs, vcl.wwclearbuttongroup, vcl.wwradiogroup, vcl.wwriched,codeSiteLogging,CodeSiteMessage,
  Vcl.Menus, RzSplit
;
type
  TM_SeminarTypeFRM = class(TForm)
    Panel3: TRzPanel;
    SeminarTypeSRC: TDataSource;
    SeminarTypeSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    SeminarTypeSQLSERIAL_NUMBER: TIntegerField;
    SeminarTypeSQLSEMINAR_NAME: TWideStringField;
    SeminarTypeSQLSEMINAR_COST: TFloatField;
    SeminarTypeSQLANAD_APPROVED: TWideStringField;
    SeminarTypeSQLSEMINAR_CATEGORY: TWideStringField;
    SeminarTypeSQLDURATION_HOURS: TIntegerField;
    SeminarTypeSQLDURATION_DAYS: TIntegerField;
    SeminarTypeSQLCOMMENTS: TWideStringField;
    seminarSubjectSQL: TIBCQuery;
    SeminarSubjectSRC: TDataSource;
    seminarSubjectSQLSERIAL_NUMBER: TIntegerField;
    seminarSubjectSQLSUBJECT: TWideStringField;
    seminarSubjectSQLFK_SEMINAR_TYPE_SERIAL: TIntegerField;
    Panel4: TRzPanel;
    RzPanel1: TRzPanel;
    ClolseBTN: TRzBitBtn;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    SeminarReminderSRC: TDataSource;
    SeminarReminderSQL: TIBCQuery;
    SeminarReminderSQLSERIAL_NUMBER: TIntegerField;
    SeminarReminderSQLFK_SEMINAR_TYPE_SERIAL: TIntegerField;
    SeminarReminderSQLDESCRIPTION: TWideStringField;
    SeminarReminderSQLREMINDER_MESSAGE: TWideStringField;
    SeminarReminderSQLAFTER_OR_BEFORE: TWideStringField;
    SeminarReminderSQLPERSON_OR_SEMINAR: TWideStringField;
    SeminarReminderSQLSTART_OR_END: TWideStringField;
    SeminarReminderSQLDAYS_OR_MONTHS: TWideStringField;
    SeminarReminderSQLNUMBER_OF_DAYS_MONTHS: TIntegerField;
    SeminarTypeSQLMAX_CAPACITY: TIntegerField;
    SeminarTypeSQLHAS_EXPIRY: TWideStringField;
    SeminarTypeSQLEXPIRY_PERIOD: TIntegerField;
    TitlePNL: TRzPanel;
    RzPanel8: TRzPanel;
    SeminarReminderSQLIS_HIGH: TWideStringField;
    SeminarPictureSQL: TIBCQuery;
    SeminarPictureSRC: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    SeminarPictureSQLSERIAL_NUMBER: TIntegerField;
    SeminarPictureSQLFK_SEMINAR_TYPE_SERIAL: TIntegerField;
    SeminarPictureSQLLANGUAGE_GREEK_OR_ENGLISH: TWideStringField;
    SeminarPictureSQLPICTURE_SEMINAR: TBlobField;
    SeminarPictureSQLLINE_A1: TWideStringField;
    SeminarPictureSQLLINE_A2: TWideStringField;
    SeminarPictureSQLLINE_B1: TWideStringField;
    SeminarPictureSQLLINE_B2: TWideStringField;
    SeminarPictureSQLLINE_B3: TWideStringField;
    SeminarPictureSQLTL_X: TIntegerField;
    SeminarPictureSQLTL_Y: TIntegerField;
    SeminarPictureSQLTR_X: TIntegerField;
    SeminarPictureSQLTR_Y: TIntegerField;
    SeminarPictureSQLBL_X: TIntegerField;
    SeminarPictureSQLBL_Y: TIntegerField;
    SeminarPictureSQLBR_X: TIntegerField;
    SeminarPictureSQLBR_Y: TIntegerField;
    SeminarPictureSQLPICTURE_TOP_L1: TBlobField;
    SeminarPictureSQLPICTURE_TOP_R1: TBlobField;
    SeminarPictureSQLPICTURE_BOT_L1: TBlobField;
    SeminarPictureSQLPICTURE_BOT_R1: TBlobField;
    SeminarPictureSQLLINE_C1: TWideStringField;
    MainMenu1: TMainMenu;
    Help1: TMenuItem;
    Certifcates1: TMenuItem;
    seminarSubjectSQLFEE_NORMAL: TFloatField;
    seminarSubjectSQLFEE_REDUCED: TFloatField;
    PageControlPC: TPageControl;
    SeminarTS: TTabSheet;
    SubjectTS: TTabSheet;
    ReminderTS: TTabSheet;
    CertificationOldTS: TTabSheet;
    RzPanel22: TRzPanel;
    RzPanel26: TRzPanel;
    RzPanel27: TRzPanel;
    RzPanel28: TRzPanel;
    Panel5: TRzPanel;
    wwIncrementalSearch1: TwwIncrementalSearch;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    Grid1: TwwDBGrid;
    RzPanel12: TRzPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    SerialFLD: TRzDBLabel;
    Label7: TLabel;
    Label17: TLabel;
    Label5: TLabel;
    DescFLD: TwwDBEdit;
    RzDBRichEdit1: TRzDBRichEdit;
    wwCheckBox1: TwwCheckBox;
    wwCheckBox2: TwwCheckBox;
    SecondGRP: TRzGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    CompletedFLD: TwwCheckBox;
    wwDBEdit2: TwwDBEdit;
    RzPanel13: TRzPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwNavButton8: TwwNavButton;
    RzPanel14: TRzPanel;
    RzPanel20: TRzPanel;
    GroupBox2: TGroupBox;
    RzPanel4: TRzPanel;
    wwDBGrid1: TwwDBGrid;
    RzPanel25: TRzPanel;
    RzPanel19: TRzPanel;
    GroupBox5: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    RzDBLabel2: TRzDBLabel;
    SubjectDescFLD: TwwDBEdit;
    RzPanel21: TRzPanel;
    SubjectNAV: TwwDBNavigator;
    wwNavButton17: TwwNavButton;
    wwNavButton18: TwwNavButton;
    wwNavButton19: TwwNavButton;
    wwNavButton20: TwwNavButton;
    wwNavButton21: TwwNavButton;
    wwNavButton22: TwwNavButton;
    wwNavButton23: TwwNavButton;
    wwNavButton24: TwwNavButton;
    RzPanel23: TRzPanel;
    RzGroupBox1: TRzGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    RzPanel6: TRzPanel;
    wwIncrementalSearch2: TwwIncrementalSearch;
    GroupBox3: TGroupBox;
    RzPanel5: TRzPanel;
    wwDBGrid2: TwwDBGrid;
    AfterFLD: TwwDBComboBox;
    NamePersonFLD: TwwDBComboBox;
    StartEndLD: TwwDBComboBox;
    RzPanel17: TRzPanel;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    RzDBLabel1: TRzDBLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label20: TLabel;
    REminderDescFLD: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    RzDBRichEdit2: TRzDBRichEdit;
    RzDBRadioGroup2: TRzDBRadioGroup;
    RzDBRadioGroup3: TRzDBRadioGroup;
    RzDBRadioGroup4: TRzDBRadioGroup;
    RzDBRadioGroup1: TRzDBRadioGroup;
    wwCheckBox3: TwwCheckBox;
    RzPanel15: TRzPanel;
    RzPanel16: TRzPanel;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton9: TwwNavButton;
    wwNavButton10: TwwNavButton;
    wwNavButton11: TwwNavButton;
    wwNavButton12: TwwNavButton;
    wwNavButton13: TwwNavButton;
    wwNavButton14: TwwNavButton;
    wwNavButton15: TwwNavButton;
    wwNavButton16: TwwNavButton;
    RzPanel18: TRzPanel;
    RzPanel29: TRzPanel;
    LanguageRGP: TwwRadioGroup;
    CopyDefaultBTN: TRzBitBtn;
    CopyHardBTN: TRzBitBtn;
    SaveDefaultBTN: TRzBitBtn;
    SaveHardBTN: TRzBitBtn;
    RzGroupBox2: TRzGroupBox;
    SelTopLeftBTN: TRzBitBtn;
    ClearTopLeftBTN: TRzBitBtn;
    TopFLD: TwwDBRichEdit;
    MiddleFLD: TwwDBRichEdit;
    CertDirectorFLD: TwwDBRichEdit;
    CertInstructorFLD: TwwDBRichEdit;
    BottomFLD: TwwDBRichEdit;
    BottomLeftFLD: TwwDBRichEdit;
    RzPanel7: TRzPanel;
    PICTURE_TOP_L1: TImage;
    RzPanel9: TRzPanel;
    PICTURE_TOP_R1: TImage;
    RzPanel10: TRzPanel;
    PICTURE_BOT_L1: TImage;
    RzPanel11: TRzPanel;
    PICTURE_BOT_R1: TImage;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    wwDBEdit13: TwwDBEdit;
    wwDBEdit14: TwwDBEdit;
    Panel2: TRzPanel;
    RzPanel24: TRzPanel;
    RzPanel30: TRzPanel;
    Label23: TLabel;
    wwDBEdit15: TwwDBEdit;
    SeminarTypeSQLPASS_PERCENTAGE: TIntegerField;
    SeminarTypeSQLTYPE_MONO_POLY: TWideStringField;
    InstructTS: TTabSheet;
    RzPanel31: TRzPanel;
    RzPanel32: TRzPanel;
    RzGroupBox3: TRzGroupBox;
    RzSizePanel1: TRzSizePanel;
    AttendGRD: TwwDBGrid;
    middlePNL: TRzPanel;
    ToRightBTN: TBitBtn;
    ToLeftBTN: TBitBtn;
    RzGroupBox4: TRzGroupBox;
    AllPersonsGRD: TwwDBGrid;
    RzSizePanel2: TRzSizePanel;
    SearchPersonFLD: TwwIncrementalSearch;
    insSemInstructorsSQL: TIBCQuery;
    insSemInstructorsSRC: TDataSource;
    insSeminarSubjectSQL: TIBCQuery;
    insSeminarSubjectSRC: TDataSource;
    insSeminarSubjectSQLSERIAL_NUMBER: TIntegerField;
    insSeminarSubjectSQLSUBJECT: TWideStringField;
    insSeminarSubjectSQLFK_SEMINAR_TYPE_SERIAL: TIntegerField;
    insSeminarSubjectSQLFEE_NORMAL: TFloatField;
    insSeminarSubjectSQLFEE_REDUCED: TFloatField;
    RzPanel34: TRzPanel;
    RzGroupBox5: TRzGroupBox;
    RzSizePanel3: TRzSizePanel;
    wwDBGrid3: TwwDBGrid;
    insSemInstructorsSQLFK_INSTRUCTOR_SERIAL: TIntegerField;
    insSemInstructorsSQLFK_SEMINAR_SUBJECT_SERIAL: TIntegerField;
    insSemInstructorsSQLLAST_NAME: TWideStringField;
    insSemInstructorsSQLFIRST_NAME: TWideStringField;
    insSemInstructorsSQLNATIONAL_ID: TWideStringField;
    insSeminarAllInstructorsSQL: TIBCQuery;
    insSeminarAllInstructorsSRC: TDataSource;
    SeminarTypeSQLSPECIFICATION_NUMBER: TWideStringField;
    Label24: TLabel;
    FirstFLD: TwwDBEdit;
    wwIncrementalSearch3: TwwIncrementalSearch;
    Label25: TLabel;
    Label26: TLabel;
    insSeminarAllInstructorsSQLSERIAL_NUMBER: TIntegerField;
    insSeminarAllInstructorsSQLLAST_NAME: TWideStringField;
    insSeminarAllInstructorsSQLFIRST_NAME: TWideStringField;
    insSeminarAllInstructorsSQLSTATUS_ACTIVE: TWideStringField;
    insSeminarAllInstructorsSQLNATIONAL_ID: TWideStringField;
    insSeminarAllInstructorsSQLANAD_NUMBER: TWideStringField;
    insSeminarAllInstructorsSQLFK_INSTRUCTOR_SERIAL: TIntegerField;
    insSeminarAllInstructorsSQLFK_SEMINAR_SUBJECT_SERIAL: TIntegerField;
    certificatesHelpRE: TwwDBRichEdit;
    Label27: TLabel;
    wwDBEdit16: TwwDBEdit;
    CertificationTS: TTabSheet;
    RzPanel35: TRzPanel;
    EditTemplateBTN: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ClolseBTNClick(Sender: TObject);
    procedure Nav1InsertClick(Sender: TObject);
    procedure Grid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure SeminarTypeSQLNewRecord(DataSet: TDataSet);
    procedure SubjectTSShow(Sender: TObject);
    procedure ReminderTSShow(Sender: TObject);
    procedure wwNavButton5Click(Sender: TObject);
    procedure CertificationOldTSShow(Sender: TObject);
    procedure CertificationOldTSExit(Sender: TObject);
    procedure SeminarTypeSQLAfterScroll(DataSet: TDataSet);
    procedure PICTURE_TOP_L1DblClick(Sender: TObject);
    procedure PICTURE_TOP_L1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SaveDefaultBTNClick(Sender: TObject);
    procedure CopyDefaultBTNClick(Sender: TObject);
    procedure LanguageRGPChange(Sender: TObject);
    procedure Certifcates1Click(Sender: TObject);
    procedure CopyHardBTNClick(Sender: TObject);
    procedure SaveHardBTNClick(Sender: TObject);
    procedure InstructTSShow(Sender: TObject);
    procedure ToLeftBTNClick(Sender: TObject);
    procedure ToRightBTNClick(Sender: TObject);
    procedure insSeminarSubjectSQLAfterScroll(DataSet: TDataSet);
    procedure wwNavButton21Click(Sender: TObject);
    procedure SeminarTSExit(Sender: TObject);
    procedure PageControlPCChanging(Sender: TObject; var AllowChange: Boolean);
    procedure SeminarReminderSQLNewRecord(DataSet: TDataSet);
    procedure SeminarTSShow(Sender: TObject);
    procedure EditTemplateBTNClick(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;

  procedure ShowAll(Const SeminarSerial:integer;Const Language :String);
  procedure CheckPicturesT(COnst TypeSerial:Integer);
  function  SelectPictureT(var img :TImage):Boolean;
  procedure ShowPictureDataT(Const TypeSerial:Integer;Const  Language:String);
  procedure ShowPictureT(Const TypeSerial:Integer;Const aFieldName :String;Const  Language:String;img:TImage);
  procedure SavePictureT(Const SeminarSerial:Integer;Const aFieldName:String; Const Language:String;img:Timage);
  procedure SelectAndSavePictureT(Const SeminarSerial:Integer;Const Language:String; img:TImage);
  procedure ClearPictureT(Const SeminarSerial:Integer;Const aFieldName :String; Const Language:String;img:Timage);



  procedure CopyFromDefault(Const PictureSerial:Integer;Const DefaultPicSerial:Integer; Const Language:String);
  procedure SaveToDefault(Const PictureSerial:Integer;Const DefaultPicSerial:integer;Const Language:String);

  procedure RemoveInstructor();
  procedure InsertInstructor();
  procedure PrintTestCertificate();


  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;

  end;

var
  M_SeminarTypeFRM: TM_SeminarTypeFRM;

implementation

uses   U_Database, G_generalProcs, G_SFCommonProcs, H_Help, R_Certificate,
  V_SeminarTypeCertificate, V_SeminarTypeCertificateNew;


{$R *.DFM}

procedure TM_SeminarTypeFRM.BitBtn1Click(Sender: TObject);
begin
 if SeminarPictureSQL.State in [dsEdit, dsInsert] then begin
         SeminarPictureSQL.Post;
 end;
end;

procedure TM_SeminarTypeFRM.SeminarTypeSQLAfterScroll(DataSet: TDataSet);
begin
         TitlePNL.Caption:='TEMPLATE for '+ Trim(Dataset.FieldByName('seminar_name').AsString);
end;

procedure TM_SeminarTypeFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TM_SeminarTypeFRM.SeminarTypeSQLNewRecord(DataSet: TDataSet);
begin
Dataset.FieldByName('ANAD_APPROVED').value:='Y';
Dataset.FieldByName('type_mono_poly').value:='M';
Dataset.FieldByName('Has_expiry').value:='N';

end;

procedure TM_SeminarTypeFRM.ToLeftBTNClick(Sender: TObject);
begin
InsertInstructor();
end;

procedure TM_SeminarTypeFRM.ToRightBTNClick(Sender: TObject);
begin
Removeinstructor();
end;

procedure TM_SeminarTypeFRM.InstructTSShow(Sender: TObject);
var
  subjectSerial:Integer;
begin
 subjectSerial:= SeminarTypeSQL.FieldByName('serial_number').AsInteger;
insSeminarSubjectSQL.Close;
insSeminarSubjectSQL.ParamByName('SubjectSerial').Value:=subjectSerial;
insSeminarSubjectSQL.Open;
//showMessage(insSeminarSubjectSQL.FieldByName('subject').AsString);


ksOpenTables([ insSemInstructorsSQL]);

insSeminarAllInstructorsSQL.Close;
insSeminarAllInstructorsSQL.ParamByName('SubjectSerial').Value:=subjectSerial;
insSeminarAllInstructorsSQL.Open;
insSeminarSubjectSQL.First;

end;

procedure TM_SeminarTypeFRM.wwNavButton21Click(Sender: TObject);
begin
SubjectDescFLD.SetFocus;
end;

procedure TM_SeminarTypeFRM.wwNavButton5Click(Sender: TObject);
begin
FirstFLD.SetFocus;
end;

procedure TM_SeminarTypeFRM.ReminderTSShow(Sender: TObject);
var
  SeminarSerial:Integer;
begin

  SeminarSerial:= SeminarTypeSQL.FieldByName('serial_number').AsInteger;
  ksOpenTables([SeminarReminderSQL]);

end;

procedure TM_SeminarTypeFRM.ClolseBTNClick(Sender: TObject);
begin
  close;
end;


procedure TM_SeminarTypeFRM.PrintTestCertificate();
begin


end;

procedure TM_SeminarTypeFRM.CanelBTNClick(Sender: TObject);
begin
SeminarTypeSQL.Cancel;
close;
end;

procedure TM_SeminarTypeFRM.SubjectTSShow(Sender: TObject);
var
  SeminarSerial:Integer;
begin
  if SeminarTypeSQL.State in [dsInsert,dsEdit] then
    SeminarTypeSQL.post;

  SeminarSerial:= SeminarTypeSQL.FieldByName('serial_number').AsInteger;
  ksOpenTables([SeminarSubjectSQL]);
  subjectDescFLD.setFocus;

end;


procedure TM_SeminarTypeFRM.FormActivate(Sender: TObject);
begin
ksOpenTables([SeminarTypeSQL,SeminarSubjectSQL]);
if IN_ACTION='INSERT' then begin
   SeminarTypeSQL.Insert;
end;
  PageControlPC.ActivePageIndex := 0;

end;

procedure TM_SeminarTypeFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if SeminarTypeSQL.State in [dsInsert, dsEdit] then
   SeminarTypeSQL.Post;
if SeminarPictureSQL.State in [dsInsert, dsEdit] then
   SeminarPictureSQL.Post;
end;

procedure TM_SeminarTypeFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
    PageControlPC.ActivePageIndex := 0;

end;

procedure TM_SeminarTypeFRM.Grid1TitleButtonClick(Sender: TObject; AFieldName: string);
var
         sortInfoHawb:TSOrtInfo;
         Table:TIBCQuery;
begin
        Table:=TIbcQuery(Grid1.DataSource.DataSet);
        SortInfoHawb.Table:=Table;
        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawb);
end;


procedure TM_SeminarTypeFRM.LanguageRGPChange(Sender: TObject);
var
  SeminarSerial:Integer;
  Language:String;
begin
  if SeminarPictureSQL.State in [dsEdit,dsInsert] then
    SeminarPictureSQL.Post;
  SeminarSerial:= SeminarTypeSQL.FieldByName('serial_number').AsInteger;
  Language:=LanguageRGP.Value;
  ShowAll(seminarSerial,Language);

end;

procedure TM_SeminarTypeFRM.ShowAll(Const SeminarSerial:integer;Const Language :String);
begin
  if SeminarSerial<1 then exit;
//  SHowMessage( intToStr(  LanguageRGP.ItemIndex));
  if language='' then exit;

  SHowPictureT(SeminarSerial,Picture_top_l1.Name, Language, Picture_top_L1);
  SHowPictureT(SeminarSerial,Picture_top_R1.Name, Language, Picture_top_R1);
  SHowPictureT(SeminarSerial,Picture_bot_l1.Name, Language, Picture_bot_L1);
  SHowPictureT(SeminarSerial,Picture_bot_R1.Name, Language, Picture_bot_R1);

  ShowPictureDataT(SeminarSerial,Language);
end;



procedure TM_SeminarTypeFRM.Nav1InsertClick(Sender: TObject);
begin
 ReminderDescFLD.SetFocus;
end;

procedure TM_SeminarTypeFRM.PageControlPCChanging(Sender: TObject;
  var AllowChange: Boolean);
begin

  allowChange:=true;

  Try

    case PageControlPC.ActivePageIndex of
    0: ksPostTables([SeminarTypeSQL]);
    1: ksPostTables([seminarSubjectSQL]);
    2: ksPostTables([SeminarReminderSQL]);
//    2: ksPostTables([AttendingSQL]);
//    3: ksPostTables([SeminarCostItemSQL]);
//    5: ksPostTables([SeminarPictureSQL]);
   end;
  except
    On E : Exception do begin
        ShowMessage(E.Message);
      AllowChange:=false;
    end;
  end;


End;



procedure TM_SeminarTypeFRM.PICTURE_TOP_L1DblClick(Sender: TObject);
begin
  SelectAndSavePictureT(SeminarTypeSQL.fieldbyName('serial_number').AsInteger,LanguageRGP.Values[LanguageRGP.ItemIndex],TImage(Sender));
end;

procedure TM_SeminarTypeFRM.PICTURE_TOP_L1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (ssCtrl in Shift) then begin
    ClearPictureT(SeminarTypeSQL.fieldbyName('serial_number').AsInteger,TImage(sender).name, LanguageRGP.Values[LanguageRGP.ItemIndex],TImage(Sender));
  end;
end;

procedure TM_SeminarTypeFRM.Certifcates1Click(Sender: TObject);
vAR
  Frm:TH_HelpFRM;
begin
  frm := TH_HelpFRM.Create(nil);
  try

    frm.IN_RtfTExt:=certificatesHelpRE.Text;
    frm.IN_RichEdit:=certificatesHelpRE;
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TM_SeminarTypeFRM.CertificationOldTSExit(Sender: TObject);
begin
  If SeminarPictureSQL.State in [dsEdit,dsInsert] then begin
    SeminarPictureSQL.Post;
  end;

end;

procedure TM_SeminarTypeFRM.CertificationOldTSShow(Sender: TObject);
var
  SeminarSerial:Integer;
  Language:String;
begin
  SeminarSerial:= SeminarTypeSQL.FieldByName('serial_number').AsInteger;
  LanguageRGP.ItemIndex:=0;

//  showMessage(LanguageRGP.Values[LanguageRGP.ItemIndex]);
//  showMessage(languageRGP.Value);not working!!
  CheckPicturesT(SeminarSerial); // if not exists then create one for English and one for Greek


   Language:=LanguageRGP.Values[LanguageRGP.ItemIndex]; //LanguageRGP.value not working!!

   ShowAll(seminarSerial,Language);

  {
  SHowPictureT(SeminarSerial,Picture_top_l1.Name,'G',Picture_top_L1);
  SHowPictureT(SeminarSerial,Picture_top_R1.Name,'G',Picture_top_R1);
  SHowPictureT(SeminarSerial,Picture_bot_l1.Name,'G',Picture_bot_L1);
  SHowPictureT(SeminarSerial,Picture_bot_R1.Name,'G',Picture_bot_R1);
  SHowPictureDataT(SeminarSerial,'G');
  }
end;

////////////////////////////////////////

////////////////////////////////////////
///
///
///
procedure TM_SeminarTypeFRM.CheckPicturesT(COnst TypeSerial:Integer);
var
  Serial:Integer;
  str:String;
  strIns:String;
begin
//create the records if not exist

strIns:= 'insert into seminar_Type_pictures '
+'(serial_number,FK_SEMINAR_Type_SERIAL, LANGUAGE_GREEK_OR_ENGLISH) values (:Serial, :typeSerial, :lang)';

  if TypeSerial<1 then exit;

  str:=
' select serial_number'
  +'  from'
  +'      seminar_Type_pictures stp'
  +'  where'
  +'   stp.fk_seminar_type_serial= :SeminarTYpeSerial and stp.language_greek_or_english = :lang';

  if ksCountRecVarSQL(cn,str,[TypeSerial,'G'])=0 then begin
    serial:=ksGenerateSerial(cn,'GEN_SEMINAR_TYPE_PICTURES');
    ksExecSQLVar(cn,strIns,[serial,TypeSerial,'G']);
  end;

  if ksCountRecVarSQL(cn,str,[TypeSerial,'E'])=0 then begin
    serial:=ksGenerateSerial(cn,'GEN_SEMINAR_TYPE_PICTURES');
    ksExecSQLVar(cn,strIns,[serial, TypeSerial,'E']);
  end;


end;
procedure TM_SeminarTypeFRM.ClearPictureT(Const SeminarSerial:Integer;Const aFieldName :String; Const Language:String;img:Timage);
begin
//  showMessage('clear lang='+language);


  img.Picture:=nil;
  SavePictureT(SeminarSerial,aFieldName, LanguageRGP.Values[LanguageRGP.ItemIndex],img);
end;


procedure TM_SeminarTypeFRM.SavePictureT(Const SeminarSerial:Integer;Const aFieldName :String; Const Language:String;img:Timage);
var
//  BlobField: TField;
  BlobField: TBlobField;
  BS: TStream;
  str2:String;
  qr:TksQuery;
begin

//  CodeSite.send(InttoStr(SeminarSerial));
//
//  CodeSite.Send(afieldName);
//  CodeSite.Send(Language);
//  CodeSite.Send(img.Name);
  str2:='select * from seminar_Type_pictures stp '
  + ' where stp.fk_seminar_Type_serial= :seminarSerial and LANGUAGE_GREEK_OR_ENGLISH = :language';
  qr:= TksQuery.Create(cn,str2);
   try
    with qr do  begin
      close;
      qr.ParamByName('seminarSerial').Value:=seminarSerial;
      qr.ParamByName('Language').Value:=Language;
      open;
      if qr.IsEmpty then
       exit;

      if (qr.FindField(aFieldName)=nil) then begin
        ShowMessage('Cannot find field. Name of the picture =fieldname= '+aFieldName);
        exit;
      end;

      qr.Edit;
      BlobField := FieldByName(aFieldName) as TBlobField;
      BS := qr.CreateBlobStream(BlobField,bmWrite);
      try
        Bs.Position:=0;
        Img.Picture.SaveToStream(BS);

        if BS.Size=0 then begin
          BlobField.Clear;
        end;
        qr.Post;
//        qr.close; // do not close because it will free bs

      finally
          BS.Free;

      end;

    end;
  finally
    qr.Free;
  end;

end;
function TM_SeminarTypeFRM.SelectPictureT(var img:TImage):Boolean;
var
  fileName:String;
Begin
    result:=false;
    if not OpenPictureDialog1.Execute then     begin
//    showMessage('exit');
      Exit;
    end;
    filename :=OpenPictureDialog1.FileName;
    Img.Picture :=nil;
    img.Picture.LoadFromFile(filename);
    result:=true;
end;


procedure TM_SeminarTypeFRM.SeminarReminderSQLNewRecord(DataSet: TDataSet);
begin
Dataset.FieldByName('Is_high').Value:='N';
end;

procedure TM_SeminarTypeFRM.SeminarTSExit(Sender: TObject);
begin
if SeminarTypeSQL.State in [dsEdit,dsInsert] then begin
  SeminarTypeSQL.Post;
end;


end;

procedure TM_SeminarTypeFRM.SeminarTSShow(Sender: TObject);
begin
//ShowMessage('ts enter');
end;

procedure TM_SeminarTypeFRM.ShowPictureDataT(Const TypeSerial:Integer;Const  Language:String);
begin
   SeminarPictureSQL.Close;
   SeminarPictureSQL.ParamByName('SeminarSerial').Value:=TypeSerial;
   SeminarPictureSQL.ParamByName('language').Value:=Language;
   SeminarPictureSQL.Open;
//   ShowMessage(SeminarPictureSQL.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').AsString);

end;
procedure TM_SeminarTypeFRM.ShowPictureT(Const TypeSerial:Integer;Const aFieldName :String; Const  Language:String;img:TImage);
 var
  code:string;
  BlobFIeld:TField;
  BS:TStream;
  qr:TksQuery;
//  imgTemp:TImage;


begin

 if TypeSerial<1 then
    exit;
 if (Language<>'G') ANd (Language<>'E') then begin
  showMessage('ERROR lang='+language);
  exit;
 end;

  Img.Picture:= nil;

  qr:= TksQuery.Create(cn,'select * from seminar_Type_pictures stp where stp.fk_seminar_Type_serial= :seminarSerial and LANGUAGE_GREEK_OR_ENGLISH = :language');
   try
      with qr do begin
        qr.close;
        qr.ParamByName('seminarSerial').Value:=TypeSerial;
        qr.ParamByName('LANGUAGE').Value:=Language;
        qr.open;
        if qr.IsEmpty then
          exit;

        if (qr.FindField(aFieldName)=nil) then begin
        ShowMessage('Cannot find field. Name of the picture =fieldname= '+aFieldName);
        exit;
        end;

//        if aFieldName='PICTURE_TOP_R1' then
//         img.Picture.LoadFromFile('C:\Data\DelphiProjects\Safe_CRM\pictures\SafetyLogo.png');


        BlobField := qr.FieldByName(aFieldName);
        BS := qr.CreateBlobStream(BlobField,bmRead);
        try
          BS.Position:=0;
          if bs.Size>0 then
            Img.Picture.LoadFromStream(bs)
          else
            Img.Picture:= nil;
//          qr.Close;
        finally
          bs.Free;
        end;

      end;


   finally
      qr.Free;
   end;


end;


procedure TM_SeminarTypeFRM.SelectAndSavePictureT(Const SeminarSerial:Integer;Const Language:String; img:TImage);
begin
//  SeminarSerial:=SeminarSQL.fieldbyName('serial_number').AsInteger;
  ksPostTables([SeminarPictureSQL]);
  if SelectPictureT(img) then begin
    SavePictureT(SeminarSerial, img.Name, Language,img);
    ShowPictureT(SeminarSerial,img.Name,Language, img);
//    ShowPictureData(TypeSerial,LanguageRGP.Value);
  end;


end;

//////////////////////////////////////////

procedure TM_SeminarTypeFRM.SaveDefaultBTNClick(Sender: TObject);
var
  PictureSerial:Integer;
  Language:string;
begin
    if SeminarPictureSQL.State in [dsEdit,dsInsert] then begin
      SeminarPictureSQL.post;
    end;
    PictureSerial:=SeminarPictureSQL.FieldByName('serial_number').AsInteger;
    Language:= SeminarPictureSQL.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').AsString;
    SaveToDefault(PictureSerial,0,Language);
end;


procedure TM_SeminarTypeFRM.SaveHardBTNClick(Sender: TObject);
var
  PictureSerial:Integer;
  Language:string;
begin
    if SeminarPictureSQL.State in [dsEdit,dsInsert] then begin
      SeminarPictureSQL.post;
    end;
    PictureSerial:=SeminarPictureSQL.FieldByName('serial_number').AsInteger;
    Language:= SeminarPictureSQL.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').AsString;
    SaveToDefault(PictureSerial,-1,Language);

end;

procedure TM_SeminarTypeFRM.SaveToDefault(Const PictureSerial:Integer;Const DefaultPicSerial:Integer;Const Language:String);
var
  DefaultQr:TksQuery;
  pictQR:TksQuery;
//  PictureSerial:integer;
//  Language:String;
begin

  DefaultQR:=TksQuery.Create(cn,'select * from prototype_pictures where serial_number= :defSerial and LANGUAGE_GREEK_OR_ENGLISH = :language');
  PictQR:=TksQuery.Create(cn,'SELECT * FROM seminar_type_pictures where serial_number = :SerialNumber ');

  try

    pictQr.ParamByName('SerialNumber').Value:=PictureSerial;
    PictQr.Open;
    if PictQR.IsEmpty then
      exit;

    DefaultQr.ParamByName('DefSerial').Value:=DefaultPicSerial;
    DefaultQr.ParamByName('Language').Value:=Language;
    DefaultQR.Open;
    if DefaultQR.IsEmpty then begin
      DefaultQR.Insert
    end else begin
      DefaultQR.Edit;
    end;

//    DefaultQr.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').Value:=Language;
    CopyDataRecord(pictQR,DefaultQr);
    DefaultQr.FieldByName('serial_number').Value:=DefaultPicSerial;
    codeSite.Send('TksQuery',DefaultQr);

    DefaultQr.Post;
  finally
    pictQR.Free;
    DefaultQr.Free;
  end;

end;


procedure TM_SeminarTypeFRM.CopyDefaultBTNClick(Sender: TObject);
 var
  SeminarSerial:Integer;
  PictureSerial:Integer;
  Language:string;
begin

    SeminarSerial:= SeminarTypeSQL.FieldByName('serial_number').AsInteger;
    PictureSerial:=SeminarPictureSQL.FieldByName('serial_number').AsInteger;
    Language:= SeminarPictureSQL.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').AsString;
    CopyFromDefault(PictureSerial,0,Language);
    ShowAll(SeminarSerial,Language);

end;

procedure TM_SeminarTypeFRM.CopyFromDefault(Const PictureSerial:Integer;Const DefaultPicSerial:Integer;Const Language:String);
var
  DefaultQr:TksQuery;
  pictQR:TksQuery;
//  PictureSerial:integer;
  Picture_FK:Integer;
//  Language:String;
begin

  DefaultQR:=TksQuery.Create(cn,'select * from prototype_pictures where serial_number= :defSerial and LANGUAGE_GREEK_OR_ENGLISH = :language');
  PictQR:=TksQuery.Create(cn,'SELECT * FROM seminar_type_pictures where serial_number = :SerialNumber ');

  try
//    PictureSerial:=SeminarPictureSQL.FieldByName('serial_number').AsInteger;

    DefaultQr.ParamByName('DefSerial').Value:=DefaultPicSerial;
    DefaultQr.ParamByName('Language').Value:=Language;
    DefaultQR.Open;

    if DefaultQR.IsEmpty then begin
      exit;
    end;

    pictQr.ParamByName('SerialNumber').Value:=PictureSerial;
    PictQr.Open;
    if PictQR.IsEmpty then
      exit;

    Picture_FK:=SeminarPictureSQL.FieldByName('FK_SEMINAR_TYPE_SERIAL').AsInteger;

    pictQR.Edit;
    CopyDataRecord(DefaultQr,pictQR);
    PictQr.FieldByName('FK_SEMINAR_TYPE_SERIAL').Value:=Picture_FK;

    PictQr.Post;
  finally
    pictQR.Free;
    DefaultQr.Free;
  end;


end;


procedure TM_SeminarTypeFRM.CopyHardBTNClick(Sender: TObject);
var
  SeminarSerial:Integer;
  PictureSerial:Integer;
  Language:string;
begin

    SeminarSerial:= SeminarTypeSQL.FieldByName('serial_number').AsInteger;
    PictureSerial:=SeminarPictureSQL.FieldByName('serial_number').AsInteger;
    Language:= SeminarPictureSQL.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').AsString;
    CopyFromDefault(PictureSerial,-1,Language);
    SeminarTypeSQL.Refresh;
    ShowAll(SeminarSerial,Language);
end;

//////////////////////////////////////////
///
///
///

procedure TM_SeminarTypeFRM.RemoveInstructor();
var
  qr: TksQuery;
  Instrserial: Integer;
  subjectSerial: Integer;
  str: string;
  st: string;

begin
  InstrSerial := insSemInstructorsSQL.FieldByName('FK_INSTRUCTOR_SERIAL').AsInteger;
  subjectSerial := insSemInstructorsSQL.FieldByName('FK_SEMINAR_SUBJECT_SERIAL').AsInteger;
  if (InstrSerial < 1) or (subjectSerial < 1) then
    exit;
  str :=
    ' delete from SEMINAR_TYPE_SUB_INSTRUCTORS where FK_INSTRUCTOR_SERIAL= :instrSerial and FK_SEMINAR_SUBJECT_SERIAL= :subjectSerial';
  ksExecSQLVar(cn, str, [InstrSerial, subjectSerial]);

  insSemInstructorsSQL.Refresh;
  insSeminarAllInstructorsSQL.Refresh;
end;


procedure TM_SeminarTypeFRM.EditTemplateBTNClick(Sender: TObject);
var
  Frm: TV_SeminarTypeCertificateNewFRM;
begin
 frm := TV_SeminarTypeCertificateNewFRM.Create(nil);
  try

    frm.IN_SeminarTypeSerial:=SeminarTypeSQL.FieldByName('serial_number').AsInteger;
    frm.IN_allowModify:=true;
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;


procedure TM_SeminarTypeFRM.InsertInstructor();
var
  qr: TksQuery;
  Instrserial: Integer;
  subjectSerial: Integer;
  str: string;
begin

  InstrSerial := insSeminarAllInstructorsSQL.FieldByName('serial_number').AsInteger;

  subjectSerial := insSeminarSubjectSQL.FieldByName('serial_number').AsInteger;

    if subjectSerial < 1 then
    exit;


  if InstrSerial < 1 then
    exit;
  str := ' insert into SEMINAR_TYPE_SUB_INSTRUCTORS  (FK_INSTRUCTOR_SERIAL,FK_SEMINAR_SUBJECT_SERIAL) values(:a,:b)';
  ksExecSQLVar(cn, str, [InstrSerial, subjectSerial]);

  insSemInstructorsSQL.Refresh;
  insSeminarAllInstructorsSQL.Refresh;

end;



procedure TM_SeminarTypeFRM.insSeminarSubjectSQLAfterScroll(DataSet: TDataSet);
begin
  insSeminarAllInstructorsSQL.Close;
  insSeminarAllInstructorsSQL.ParamByName('SubjectSerial').Value:=Dataset.FieldByName('serial_number').AsInteger;
  insSeminarAllInstructorsSQL.Open;
end;





End.
