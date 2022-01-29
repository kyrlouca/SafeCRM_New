unit B_single;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL, G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  vcl.wwcheckbox;

type
  TB_SingleFRM = class(TForm)
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
    TableSQL: TIBCQuery;
    RzPanel5: TRzPanel;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLNATIONAL_ID: TWideStringField;
    TableSQLFK_COMPANY_SERIAL: TIntegerField;
    TableSQLFIRST_NAME: TWideStringField;
    TableSQLLAST_NAME: TWideStringField;
    TableSQLNICKNAME: TWideStringField;
    TableSQLSTATUS: TWideStringField;
    TableSQLOCCUPATION: TWideStringField;
    TableSQLPHONE_MOBILE: TWideStringField;
    TableSQLPHONE_FIXED: TWideStringField;
    TableSQLPHONE_ALTERNATE: TWideStringField;
    TableSQLFAX: TWideStringField;
    TableSQLEMAIL: TWideStringField;
    TableSQLEMAIL_2: TSmallintField;
    TableSQLADDRESS: TWideStringField;
    TableSQLADDRESS_STREET: TWideStringField;
    TableSQLADDRESS_POST_CODE: TWideStringField;
    TableSQLADDRESS_CITY: TWideStringField;
    TableSQLADDRESS_DISTRICT: TWideStringField;
    TableSQLDATE_STARTED: TDateField;
    TableSQLDATE_BIRTH: TDateField;
    TableSQLDATE_USER: TDateField;
    TableSQLLIST_SOURCE: TWideStringField;
    TableSQLFACEBOOK: TWideStringField;
    TableSQLWEBSITE: TWideStringField;
    TableSQLTWITTER: TWideStringField;
    TableSQLSTATUS_ACTIVE: TWideStringField;
    TableSQLCERTIFIED_ANAD: TWideStringField;
    TableSQLJOB_TITLE: TWideStringField;
    Panel6: TRzPanel;
    Nav1: TwwDBNavigator;
    Nav1Button: TwwNavButton;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Button1: TwwNavButton;
    Nav1Insert: TwwNavButton;
    Nav1Delete: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1Cancel: TwwNavButton;
    Grid1: TwwDBGrid;
    TableSQLANAD_NUMBER: TWideStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Nav1InsertClick(Sender: TObject);
    procedure Grid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure TableSQLNewRecord(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    cn: TIBCConnection;
  public
    { Public declarations }

    IN_ACTION: String;
    IN_SERIAL: Integer;

  end;

var
  B_SingleFRM: TB_SingleFRM;

implementation

uses U_Database, G_generalProcs;

{$R *.DFM}

procedure TB_SingleFRM.BitBtn2Click(Sender: TObject);
  begin
    if TableSQL.State in [dsEdit, dsInsert] then TableSQL.Post;
  end;

procedure TB_SingleFRM.TableSQLBeforeEdit(DataSet: TDataSet);
  begin
    // Dataset.FieldByName('Serial_number').ReadOnly:=true;
  end;

procedure TB_SingleFRM.TableSQLNewRecord(DataSet: TDataSet);
  begin
    // Dataset.FieldByName('status_active').Value:='Y';
    // Dataset.FieldByName('CERTIFIED_ANAD').Value:='N';
  end;

procedure TB_SingleFRM.RzBitBtn1Click(Sender: TObject);
  begin
    close;
  end;

procedure TB_SingleFRM.FormActivate(Sender: TObject);
  begin
    if IN_ACTION = 'INSERT' then
    begin
      ksOpenTables([TableSQL]);
      TableSQL.Insert;
    end
    else if IN_ACTION = 'EDIT' then
    begin
      TableSQL.close;
      TableSQL.RestoreSQL;
      TableSQL.AddWhere('serial_number = :serial');
      TableSQL.ParamByName('serial').Value := IN_SERIAL;
      TableSQL.Open;
    end
    else if IN_ACTION = 'DISPLAY' then
    begin
      TableSQL.close;
      TableSQL.RestoreSQL;
      TableSQL.AddWhere('serial_number = :serial');
      TableSQL.ParamByName('serial').Value := IN_SERIAL;
      TableSQL.ReadOnly := true;
      TableSQL.Open;
    end
    else
    begin
      TableSQL.close;
      TableSQL.RestoreSQL;
      TableSQL.ReadOnly := False;
      TableSQL.Open;
    end;

  end;

procedure TB_SingleFRM.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    if TableSQL.State in [dsInsert, dsEdit] then TableSQL.Post;
  end;

procedure TB_SingleFRM.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  begin
    if TableSQL.State in [dsEdit, dsInsert] then TableSQL.Post;
  end;

procedure TB_SingleFRM.FormCreate(Sender: TObject);
  begin
    cn := U_databaseFRM.DataConnection;
  end;

procedure TB_SingleFRM.Grid1TitleButtonClick(Sender: TObject; AFieldName: string);
  var
    sortInfoHawb: TSOrtInfo;
    Table: TIBCQuery;

  begin
    Table := TIBCQuery(Grid1.DataSource.DataSet);
    sortInfoHawb.Table := Table;
    G_generalProcs.SortGrid(Table, AFieldName, sortInfoHawb);

  end;

procedure TB_SingleFRM.Nav1InsertClick(Sender: TObject);
  begin
    // FirstFLD.SetFocus;
  end;

procedure TB_SingleFRM.CanelBTNClick(Sender: TObject);
  begin
    TableSQL.Cancel;
    close;
  end;

End.
