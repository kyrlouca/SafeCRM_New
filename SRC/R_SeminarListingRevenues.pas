unit R_SeminarListingRevenues;

interface

uses
  Windows, Messages, SysUtils,System.DateUtils,System.math, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError,  Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit,  DBGrids, wwdbdatetimepicker, ppDB, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppProd, ppReport, ppComm, ppRelatv,
  ppCache, ppDBPipe,ppTypes,ppviewr, ppDesignLayer, ppParameter, RzButton,
  RzPanel, Vcl.Imaging.pngimage, VirtualTable, vcl.Wwdotdot, vcl.Wwdbcomb,
  RzLabel, RzDBLbl, vcl.wwdblook, ppStrtch, ppSubRpt;

type
  TReminderResult= Record
    daysLeft:Integer;
    DateFinal:Tdate;
  End;

  TR_SeminarListingRevenuesFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    PrintRBtn: TBitBtn;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    ppReport1: TppReport;
    ppParameterList3: TppParameterList;
    ppTitleBand3: TppTitleBand;
    ppLabel4: TppLabel;
    ppImage3: TppImage;
    ppHeaderBand3: TppHeaderBand;
    ddBand: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppLine6: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    CostSRC: TDataSource;
    SeminarPIP: TppDBPipeline;
    FirstGRP: TGroupBox;
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
    CostPiP: TppDBPipeline;
    CostSQL: TIBCQuery;
    ppSummaryBand1: TppSummaryBand;
    RevenueSQL: TIBCQuery;
    RevenueSRC: TDataSource;
    RevenuePIP: TppDBPipeline;
    Label1: TLabel;
    Label2: TLabel;
    FromDateFLD: TwwDBDateTimePicker;
    ToDateFLD: TwwDBDateTimePicker;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText15: TppDBText;
    ppLabel18: TppLabel;
    ppLine3: TppLine;
    ppDBText1: TppDBText;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel5: TppLabel;
    ppLabel2: TppLabel;
    CostSQLFK_SEMINAR_SERIAL: TIntegerField;
    CostSQLCOST_AMOUNT: TFloatField;
    RevenueSQLA_VAT: TFloatField;
    RevenueSQLA_NET: TFloatField;
    RevenueSQLA_TOTAL: TFloatField;
    RevenueSQLSUBJECT_SERIAL: TIntegerField;
    RevenueSQLSUBJECT: TWideStringField;
    RevenueSQLFK_SEMINAR_SERIAL: TIntegerField;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ProfitVar: TppVariable;
    TotalProfVar: TppVariable;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure PrintRBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure VtFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure TotalRevFLDCalc(Sender: TObject);
    procedure TotalProfFLDCalc(Sender: TObject; var Value: Variant);
    procedure ProfitVarCalc(Sender: TObject; var Value: Variant);
    procedure TotalProfVarCalc(Sender: TObject; var Value: Variant);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
    cn:TIBCConnection;
  Function FindActionDate(const DateSeminar:TDate;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Tdate;
  Function CalcDaysLeft():TReminderResult;
  procedure PrintTheSeminar(const FromDate, ToDate:TDate);
  public
    { Public declarations }
    IN_SeminarSubjectSerial:Integer;
    IN_SeminarSerial:Integer;
  procedure PrintSeminar();
  end;

var
  R_SeminarListingRevenuesFRM: TR_SeminarListingRevenuesFRM;

implementation

uses U_Database, G_SFCommonProcs, G_KyrSQL;


{$R *.DFM}





procedure TR_SeminarListingRevenuesFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TR_SeminarListingRevenuesFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;




procedure TR_SeminarListingRevenuesFRM.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  (sender as TppReport).PreviewForm.WindowState := wsMaximized;
  TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;


procedure TR_SeminarListingRevenuesFRM.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
   value:=FromDateFLD.Date;
end;

procedure TR_SeminarListingRevenuesFRM.ppVariable2Calc(Sender: TObject;
  var Value: Variant);
begin
    value:=TODateFLD.Date;
end;

procedure TR_SeminarListingRevenuesFRM.ppVariable3Calc(Sender: TObject; var Value: Variant);
begin
//   value:=FromDateFLD.Date;
end;

procedure TR_SeminarListingRevenuesFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;




procedure TR_SeminarListingRevenuesFRM.TotalProfFLDCalc(Sender: TObject;
  var Value: Variant);
begin
//  Value:=RevCalc.Value;
end;

procedure TR_SeminarListingRevenuesFRM.TotalProfVarCalc(Sender: TObject;
  var Value: Variant);
begin
value:=value+RevenueSQL.FieldByName('a_net').AsFloat - CostSQL.FieldByName('COST_AMOUNT').AsFloat;
end;

procedure TR_SeminarListingRevenuesFRM.TotalRevFLDCalc(Sender: TObject);
begin
//  RevCalc.Value :=TotalRevFLD.Value;
end;

procedure TR_SeminarListingRevenuesFRM.VtFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  accept := Dataset.FieldByName('DaysCalc').asInteger >= 0;
end;

Function TR_SeminarListingRevenuesFRM.CalcDaysLeft():TReminderResult;
begin


end;



Function TR_SeminarListingRevenuesFRM.FindActionDate(const DateSeminar:TDate;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Tdate;
begin
end;

procedure TR_SeminarListingRevenuesFRM.PrintRBtnClick(Sender: TObject);
var
   SeminarSerial:Integer;
   fromDate:TDate;
   ToDate:Tdate;
begin
//  SeminarSerial:=SeminarSQL.FieldByName('serial_number').AsInteger;
  fromDate:=FRomDateFLD.Date;
  toDate:=ToDateFLD.Date;



  if (FromDate<1) Or (ToDate<1)  then begin
    MessageDlg('Please specify From Date and To Date', mtError, [mbOK], 0);
    abort;
  end;

  if (ToDate < FromDate)  then begin
    MessageDlg('From Date is GREATER than To Date', mtError, [mbOK], 0);
    abort;
  end;

    PrintTheSeminar(FromDate,ToDate);
end;

procedure TR_SeminarListingRevenuesFRM.PrintSeminar();
begin
  if (IN_SeminarSerial>0)  then
    PrintTheSeminar(IN_SeminarSerial,IN_SeminarSubjectSerial);

end;


procedure TR_SeminarListingRevenuesFRM.PrintTheSeminar(const FromDate, ToDate:TDate);
Var
I:Integer;
begin

  if fromdate< Date-1000 then begin
    showMessage('Invalid From Date');
    exit;
  end;

    if (Todate > (Todate+1)) or (ToDate<FromDate)  then begin
    showMessage('Invalid To Date');
    exit;
  end;


  SeminarSQL.Close;
  SeminarSQL.ParamByName('FromDate').AsDate:=FromDate;
  SeminarSQL.ParamByName('ToDate').AsDate:=ToDate;
  SeminarSQL.Open;

  CostSQL.Close;
  CostSQL.Open;

  RevenueSQL.Close;
  RevenueSQL.Open;

  PpReport1.Print;

end;

procedure TR_SeminarListingRevenuesFRM.ProfitVarCalc(Sender: TObject;
  var Value: Variant);
begin
 value:=RevenueSQL.FieldByName('a_net').AsFloat - CostSQL.FieldByName('COST_AMOUNT').AsFloat;
end;

procedure TR_SeminarListingRevenuesFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;


end.
