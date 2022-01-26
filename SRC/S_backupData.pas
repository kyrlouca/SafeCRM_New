unit S_backupData;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,ShellApi;
type
  TM_backupDataFRM = class(TForm)
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
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLCOST_NAME: TWideStringField;
    TableSQLAMOUNT: TFloatField;
    Panel6: TPanel;
    RzPanel4: TRzPanel;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure TableSQLAfterInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
    procedure BackupData();
  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;

  end;

var
  M_backupDataFRM: TM_backupDataFRM;

implementation

uses   U_Database, G_generalProcs;


{$R *.DFM}

procedure TM_backupDataFRM.BitBtn2Click(Sender: TObject);
begin
backupData();
end;

procedure TM_backupDataFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TM_backupDataFRM.TableSRCStateChange(Sender: TObject);
begin


  with TableSQL do begin
     If State<>dsInsert then begin
//         StationIDFLD.Enabled:=false;
     end  else begin
//         StationIDFLD.Enabled:=true;
     end;
  end;//with

end;

procedure TM_backupDataFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TM_backupDataFRM.TableSQLAfterInsert(DataSet: TDataSet);
begin
//      StationIDFLD.SetFocus;

end;


procedure TM_backupDataFRM.FormActivate(Sender: TObject);
begin
ksOpenTables([TableSQL]);
if IN_ACTION='INSERT' then begin
   TableSQL.Insert;
end;

end;

procedure TM_backupDataFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if TableSQL.State in [dsInsert, dsEdit] then
   TableSQL.Post;
end;

procedure TM_backupDataFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TM_backupDataFRM.CanelBTNClick(Sender: TObject);
begin
TableSQL.Cancel;
close;
end;


procedure TM_backupDataFRM.BackupData();
Var
        AppDirectory:String;
        Gbak:String;
        SParam:String;

        SFrom:String;
        STo:String;

        param: TParameterRecord;
        xx:String;
begin

  param:=gpGetGeneralParam(cn,'T01');

    AppDirectory:=ExtractFileDir( ExtractFilePath(Application.EXEName)  );
    GBak:=AppDirectory+'\gbak.exe';
    If (not FIleExists(Gbak)) then begin
         ShowMessage('gbak in ' +AppDirectory+ ' not found');
//         abort;
    end;


//ShellExecute(Handle,'open', 'c:\windows\notepad.exe','c:\SomeText.txt', nil, SW_SHOWNORMAL) ;

  sfrom:=cn.Database;
  Sfrom:='"'+Sfrom+'"';

  if not DirectoryExists(param.P_String1) then begin
      ShowMessage('Folder for backup not found');
      abort;
  end;
  STo:= '"'+param.P_String1+ '\SafeData_'+ FormatDateTime('yyyymmdd_hhmmss',now)+'.fbk "';

 xx:='-backup '+ Sfrom +' '+ sto+  ' -user sysdba -password masterkey';

//SParam:='-b -v -user SYSDBA -password masterkey '+SFrom+' '+STo;
SParam:='gbak '+ SFrom+' '+STo+ ' -backup -user SYSDBA -password masterkey ';
//ShowMessage('Backup Database'+#10#13+'From: '+Sfrom+ #10#13+'To: '+Sto);
ShellExecute(
        handle,
        'open',
        Pchar('gbak'),
        Pchar(xx),
        nil,
        SW_SHOWNORMAL);

    MessageDlg('Backup in'+#13+#10+Sto, mtInformation, [mbOK], 0);

end;


End.
