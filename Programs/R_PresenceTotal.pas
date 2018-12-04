unit R_PresenceTotal;

interface

uses
  Windows, Messages, SysUtils,System.DateUtils,System.math, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError,  Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit,  DBGrids, wwdbdatetimepicker, ppDB, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppProd, ppReport, ppComm, ppRelatv,
  ppCache, ppDBPipe,ppTypes,ppviewr, ppDesignLayer, ppParameter, RzButton,
  RzPanel, Vcl.Imaging.pngimage, VirtualTable, myChkBox,G_generalProcs;

type
  TReminderResult= Record
    daysLeft:Integer;
    DateFinal:Tdate;
  End;

  TR_presenceTotalFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    SeminarPresenceSQL: TIBCQuery;
    SeminarPresenceSRC: TDataSource;
    SeminarPresencePIP: TppDBPipeline;
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
    ppLabel3: TppLabel;
    ppLabel8: TppLabel;
    ppShape1: TppShape;
    ppLabel10: TppLabel;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    SeminarSQL: TIBCQuery;
    SeminarSRC: TDataSource;
    SeminarPIP: TppDBPipeline;
    SeminarPresenceSQLPERSON_SERIAL: TIntegerField;
    SeminarPresenceSQLLAST_FIRST_NAME: TWideStringField;
    SeminarPresenceSQLNATIONAL_ID: TWideStringField;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    SeminarPresenceSQLALWAYS_PRESENT: TWideStringField;
    SeminarPresenceSQLIS_GUEST: TWideStringField;
    ppLabel9: TppLabel;
    myDBCheckBox2: TmyDBCheckBox;
    SeminarSQLSEMINARSERIAL: TIntegerField;
    SeminarSQLSEMINARNAME: TWideStringField;
    SeminarSQLDATESTARTED: TDateField;
    SeminarSQLTOTALHOURS: TLargeintField;
    ppLabel6: TppLabel;
    ppDBText3: TppDBText;
    ppVariable1: TppVariable;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    PassFLD: TmyCheckBox;
    SeminarOnlySQL: TIBCQuery;
    SeminarOnlySRC: TDataSource;
    SeminarOnlyPIP: TppDBPipeline;
    SeminarOnlySQLSERIAL_NUMBER: TIntegerField;
    SeminarOnlySQLANAD_NUMBER: TWideStringField;
    SeminarOnlySQLFK_SEMINAR: TIntegerField;
    SeminarOnlySQLFK_INSTRUCTOR: TIntegerField;
    SeminarOnlySQLFK_EXAMINER: TIntegerField;
    SeminarOnlySQLFK_VENUE: TIntegerField;
    SeminarOnlySQLFK_COMPANY_PERSON_SERIAL: TIntegerField;
    SeminarOnlySQLSEMINAR_NAME: TWideStringField;
    SeminarOnlySQLDATE_STARTED: TDateField;
    SeminarOnlySQLDATE_COMPLETED: TDateField;
    SeminarOnlySQLDURATION_DAYS: TIntegerField;
    SeminarOnlySQLDURATION_HOURS: TIntegerField;
    SeminarOnlySQLAMOUNT_ANAD: TFloatField;
    SeminarOnlySQLCOMMENTS: TWideStringField;
    SeminarOnlySQLANAD_APPROVED: TWideStringField;
    SeminarOnlySQLSTATUS: TWideStringField;
    SeminarOnlySQLIS_INVOICED: TWideStringField;
    SeminarOnlySQLIS_CERTIFICATED: TWideStringField;
    SeminarOnlySQLMAX_CAPACITY: TIntegerField;
    SeminarOnlySQLHAS_EXPIRY: TWideStringField;
    SeminarOnlySQLEXPIRY_PERIOD: TIntegerField;
    SeminarOnlySQLTYPE_MONO_POLY: TWideStringField;
    SeminarOnlySQLSEM_CATEGORY: TWideStringField;
    SeminarOnlySQLFK_COMPANY_INVOICED: TIntegerField;
    SeminarOnlySQLPASS_PERCENTAGE: TIntegerField;
    ppLabel13: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    SeminarPresenceSQLHOURS: TFloatField;
    ppDBText5: TppDBText;
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure FormActivate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure VtFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure PrintRBtnClick(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure CertFLDPrint(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
    procedure PrintSeminar(Const SeminarSerial,DaySerial:integer);

  public
    { Public declarations }
    IN_Seminar_Serial:Integer;
    IN_Day_Serial:Integer;
    procedure PrintTheSeminar();
  end;

var
  R_presenceTotalFRM: TR_presenceTotalFRM;

implementation

uses U_Database, G_SFCommonProcs, G_KyrSQL;


{$R *.DFM}





procedure TR_presenceTotalFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TR_presenceTotalFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;




procedure TR_presenceTotalFRM.CertFLDPrint(Sender: TObject);
var
  TotalHours:Integer;
  Hours:Integer;
  PercentActual:Double;
  PercentPass:Integer;
  isPresent:Boolean;
  isGuest:boolean;
  qr:TksQuery;
  SeminarSerial:Integer;

begin
  TotalHours:= SeminarSQL.FieldByName('TOTALHours').AsInteger;
  Hours:= SeminarPresenceSQL.FieldByName('Hours').AsInteger;
  isPresent:= SeminarPresenceSQL.FieldByName('always_present').AsString='Y';
  isGuest:= SeminarPresenceSQL.FieldByName('is_guest').AsString='Y';
  seminarSerial:=SeminarSQL.FieldByName('SeminarSerial').AsInteger;

  if TotalHours=0 then begin
    PercentActual:=0;
  end else begin
    PercentActual:= Hours/ TotalHours * 100.0;
  end;

  qr:=TksQuery.Create(cn,'select pass_Percentage from seminar where serial_number= :seminarSerial');
  try
    qr.ParamByName('seminarSerial').Value:=SeminarSerial;
    qr.Open;
    percentPass:=qr.FieldByName('pass_percentage').AsInteger;
  finally
    qr.Free;

  end;

//  percentPass:=gpGetGeneralParam(cn,'Ô00').P_Integer1;

  PassFLD.Checked:= (percentActual>= PercentPass) and isPresent and (not IsGuest);


  {
//  PercentPass
  if TotalHours=0 then
    value:=0
  else
  }
end;

procedure TR_presenceTotalFRM.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  (sender as TppReport).PreviewForm.WindowState := wsMaximized;
  TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;


procedure TR_presenceTotalFRM.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
var
  TotalHours:Integer;
  Hours:Integer;
begin
  TotalHours:= SeminarSQL.FieldByName('TOTALHours').AsInteger;
  Hours:= SeminarPresenceSQL.FieldByName('Hours').AsInteger;
  if TotalHours=0 then
    value:=0
  else
    value:= Hours/TotalHours *100.00;
end;

procedure TR_presenceTotalFRM.ppVariable3Calc(Sender: TObject; var Value: Variant);
begin
   value:=FromDateFLD.Date;
end;

procedure TR_presenceTotalFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;




procedure TR_presenceTotalFRM.VtFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  accept := Dataset.FieldByName('DaysCalc').asInteger >= 0;
end;


procedure TR_presenceTotalFRM.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  Text:= 'Reference Date :'+ FromDateFLD.Text;

end;




procedure TR_presenceTotalFRM.PrintRBtnClick(Sender: TObject);
begin
  PrintTheSeminar();
end;


procedure TR_presenceTotalFRM.PrintTheSeminar();
begin
  PrintSeminar(IN_Seminar_Serial,IN_Day_Serial);
end;

procedure TR_presenceTotalFRM.PrintSeminar(Const SeminarSerial,DaySerial:integer);
Var
   FromDate:TDateTime;
   DaysLeft:integer;
begin
  with SeminarOnlySQL do begin
     Close;
     SeminarOnlySQL.ParamByName('SeminarSerial').Value:=SeminarSerial;
     Open ;
  end;


  with SeminarSQL do begin
     Close;
     SeminarSQL.ParamByName('SeminarSerial').Value:=SeminarSerial;
     Open ;
  end;


  with SeminarPresenceSQL do begin
     Close;
     SeminarPresenceSQL.ParamByName('SeminarSerial').Value:=SeminarSerial;
     Open ;
  end;
     PpReport1.Print;

end;

procedure TR_presenceTotalFRM.FormActivate(Sender: TObject);
begin

if (Trim(FromDateFLD.text)='') then
   FromDateFLD.Date:=now;

end;


procedure TR_presenceTotalFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;


end.
