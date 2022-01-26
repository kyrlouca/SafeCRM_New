unit R_Reminders;

interface

uses
  Windows, Messages, SysUtils,System.DateUtils,System.math, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError,  Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit,  DBGrids, wwdbdatetimepicker, ppDB, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppProd, ppReport, ppComm, ppRelatv,
  ppCache, ppDBPipe,ppTypes,ppviewr, ppDesignLayer, ppParameter, RzButton,
  RzPanel, Vcl.Imaging.pngimage, VirtualTable, myChkBox, RzEdit;

type
  TReminderResult= Record
    daysLeft:Integer;
    DateFinal:Tdate;
  End;

  TR_remindersFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    SeminarReminderSQL: TIBCQuery;
    SeminarReminderSRC: TDataSource;
    SeminarReminderPIP: TppDBPipeline;
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
    ppFooterBand3: TppFooterBand;
    ppLine6: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppDBText1: TppDBText;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppShape1: TppShape;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText3: TppDBText;
    ppLabel13: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel14: TppLabel;
    ppDBText2: TppDBText;
    myDBCheckBox2: TmyDBCheckBox;
    ppLabel16: TppLabel;
    SeminarReminderSQLDAYSLEFT: TIntegerField;
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
    SeminarReminderSQLIS_HIGH: TWideStringField;
    SeminarReminderSQLSEMINAR_NAME: TWideStringField;
    SeminarReminderSQLSEMINAR_SERIAL: TIntegerField;
    SeminarReminderSQLANAD_NUMBER: TWideStringField;
    DaysLeftLBL: TppDBText;
    ppLabel10: TppLabel;
    ppDBText6: TppDBText;
    ppLine1: TppLine;
    M1: TRzMemo;
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure FormActivate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure FormCreate(Sender: TObject);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure VtFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure SeminarReminderSQLCalcFields(DataSet: TDataSet);
    procedure DaysLeftLBLPrint(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  Function FindActionDate(const DateSeminar:TDate;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Tdate;
  Function CalcDaysLeft():TReminderResult;

  public
    { Public declarations }
    IN_SeminarSerial:Integer;
    IN_SQL:String;
    IN_DateRef:Tdate;
    Procedure PrintTheSeminar();

  end;

var
  R_remindersFRM: TR_remindersFRM;

implementation

uses U_Database, G_SFCommonProcs, G_KyrSQL;


{$R *.DFM}





procedure TR_remindersFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TR_remindersFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;




procedure TR_remindersFRM.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  (sender as TppReport).PreviewForm.WindowState := wsMaximized;
  TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;


procedure TR_remindersFRM.ppVariable1Calc(Sender: TObject; var Value: Variant);
begin
// value:=vt.FieldByName('DaysCalc').AsInteger;
end;

procedure TR_remindersFRM.ppVariable2Calc(Sender: TObject; var Value: Variant);
begin
// value:=vt.FieldByName('ActionDate').AsDateTime;

end;

procedure TR_remindersFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;




procedure TR_remindersFRM.SeminarReminderSQLCalcFields(DataSet: TDataSet);
var
  days:integer;

begin
  Days:= Trunc(Dataset.FieldByName('date_targeted').AsDateTime - IN_DateRef);
  Dataset.FieldByName('daysLeft').AsInteger:=days;
end;

procedure TR_remindersFRM.VtFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  accept := Dataset.FieldByName('DaysCalc').asInteger >= 0;
end;

Function TR_remindersFRM.CalcDaysLeft():TReminderResult;
begin

end;



Function TR_remindersFRM.FindActionDate(const DateSeminar:TDate;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Tdate;
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


procedure TR_remindersFRM.DaysLeftLBLPrint(Sender: TObject);
begin
  if (SeminarReminderSQL.FieldByName('DaysLeft').AsInteger<8)
  and (SeminarReminderSQL.FieldByName('is_completed').AsString<>'Y') then
  begin
    DaysLeftLBL.Font.Color:=clRed;
    DaysLeftLBL.Font.Size:=12;
  end else begin
    DaysLeftLBL.Font.Color:=clBlack;
    DaysLeftLBL.Font.Size:=9;

  end;
end;

procedure TR_remindersFRM.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
Text:= 'Reference Date :'+ FromDateFLD.Text;

end;

Procedure TR_remindersFRM.PrintTheSeminar();

Var
   FromDate:TDateTime;
   DaysLeft:integer;
begin

fromDate:=FromDateFLD.Date;


   SeminarReminderSQL.close;
   SeminarReminderSQL.SQL.Clear;
   SeminarReminderSQL.SQL.Add(IN_SQL);
   m1.Clear;
   m1.Lines.Add(IN_SQL);

   SeminarReminderSQL.Prepare;
   if SeminarReminderSQL.FindParam('SeminarSerial')<>nil then begin
    SeminarReminderSQL.ParamByName('seminarSerial').Value:= IN_SeminarSerial;
  end;
   SeminarReminderSQL.ParamByName('TheDate').AsDate:= IN_DateRef;
  SeminarReminderSQL.open;

  PpReport1.Print;

end;


procedure TR_remindersFRM.FormActivate(Sender: TObject);
begin

if (Trim(FromDateFLD.text)='') then
   FromDateFLD.Date:=date;

SeminarReminderSQL.SQL.Clear;
SeminarReminderSQL.SQL.Add(IN_SQL);


end;


procedure TR_remindersFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;




end.
