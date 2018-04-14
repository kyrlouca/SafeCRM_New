unit M_Venue;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker;
type
  TM_venuFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    Panel5: TPanel;
    TableSQL: TIBCQuery;
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
    Grid1: TwwDBGrid;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLVENUE_NAME: TWideStringField;
    TableSQLVENUE_LOCATION: TWideStringField;
    TableSQLVENUE_CAPACITY: TIntegerField;
    TableSQLVENUE_COST: TFloatField;
    TableSQLCOMMENTS: TWideStringField;
    TableSQLANAD_NUMBER: TWideStringField;
    TableSQLROOM_NAME: TWideStringField;
    RzPanel5: TRzPanel;
    RzPanel4: TRzPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    SerialFLD: TRzDBLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    FirstFLD: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    ANADFLD: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    Nav1: TwwDBNavigator;
    Nav1Button: TwwNavButton;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Button1: TwwNavButton;
    Nav1Insert: TwwNavButton;
    Nav1Delete: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1Cancel: TwwNavButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure TableSQLAfterInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Grid1TitleButtonClick(Sender: TObject; AFieldName: string);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
   IN_SERIAL:Integer;
    IN_ACTION:String;

  end;

var
  M_venuFRM: TM_venuFRM;

implementation

uses   U_Database, G_generalProcs;


{$R *.DFM}

procedure TM_venuFRM.BitBtn2Click(Sender: TObject);
begin
if TableSQL.State in [dsEdit,dsInsert] then
  TableSQL.Post;
end;

procedure TM_venuFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TM_venuFRM.TableSRCStateChange(Sender: TObject);
begin


  with TableSQL do begin
     If State<>dsInsert then begin
//         StationIDFLD.Enabled:=false;
     end  else begin
//         StationIDFLD.Enabled:=true;
     end;
  end;//with

end;

procedure TM_venuFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TM_venuFRM.TableSQLAfterInsert(DataSet: TDataSet);
begin
  AnadFLD.SetFocus;
end;


procedure TM_venuFRM.FormActivate(Sender: TObject);
begin
ksOpenTables([TableSQL]);
  if IN_ACTION='INSERT' then begin
    TableSQL.Insert;
  end else if IN_ACTION='EDIT' then begin
    TableSQL.Close;
    tABLESQL.AddWhere('serial_number = :serial');
    TableSQL.ParamByName('serial').Value:=in_serial;
    TableSQL.Open;
  end else if IN_ACTION='DISPLAY' then begin
   TableSQL.Close;
   tABLESQL.AddWhere('serial_number = :serial');
   TableSQL.ParamByName('serial').Value:=in_serial;
   TableSQL.ReadOnly:=true;
   TableSQL.Open;
  end;

end;


procedure TM_venuFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if TableSQL.State in [dsInsert, dsEdit] then
   TableSQL.Post;
end;

procedure TM_venuFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TM_venuFRM.Grid1TitleButtonClick(Sender: TObject;
  AFieldName: string);
  var
         sortInfoHawb:TSOrtInfo;
         Table:TIBCQuery;


  begin
        Table:=TIbcQuery(Grid1.DataSource.DataSet);
        SortInfoHawb.Table:=Table;
        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawb);

end;

procedure TM_venuFRM.CanelBTNClick(Sender: TObject);
begin
TableSQL.Cancel;
close;
end;

End.
