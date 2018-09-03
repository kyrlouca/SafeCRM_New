unit t_test2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  MemDS, DBAccess, IBC, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, VirtualTable,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands, ppCache,
  ppDesignLayer, ppParameter, ppPrnabl, ppCtrls, ppVar, Vcl.Imaging.pngimage,ComCtrls,
  ppStrtch, ppRichTx,  Vcl.ExtCtrls,
  vcl.wwriched,System.Character;

type
  TT_test2FRM = class(TForm)
    SeminarPresenceSQL: TIBCQuery;
    SeminarPresenceSQLPERSON_SERIAL: TIntegerField;
    SeminarPresenceSQLLAST_FIRST_NAME: TWideStringField;
    SeminarPresenceSQLIS_PRESENT: TWideStringField;
    SeminarPresenceSQLHOURS_PRESENT: TIntegerField;
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
    ppHeaderBand1: TppHeaderBand;
    ddBand: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppDesignLayer2: TppDesignLayer;
    ppPageStyle1: TppPageStyle;
    ppRichText1: TppRichText;
    ppRichText2: TppRichText;
    picturesSQL: TIBCQuery;
    PicturesSRC: TDataSource;
    CompanySQL: TIBCQuery;
    SeminarSUbjectSQL: TIBCQuery;
    picturesSQLSERIAL_NUMBER: TIntegerField;
    picturesSQLPICTURE_SEMINAR: TBlobField;
    picturesSQLLINE_A1: TWideStringField;
    picturesSQLLINE_A2: TWideStringField;
    picturesSQLLINE_B1: TWideStringField;
    picturesSQLLINE_B2: TWideStringField;
    picturesSQLLINE_B3: TWideStringField;
    picturesSQLTL_X: TIntegerField;
    picturesSQLTL_Y: TIntegerField;
    picturesSQLTR_X: TIntegerField;
    picturesSQLTR_Y: TIntegerField;
    picturesSQLBL_X: TIntegerField;
    picturesSQLBL_Y: TIntegerField;
    picturesSQLBR_X: TIntegerField;
    picturesSQLBR_Y: TIntegerField;
    picturesSQLPICTURE_TOP_L1: TBlobField;
    picturesSQLPICTURE_TOP_R1: TBlobField;
    picturesSQLPICTURE_BOT_L1: TBlobField;
    picturesSQLPICTURE_BOT_R1: TBlobField;
    picturesSQLLINE_C1: TWideStringField;
    picturesSQLLANGUAGE_GREEK_OR_ENGLISH: TWideStringField;
    PersonSQL: TIBCQuery;
    PersonSRC: TDataSource;
    CompanySQLSERIAL_NUMBER: TIntegerField;
    CompanySQLSERIAL_QB: TIntegerField;
    CompanySQLFK_COMPANY_SERIAL: TIntegerField;
    CompanySQLLAST_NAME: TWideStringField;
    CompanySQLFIRST_NAME: TWideStringField;
    CompanySQLNATIONAL_ID: TWideStringField;
    CompanySQLNICKNAME: TWideStringField;
    CompanySQLOCCUPATION: TWideStringField;
    CompanySQLPHONE_MOBILE: TWideStringField;
    CompanySQLPHONE_FIXED: TWideStringField;
    CompanySQLPHONE_ALTERNATE: TWideStringField;
    CompanySQLFAX: TWideStringField;
    CompanySQLEMAIL: TWideStringField;
    CompanySQLEMAIL_2: TSmallintField;
    CompanySQLADDRESS: TWideStringField;
    CompanySQLADDRESS_STREET: TWideStringField;
    CompanySQLADDRESS_POST_CODE: TWideStringField;
    CompanySQLADDRESS_CITY: TWideStringField;
    CompanySQLADDRESS_DISTRICT: TWideStringField;
    CompanySQLDATE_STARTED: TDateField;
    CompanySQLDATE_BIRTH: TDateField;
    CompanySQLDATE_USER: TDateField;
    CompanySQLLIST_SOURCE: TWideStringField;
    CompanySQLFACEBOOK: TWideStringField;
    CompanySQLWEBSITE: TWideStringField;
    CompanySQLTWITTER: TWideStringField;
    CompanySQLSTATUS_ACTIVE: TWideStringField;
    CompanySQLSEX: TWideStringField;
    CompanySQLIS_COMPANY: TWideStringField;
    CompanySQLCOMPANY_OWNER: TWideStringField;
    CompanySQLCOMPANY_CONTACT: TWideStringField;
    CompanySQLCOMPANY_REGISTRATION_DATE: TDateField;
    CompanySQLPHONE_CONTACT: TWideStringField;
    CompanySQLCOMPANY_CONTACT_FIRST: TWideStringField;
    CompanySQLCOMPANY_CONTACT_LAST: TWideStringField;
    CompanySQLCOMPANY_OWNER_REG: TWideStringField;
    CompanySQLCOMPANY_CONTACT_PHONE: TWideStringField;
    CompanySQLCOMPANY_CONTACT_EMAIL: TWideStringField;
    CompanySQLCOMPANY_CONTACT_FAX: TWideStringField;
    CompanySQLCOMPANY_SOCIAL_SEC: TWideStringField;
    CompanySQLCOMPANY_EMPLOYEES: TIntegerField;
    CompanySQLPHONE_MOBILE_2: TWideStringField;
    CompanySQLLINKED_IN: TWideStringField;
    CompanySQLJOB: TWideStringField;
    CompanySRC: TDataSource;
    Button1: TButton;
    Comp1: TIBCQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    SmallintField1: TSmallintField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    WideStringField15: TWideStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    DateField3: TDateField;
    WideStringField16: TWideStringField;
    WideStringField17: TWideStringField;
    WideStringField18: TWideStringField;
    WideStringField19: TWideStringField;
    WideStringField20: TWideStringField;
    WideStringField21: TWideStringField;
    WideStringField22: TWideStringField;
    WideStringField23: TWideStringField;
    WideStringField24: TWideStringField;
    DateField4: TDateField;
    WideStringField25: TWideStringField;
    WideStringField26: TWideStringField;
    WideStringField27: TWideStringField;
    WideStringField28: TWideStringField;
    WideStringField29: TWideStringField;
    WideStringField30: TWideStringField;
    WideStringField31: TWideStringField;
    WideStringField32: TWideStringField;
    IntegerField4: TIntegerField;
    WideStringField33: TWideStringField;
    WideStringField34: TWideStringField;
    WideStringField35: TWideStringField;
    Rep1RPT: TppReport;
    ppParameterList2: TppParameterList;
    personPIP: TppDBPipeline;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    SeminarSUbjectSQLPERSON_SERIAL: TIntegerField;
    SeminarSUbjectSQLLAST_FIRST_NAME: TWideStringField;
    SeminarSUbjectSQLNATIONAL_ID: TWideStringField;
    SeminarSUbjectSQLIS_PRESENT: TWideStringField;
    SeminarSUbjectSQLHOURS_PRESENT: TIntegerField;
    SeminarSUbjectSQLDAYSERIAL: TIntegerField;
    SeminarSUbjectSQLSEMINAR_DAY: TDateField;
    SeminarSUbjectSQLSUBJECT: TWideStringField;
    PersonSQLSERIAL_NUMBER: TIntegerField;
    PersonSQLFK_COMPANY_SERIAL: TIntegerField;
    PersonSQLLAST_NAME: TWideStringField;
    PersonSQLFIRST_NAME: TWideStringField;
    PersonSQLLAST_FIRST_NAME: TWideStringField;
    PersonSQLFIRST_LAST_NAME: TWideStringField;
    PersonSQLNATIONAL_ID: TWideStringField;
    PersonSQLNICKNAME: TWideStringField;
    PersonSQLOCCUPATION: TWideStringField;
    PersonSQLPHONE_MOBILE: TWideStringField;
    PersonSQLPHONE_FIXED: TWideStringField;
    PersonSQLPHONE_ALTERNATE: TWideStringField;
    PersonSQLFAX: TWideStringField;
    PersonSQLEMAIL: TWideStringField;
    PersonSQLEMAIL_2: TSmallintField;
    PersonSQLADDRESS: TWideStringField;
    PersonSQLADDRESS_STREET: TWideStringField;
    PersonSQLADDRESS_POST_CODE: TWideStringField;
    PersonSQLADDRESS_CITY: TWideStringField;
    PersonSQLADDRESS_DISTRICT: TWideStringField;
    PersonSQLDATE_STARTED: TDateField;
    PersonSQLDATE_BIRTH: TDateField;
    PersonSQLDATE_USER: TDateField;
    PersonSQLLIST_SOURCE: TWideStringField;
    PersonSQLFACEBOOK: TWideStringField;
    PersonSQLWEBSITE: TWideStringField;
    PersonSQLTWITTER: TWideStringField;
    PersonSQLSTATUS_ACTIVE: TWideStringField;
    PersonSQLSEX: TWideStringField;
    PersonSQLIS_COMPANY: TWideStringField;
    PersonSQLCOMPANY_OWNER: TWideStringField;
    PersonSQLCOMPANY_OWNER_ID: TWideStringField;
    PersonSQLCOMPANY_OWENER_REG: TWideStringField;
    PersonSQLCOMPANY_CONTACT: TWideStringField;
    PersonSQLCOMPANY_REGISTRATION_DATE: TDateField;
    PersonSQLPHONE_CONTACT: TWideStringField;
    procedure PrintRBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  procedure CreateTable(Const SeminarSerial:Integer);
  procedure PopulateTable(Const SeminarSerial:Integer);
  procedure AddReportFields();

  function GetDayFromSerial(Const DaySerial:Integer):TDate;
  function GetNameFromSerial(Const PersonSerial:Integer):String;
  function GetPercentage(Const PersonSerial,SeminarSerial:Integer):Integer;

  public
    { Public declarations }
    IN_SeminarSerial:Integer;
  end;

var
  T_test2FRM: TT_test2FRM;

implementation

{$R *.dfm}

uses G_KyrSQL, G_generalProcs, U_Database;



procedure TT_test2FRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TT_test2FRM.PrintRBtnClick(Sender: TObject);
var

fileName:String;
begin
//personSQL.Close;
//personSQL.Open;
SeminarSUbjectSQL.Close;
SeminarSUbjectSQL.ParamByName('seminarSerial').value:=133;
SeminarSUbjectSQL.Open;
Rep1RPT.Print;
{
  fs1.Variables['FileNameU']:= 234;

  fs1.ShowReport(true);
  exit;
}
  //////////////////////////


end;



procedure TT_test2FRM.BitBtn1Click(Sender: TObject);
begin
  PopulateTable(IN_SeminarSerial);
end;


procedure TT_test2FRM.Button1Click(Sender: TObject);
var
test:String;
temp:String;
begin
test:='σαβας' ;
temp:= stringreplace(test, 'ς', 'Σ', [rfReplaceAll, rfIgnoreCase]);
showmEssage(test+'-'+toUpper(temp));


end;

procedure TT_test2FRM.CreateTable(Const SeminarSerial:Integer);
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
    vt1.AddField('person_name',ftString,40);
    vt1.AddField('Percent',ftFloat);

    qr.ParamByName('SeminarSerial').Value:=seminarSerial;
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



procedure TT_test2FRM.PopulateTable(Const SeminarSerial:Integer);
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
            PresenceQR.FieldByName('present_hours').AsInteger;
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

procedure TT_test2FRM.AddReportFields();
var
  RfPos:double;
  I:Integer;
  vfield:TField;
    RField1: TppDBText;
    lbl1:TppLabel;
    rfWidth:double;
    dist:Double;
begin

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
        1: begin  dist:=0.3; rfwidth:=2.0;  lbl1.Caption:='Όνομα';end;
        2: begin  dist:=1.5; rfwidth:=0.6;  lbl1.Caption:='%Παρακ.'; lbl1.Alignment := TAlignment(2);end;
        3: begin  dist:=0.5; rfwidth:=0.6;  end;
        4: begin  dist:=0.5; rfwidth:=0.6;  end;
        5: begin  dist:=0.5; rfwidth:=0.6;  end;
        else begin
           dist:=0.2; rfwidth:=0.5;
        end;
      end;

      rfPos:=RfPos+Dist;


      lbl1.Left := rfPos;
      lbl1.Width:=rfWidth;
//      Lbl1.AutoSize:=false;
      lbl1.Top := 0.1;
      lbl1.Font.Name:='Arial';
      lbl1.Font.Size:=11;

        case I of
        2: begin
          rField1.DisplayFormat:='%0';
        end;
      end;



      rfPos:=RfPos+Dist;

      RField1:= TppDBText.Create(self);
      RField1.Band := ppReport1.DetailBand;

      RField1.Left := rfPos;
      RField1.Width := rfWidth;
      RField1.Top := 0.2;
      RField1.Font.Name:='Arial';
      RField1.Font.Size:=11;

      RField1.Alignment:= TAlignment(0);//taLeftJustify gives me an error
      RField1.AutoSize:=false;

      RField1.DataPipeline := ppReport1.DataPipeline;
      RField1.DataField := vField.FieldName;


  end;


end;


function TT_test2FRM.GetDayFromSerial(Const DaySerial:Integer):TDate;
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

function TT_test2FRM.GetNameFromSerial(Const PersonSerial:Integer):String;
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

function TT_test2FRM.GetPercentage(Const PersonSerial,SeminarSerial:Integer):Integer;
var
  qr:TksQuery;
  str:string;
begin
  str:=
  ' select sum(ppv.present_hours)as PresentHr,sum(ppv.day_hours) as DayHr '
  +' from person_presence_view ppv '
  +' where ppv.person_serial= :PersonSerial and ppv.seminar_serial= :seminarSerial' ;
  qr:=TksQuery.Create(cn,str);

  try
    qr.ParamByName('PersonSerial').Value:=PersonSerial;
    qr.ParamByName('SeminarSerial').Value:=SeminarSerial;
    qr.open;
    result:= Trunc(qr.FieldByName('presentHr').AsInteger /qr.FieldByName('DayHr').AsInteger *100);
  finally
    qr.Free;
  end;

end;





end.
