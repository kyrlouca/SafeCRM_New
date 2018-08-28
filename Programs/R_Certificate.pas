// how to set offsets
// not the best approach but too late now
//the table seminar_type_pictures has fields  for images and RTF text
// 1. fields for holding the actual images => (picture_top_L1, Picture_top_R1 , etc
// 2. fields with the offset for each image =>(TL_x, TL_Y) are the offsetts of picture_top_li
// therefore, before printing EACH  TppImage, get and apply its offsets as specified in the live record
// for example for field PICTURE_TOP_L1, find its offsets in fields TL_X, and TL_Y

//Get the positions of the images on activating the form, to avoid "
// moving the pictures every time the report is printed:

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
  RzDBLbl, ppSubRpt;

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
    FieldForTop:String;
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
    LanguageRGP: TwwRadioGroup;
    SeminarPicturesSQL: TIBCQuery;
    SeminarPictureSRC: TDataSource;
    SeminarPIcturePIP: TppDBPipeline;
    TopFld: TppDBRichText;
    Button1: TButton;
    MiddleFld: TppDBRichText;
    BottomRIghtFLD: TppDBRichText;
    BottomLeftFLD: TppDBRichText;
    SideTopFLD: TppDBRichText;
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
    TestSeminarPictureSQL: TIBCQuery;
    TestSeminarPictureSQLSERIAL_NUMBER: TIntegerField;
    TestSeminarPictureSQLFK_SEMINAR_TYPE_SERIAL: TIntegerField;
    TestSeminarPictureSQLLANGUAGE_GREEK_OR_ENGLISH: TWideStringField;
    TestSeminarPictureSQLPICTURE_SEMINAR: TBlobField;
    TestSeminarPictureSQLLINE_A1: TWideStringField;
    TestSeminarPictureSQLLINE_A2: TWideStringField;
    TestSeminarPictureSQLLINE_B1: TWideStringField;
    TestSeminarPictureSQLLINE_B2: TWideStringField;
    TestSeminarPictureSQLLINE_B3: TWideStringField;
    TestSeminarPictureSQLTL_X: TIntegerField;
    TestSeminarPictureSQLTL_Y: TIntegerField;
    TestSeminarPictureSQLTR_X: TIntegerField;
    TestSeminarPictureSQLTR_Y: TIntegerField;
    TestSeminarPictureSQLBL_X: TIntegerField;
    TestSeminarPictureSQLBL_Y: TIntegerField;
    TestSeminarPictureSQLBR_X: TIntegerField;
    TestSeminarPictureSQLBR_Y: TIntegerField;
    TestSeminarPictureSQLPICTURE_TOP_L1: TBlobField;
    TestSeminarPictureSQLPICTURE_TOP_R1: TBlobField;
    TestSeminarPictureSQLPICTURE_BOT_L1: TBlobField;
    TestSeminarPictureSQLPICTURE_BOT_R1: TBlobField;
    TestSeminarPictureSQLLINE_C1: TWideStringField;
    CertificatesShowSQL: TIBCQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    DateField1: TDateField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    WideStringField4: TWideStringField;
    IntegerField5: TIntegerField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    IntegerField6: TIntegerField;
    WideStringField7: TWideStringField;
    IntegerField7: TIntegerField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    IntegerField8: TIntegerField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    DateField2: TDateField;
    CertificatesShowSRC: TDataSource;
    TestPictureIconSQL: TIBCQuery;
    TestPictureIconSQLSERIAL_NUMBER: TIntegerField;
    TestPictureIconSQLFK_SEMINAR_TYPE: TIntegerField;
    TestPictureIconSQLPOSITION_CORNER: TWideStringField;
    TestPictureIconSQLOFFSET_X: TIntegerField;
    TestPictureIconSQLOFFSET_Y: TIntegerField;
    TestPictureIconSQLICON_BLOB: TBlobField;
    TestPictureIconSQLLANGUAGE_GREEK_OR_ENGLISH: TWideStringField;
    TestPictureIconSRC: TDataSource;
    TestPictureIconPIP: TppDBPipeline;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppDetailBand1: TppDetailBand;
    ppDBImage1: TppDBImage;
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
    procedure PrintOnexBTNClick(Sender: TObject);
    procedure ppReport1BeforePrint(Sender: TObject);
    procedure ppDBImage1Print(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;

  function ReplaceText(picFIeldName:String):String;
  procedure MovePosition(img :TppDBImage);
  procedure initReportPositions;

  public
    { Public declarations }
    IN_Seminar_Serial:Integer;
    IN_certificate_serial:Integer;
    IN_Language:String;
    IN_PictureSerial:Integer;
    procedure PrintSeminar(Const SeminarSerial,CertificateSerial:Integer;Const language:String);
    procedure PrintTheSeminar();
//    procedure PrintTestSeminar(Const CertificateSerial, PictureSerial:Integer; Const Language:String);
    procedure PrintTestSeminar(Const SeminarSerial, CertificateSerial, PictureSerial:Integer; Const Language:String);


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

procedure TR_certificateFRM.initReportPositions;
const
// for each dbImage use the dbField to find the fields for the offsets based
// for example for field with datafield PICTURE_TOP_L1 => TL_X and TL_Y
// foor all tppImageFields on the report ppReport1 populate the array imgPosArray
// place in each array element, datafield name, OFFSET DATAFIELD names, and current XPos and YPos
   imgNames :TArray<String> =[ 'PICTURE_TOP_L1', 'PICTURE_TOP_R1' ,'PICTURE_BOT_L1', 'PICTURE_BOT_R1'];
var
  I:integer;
  img:TppdbImage;
   imgPos:TImgPos;
   ndx:Integer;
begin
    Setlength(imgPosArray,0); //clear the array
    for i := 0 to ComponentCount - 1 do    begin
      if  (Components[i] is TppdbImage) then begin
        img:=TppdbImage(Components[i]);
        imgPos.fName:=img.DataField;
        ImgPos.Left:=img.Left;
        ImgPos.Top:=Img.Top;
        //showMessage(imgPos.fname);

        Case  IndexStr(imgPos.fName,imgNames ) of
          0:begin imgPos.FieldForLeft:='TL_X';imgPos.FieldForTop:='TL_Y' end;
          1:begin imgPos.FieldForLeft:='TR_X';imgPos.FieldForTop:='TR_Y' end;
          2:begin imgPos.FieldForLeft:='BL_X';imgPos.FieldForTop:='BL_Y' end;
          3:begin imgPos.FieldForLeft:='BR_X';imgPos.FieldForTop:='BR_Y' end;
          -1:begin imgPos.FieldForLeft:='';imgPos.FieldForTop:='' end;
        else
          ShowMessage('FIeld NOT FOUND Option'); // present, but not handled above
        end;

        insert(imgPos,ImgPosArray,0);
      end;

    end;
end;
procedure TR_certificateFRM.ppReport1BeforePrint(Sender: TObject);
begin
//initReportPositions();
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
   ShowMessage('SubmectCalc');
    strLeft:=char(left);
    strright:=char(right);
  value:= strLeft +CertificateSQL.FieldByName('Seminar_subject').AsString+StrRight;
end;


procedure TR_certificateFRM.TopFldGetRichText(Sender: TObject;
  var Text: string);
var
  rtfText:String;
begin
// replaceText will replace tokens with actual values from the Database
//still an rtfText
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

  certSerial:=CertificatesShowSQL.FieldByName('serial_number').AsInteger;
  if certSerial<1 then
  begin
    ShowMessage('can not find Certificate');
    exit;
  end;

  isValid:=CertificatesShowSQL.FieldByName('is_valid').AsString='Y';
  if Not IsValid then begin
    MessageDlg('Certificate is NOT valid. Canot be printed', mtWarning, [mbOK], 0);
    exit;
  end;
  Language:=LanguageRGP.Values[LanguageRGP.ItemIndex];

  PrintSeminar(IN_Seminar_Serial,CertSerial,Language);

end;



procedure TR_certificateFRM.PrintTheSeminar();
var
  Language:String;
begin
  Language:=LanguageRGP.Values[LanguageRGP.ItemIndex];
  PrintSeminar(IN_Seminar_Serial,IN_certificate_serial,Language);
end;


procedure TR_certificateFRM.FormActivate(Sender: TObject);
begin
LanguageRGP.ItemIndex:=0;
TableSQL.Close;
TableSQL.ParamByName('seminarSerial').Value:=IN_Seminar_Serial;
TableSQL.Open;

CertificatesShowSQL.Close;
CertificatesShowSQL.ParamByName('seminarSerial').Value:=IN_Seminar_Serial;

CertificatesShowSQL.Open;
//showMessage(ppReport1.Components[0].Name);

end;


procedure TR_certificateFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
  initReportPositions();
end;


procedure TR_certificateFRM.IdFLDCalc(Sender: TObject; var Value: Variant);
begin
    value:='(Αρ. Ταυτότητας: '+Trim(CertificateSQL.FieldByName('National_id').AsString)+ ')' ;

end;


function TR_certificateFRM.ReplaceText(picFIeldName:String):String;
// the report has several dbRichText fields with RTF text (Top, left, right , ...) .
// replace the tokens in the text of the specified field with real data
//

const
  ReplaceArray : array of String= ['[NAME]','[SEX]','[ID]','[HOURS]','[DATE]','[ANAD]','[SERIAL]' ];
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
// this function is inside another function
// delpending on the dbfieldName of tppDBimage will find the record in ImgPosArray
  const
    NulRec : TImgPos =  	( Fname : ''; Left:0;TOp:0;FieldForLeft:'';FieldForTop:'');
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
  //  shift the image (in mm)
    img.Left:=ImgFound.Left+  SeminarPictureSRC.DataSet.FieldByName(imgFound.FieldForLeft).AsFloat/1.0;
    img.Left:=max(0,img.Left);
    img.Top:= ImgFound.Top- SeminarPictureSRC.DataSet.FieldByName(imgFOund.FieldForTop).AsFloat/1.0;
    img.Top:=max(0,img.Top);
  end;

end;



procedure TR_certificateFRM.PrintSeminar(Const SeminarSerial,CertificateSerial:Integer;Const language:String);

Var
   TheSeminarSerial:Integer;
begin


  CertificateSQL.Close;
  CertificateSQL.RestoreSQL;

  with CertificateSQL do begin
    //if certificateSerial is zero it will print ALL the certs of the seminar
    if CertificateSerial=0 then begin
        CertificateSQL.AddWhere('fk_seminar_serial= :SeminarSerial');
        CertificateSQL.ParamByName('SeminarSerial').Value:=SeminarSerial;
    end else if CertificateSerial>0 then begin
    //if certificateSerial greater than zero print only one certificate
        CertificateSQL.AddWhere('serial_number = :CertificateSerial');
        CertificateSQL.ParamByName('CertificateSerial').Value:=CertificateSerial;
    end;

    CertificateSQL.Open;
    if CertificateSQL.IsEmpty then
      exit;
    TheSeminarSerial:=CertificateSQL.FieldByName('fk_seminar_serial').AsInteger;
  end;

    with SeminarPicturesSQL do begin
      SeminarPicturesSQL.close ;
      SeminarPicturesSQL.RestoreSQL;

      SeminarPicturesSQL.AddWhere('stp.FK_SEMINAR_SERIAL = :SeminarSerial and stp.LANGUAGE_GREEK_OR_ENGLISH = :language');
      SeminarPicturesSQL.ParamByName('SeminarSerial').Value:=TheSeminarSerial;
      SeminarPicturesSQL.ParamByName('Language').Value:=Language;
    end;


    SeminarPicturesSQL.Open ;

    if  SeminarPicturesSQL.IsEmpty then begin
      showMessage('error: missing seminar picture record');
      exit;
    end;
  PpReport1.Print;

end;



procedure TR_certificateFRM.PrintTestSeminar(Const SeminarSerial, CertificateSerial, PictureSerial:Integer; Const Language:String);
//will print a certificate using pictures from the TEMPLATE
begin


  CertificateSQL.Close;
  CertificateSQL.RestoreSQL;

    with CertificateSQL do begin
        CertificateSQL.AddWhere('serial_number = :CertificateSerial');
        CertificateSQL.ParamByName('CertificateSerial').Value:=CertificateSerial;

      CertificateSQL.Open;
      if CertificateSQL.IsEmpty then begin
       showMessage('Certificate not found');
        exit;
      end;
//      TheSeminarSerial:=CertificateSQL.FieldByName('fk_seminar_serial').AsInteger;

  end;

    with TestSeminarPictureSQL do begin
      close ;
      RestoreSQL;

      ParamByName('pictureSerial').Value:=PictureSerial;
      ParamByName('Language').Value:=Language;
      Open ;
      if  IsEmpty then begin
       showMessage('error: missing seminar tYPE picture record');
       exit;
      end;

    end;

    with TestPictureIconSQL do begin
      close ;
      RestoreSQL;

      ParamByName('SeminarSerial').Value:=SeminarSerial;
      ParamByName('Language').Value:=Language;
      Open ;
    end;


   SeminarPictureSRC.DataSet:=TestSeminarPictureSQL;
   PpReport1.Print;

  end;


procedure TR_certificateFRM.ppDBImage1Print(Sender: TObject);
var
  img:TppDBImage;
  dataset:TDataset;
  offsetX,offsetY:Integer;
  Position:String;
  initX,initY:Integer;
  temp:string;
begin


  img:=TppDBImage( Sender);
  if (img.name='a') then showmessage('x');


//  temp:=img.DataField;


  OffsetX  :=img.DataPipeline.FieldValues['OFFSET_X'];
  OffsetY  :=img.DataPipeline.FieldValues['OFFSET_Y'];

  Position  :=img.DataPipeline.FieldValues['position_corner'];
  if (position = 'BL') then begin
    initx:=21;
    initY:=-133;
  end else  if (position = 'BR') then begin
    initx:=249;
    initY:=-145;

  end else  if (position = 'TL') then begin
    initx:=142;
    initY:= 27;
  end else  if (position = 'TR') then begin
    initx:=185;
    initY:=55;
  end;



  //  shift the image (in mm)
//    img.Left:= 10+ img.DataField(imgFound.FieldForLeft).AsFloat/1.0;
     img.Left:= initx+ offsetX;
    img.Top:= -inity  - offsetY;
//    img.Top:= ImgFound.Top- SeminarPictureSRC.DataSet.FieldByName(imgFOund.FieldForTop).AsFloat/1.0;


end;




end.
