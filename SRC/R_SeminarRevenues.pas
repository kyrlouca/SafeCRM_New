unit R_SeminarRevenues;

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

  TR_SeminarRevenuesFRM = class(TForm)
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
    ppShape1: TppShape;
    ppLabel10: TppLabel;
    CostSRC: TDataSource;
    SeminarPIP: TppDBPipeline;
    ppDBText7: TppDBText;
    ppLabel2: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppDBText11: TppDBText;
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
    CostPiP: TppDBPipeline;
    CostSQL: TIBCQuery;
    CostSQLSERIAL_NUMBER: TIntegerField;
    CostSQLFK_COST_ITEM: TIntegerField;
    CostSQLAMOUNT_PER_ITEM: TFloatField;
    CostSQLNUMBER_OF_ITEMS: TIntegerField;
    CostSQLFK_SEMINAR_SERIAL: TIntegerField;
    CostSQLCOST_NAME: TWideStringField;
    CostSQLITEM_AMOUNT: TFloatField;
    ppSummaryBand1: TppSummaryBand;
    RevenueSQL: TIBCQuery;
    RevenueSRC: TDataSource;
    RevenuePIP: TppDBPipeline;
    RevenueSQLSERIAL_NUMBER: TIntegerField;
    RevenueSQLFK_PERSON_SERIAL: TIntegerField;
    RevenueSQLINVOICE_STATUS: TWideStringField;
    RevenueSQLDATE_INVOICED: TDateField;
    RevenueSQLVAT_RATE: TFloatField;
    RevenueSQLDISCOUNT_BY_SAFE: TFloatField;
    RevenueSQLDISCOUNT_CUSTOMER: TFloatField;
    RevenueSQLAMOUNT_GROSS: TFloatField;
    RevenueSQLAMOUNT_NET: TFloatField;
    RevenueSQLAMOUNT_VAT: TFloatField;
    RevenueSQLAMOUNT_WITH_VAT: TFloatField;
    RevenueSQLIS_ANAD: TWideStringField;
    RevenueSQLLAST_NAME: TWideStringField;
    RevenueSQLFIRST_NAME: TWideStringField;
    RevenueSQLPERSON_NATIONAL_ID: TWideStringField;
    RevenueSQLFK_SUBJECT_SERIAL: TIntegerField;
    RevenueSQLSUBJECT_NAME: TWideStringField;
    RevenueSQLSUBJECT_SERIAL: TIntegerField;
    RevenueSQLSUBJECT: TWideStringField;
    RevSub: TppSubReport;
    ppChildReport1: TppChildReport;
    CostSub: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppTitleBand1: TppTitleBand;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine2: TppLine;
    ppLabel5: TppLabel;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText4: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    TotalCostFLD: TppDBCalc;
    ppLine1: TppLine;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppLine3: TppLine;
    ppDBText17: TppDBText;
    RevenueSQLFULL_NAME: TWideStringField;
    ppLine4: TppLine;
    TotalRevFLD: TppDBCalc;
    ppLabel16: TppLabel;
    ppDBText18: TppDBText;
    ppDBCalc4: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText19: TppDBText;
    ppLine5: TppLine;
    RevCalc: TppVariable;
    CostCalc: TppVariable;
    TotalCalc: TppVariable;
    ppLine8: TppLine;
    ppLabel20: TppLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure PrintRBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure VtFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure TotalProfFLDCalc(Sender: TObject; var Value: Variant);
    procedure RevCalcCalc(Sender: TObject; var Value: Variant);
    procedure CostCalcCalc(Sender: TObject; var Value: Variant);
    procedure TotalCalcCalc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
    cn:TIBCConnection;
  Function CalcDaysLeft():TReminderResult;
  procedure PrintTheSeminar(const SeminarSerial, SeminarSubjectSerial:integer);
  public
    { Public declarations }
    IN_SeminarSubjectSerial:Integer;
    IN_SeminarSerial:Integer;
  procedure PrintSeminar();
  end;

var
  R_SeminarRevenuesFRM: TR_SeminarRevenuesFRM;

implementation

uses U_Database, G_SFCommonProcs, G_KyrSQL;


{$R *.DFM}





procedure TR_SeminarRevenuesFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TR_SeminarRevenuesFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;




procedure TR_SeminarRevenuesFRM.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  (sender as TppReport).PreviewForm.WindowState := wsMaximized;
  TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;


procedure TR_SeminarRevenuesFRM.ppVariable3Calc(Sender: TObject; var Value: Variant);
begin
//   value := FromDateFLD.Date;
end;


procedure TR_SeminarRevenuesFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;




procedure TR_SeminarRevenuesFRM.TotalCalcCalc(Sender: TObject;
  var Value: Variant);
begin
 //nothing to caclculate here. calculations where made during RevenueSQL and Cost traversals
end;

procedure TR_SeminarRevenuesFRM.TotalProfFLDCalc(Sender: TObject;
  var Value: Variant);
begin
//  Value:= Value+
//          RevenueSQL.FieldByName('amount_net').AsFloat - CostSQL.FieldByName('item_AMOUNT').AsFloat;

end;


procedure TR_SeminarRevenuesFRM.CostCalcCalc(Sender: TObject;  var Value: Variant);
begin
    TotalCalc.Value := TotalCalc.Value - CostSQL.FieldByName('item_amount').AsFloat;
end;

procedure TR_SeminarRevenuesFRM.RevCalcCalc(Sender: TObject;
  var Value: Variant);
begin
    TotalCalc.Value :=TotalCalc.Value + RevenueSQL.FieldByName('amount_net').AsFloat;
end;


procedure TR_SeminarRevenuesFRM.VtFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  accept := Dataset.FieldByName('DaysCalc').asInteger >= 0;
end;

Function TR_SeminarRevenuesFRM.CalcDaysLeft():TReminderResult;
begin


end;





procedure TR_SeminarRevenuesFRM.PrintRBtnClick(Sender: TObject);
var
   SeminarSerial:Integer;
begin
//  SeminarSerial:=SeminarSQL.FieldByName('serial_number').AsInteger;
  if IN_SeminarSerial>0 then
    PrintTheSeminar(IN_SeminarSerial,0);
end;

procedure TR_SeminarRevenuesFRM.PrintSeminar();
begin
  if (IN_SeminarSerial>0)  then
    PrintTheSeminar(IN_SeminarSerial,IN_SeminarSubjectSerial);

end;


procedure TR_SeminarRevenuesFRM.PrintTheSeminar(const SeminarSerial, SeminarSubjectSerial:integer);

Var
   FromDate:TDateTime;
   DaysLeft:integer;

begin

  if SeminarSerial<1 then begin
    showMessage('Invalid Selected Seminar Subject');
    exit;
  end;

  SeminarSQL.Close;
  SeminarSQL.ParamByName('SeminarSerial').Value:=SeminarSerial;
  SeminarSQL.Open;

//  SeminarSubjectSQL.Close;
//  SeminarSubjectSQL.ParamByName('SubjectSerial').Value:=SeminarSubjectSerial;
//  SeminarSubjectSQL.Open;

  CostSQL.Close;
  CostSQL.ParamByName('SEMINARSerial').Value:=SeminarSerial;
  CostSQL.Open;

  RevenueSQL.Close;
  RevenueSQL.ParamByName('SEMINARSerial').Value:=SeminarSerial;
  RevenueSQL.Open;

  PpReport1.Print;

end;

procedure TR_SeminarRevenuesFRM.FormActivate(Sender: TObject);
begin
SeminarSQL.Close;
SeminarSQL.ParamByName('seminarSerial').Value:=IN_SeminarSerial;
SeminarSQL.Open;

ksOpenTables([ CostSQL]);
end;

procedure TR_SeminarRevenuesFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;


end.
