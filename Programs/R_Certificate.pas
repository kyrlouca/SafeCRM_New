unit R_Certificate;

interface

uses
  Windows, Messages, SysUtils,System.DateUtils,System.math,System.strUtils,system.Character, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError,  Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit,  DBGrids, wwdbdatetimepicker, ppDB, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppProd, ppReport, ppComm, ppRelatv,
  ppCache, ppDBPipe,ppTypes,ppviewr, ppDesignLayer, ppParameter, RzButton,
  RzPanel, Vcl.Imaging.pngimage, VirtualTable, myChkBox, vcl.wwclearbuttongroup,
  vcl.wwradiogroup, ppStrtch, ppRichTx, Vcl.ComCtrls, vcl.wwriched,ClipBrd,
  Vcl.DBCtrls, RzDBEdit, vcl.wwclearpanel, vcl.Wwdotdot, vcl.Wwdbcomb, RzLabel,
  RzDBLbl;

type
  TReminderResult= Record
    daysLeft:Integer;
    DateFinal:Tdate;
  End;
  TReplaceItem= Record
    text:String;
    Field:String;
  End;
  TImgPos= record
    fName:String;
    Left:double;
    Top:double;
    FieldForLeft:String;
    FieldForRIght:String;
  end;


  TR_certificateFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    CertificatePIP: TppDBPipeline;
    PrintAllxBtn: TBitBtn;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    ppReport1: TppReport;
    ppParameterList3: TppParameterList;
    ddBand: TppDetailBand;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    CertificateSQL: TIBCQuery;
    CertificateSRC: TDataSource;
    CertificateSQLSERIAL_NUMBER: TIntegerField;
    CertificateSQLFK_SEMINAR_SERIAL: TIntegerField;
    CertificateSQLFK_PERSON_SERIAL: TIntegerField;
    CertificateSQLDATE_ISSUED: TDateField;
    CertificateSQLHOURS_COMPLETED: TIntegerField;
    CertificateSQLPERCENTAGE_COMPLETED: TIntegerField;
    CertificateSQLIS_VALID: TWideStringField;
    CertificateSQLLAST_NAME: TWideStringField;
    CertificateSQLFIRST_NAME: TWideStringField;
    CertificateSQLNATIONAL_ID: TWideStringField;
    CertificateSQLSEMINAR_SUBJECT: TWideStringField;
    CertificateSQLSEMINAR_DURATION: TIntegerField;
    CertificateSQLINSTRUCTOR_NAME: TWideStringField;
    CertificateSQLINSTRUCTOR_JOB_TITLE: TWideStringField;
    CertificateSQLHAS_ANOTHER_DATE: TWideStringField;
    ppFooterBand1: TppFooterBand;
    LanguageRGP: TwwRadioGroup;
    SeminarPicturesSQL: TIBCQuery;
    SeminarPictureSRC: TDataSource;
    SeminarPIcturePIP: TppDBPipeline;
    TopFld: TppDBRichText;
    ppReport2: TppReport;
    ppDetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel7: TppLabel;
    ppVariable1: TppVariable;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppVariable3: TppVariable;
    ppVariable4: TppVariable;
    ppVariable5: TppVariable;
    ppDBRichText2: TppDBRichText;
    ppFooterBand2: TppFooterBand;
    ppLabel16: TppLabel;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    Button1: TButton;
    PICTURE_TOP_L1: TppDBImage;
    ppDBImage2: TppDBImage;
    MiddleFld: TppDBRichText;
    BottomRIghtFLD: TppDBRichText;
    BottomLeftFLD: TppDBRichText;
    SideTopFLD: TppDBRichText;
    ppDBImage3: TppDBImage;
    ppDBRichText7: TppDBRichText;
    CertificateSQLSUBJECT_HOURS: TIntegerField;
    CertificateSQLSEMINAR_CERTIFICATE: TWideStringField;
    CertificateSQLSEX: TWideStringField;
    SeminarPicturesSQLSERIAL_NUMBER: TIntegerField;
    SeminarPicturesSQLFK_SEMINAR_SERIAL: TIntegerField;
    SeminarPicturesSQLLANGUAGE_GREEK_OR_ENGLISH: TWideStringField;
    SeminarPicturesSQLPICTURE_SEMINAR: TBlobField;
    SeminarPicturesSQLLINE_A1: TWideStringField;
    SeminarPicturesSQLLINE_A2: TWideStringField;
    SeminarPicturesSQLLINE_B1: TWideStringField;
    SeminarPicturesSQLLINE_B2: TWideStringField;
    SeminarPicturesSQLLINE_B3: TWideStringField;
    SeminarPicturesSQLLINE_C1: TWideStringField;
    SeminarPicturesSQLPICTURE_TOP_L1: TBlobField;
    SeminarPicturesSQLPICTURE_TOP_R1: TBlobField;
    SeminarPicturesSQLPICTURE_BOT_L1: TBlobField;
    SeminarPicturesSQLPICTURE_BOT_R1: TBlobField;
    SeminarPicturesSQLTL_X: TIntegerField;
    SeminarPicturesSQLTL_Y: TIntegerField;
    SeminarPicturesSQLTR_X: TIntegerField;
    SeminarPicturesSQLTR_Y: TIntegerField;
    SeminarPicturesSQLBL_X: TIntegerField;
    SeminarPicturesSQLBL_Y: TIntegerField;
    SeminarPicturesSQLBR_X: TIntegerField;
    SeminarPicturesSQLBR_Y: TIntegerField;
    CertificateSQLANAD_NUMBER: TWideStringField;
    ppDBImage4: TppDBImage;
    wwMemo: TwwDBRichEdit;
    FirstGRP: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    SerialFLD: TRzDBLabel;
    Label1: TLabel;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
    Companylbl: TLabel;
    RzDBLabel3: TRzDBLabel;
    Label5: TLabel;
    RzDBLabel4: TRzDBLabel;
    RzDBLabel5: TRzDBLabel;
    Panel2: TPanel;
    RzPanel1: TRzPanel;
    wwDBNavigator1: TwwDBNavigator;
    Nav1Button: TwwNavButton;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    Nav1Insert: TwwNavButton;
    Nav1Delete: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1Cancel: TwwNavButton;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    TableSQL: TIBCQuery;
    TableSQLSEMINAR_NAME: TWideStringField;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLDATE_STARTED: TDateField;
    TableSQLFK_SEMINAR: TIntegerField;
    TableSQLFK_INSTRUCTOR: TIntegerField;
    TableSQLFK_VENUE: TIntegerField;
    TableSQLDATE_COMPLETED: TDateField;
    TableSQLDURATION_DAYS: TIntegerField;
    TableSQLDURATION_HOURS: TIntegerField;
    TableSQLAMOUNT_ANAD: TFloatField;
    TableSQLCOMMENTS: TWideStringField;
    TableSQLANAD_APPROVED: TWideStringField;
    TableSQLSTATUS: TWideStringField;
    TableSQLIS_INVOICED: TWideStringField;
    TableSQLIS_CERTIFICATED: TWideStringField;
    TableSQLMAX_CAPACITY: TIntegerField;
    TableSQLFK_COMPANY_PERSON_SERIAL: TIntegerField;
    TableSQLLAST_NAME: TWideStringField;
    TableSQLANAD_NUMBER: TWideStringField;
    TableSQLHAS_EXPIRY: TWideStringField;
    TableSQLEXPIRY_PERIOD: TIntegerField;
    TableSQLFK_EXAMINER: TIntegerField;
    TableSQLTYPE_MONO_POLY: TWideStringField;
    TableSQLSEM_CATEGORY: TWideStringField;
    TableSRC: TIBCDataSource;
    PrintOnexBTN: TBitBtn;
    Grid1: TwwDBGrid;
    CertificateSQLDATE_CREATED: TDateField;
    CertificateSQLSERIAL_MANUAL: TIntegerField;
    TableSQLFK_COMPANY_INVOICED: TIntegerField;
    TableSQLPASS_PERCENTAGE: TIntegerField;
    TableSQLSPECIFICATION_NUMBER: TWideStringField;
    TestTypePicturesSQL: TIBCQuery;
    TestTypePicturesSQLSERIAL_NUMBER: TIntegerField;
    TestTypePicturesSQLFK_SEMINAR_TYPE_SERIAL: TIntegerField;
    TestTypePicturesSQLLANGUAGE_GREEK_OR_ENGLISH: TWideStringField;
    TestTypePicturesSQLPICTURE_SEMINAR: TBlobField;
    TestTypePicturesSQLLINE_A1: TWideStringField;
    TestTypePicturesSQLLINE_A2: TWideStringField;
    TestTypePicturesSQLLINE_B1: TWideStringField;
    TestTypePicturesSQLLINE_B2: TWideStringField;
    TestTypePicturesSQLLINE_B3: TWideStringField;
    TestTypePicturesSQLTL_X: TIntegerField;
    TestTypePicturesSQLTL_Y: TIntegerField;
    TestTypePicturesSQLTR_X: TIntegerField;
    TestTypePicturesSQLTR_Y: TIntegerField;
    TestTypePicturesSQLBL_X: TIntegerField;
    TestTypePicturesSQLBL_Y: TIntegerField;
    TestTypePicturesSQLBR_X: TIntegerField;
    TestTypePicturesSQLBR_Y: TIntegerField;
    TestTypePicturesSQLPICTURE_TOP_L1: TBlobField;
    TestTypePicturesSQLPICTURE_TOP_R1: TBlobField;
    TestTypePicturesSQLPICTURE_BOT_L1: TBlobField;
    TestTypePicturesSQLPICTURE_BOT_R1: TBlobField;
    TestTypePicturesSQLLINE_C1: TWideStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure VtFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure PrintAllxBtnClick(Sender: TObject);
    procedure NameFLDCalc(Sender: TObject; var Value: Variant);
    procedure IdFLDCalc(Sender: TObject; var Value: Variant);
    procedure DurationFLDCalc(Sender: TObject; var Value: Variant);
    procedure SerialLblCalc(Sender: TObject; var Value: Variant);
    procedure SubjectLblCalc(Sender: TObject; var Value: Variant);
    procedure Button1Click(Sender: TObject);
    procedure PICTURE_TOP_L1Print(Sender: TObject);
    procedure TopFldGetRichText(Sender: TObject; var Text: string);
    procedure ppReport1BeforePrint(Sender: TObject);
    procedure PrintOnexBTNClick(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;

  function ReplaceText(picFIeldName:String):String;
  procedure MovePosition(img :TppDBImage);

  public
    { Public declarations }
    IN_Seminar_Serial:Integer;
    IN_certificate_serial:Integer;
    IN_Language:String;
    procedure PrintSeminar(Const SeminarSerial,CertificateSerial:Integer;Const language:String);
    procedure PrintTestSeminar(Const SeminarSerial,SeminarTypeSerial,CertificateSerial:Integer;Const Language:String);
    procedure PrintTheSeminar();


  end;

var
  R_certificateFRM: TR_certificateFRM;
  ImgPosArray : array of TImgPos;

implementation

uses U_Database, G_SFCommonProcs, G_KyrSQL;


{$R *.DFM}





procedure TR_certificateFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TR_certificateFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;




procedure TR_certificateFRM.Button1Click(Sender: TObject);
begin
showMessage(LanguageRGP.Value);
end;


procedure TR_certificateFRM.DurationFLDCalc(Sender: TObject;
  var Value: Variant);
begin
            value:='Διάρκειας: '+CertificateSQL.FieldByName('seminar_duration').AsString + ' ωρών';

end;

procedure TR_certificateFRM.ppReport1BeforePrint(Sender: TObject);
const
   imgNames :TArray<String> =[ 'PICTURE_TOP_L1', 'PICTURE_TOP_R1' ,'PICTURE_BOT_L1', 'PICTURE_BOT_R1'];
var
  I:integer;
  img:TppdbImage;
   imgPos:TImgPos;
   ndx:Integer;
begin
    for i := 0 to ComponentCount - 1 do    begin
      if  (Components[i] is TppdbImage) then begin
        img:=TppdbImage(Components[i]);
        imgPos.fName:=img.DataField;
        ImgPos.Left:=img.Left;
        ImgPos.Top:=Img.Top;

        Case  IndexStr(imgPos.fName,imgNames ) of
          0:begin imgPos.FieldForLeft:='TL_X';imgPos.FieldForRIght:='TL_Y' end;
          1:begin imgPos.FieldForLeft:='TR_X';imgPos.FieldForRIght:='TR_Y' end;
          2:begin imgPos.FieldForLeft:='BL_X';imgPos.FieldForRIght:='BL_Y' end;
          3:begin imgPos.FieldForLeft:='BR_X';imgPos.FieldForRIght:='BR_Y' end;
          -1:begin imgPos.FieldForLeft:='';imgPos.FieldForRIght:='' end;
        else
          ShowMessage('FIeld NOT FOUND Option'); // present, but not handled above
        end;

        insert(imgPos,ImgPosArray,0);
      end;

    end;
end;

procedure TR_certificateFRM.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  (sender as TppReport).PreviewForm.WindowState := wsMaximized;
  TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;


procedure TR_certificateFRM.NameFLDCalc(Sender: TObject;
  var Value: Variant);
begin
            value:=AnsiUpperCase(Trim(CertificateSQL.FieldByName('First_name').AsString))+'  '+
            AnsiUpperCase(Trim(CertificateSQL.FieldByName('First_name').AsString));

end;

procedure TR_certificateFRM.PICTURE_TOP_L1Print(Sender: TObject);
begin
  MovePosition(TppDBImage(Sender));
end;

procedure TR_certificateFRM.ppVariable3Calc(Sender: TObject; var Value: Variant);
begin
//   value:=FromDateFLD.Date;
end;

procedure TR_certificateFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;




procedure TR_certificateFRM.SerialLblCalc(Sender: TObject; var Value: Variant);
begin
  value:='SPCN '+CertificateSQL.FieldByName('serial_number').AsString;
end;

procedure TR_certificateFRM.SubjectLblCalc(Sender: TObject; var Value: Variant);
const
    right = $201D;
   left = $201C;
var
  strLeft:string;
  strRight:String;
begin
    strLeft:=char(left);
    strright:=char(right);
  value:= strLeft +CertificateSQL.FieldByName('Seminar_subject').AsString+StrRight;
end;


procedure TR_certificateFRM.TopFldGetRichText(Sender: TObject;
  var Text: string);
var
  rtfText:String;
begin
  rtfText:=  ReplaceText(TppDBRichText(Sender).DataField);
  text:=rtfText;
end;

procedure TR_certificateFRM.VtFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  accept := Dataset.FieldByName('DaysCalc').asInteger >= 0;
end;


procedure TR_certificateFRM.PrintAllxBtnClick(Sender: TObject);
VAR
language:String;

begin
  Language:=LanguageRGP.Values[LanguageRGP.ItemIndex];
  PrintSeminar(IN_Seminar_Serial,0,Language);

end;


procedure TR_certificateFRM.PrintOnexBTNClick(Sender: TObject);
var
CertSerial:integer;
language:string;
isValid:Boolean;
begin
  certSerial:=CertificateSQL.FieldByName('serial_number').AsInteger;
  if certSerial<1 then exit;
  isValid:=CertificateSQL.FieldByName('is_valid').AsString='Y';
  if Not IsValid then begin
    MessageDlg('Certificate is NOT valid. Canot be printed', mtWarning, [mbOK], 0);
    exit;
  end;
  Language:=LanguageRGP.Values[LanguageRGP.ItemIndex];
  PrintSeminar(IN_Seminar_Serial,certSerial,Language);

end;



procedure TR_certificateFRM.PrintTheSeminar();
var
  Language:String;

begin
  Language:=LanguageRGP.Values[LanguageRGP.ItemIndex];
  PrintSeminar(IN_Seminar_Serial,IN_certificate_serial,Language);
end;

procedure TR_certificateFRM.PrintSeminar(Const SeminarSerial,CertificateSerial:Integer;Const Language:String);
Var
   FromDate:TDateTime;
   DaysLeft:integer;
begin


  CertificateSQL.Close;
  CertificateSQL.RestoreSQL;

  with CertificateSQL do begin
    if CertificateSerial>0 then begin
        CertificateSQL.AddWhere('serial_number = :CertificateSerial');
        CertificateSQL.ParamByName('CertificateSerial').Value:=CertificateSerial;
    end;
    CertificateSQL.ParamByName('SeminarSerial').Value:=SeminarSerial;
    CertificateSQL.Open ;
    if CertificateSQL.IsEmpty then
      exit;
  end;

    with SeminarPicturesSQL do begin
    SeminarPicturesSQL.Close ;
    SeminarPicturesSQL.ParamByName('SeminarSerial').Value:=SeminarSerial;
    SeminarPicturesSQL.ParamByName('Language').Value:=Language;
    SeminarPicturesSQL.Open ;
    if     SeminarPicturesSQL.IsEmpty then begin
      showMessage('error: missing seminar picture record');
      exit;
    end;
  end;



 PpReport1.Print;

end;

procedure TR_certificateFRM.FormActivate(Sender: TObject);
begin
LanguageRGP.ItemIndex:=0;
TableSQL.Close;
TableSQL.ParamByName('seminarSerial').Value:=IN_Seminar_Serial;
TableSQL.Open;

CertificateSQL.Close;
CertificateSQL.ParamByName('seminarSerial').Value:=IN_Seminar_Serial;
CertificateSQL.Open;

end;


procedure TR_certificateFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;


procedure TR_certificateFRM.IdFLDCalc(Sender: TObject; var Value: Variant);
begin
    value:='(Αρ. Ταυτότητας: '+Trim(CertificateSQL.FieldByName('National_id').AsString)+ ')' ;

end;


function TR_certificateFRM.ReplaceText(picFIeldName:String):String;
const
  ReplaceArray : array of String= ['[NAME]','[SEX]','[ID]','[HOURS]','[DATE]','[ANAD]','[SERIAL]' ];
//  ReplaceArray : array of String= ['[NAME]'];

var
  SelPos: Integer;
  txt:String;
  toEnd:Integer;
  Token:String;
  TokenInMemo:String;
  temp:String;
  tempInt:Integer;
  GreekOrEnglish:String;
  isAllUpper:Boolean;
  isAllLower:Boolean;
begin

  wwMemo.Clear;
//  wwMemo.SetRtfText(SeminarPicturesSQL.FieldByName(picFieldName).AsString);
  wwMemo.SetRtfText(SeminarPictureSRC.DataSet.FieldByName(picFieldName).AsString);


 For token in ReplaceArray do begin

  selPos:=wwMemo.FindText(token,0,3000,[]);

  wwMemo.SelStart:=SelPos;
  if selPos<0 then
    continue;
  wwMemo.SelLength := Length(token);

  tokenInMemo:=wwMemo.SelText;
  isAllUpper:=AllUPper(tokenInMemo);
  isAllLower:=AllLower(tokenInMemo);

          if token='[NAME]' then begin
            temp:=Trim(CertificateSQL.FieldByName('First_name').AsString) +' '+Trim(CertificateSQL.FieldByName('Last_Name').AsString);
             if isAllUpper then begin
                temp:= ToUpper(temp);
                temp:= RemoveAccents(Temp);
             end;

             if isAllLower then begin
                temp:= ToLower(Temp);
             end;

         end else if token='[SEX]' then begin

            temp:=CertificateSQL.FieldByName('SEX').AsString;
            if temp='M' then
              temp:='Ο'
            else
              temp:='Η';

             if isAllUpper then begin
                temp:= ToUpper(temp);
                temp:= RemoveAccents(Temp);
             end;

             if isAllLower then begin
                temp:= ToLower(Temp);
             end;

         end else if token='[ID]' then begin
            temp:=CertificateSQL.FieldByName('National_id').AsString;
         end else if token='[HOURS]' then begin
            temp:=CertificateSQL.FieldByName('SEMINAR_DURATION').AsString;
         end else if token='[DATE]' then begin
//            GreekOrEnglish:=SeminarPicturesSQL.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').AsString;
            GreekOrEnglish:=SeminarPictureSRC.DataSet.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').AsString;
            temp:=FormatGreekDate(CertificateSQL.FieldByName('DATE_ISSUED').AsDateTime,GreekOrEnglish);
             if isAllUpper then begin
                temp:= ToUpper(temp);
                temp:= RemoveAccents(Temp);
             end;

             if isAllLower then begin
                temp:= ToLower(Temp);
             end;
         end else if token='[ANAD]' then begin
            temp:=CertificateSQL.FieldByName('ANAD_NUMBER').AsString;

         end else if token='[SERIAL]' then begin
            tempInt:=CertificateSQL.FieldByName('SERIAL_Manual').AsInteger;
             if isAllUpper then begin
                temp:=  Format('%.*d',[5, TempInt]);;
             end else begin
                temp:= IntToStr(tempInt);
             end;

         end;
        wwMemo.SelText :=Temp;

 end;
 result:=wwMemo.GetRTFText;
end;



procedure TR_certificateFRM.MovePosition(img :TppDBImage);
//type
//TPosRec= record
//    fName:String;
//    Left:string;
//    Top:string;
//  end;


var
  SelPos: Integer;
  LeftPos,TopPos:Double;
  LeftMove,TopMove:Double;
  ImgFound:TImgPos;


function findElement(const fFieldName:string):TImgPos;
  const
    NulRec : TImgPos =  	( Fname : ''; Left:0;TOp:0;FieldForLeft:'';FieldForRIght:'');
  var
  item:TImgPos;
  begin
    result:= NulRec;
    for Item in ImgPosArray do begin
      if item.fName=fFieldName then begin
        result:=item;
        exit;
      end;
    end;

  end;


begin
  ImgFound:=findElement(img.DataField);
  if imgFound.fName='' then
    exit;
//  if (SeminarPicturesSQL.FindField(ImgFound.fName) <> nil ) then begin
  if (SeminarPictureSRC.DataSet.FindField(ImgFound.fName) <> nil ) then begin
//    img.Left:=ImgFound.Left+  SeminarPicturesSQL.FieldByName(imgFound.FieldForLeft).AsFloat/10.0;
//    img.Top:= ImgFound.Top+ SeminarPicturesSQL.FieldByName(imgFOund.FieldForRIght).AsFloat/10;
    img.Left:=ImgFound.Left+  SeminarPictureSRC.DataSet.FieldByName(imgFound.FieldForLeft).AsFloat/10.0;
    img.Top:= ImgFound.Top+ SeminarPictureSRC.DataSet.FieldByName(imgFOund.FieldForRIght).AsFloat/10;
  end;

end;






procedure TR_certificateFRM.PrintTestSeminar(Const SeminarSerial,SeminarTypeSerial,CertificateSerial:Integer;Const Language:String);
//will print a certificate using pictures from the TEMPLATE
Var
   FromDate:TDateTime;
   DaysLeft:integer;
begin


  CertificateSQL.Close;
  CertificateSQL.RestoreSQL;

  with CertificateSQL do begin
    if CertificateSerial>0 then begin
        CertificateSQL.AddWhere('serial_number = :CertificateSerial');
        CertificateSQL.ParamByName('CertificateSerial').Value:=CertificateSerial;
    end;
    CertificateSQL.ParamByName('SeminarSerial').Value:=SeminarSerial;
    CertificateSQL.Open ;
    if CertificateSQL.IsEmpty then
      exit;
  end;

    with TestTypePicturesSQL do begin
    TestTypePicturesSQL.Close ;
    TestTypePicturesSQL.ParamByName('SeminarTypeSerial').Value:=SeminarTypeSerial;
    TestTypePicturesSQL.ParamByName('Language').Value:=Language;
    TestTypePicturesSQL.Open ;
    if     TestTypePicturesSQL.IsEmpty then begin
      showMessage('error: missing seminar picture record');
      exit;
    end;
  end;

  SeminarPictureSRC.DataSet:=TestTypePicturesSQL;


 PpReport1.Print;

end;


end.
