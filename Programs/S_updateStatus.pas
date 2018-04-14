unit S_updateStatus;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  vcl.wwcheckbox;
type
  TS_UpdateStatusFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    wwIncrementalSearch1: TwwIncrementalSearch;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    RzPanel5: TRzPanel;
    Panel6: TRzPanel;
    TableSQL: TIBCQuery;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLANAD_NUMBER: TWideStringField;
    TableSQLSEMINAR_NAME: TWideStringField;
    TableSQLSEM_CATEGORY: TWideStringField;
    TableSQLSTATUS: TWideStringField;
    TableSQLTYPE_MONO_POLY: TWideStringField;
    TableSQLLAST_NAME: TWideStringField;
    TableSQLDATE_STARTED: TDateField;
    TableSQLDATE_COMPLETED: TDateField;
    TableSQLDURATION_HOURS: TIntegerField;
    TableSQLAMOUNT_ANAD: TFloatField;
    TableSQLFK_SEMINAR: TIntegerField;
    TableSQLFK_INSTRUCTOR: TIntegerField;
    TableSQLFK_VENUE: TIntegerField;
    TableSQLDURATION_DAYS: TIntegerField;
    TableSQLCOMMENTS: TWideStringField;
    TableSQLANAD_APPROVED: TWideStringField;
    TableSQLIS_INVOICED: TWideStringField;
    TableSQLIS_CERTIFICATED: TWideStringField;
    TableSQLMAX_CAPACITY: TIntegerField;
    TableSQLFK_COMPANY_PERSON_SERIAL: TIntegerField;
    TableSQLHAS_EXPIRY: TWideStringField;
    TableSQLEXPIRY_PERIOD: TIntegerField;
    TableSQLFK_EXAMINER: TIntegerField;
    SemGRD: TwwDBGrid;
    Nav1: TwwDBNavigator;
    Nav1Button: TwwNavButton;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Button1: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1Cancel: TwwNavButton;
    FirstGRP: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    SerialFLD: TRzDBLabel;
    Label5: TLabel;
    Label1: TLabel;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
    SeminarFLD: TRzDBLabel;
    Companylbl: TLabel;
    RzDBLabel3: TRzDBLabel;
    Label6: TLabel;
    RzDBLabel4: TRzDBLabel;
    wwDBComboBox1: TwwDBComboBox;
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    SHowCatFLD: TwwDBComboBox;
    ShowStatusFLD: TwwDBComboBox;
    SelectTypeFLD: TwwDBComboBox;
    SelectCatFLD: TwwDBComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Grid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure TableSQLNewRecord(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }

    IN_ACTION:String;
    in_INSTRUCTOR_SERIAL:Integer;

  end;

var
  S_UpdateStatusFRM: TS_UpdateStatusFRM;

implementation

uses   U_Database, G_generalProcs;


{$R *.DFM}

procedure TS_UpdateStatusFRM.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TS_UpdateStatusFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TS_UpdateStatusFRM.TableSQLNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('status_active').Value:='Y';
end;

procedure TS_UpdateStatusFRM.TableSRCStateChange(Sender: TObject);
begin


  with TableSQL do begin
     If State<>dsInsert then begin
//         StationIDFLD.Enabled:=false;
     end  else begin
//         StationIDFLD.Enabled:=true;
     end;
  end;//with

end;

procedure TS_UpdateStatusFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TS_UpdateStatusFRM.FormActivate(Sender: TObject);
begin

  ksfillComboF1(cn,ShowStatusFLD,'status_activity','status','DESCRIPTION_greek','order_NUMBER' );
  ksfillComboF1(cn,ShowCatFLD,'SEM_CATEGORY','category_code','TYPE_DESC_GR','order_NUMBER' );

  ksfillComboF1(cn,SelectCatFLD,'status_activity','status','DESCRIPTION_greek','order_NUMBER' );
  ksfillComboF1(cn,SelectTypeFLD,'SEM_CATEGORY','category_code','TYPE_DESC_GR','order_NUMBER' );

   ksOpenTables([TableSQL]);
end;

procedure TS_UpdateStatusFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if TableSQL.State in [dsInsert, dsEdit] then
   TableSQL.Post;
end;

procedure TS_UpdateStatusFRM.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

If TableSQL.State in [dsEdit] then
  TableSQL.Post;
close;

end;

procedure TS_UpdateStatusFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TS_UpdateStatusFRM.Grid1TitleButtonClick(Sender: TObject;
  AFieldName: string);
  var
         sortInfoHawb:TSOrtInfo;
         Table:TIBCQuery;


  begin
        Table:=TIbcQuery(SemGrd.DataSource.DataSet);
        SortInfoHawb.Table:=Table;
        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawb);

end;

procedure TS_UpdateStatusFRM.CanelBTNClick(Sender: TObject);
begin
TableSQL.Cancel;
close;
end;

End.
