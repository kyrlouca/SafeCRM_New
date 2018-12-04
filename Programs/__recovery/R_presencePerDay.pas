unit R_presencePerDay;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  MemDS, DBAccess, IBC, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, VirtualTable,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands, ppCache,
  ppDesignLayer, ppParameter, ppPrnabl, ppCtrls, ppVar, Vcl.Imaging.pngimage,ComCtrls;

type
  TR_presencePErDayFRM = class(TForm)
    SeminarPresenceSQL: TIBCQuery;
    SeminarPresenceSQLPERSON_SERIAL: TIntegerField;
    SeminarPresenceSQLLAST_FIRST_NAME: TWideStringField;
    SeminarPresenceSQLIS_PRESENT: TWideStringField;
    SeminarPresenceSQLDAYSERIAL: TIntegerField;
    SeminarPresenceSQLSEMINAR_DAY: TDateField;
    SeminarPresenceSQLNATIONAL_ID: TWideStringField;
    SeminarSRC: TDataSource;
    PrintRBtn: TBitBtn;
    vt1: TVirtualTable;
    Vt1SRC: TDataSource;
    d: TwwDBGrid;
    vtpip: TppDBPipeline;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel4: TppLabel;
    ppImage1: TppImage;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ddBand: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppShape2: TppShape;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel11: TppLabel;
    SeminarSQL: TIBCQuery;
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
    SeminarSQLFK_COMPANY_INVOICED: TIntegerField;
    SeminarPip: TppDBPipeline;
    SeminarPresenceSQLHOURS_PRESENT: TFloatField;
    procedure PrintRBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  procedure OpenTables(Const SeminarSerial:Integer);
  procedure CreateTable(Const SeminarSerial:Integer);
  procedure PopulateTable(Const SeminarSerial:Integer);
  procedure AddReportFields();

  function GetDayFromSerial(Const DaySerial:Integer):TDate;
  function GetNameFromSerial(Const PersonSerial:Integer):String;
  function GetPercentage(Const PersonSerial,SeminarSerial:Integer):Integer;

  public
    { Public declarations }
    IN_SeminarSerial:Integer;
    procedure PrintTheReport;
  end;

var
  R_presencePErDayFRM: TR_presencePErDayFRM;

implementation

{$R *.dfm}

uses G_KyrSQL, G_generalProcs, U_Database;



procedure TR_presencePErDayFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TR_presencePErDayFRM.PrintRBtnClick(Sender: TObject);
begin
  CreateTable(94);
  PopulateTable(94);
  AddReportFields();
  ppReport1.Print;
end;

procedure TR_presencePErDayFRM.PrintTheReport;
begin
  OpenTables(IN_seminarSerial);
  CreateTable(IN_SeminarSerial);
  PopulateTable(IN_SeminarSerial);
  AddReportFields();
  ppReport1.Print;
end;




procedure TR_presencePErDayFRM.BitBtn1Click(Sender: TObject);
begin
  PopulateTable(IN_SeminarSerial);
end;


procedure TR_presencePErDayFRM.CreateTable(Const SeminarSerial:Integer);
var
  qr:TksQuery;
  str:String;
  fSubject:Integer;
  fday:Integer;
  fname:String;
begin
  vt1.Close;
  vt1.DeleteFields;

  str:='select ssv.daySerial from seminar_day_view ssv '
    +' where  ssv.seminar_serial= :SeminarSerial ';
  qr:=TksQuery.Create(cn,str);

  try
    vt1.AddField('Person_Serial',ftinteger);
    vt1.AddField('person_name',ftWideString,40);
    vt1.AddField('Percent',ftFloat);

    qr.ParamByName('SeminarSerial').Value:=SeminarSerial;
    qr.Open;
    while not qr.Eof do begin
      fday:=qr.fieldByName('daySerial').AsInteger;
      vt1.AddField(IntToStr(fday),ftInteger);
      qr.Next;
    end;
  finally
    qr.Free;
end;

end;



procedure TR_presencePErDayFRM.PopulateTable(Const SeminarSerial:Integer);
var
  PersonQR:TksQuery;
  PresenceQR:TksQuery;
  str:String;
  PersonSerial:Integer;
  fname:string;
  left:integer;

begin
// POPULATE Fields
//

  vt1.Close;

  str:='select  sp.fk_person_serial from seminar_person sp where sp.fk_seminar_serial= :seminarSerial';
  Personqr:=TksQuery.Create(cn,str);

  str:= 'select pp.person_serial,pp.day_serial,pp.present_hours '
      +' from person_presence_view pp '
      +'  where pp.seminar_serial= :seminarSerial   and pp.person_serial = :personSerial ';
  Presenceqr:=TksQuery.Create(cn,str);

  try
    vt1.close;
    vt1.Open;
    PersonQr.Close;
    personQR.ParamByName('SeminarSerial').Value:=SeminarSerial;
    personQR.Open;
    while not PersonQR.Eof do begin
    //for every PERSON
      vt1.insert;
      PersonSerial:=PersonQR.FieldByName('fk_person_serial').AsInteger;
      vt1.fieldbyName('Person_serial').value:=PersonSerial;
      vt1.fieldbyName('person_name').AsString:= GetNameFromSerial(PersonSerial);
      vt1.fieldbyName('percent').value:= GetPercentage(PersonSerial,SeminarSerial);


      PresenceQR.Close;
      presenceQR.ParamByName('SeminarSerial').value:=SeminarSerial;
      presenceQR.ParamByName('PersonSerial').value:= PersonSerial;
      presenceQR.Open;
      while not PresenceQR.Eof do begin
      //get values for FIelds from PresenceTable (transpose)

        fname:=PresenceQR.FieldByName('day_serial').AsString;
        if vt1.FindField(fname)<> nil then   begin
          vt1.FieldByName(fname).Value:=
            PresenceQR.FieldByName('present_hours').AsFloat;
        end;

        PresenceQR.Next;
      end;
      vt1.post;

      PersonQR.Next;
    end;

  finally
    Personqr.Free;
    PresenceQr.Free;
  end;


end;

procedure TR_presencePErDayFRM.AddReportFields();
var
  RfPos:double;
  I:Integer;
  vfield:TField;
    RField1: TppDBText;
    lbl1:TppLabel;
    rfWidth:double;
    dist:Double;
begin

  //Create ReportFIelds from the table fields
    rfPos:=0;
    For I:=0 to vt1.FieldCount-1 do begin
     vField:=vt1.Fields[i];

      lbl1 := TppLabel.Create(Self);
      lbl1.Band := ppReport1.HeaderBand;

      if StrToIntDef( vField.FieldName,0)>0 then begin
        lbl1.Caption := FormatDateTime('dd/mm/yyyy', GetDayFromSerial (StrToInt(vField.FieldName)));
      end else begin
        lbl1.Caption := vField.FieldName;
      end;

      case I of
        0: begin  dist:=0.1; rfwidth:=0.4;  lbl1.Caption:='A/A'; end;
        1: begin  dist:=0.2; rfwidth:=2;  lbl1.Caption:='Όνομα';end;
        2: begin  dist:=0.2; rfwidth:=0.7;  lbl1.Caption:='%Παρακ.'; lbl1.Alignment := TAlignment(2);end;
        3: begin  dist:=0.2; rfwidth:=0.7;  end;
        else begin
           dist:=0.2; rfwidth:=0.7;
        end;
      end;

      lbl1.Left := rfPos;
      lbl1.Width:=rfWidth;
//      Lbl1.AutoSize:=false;
      lbl1.Top := 0.1;
      lbl1.Font.Name:='Arial';
      lbl1.Font.Size:=11;



      RField1:= TppDBText.Create(self);
      RField1.Band := ppReport1.DetailBand;
      RField1.DataPipeline := ppReport1.DataPipeline;
      RField1.DataField := vField.FieldName;

      RField1.Left := rfPos;
      RField1.Width := rfWidth;
      RField1.Top := 0.2;

      RField1.Font.Name:='Arial';
      Rfield1.Font.Charset:=DEFAULT_CHARSET;
      RField1.Font.Size:=9;
      RField1.AutoSize:=false;

      if UpperCase(RField1.Name)='PERCENT' then begin
        Rfield1.DisplayFormat:='%0';
        RField1.Alignment:= TAlignment(2);//taLeftJustify gives me an error
      end else begin
        RField1.Alignment:= TAlignment(0);//taLeftJustify gives me an error
      end;

      rfPos:=RfPos+ rfWidth +dist;


  end;


end;



Procedure TR_presencePErDayFRM.OpenTables(Const SeminarSerial:Integer);
begin
  SeminarSQL.Close;
  SeminarSQL.ParamByName('SeminarSerial').Value:=SeminarSerial;
  SeminarSQL.Open;

end;


function TR_presencePErDayFRM.GetDayFromSerial(Const DaySerial:Integer):TDate;
var
  qr:TksQuery;
begin
  qr:=TksQuery.Create(cn,'select sd.seminar_day from seminar_day_view sd where sd.dayserial = :daySerial');
  try
    qr.ParamByName('daySerial').Value:=daySerial;
    qr.open;
    result:=qr.FieldByName('seminar_day').AsDateTime;
  finally
    qr.Free;
  end;

end;

function TR_presencePErDayFRM.GetNameFromSerial(Const PersonSerial:Integer):String;
var
  qr:TksQuery;
  str:string;
begin
  str:= 'select pe.first_last_name,pe.national_id from person_view pe where pe.serial_number= :personSerial';
  qr:=TksQuery.Create(cn,str);

  try
    qr.ParamByName('PersonSerial').Value:=PersonSerial;
    qr.open;
    result:=qr.FieldByName('first_last_name').AsString;
  finally
    qr.Free;
  end;

end;

function TR_presencePErDayFRM.GetPercentage(Const PersonSerial,SeminarSerial:Integer):Integer;
var
  qr:TksQuery;
  str:string;
begin
  str:=
  ' select sum(ppv.present_hours)as PresentHr,sum(ppv.day_hours) as DayHr '
  +' from person_presence_view ppv '
  +'  where ppv.person_serial= :PersonSerial and ppv.seminar_serial= :SeminarSerial';
  qr:=TksQuery.Create(cn,str);

  try
    qr.ParamByName('PersonSerial').Value:=PersonSerial;
    qr.ParamByName('SeminarSerial').Value:=SeminarSerial;
    qr.open;
    result:= Trunc(qr.FieldByName('presentHr').AsFloat /qr.FieldByName('DayHr').AsFloat *100);
  finally
    qr.Free;
  end;

end;





end.
