unit S_LoadDocs;

interface

uses
  G_kyriacosTypes,Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  System.IOUtils,    System.DateUtils,
  StdCtrls, Mask,  Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL, RzButton, RzPanel, vcl.wwcheckbox, Vcl.ExtDlgs, vcl.wwbutton,
  RzLabel, RzDBLbl, ppComm, ppRelatv, ppDB, ppDBPipe, ppProd, ppClass, ppReport,pptypes,
  ppPrnabl, ppCtrls, ppCache, ppBands, ppDesignLayer, ppParameter, ppVar;
type
  TS_LoadDocsFRM = class(TForm)
    Panel1: TrzPanel;
    Panel4: TrzPanel;
    Panel3: TrzPanel;
    TableSRC: TDataSource;
    Panel5: TRzPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Grid1: TwwDBGrid;
    Label3: TLabel;
    NameFLD: TwwDBEdit;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    TableSQLCODE_KEY: TWideStringField;
    TableSQLDOC_NAME: TWideStringField;
    TableSQLDOC_BLOB: TBlobField;
    SavetoDB: TRzBitBtn;
    Button1: TButton;
    FileDialog1: TOpenDialog;
    wwButton1: TwwButton;
    Panel2: TRzPanel;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    TableSQLIS_SEND_TO_ALL: TWideStringField;
    TableSQLSERIAL_NUMBER: TIntegerField;
    Nav1: TwwDBNavigator;
    Nav1Button: TwwNavButton;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Button1: TwwNavButton;
    Nav1Insert: TwwNavButton;
    Nav1Delete: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1Cancel: TwwNavButton;
    Label1: TLabel;
    Label6: TLabel;
    wwCheckBox2: TwwCheckBox;
    RzDBLabel1: TRzDBLabel;
    TableSQLPOLY_MONO: TWideStringField;
    wwCheckBox1: TwwCheckBox;
    Label5: TLabel;
    wwIncrementalSearch1: TwwIncrementalSearch;
    TableSQLDOC_PATH: TWideStringField;
    TableSQLDOC_TYPE: TWideStringField;
    Button2: TButton;
    RzPanel4: TRzPanel;
    SaveFileBTN: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure SavetoDBClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure wwButton1Click(Sender: TObject);
    procedure TableSQLNewRecord(DataSet: TDataSet);
    procedure Nav1InsertClick(Sender: TObject);
    procedure Grid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure SaveFileBTNClick(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  procedure WriteStreamToDatabase(Const CodeKey:String;Const FileName :String; Const MonoPOly:String);
//  procedure SaveToFile(Const CodeKey:String;Const FileName :String; Const MonoPOly:String);
  procedure SaveToFileXX(Const CodeKey:String;Const FileName :String; Const MonoPOly:String);
  procedure CopyAFile(Const DocSerial:Integer;Const FileName :String);
  procedure CopyModifiedFile(Const DocSerial:Integer;Const FileName :String);
  procedure CreateTextFile(Const seminarSerial, CompSerial:Integer; Const FileName :String);

  procedure SaveXX(Const SerialNumber:Integer;Const  FilePath, DocName :String);
  function FindHex(const FileName:String): Integer;

  procedure WriteFiles(Const SeminarSerial:Integer;Const DocType:String);
  procedure writeNewLine( Const FileName :String);
  procedure writeValues(Const Prefix:string; Const TableSQL:String; Const Serial :Integer; Const FileName :String;Const fieldArray: Array of String);
  procedure writeTitles(Const Prefix:String; Const TableSQL:String; Const Serial :Integer; Const FileName :String;Const fieldArray: Array of String);
  procedure CreateStudentFile( Const SeminarSerial :Integer; Const CompanySerial:Integer; Const FileName :String);
  function CheckFileLength(const filename:string):String;
  procedure SaveToFile(Const SerialNumber:Integer;Const DocName :String);

  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_SeminarSerial:integer;
    IN_DocTYpe:String;
    Procedure CreateTheFiles;
  end;

var
  S_LoadDocsFRM: TS_LoadDocsFRM;

implementation

uses   U_Database, G_generalProcs;

{$R *.DFM}

procedure TS_LoadDocsFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TS_LoadDocsFRM.WriteStreamToDatabase(Const CodeKey:String;Const FileName :String; Const MonoPOly:String);
var
//  BlobField: TField;
  BlobField: TBlobField;
  BS: TStream;
  str2:String;
  qr:TksQuery;
  FS:TStream;
begin
  str2:='Select * from word_docs wd where wd.code_key = :CodeKey';
  qr:= TksQuery.Create(cn,str2);
  try
      qr.close;
      qr.ParamByName('CodeKey').Value:=CodeKey;
      qr.open;

      if qr.IsEmpty then
       exit;

      qr.Edit;
      BlobField := qr.FieldByName('doc_blob') as TBlobField;
      BS := qr.CreateBlobStream(BlobField,bmWrite);
      try
        Bs.Position:=0;
        FS := TFileStream.Create( filename, fmOpenRead );
        fs.Position:=0;
        try
          showMessage(intToStr(fs.Size));
          bs.CopyFrom(Fs,fs.Size);
          qr.FieldByName('doc_name').AsString:=filename;
          qr.Post;
        finally
          fs.Free;
        end;

      finally
          BS.Free;

      end;



  finally
    qr.Free;
  end;

end;



procedure TS_LoadDocsFRM.wwButton1Click(Sender: TObject);
VAR
  fileName:String;
begin
  FileName:='C:\Data\DelphiProjects\Safe_CRM\documents\H3.rtf';
  FindHex(FileName);
end;

function TS_LoadDocsFRM.FindHex(const FileName:String): Integer;
begin
end;


procedure TS_LoadDocsFRM.CopyaFile(Const DocSerial:Integer;Const FileName :String);
var
//  BlobField: TField;
  BlobField: TBlobField;
  BS: TStream;
  str2:String;
  qr:TksQuery;
  FS:TMemoryStream;

begin

  str2:='Select * from word_docs wd where wd.Serial_number = :SerialNumber';
  qr:= TksQuery.Create(cn,str2);
  try
      qr.close;
      qr.ParamByName('SerialNumber').Value:=DocSerial;
      qr.open;

      if qr.IsEmpty then
       exit;

      BlobField := qr.FieldByName('doc_blob') as TBlobField;
      BS := qr.CreateBlobStream(BlobField,bmRead);
      try
        fs:=TMemoryStream.Create;
        try
          fs.CopyFrom(bs,bs.Size);
          fs.SaveToFile(fileName);
        finally
          fs.Free;
        end;

      finally
        BS.Free;
      end;

  finally
    qr.Free;
  end;

end;


procedure TS_LoadDocsFRM.SaveToFileXX(Const CodeKey:String;Const FileName :String; Const MonoPOly:String);
var
  BlobField: TBlobField;
  BS: TStream;
  str2:String;
  qr:TksQuery;
  FS:TMemoryStream;
  binR:TbinaryReader;
  binW:TBinaryWriter;

begin
  str2:='Select * from word_docs wd where wd.code_key = :CodeKey';
  qr:= TksQuery.Create(cn,str2);
  try
      qr.close;
      qr.ParamByName('CodeKey').Value:=CodeKey;
      qr.open;

      if qr.IsEmpty then
       exit;

      BlobField := qr.FieldByName('doc_blob') as TBlobField;
      BS := qr.CreateBlobStream(BlobField,bmRead);
      try
        fs:=TMemoryStream.Create;
        try
          fs.CopyFrom(bs,bs.Size);
          fs.SaveToFile(fileName);
        finally
          fs.Free;
        end;

      finally
        BS.Free;
      end;

  finally
    qr.Free;
  end;

end;

procedure TS_LoadDocsFRM.SaveXX(Const SerialNumber:Integer;Const  FilePath, DocName :String);
var
  BlobField: TBlobField;
//  BS: TStream;
  str2:String;
  qr:TksQuery;
  CompQr:TksQuery;
//  FS:TMemoryStream;
begin

  str2:='Select * from word_docs wd where wd.serial_number = :SerialNumber';
  qr:= TksQuery.Create(cn,str2);
  try
      qr.close;
      qr.ParamByName('SerialNumber').Value:=SerialNumber;
      qr.open;

      if qr.IsEmpty then
       exit;
      qr.Edit;
      TBlobField(qr.FieldByName('doc_blob')).LoadFromFile(filePath);
      qr.FieldByName('doc_Name').AsString:=DocName;
      qr.FieldByName('doc_path').AsString:=filePath;
      qr.Post;
  finally
     qr.Free;
  end;

end;

procedure TS_LoadDocsFRM.SaveToFile(Const SerialNumber:Integer;Const DocName :String);
var
  BlobField: TBlobField;
//  BS: TStream;
  str2:String;
  qr:TksQuery;
  CompQr:TksQuery;
//  FS:TMemoryStream;
begin

  str2:='Select * from word_docs wd where wd.serial_number = :SerialNumber';
  qr:= TksQuery.Create(cn,str2);
  try
      qr.close;
      qr.ParamByName('SerialNumber').Value:=SerialNumber;
      qr.open;

      if qr.IsEmpty then
       exit;
      qr.Edit;
      TBlobField(qr.FieldByName('doc_blob')).SaveToFile(DocName);
      ShowMessage('file saved : '+ DocName);
  finally
     qr.Free;
  end;

end;


procedure TS_LoadDocsFRM.TableSQLNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('Poly_mono').AsString:='P';
  Dataset.FieldByName('iS_send_to_all').AsString:='Y';
  Dataset.FieldByName('DOC_TYPE').AsString:='WORD';
end;

procedure TS_LoadDocsFRM.SaveFileBTNClick(Sender: TObject);
var
  FilePath:string;
  FileName:string;
  NewFileName:string;
  FileSerial:integer;
begin

  with TFileOpenDialog.Create(nil) do
    try
      Options := [fdoPickFolders];
      if Execute then begin
        FilePath := FileName;
      end  else begin
        exit;
      end;
   finally
      Free;
  end;


  with TableSQL do begin
    if not tableSQL.IsEmpty then begin
      FileSerial:=tableSQL.FieldByName('serial_number').AsInteger;
      FileName:=TableSQL.FieldByName('doc_Name').AsString;
      FIleName:=TPath.GetFileNameWithoutExtension(FileName);
    end else begin
      exit;
    end;
  end;
  NewFileName:=FilePath+'\'+FileName+'.docMxx';
  SaveToFile(FileSerial,NewFileName);
//  ShowMessage(newFileName);
end;

procedure TS_LoadDocsFRM.SavetoDBClick(Sender: TObject);
var
  FileName:String;
  FIlePath:String;
  codeKey:String;
  SerialNumber:Integer;
begin
  if tableSQL.state <> dsInsert then begin
    exit;
  end;

  if TableSQL.State in [dsEdit] then
    TableSQL.Post;

  if not FileDialog1.Execute then     begin
      showMessage('exit');
      Exit;
  end;

  filePath :=FileDialog1.FileName;
  FileName:=TPath.GetFileNameWithoutExtension(FilePath);
  SerialNumber:=TableSQL.FieldByName('Serial_Number').AsInteger;
  saveXX(SerialNumber,FilePath, filename);
  ksOpenTables([TableSQL]);

end;


procedure TS_LoadDocsFRM.FormActivate(Sender: TObject);
begin
  tableSQL.close;
  TableSQL.ParamByName('DocTYpe').Value:='WORD';
  TableSQL.Open;
end;

procedure TS_LoadDocsFRM.FormCreate(Sender: TObject);
begin
  cn:=  U_databaseFRM.DataConnection;
end;

procedure TS_LoadDocsFRM.Grid1TitleButtonClick(Sender: TObject;
  AFieldName: string);
  var
         sortInfoHawb:TSOrtInfo;
         Table:TIBCQuery;


  begin
        Table:=TIbcQuery(Grid1.DataSource.DataSet);
        SortInfoHawb.Table:=Table;
        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawb);

end;

procedure TS_LoadDocsFRM.Nav1InsertClick(Sender: TObject);
var
  FileName:String;
  FIlePath:String;
  codeKey:String;
  SerialNumber:Integer;
begin
  if TableSQL.State in [dsEdit,dsInsert] then
    TableSQL.Post;


  if not FileDialog1.Execute then     begin
      showMessage('exit');
      Exit;
  end;

  tableSQL.Insert;

  filePath :=FileDialog1.FileName;
  FileName:=TPath.GetFileNameWithoutExtension(FilePath);
  tableSQL.FieldByName('DOC_name').Value:=fileName;
  TableSQL.Post;

  SerialNumber:=TableSQL.FieldByName('Serial_Number').AsInteger;
  saveXX(SerialNumber,FilePath, filename);
  ksOpenTables([TableSQL]);
  NameFLD.SetFocus;
  abort;
end;

procedure TS_LoadDocsFRM.Button1Click(Sender: TObject);
begin
  WriteFiles(119,'WORD');
end;

procedure TS_LoadDocsFRM.CreateTheFiles;
begin
  WriteFiles(IN_SeminarSerial,in_DocTYpe);
end;

procedure TS_LoadDocsFRM.WriteFiles(Const SeminarSerial:Integer;Const DocType:String);
//doctype='WORD' for normal word documents

var
  qr:TksQuery;
  compQr:TksQuery;
  param:G_generalProcs.TParameterRecord;
  baseFolder:String;
  SeminarFolder:String;
  useFolder:string;
  fileName:String;
  DocSerial:integer;
  codeKey:String;
  str2:string;
  SeminarName:String;
  fpath:string;
  fTExtName:string;
  fname:string;
  IsPoly:string;
  PolyName:string;
  IsSendToAll:String;
  CompId:String;
  CompName:String;
  MonoCompanySerial:Integer;
  MonoCompanyName:string;
  CompSerial:Integer;
  temp:String;
  StartDateStr:String;
SeminarYear:Integer;
AnadNUmber:String;
begin

  //for every document
  param:=  gpGetGeneralParam(cn,'T00');
  baseFOlder:=Trim(param.P_String3);

  if not DirectoryExists(baseFOlder) then begin
      ShowMessage('Base Directory does NOT EXISTS: '+BaseFolder);
      exit;
  end;


  temp:=
  'select sem.* from Seminar sem where sem.serial_number = :SeminarSerial' ;

  qr:=TksQuery.Create(cn,temp);
  try
    qr.ParamByName('seminarSerial').Value:=SeminarSerial;
    qr.Open;
    if qr.IsEmpty then begin
//      result:=false;
      exit;
    end;
    SeminarName:=trim(qr.FieldByName('Seminar_name').AsString);
    SeminarYear:= system.DateUtils.YearOf(qr.FieldByName('Date_started').AsDateTime);

    AnadNumber:=trim(qr.FieldByName('ANAD_NUMBER').AsString);

    StartDateStr:=FormatDateTime('dd_mmm_yyyy',qr.FieldByName('date_started').AsDateTime);
    IsPoly:=qr.FieldByName('Type_mono_poly').AsString;
    if isPoly='P' then
      PolyName:='Poly'
    else if isPoly='M' then
      PolyName:='Mono'
    else PolyName:='';
    qr.Close;
  finally
    qr.free;
  end;



  temp:= stringreplace(SeminarName, '\', '_', [rfReplaceAll, rfIgnoreCase]);
  temp:= stringreplace(temp, '/', '_', [rfReplaceAll, rfIgnoreCase]);
  temp:= stringreplace(temp, '.', '_', [rfReplaceAll, rfIgnoreCase]);
  temp:= stringreplace(temp, '&', '_', [rfReplaceAll, rfIgnoreCase]);

  SeminarFolder:=baseFOlder+'\'+IntToStr(SeminarYear)+'_'+PolyName+'__'+temp+
  '__'+MonoCompanyName+'_'+StartDateStr+'_'+AnadNUmber;

//  showMessage(SeminarFOlder);
//  exit;

  if  DirectoryExists(SeminarFOlder) then begin
//    MessageDlg('Directory to write the Files already EXISTS. Delete first', mtError, [mbOK], 0);
//    exit;
  end else begin
    if not CreateDir(SeminarFOlder) then begin
      ShowMessage('cannot Create Directory: '+SeminarFolder);
      exit;
    end;
  end;



  str2:='Select * from word_docs wd where wd.Poly_mono = :poly and wd.doc_type= :DocType';
  qr:= TksQuery.Create(cn,str2);
  try
      qr.close;
      qr.ParamByName('poly').Value:=isPoly;
      qr.ParamByName('DocTYpe').Value:=DocType; //WORD for word files to ANAD
      qr.open;
      while not qr.Eof do begin
      //for every document
        DocSerial:=qr.FieldByName('SERIAL_NUMBER').AsInteger;
        fileName:=qr.FieldByName('doc_name').AsString;

        IsSendToAll:=qr.FieldByName('Is_send_to_all').AsString;

        if 1=1 then begin

          str2:=
          '   select per.serial_number,per.National_id, per.Last_name from'
          +'          seminar_company semC left outer join'
          +'          person per on semc.fk_person_serial = per.serial_number'
          +'  where semC.fk_seminar_serial= :SeminarSerial';

          Compqr:= TksQuery.Create(cn,str2);
          try
            CompQR.close;
            CompQr.ParamByName('SeminarSerial').Value:=SeminarSerial;
            CompQr.open;

            while not CompQR.Eof do begin
              CompId:=CompQR.FieldByName('National_id').AsString;
              CompName:=CompQR.FieldByName('Last_name').AsString;
              CompSerial:=CompQR.FieldByName('Serial_Number').AsInteger;
              /////////file for a compnay in its own folder
              temp:= stringreplace(compName, '\', '_', [rfReplaceAll, rfIgnoreCase]);
              temp:= stringreplace(temp, '/', '_', [rfReplaceAll, rfIgnoreCase]);
              temp:= stringreplace(temp, '.', '_', [rfReplaceAll, rfIgnoreCase]);
              useFolder:=SeminarFolder+'\'+trim(temp)+'_'+CompId;

              if  not DirectoryExists(useFOlder) then begin
                    if not CreateDir(useFOlder) then begin
                      ShowMessage('cannot Create Directory: '+UseFolder);
                      exit;
                    end;
              end;




              fname:=UseFOlder+'\'+fileName+Trim(compId)+'_'+'.docM';
              fname:=CheckFileLength(fname);
              CopyaFile(DocSerial,fName);

              fTextname:=UseFOlder+'\'+fileName+Trim(compId)+'_'+'.csv';
              fTextname:=CheckFileLength(fTextName);
              CreateTextFile(SeminarSerial,CompSerial,fTextName);

              fname:=UseFOlder+'\'+'StudentsFile.csv';
              CreateStudentFile(SeminarSerial,compSerial,fname);

              compQR.Next;
            end;
          finally
           CompQr.Free;
          end;


        end;
        qr.Next;
      end;

  finally
    qr.Free;
  end;

  MessageDlg('Word Files created in '+#13+#10+SeminarFolder, mtInformation, [mbOK], 0);
end;


procedure TS_LoadDocsFRM.CopyModifiedFile(Const DocSerial:Integer;Const FileName :String);
var
//  BlobField: TField;
  BlobField: TBlobField;
  BS: TStream;
  str2:String;
  qr:TksQuery;
  FS:TMemoryStream;

begin

  str2:='Select * from word_docs wd where wd.Serial_number = :SerialNumber';
  qr:= TksQuery.Create(cn,str2);
  try
      qr.close;
      qr.ParamByName('SerialNumber').Value:=DocSerial;
      qr.open;

      if qr.IsEmpty then
       exit;

      BlobField := qr.FieldByName('doc_blob') as TBlobField;
      BS := qr.CreateBlobStream(BlobField,bmRead);
      try
        fs:=TMemoryStream.Create;
        try
          fs.CopyFrom(bs,bs.Size);
          fs.SaveToFile(fileName);
        finally
          fs.Free;
        end;

      finally
        BS.Free;
      end;

  finally
    qr.Free;
  end;

end;

procedure TS_LoadDocsFRM.writeTitles(Const Prefix:String;Const TableSQL:String; Const Serial :Integer; Const FileName :String;Const fieldArray: Array of String);
var
//  str:String;
  qr:TksQuery;
  FieldName:String;
  val:string;
  Writer: TStreamWriter;
  field:TField;
  date:Tdate;

begin

  Writer := TStreamWriter.Create(FileName, true, TEncoding.UTF8);
  qr:= TksQuery.Create(cn,TableSQL);
  try
    qr.close;
    qr.ParamByName('Serial').Value:=Serial;
    qr.open;
    for  FieldName in fieldArray do begin
      field:=qr.FindField(FieldName);
      if field <>Nil then begin
        val:= field.AsString;
//        ShowMessage(fieldName+'-:'+val);
        Writer.Write(Prefix+FieldName+'; ');
      end;
    end;

  finally
    qr.Free;
    Writer.Free();
  end;



end;

procedure TS_LoadDocsFRM.writeValues(Const Prefix:string; Const TableSQL:String; Const Serial :Integer; Const FileName :String;Const fieldArray: Array of String);
var
//  str:String;
  qr:TksQuery;
  FieldName:String;
  val:string;
  Writer: TStreamWriter;
  field:TField;
  date:Tdate;

begin

  { Store the title and then the text. }

  Writer := TStreamWriter.Create(FileName, true, TEncoding.UTF8);
//  str:='Select * from ' + table + ' where serial_number= :Serial';

  qr:= TksQuery.Create(cn,TableSQL);
  try
    qr.close;
    qr.ParamByName('Serial').Value:=Serial;
    qr.open;
    for  FieldName in fieldArray do begin
      field:=qr.FindField(FieldName);
      if field <>Nil then begin
        if (field.DataType in [ftDate,ftDateTime]) then begin
          val:= field.AsString
//          val:= FormatTimeStampUTCF(field.AsDateTime)


        end else if (field.DataType in [ftString, ftFixedChar,ftWideString,ftFixedWideChar]) then begin
           val:='"'+trim(field.AsString)+'"';
        end else begin
          val:= field.AsString;
        end;
        writer.Write(val +'; ');
      end;
    end;

  finally
    qr.Free;
    Writer.Free();
  end;



end;




procedure TS_LoadDocsFRM.writeNewLine( Const FileName :String);
var
  Writer: TStreamWriter;

begin
  Writer := TStreamWriter.Create(FileName, true, TEncoding.UTF8);
  try
    writer.WriteLine();
  finally
    Writer.Free();
  end;
end;




procedure TS_LoadDocsFRM.CreateTextFile(Const seminarSerial, CompSerial:Integer; Const FileName :String);
const
  SeminarSQL = 'select (sem.date_started-22) as Date_22, sem.* from seminar sem where serial_number = :Serial';
//  CompanySQl = 'select *, EXTRACT (YEAR FROM COMPANY_REGISTRATION_DATE) AS Company_registration_year from Person where serial_number = :Serial';
  CompanySQl = 'select pe.*, EXTRACT(YEAR FROM COMPANY_REGISTRATION_DATE) AS Company_registration_year from Person pe where serial_number = :Serial';

  VenueSQl = 'select * from Venue where serial_number = :Serial';
  InstructorSQl = 'select * from instructor where serial_number = :Serial';
  CountStudentSQL = 'select count(sp.fk_person_serial) as count_student from seminar_person sp where sp.is_guest=''N'' and sp.fk_seminar_serial = :Serial';
//  DaysSQL =

  SemArray :Tarray<String>=[
  'seminar_name','serial_number','ANAD_number','SPECIFICATION_NUMBER', 'national_id',
  'date_22','date_started', 'date_completed', 'duration_days', 'duration_hours',
  'MAX_CAPACITY'
  ];

  CompanyArray :Tarray<String>=[
  'Last_name','national_id','company_social_sec','COMPANY_REGISTRATION_DATE','COMPANY_REGISTRation_year','COMPANY_EMPLOYEES', 'COMPANY_MAIN_ACTIVITY',
  'PHONE_FIXED','PHONE_ALTERNATE','fax','email','website',
  'company_owner','company_owner_id','company_owner_Phone','company_owner_fax','company_owner_email',
  'company_contact_id','company_contact_last','company_contact_first','company_contact_Phone','company_contact_fax','company_contact_email','company_contact_position',
  'company_manager_id','company_manager_last','company_manager_first','company_manager_Phone','company_manager_fax','company_manager_email','company_manager_position',
  'address','ADDRESS_POST_CODE','ADDRESS_STREET','ADDRESS_DISTRICT','ADDRESS_CITY'
  ];

  SafeCompanyArray :Tarray<String>=[
  'Last_name','national_id','company_social_sec','COMPANY_REGISTRATION_DATE','COMPANY_REGISTRation_year','COMPANY_EMPLOYEES',
  'PHONE_FIXED','PHONE_ALTERNATE','fax','email','website',
  'company_owner','company_owner_id','company_owner_Phone','company_owner_fax','company_owner_email',
  'company_contact_id','company_contact_last','company_contact_first','company_contact_Phone','company_contact_fax','company_contact_email','company_contact_position',
  'address','ADDRESS_POST_CODE','ADDRESS_STREET','ADDRESS_DISTRICT','ADDRESS_CITY'
  ];


  VenueArray :Tarray<String>=['Venue_Name','Venue_location','ROOM_NAME','ANAD_Number','DISTRICT'];
  InstructorArray :Tarray<String>=['first_name','Last_name','national_id','PHONE_FIXED','ANAD_NUMBER'];
  CountStudentArray :Tarray<String>=['count_student'];
var
  str2:String;
  qr:TksQuery;
  FS:TMemoryStream;
  InstructorSerial:Integer;
  VenueSerial:Integer;
  SafeCompanySerial:integer;
  FieldName:String;
  val:string;
  Writer: TStreamWriter;
  field:TField;
  date:Tdate;
  str:String;

begin

//  FileName:='C:\Data\DelphiProjects\Safe_CRM\Company.csv';

 if FileExists(Filename) then
  exit;

  str := ' select first 1  sub.fk_instructor, sub.fk_venue from seminar_subject sub where sub.fk_seminar_serial= :Serial';
  qr:= TksQuery.Create(cn,str);
  try
    qr.close;
    qr.ParamByName('Serial').Value:=SeminarSerial;
    qr.open;
    InstructorSerial:=qr.FieldByName('fk_instructor').AsInteger;
    VenueSerial:=qr.FieldByName('fk_venue').AsInteger;
  finally
    qr.Free;
  end;

  str := ' select first 1 per.serial_number  from person per where per.is_safe_company = :isSafeCompany ';
  qr:= TksQuery.Create(cn,str);
  try
    qr.ParamByName('IsSafeCompany').Value:='Y';
    qr.open;
    SafeCompanySerial:=qr.FieldByName('serial_number').AsInteger;
  finally
      qr.Free;
  end;



 writeTitles('Seminar__', SeminarSQL, SeminarSerial,FileName,SemArray);
 writeTitles('studentCount__', CountStudentSQL, SeminarSerial,FileName,CountStudentArray);
 writeTitles('Company__', CompanySQL, CompSerial,FileName,COmpanyArray);
 writeTitles('SafeCompany__', CompanySQL, SafeCompanySerial,FileName,SafeCOmpanyArray);
 writeTitles('Venue__', VenueSQL, VenueSerial,FileName,VenueArray);
 writeTitles('Instructor__', InstructorSQL, InstructorSerial,FileName,InstructorArray);

 writeNewLine(FileName);

 writeValues('Seminar__',SeminarSQL, SeminarSerial ,FileName,SemArray);
 writeValues('studentCount__', CountStudentSQL, SeminarSerial,FileName,CountStudentArray);
 writeValues('Company__', CompanySQL, CompSerial,FileName,CompanyArray);
 writeValues('SafeCompany__', CompanySQL, SafeCompanySerial,FileName,SafeCompanyArray);
 writeValues('Venue__',VenueSQL, VenueSerial ,FileName,VenueArray);
 writeValues('Instructor__', InstructorSQL, InstructorSerial,FileName,InstructorArray);

end;





procedure TS_LoadDocsFRM.CreateStudentFile( Const SeminarSerial :Integer;Const CompanySerial:Integer; Const FileName :String);
var
//  str:String;
  qr:TksQuery;
  FieldName:String;
  val:string;
  Writer: TStreamWriter;
  field:TField;
  date:Tdate;
  str :String;
  I:integer;
  function FillEmpty(str:String):String;
  begin
    if trim(str)='' then
      result:='-'
    else
      result:=Trim(str);
  end;
begin

  if FileExists(FileName) then
    exit;

  Writer := TStreamWriter.Create(FileName, true, TEncoding.UTF8);
  str:=
  '   select'
  +'    ''T'' as Id_Type,per.national_id,''Κύπρος'' as Country,'
  +'    case(per.sex)'
  +'    when ''M'' then ''A'''
  +'    when ''F'' then ''Θ'''
  +'    else ''A'''
  +'    end as Sex'
  +'    ,per.last_name,per.first_name ,per.job from'
  +'    seminar_person sp left outer join'
  +'    person per on sp.fk_person_serial=per.serial_number'
  +'    where sp.fk_seminar_serial= :seminarSerial '
  +'    and per.fk_company_serial = :companyserial ';

  qr:= TksQuery.Create(cn,str);
  try
    qr.close;
    qr.ParamByName('SeminarSerial').Value:=SeminarSerial;
    qr.ParamByName('CompanySerial').Value:=CompanySerial;
    qr.open;

//    writer.Write('National_id ; Last_name ; first_name');
//    writer.WriteLine();
    I:=0;
    while not qr.Eof do begin
     inc(i);
     writer.Write( intToStr(i)+'. ; ');
     writer.Write( 'T ; ');
     writer.Write( fillEmpty(qr.FieldByName('National_id').AsString) +' ; ');
     writer.Write( 'Κύπρος ; ');
     writer.Write( FillEmpty(qr.FieldByName('sex').AsString)   +' ; ');
     writer.Write( FillEmpty(qr.FieldByName('Last_name').AsString)   +' ; ');
     writer.write( FillEmpty(qr.FieldByName('first_name').AsString)  +' ; ');
     writer.write( FillEmpty(qr.FieldByName('job').AsString ));
     writer.WriteLine();
     qr.Next;
    end;
   finally
    qr.Free;
    Writer.Free();
  end;



end;

{
//macros to copy in Docm File
// create macros for document


Sub SaveDocWithoutSQL()
With ActiveDocument
    If .MailMerge.MainDocumentType <> wdNotAMergeDocument Then
            .MailMerge.MainDocumentType = wdNotAMergeDocument
            .Save
            .Close
    End If
End With
End Sub
Sub MergeDoc()
'
' mac1 Macro
' **** you need a schema.ini to avoid asking for UTF8
'
Dim oApp As Word.Application
Dim oDoc As Word.Document
Set oDoc = Application.ActiveDocument

Dim myDocFile As String
myDocFile = ActiveDocument.FullName

Dim ValuesFile As String
'ValuesFile = "C:\Users\KyrLouca\Documents\TestVBA\Names3.csv"
ValuesFile = Left(myDocFile, InStr(myDocFile, ".") - 1) & ".csv"

Dim MergedFIle As String
MergedFIle = GetMergeFileName("__Poly")


ActiveDocument.MailMerge.OpenDataSource Name:=ValuesFile, ReadOnly:=True
With oDoc.MailMerge
.Destination = wdSendToNewDocument
.MainDocumentType = wdDirectory
.Execute
End With


Dim NewDoc As Word.Document
Set NewDoc = Application.ActiveDocument
NewDoc.SaveAs FileName:=MergedFIle, fileFormat:=wdFormatXMLDocument


oDoc.Close False

oApp.Visible = True



End Sub

Sub test()
Dim test As String
test = GetMergeFileName("__Poly")
MsgBox test

End Sub

Function GetMergeFileName(filePrefix As String) As String

Dim myFile As String
myFile = Left(ActiveDocument.Name, InStr(ActiveDocument.Name, ".") - 1)
myFile = Mid(myFile, 8)

Dim myPath As String
myPath = Left(ActiveDocument.FullName, InStr(ActiveDocument.FullName, filePrefix) - 1)

Dim Res As String
Res = myPath & myFile & ".docx"
GetMergeFileName = Res

End Function




}

function TS_LoadDocsFRM.CheckFileLength(const filename:string):String;
const
  MAX_Length=245;
var
  pName:String;
begin
  result:=fileName;

  pName := ExtractFileDir(fileName) +'\'+tpath.GetFileNameWithoutExtension(filename);
  if Length(pname)>MAX_LENGTH then begin
    pname:=copy(pName,1,MAX_LENGTH);
    result:=pname+tpath.GetExtension(filename);
  end;

//  showMessage(intToStr(length(result)));
end;

End.

