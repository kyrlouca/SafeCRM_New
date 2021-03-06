// how to set offsets

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
    SeminarPictureSQL: TIBCQuery;
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
    TestLBL: TppLabel;
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
    procedure TestLBLPrint(Sender: TObject);
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
//    procedure PrintSeminar(Const SeminarSerial,CertificateSerial:Integer;Const language:String);
//    procedure PrintTheSeminar();
//    procedure PrintTestSeminarCertificate(Const PrintType:string;  Const  CertificateSerial, SeminarSerial, PictureSeminarSerial, IconSeminarSerial:Integer; Const Language:String);
    procedure PrintSeminarCertificate(Const PrintType:string; const isTEst:boolean; Const  CertificateSerial, SeminarSerial, PictureSeminarSerial, IconSeminarSerial:Integer; Const Language:String);


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
            value:='���������: '+CertificateSQL.FieldByName('seminar_duration').AsString + ' ����';

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
  //here
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
//  PrintSeminar(IN_Seminar_Serial,0,Language);

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

//  PrintSeminar(IN_Seminar_Serial,CertSerial,Language);

end;


{
procedure TR_certificateFRM.PrintTheSeminar();
var
  Language:String;
begin
  Language:=LanguageRGP.Values[LanguageRGP.ItemIndex];
  PrintSeminar(IN_Seminar_Serial,IN_certificate_serial,Language);
end;
}

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
    value:='(��. ����������: '+Trim(CertificateSQL.FieldByName('National_id').AsString)+ ')' ;

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
                temp:= ToUpperKyr(temp);
                temp:= RemoveAccents(Temp);
             end;

             if isAllLower then begin
                temp:= ToLower(Temp);
             end;

         end else if token='[SEX]' then begin

            temp:=CertificateSQL.FieldByName('SEX').AsString;
            if temp='M' then
              temp:='�'
            else
              temp:='�';

             if isAllUpper then begin
                temp:= ToUpperKyr(temp);
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
                temp:= ToUpperKyr(temp);
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




procedure TR_certificateFRM.PrintSeminarCertificate(Const PrintType:string; const isTEst:boolean; Const  CertificateSerial, SeminarSerial, PictureSeminarSerial, IconSeminarSerial:Integer; Const Language:String);
var
  str:String;
  I:integer;
//will print a certificate using pic
begin


  CertificateSQL.Close;
  CertificateSQL.RestoreSQL;

    with CertificateSQL do begin

    if CertificateSerial=0 then begin
        CertificateSQL.AddWhere('fk_seminar_serial= :SeminarSerial');
        CertificateSQL.ParamByName('SeminarSerial').Value:=SeminarSerial;
    end else if CertificateSerial>0 then begin
    //if certificateSerial greater than zero print only one certificate
        CertificateSQL.AddWhere('serial_number = :CertificateSerial');
        CertificateSQL.ParamByName('CertificateSerial').Value:=CertificateSerial;
    end;

     CertificateSQL.Open;
    if CertificateSQL.IsEmpty then begin
       showMessage('Certificate not found');
        exit;
    end;

  end;

    with SeminarPictureSQL do begin
      close ;

      if PrintTYpe='101' then begin
        str:=
        ' SELECT STP.*FROM '
        +'  seminar_type_pictures STP '
        +' where stp.FK_SEMINAR_TYPE_SERIAL= :SeminarSerial and stp.LANGUAGE_GREEK_OR_ENGLISH = :language ';
      end else if PrintTYpe='102' then begin
        str:=
        ' SELECT STP.*FROM '
        +'  seminar_pictures STP '
        +' where stp.FK_SEMINAR_SERIAL= :SeminarSerial and stp.LANGUAGE_GREEK_OR_ENGLISH = :language ';

      end;
      sql.Clear;
      SQL.Add(str);
      SeminarPictureSQL.FieldDefs.Update;
      for I := 0 to SeminarPictureSQL.FieldDefs.Count - 1 do
        SeminarPictureSQL.FieldDefs[I].CreateField(SeminarPictureSQL);


      ParamByName('SeminarSerial').Value:=PictureSeminarSerial;
      ParamByName('Language').Value:=Language;
      Open ;
      if  IsEmpty then begin
       showMessage('ERROR: Template NOT found. (SeminarPicture record)');
       exit;
      end;

    end;

    with TestPictureIconSQL do begin
      close ;
      if PrintTYpe='101' then begin
        str:=
          'SELECT STP.* FROM '
        +' seminar_type_icon STP '
        +' where stp.fk_seminar_type= :SeminarSerial and stp.LANGUAGE_GREEK_OR_ENGLISH = :Language '
        +' order by position_corner ';
      end else if PrintTYpe='102' then begin
        str:=
          'SELECT STP.* FROM '
        +' seminar_icon STP '
        +' where stp.fk_seminar_serial= :SeminarSerial and stp.LANGUAGE_GREEK_OR_ENGLISH = :Language '
        +' order by position_corner ';
      end;


      sql.Clear;
      SQL.Add(str);
      TestPictureIconSQL.Fields.Clear;
      TestPictureIconSQL.FieldDefs.Update;
      for I := 0 to TestPictureIconSQL.FieldDefs.Count - 1 do
        TestPictureIconSQL.FieldDefs[I].CreateField(TestPictureIconSQL);

      ParamByName('SeminarSerial').Value:=IconSeminarSerial;
      ParamByName('Language').Value:=Language;
      Open ;
    end;


//   SeminarPictureSRC.DataSet:=TestSeminarPictureSQL;
   ppReport1.Parameters['isTest'].Value := isTEst;
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

  img.Left:= initx+ offsetX;
  img.Top:= -inity  - offsetY;

end;




procedure TR_certificateFRM.TestLBLPrint(Sender: TObject);
var
  isTest:Boolean;
begin
  isTest:= ppReport1.Parameters['IsTest'].AsBoolean;
  TppLabel(sender).Visible:=isTest;
end;

end.
