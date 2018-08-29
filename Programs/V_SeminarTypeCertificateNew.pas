unit V_SeminarTypeCertificateNew;
//a certificate is printed based on a "template" which consists of the following two tables
//        the templates of the seminar_type are used as a sample  for templates of the seminar
// 1. table seminar_type_pictures has the text (and the offsets of the icon-blobs )
// 2. table seminar_type_icon has the blobs

// ** prototype_pictures has a sample for all seminar_types (copy from default)

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  vcl.wwcheckbox, RzTabs, vcl.wwclearbuttongroup, vcl.wwradiogroup,
  Vcl.ComCtrls, vcl.wwriched,codeSiteLogging,
    CodeSiteMessage, Vcl.ExtDlgs, Vcl.Menus;
type
  TV_SeminarTypeCertificateNewFRM = class(TForm)
    Panel4: TRzPanel;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    RzPanel1: TRzPanel;
    CloseBTN: TRzBitBtn;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    TitlePNL: TRzPanel;
    SeminarPictureSRC: TDataSource;
    SeminarPictureSQL: TIBCQuery;
    OpenPictureDialog1: TOpenPictureDialog;
    RzPanel2: TRzPanel;
    MainMenu1: TMainMenu;
    Help1: TMenuItem;
    Certifcates1: TMenuItem;
    SeminarPictureSQLSERIAL_NUMBER: TIntegerField;
    SeminarPictureSQLFK_SEMINAR_TYPE_SERIAL: TIntegerField;
    SeminarPictureSQLLANGUAGE_GREEK_OR_ENGLISH: TWideStringField;
    SeminarPictureSQLPICTURE_SEMINAR: TBlobField;
    SeminarPictureSQLLINE_A1: TWideStringField;
    SeminarPictureSQLLINE_A2: TWideStringField;
    SeminarPictureSQLLINE_B1: TWideStringField;
    SeminarPictureSQLLINE_B2: TWideStringField;
    SeminarPictureSQLLINE_B3: TWideStringField;
    SeminarPictureSQLTL_X: TIntegerField;
    SeminarPictureSQLTL_Y: TIntegerField;
    SeminarPictureSQLTR_X: TIntegerField;
    SeminarPictureSQLTR_Y: TIntegerField;
    SeminarPictureSQLBL_X: TIntegerField;
    SeminarPictureSQLBL_Y: TIntegerField;
    SeminarPictureSQLBR_X: TIntegerField;
    SeminarPictureSQLBR_Y: TIntegerField;
    SeminarPictureSQLPICTURE_TOP_L1: TBlobField;
    SeminarPictureSQLPICTURE_TOP_R1: TBlobField;
    SeminarPictureSQLPICTURE_BOT_L1: TBlobField;
    SeminarPictureSQLPICTURE_BOT_R1: TBlobField;
    SeminarPictureSQLLINE_C1: TWideStringField;
    RzBitBtn1: TRzBitBtn;
    Label1: TLabel;
    RzPanel7: TRzPanel;
    LanguageRGP: TwwRadioGroup;
    certificatesHelpRE: TwwDBRichEdit;
    PictureGRP: TRzGroupBox;
    ClearTopLeftBTN: TRzBitBtn;
    TopFLD: TwwDBRichEdit;
    MiddleFLD: TwwDBRichEdit;
    CertDirectorFLD: TwwDBRichEdit;
    CertInstructorFLD: TwwDBRichEdit;
    BottomFLD: TwwDBRichEdit;
    BottomLeftFLD: TwwDBRichEdit;
    RzPanel3: TRzPanel;
    TL: TImage;
    RzPanel4: TRzPanel;
    TR: TImage;
    RzPanel5: TRzPanel;
    BL: TImage;
    RzPanel6: TRzPanel;
    BR: TImage;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    CopyFromTemplateBTN: TRzBitBtn;
    CopyDefaultBTN: TRzBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure CloseBTNClick(Sender: TObject);
    procedure PictTSShow(Sender: TObject);
    procedure LanguageRGPChange(Sender: TObject);
    procedure PictureGRPExit(Sender: TObject);
    procedure TLDblClick(Sender: TObject);
    procedure TLMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Certifcates1Click(Sender: TObject);
//    procedure CopyFromTemplateBTNClick(Sender: TObject);
    procedure CopyHardBTNClick(Sender: TObject);
//    procedure SaveHardBTNClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure CopyDefaultBTNClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
    procedure InsertSeminarTypePictureRecord(const TypeSerial: Integer);
    procedure ShowAllData(const SeminarSerial: Integer; const Language: string);

    function SelectPictureX(var img: TImage): Boolean;
    procedure ShowPictureDataX(const TypeSerial: Integer; const Language:  string);

    procedure SelectAndSavePictureX(const SeminarSerial: Integer; const Language: string; img: TImage);
    procedure SavePictureX(const SeminarSerial: Integer; const position : string; const Language: string; img: Timage);
    procedure ShowPictureX(const SeminarSerial: Integer; const  Position: string; const Language: string; img: TImage);
    procedure ClearPictureX(const SeminarSerial: Integer; const aFieldName:string; const Language: string; img: Timage);



  procedure UpdateAllIconOffsets();
  procedure UpdateOneIconOffsets(const SeminarSerial: Integer; const Language,  Position:String;Const OffsetX,OffsetY:Integer);


//    procedure CopyTemplatePIctures(const SeminarSerial, TypeSerial:  Integer);

  procedure CopyFromDefault(Const PictureSerial:Integer;Const DefaultPicSerial:Integer;Const Language:String);
  procedure PrintTestCertificate();



  public
    { Public declarations }
    IN_SeminarTypeSerial:Integer;
    IN_allowModify:boolean;
    IN_FormTitle:string;

  end;

var
  V_SeminarTypeCertificateNewFRM: TV_SeminarTypeCertificateNewFRM;

implementation

uses   U_Database, G_generalProcs, H_Help, G_SFCommonProcs, R_Certificate;


{$R *.DFM}

procedure TV_SeminarTypeCertificateNewFRM.BitBtn2Click(Sender: TObject);
begin
    ksPostTables([SeminarPictureSQL]);
//    UPdateIconOffsets(SeminarSerial);

end;

procedure TV_SeminarTypeCertificateNewFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TV_SeminarTypeCertificateNewFRM.PictTSShow(Sender: TObject);
var
  allowModify: boolean;
SeminarSerial:Integer;
begin
  IN_allowMOdify:=True;

  allowModify := IN_AllowMOdify;
  PictureGRP.Enabled := allowModify;

  SeminarSerial := IN_SeminarTypeSerial;
  LanguageRGP.ItemIndex := 0;
  ShowAllData(seminarSerial,'G');
end;

procedure TV_SeminarTypeCertificateNewFRM.CloseBTNClick(Sender: TObject);
begin
  close;
end;



procedure TV_SeminarTypeCertificateNewFRM.FormActivate(Sender: TObject);
var
  qr:TksQuery;
  str:String;
begin
  str:='select stt.seminar_name from seminar_type stt where stt.serial_number = :serialNumber';
  try
      qr:=TksQuery.Create(cn,str);
      qr.ParamByName('SerialNumber').value:=IN_SeminarTypeSerial;
      qr.Open;
    TitlePNL.Caption:=qr.FieldByName('seminar_name').AsString;
  finally
    qr.Free;
  end;

  PictureGRP.Enabled := true;
  LanguageRGP.ItemIndex := 0;
  ShowAllData(IN_SeminarTypeSerial,'G');


end;

procedure TV_SeminarTypeCertificateNewFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TV_SeminarTypeCertificateNewFRM.LanguageRGPChange(Sender: TObject);
var
  SeminarSerial: Integer;
begin
  if SeminarPictureSQL.State in [dsEdit, dsInsert] then
    SeminarPictureSQL.Post;
  SeminarSerial := IN_SeminarTypeSerial;
  if SeminarSerial < 1 then
    exit;
  if trim(LanguageRGP.Value) = '' then
    exit;

  ShowAllData(SeminarSerial,LanguageRGP.Value);
end;

procedure TV_SeminarTypeCertificateNewFRM.PictureGRPExit(Sender: TObject);
begin
  if SeminarPictureSQL.State in [dsEdit, dsInsert] then
  begin
    SeminarPictureSQL.Post;
  end;

end;

procedure TV_SeminarTypeCertificateNewFRM.TLDblClick(Sender: TObject);
begin
  SelectAndSavePictureX(IN_SeminarTypeSerial,
    LanguageRGP.Values[LanguageRGP.ItemIndex], TImage(Sender));

end;

procedure TV_SeminarTypeCertificateNewFRM.TLMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (ssCtrl in Shift) then
  begin
    ClearPictureX(IN_SeminarTYpeSerial,
      TImage(sender).name, LanguageRGP.Values[LanguageRGP.ItemIndex],
      TImage(Sender));
  end;

end;

////////////////////////////////////////
///
///
///

procedure TV_SeminarTypeCertificateNewFRM.SelectAndSavePictureX(const SeminarSerial: Integer; const
  Language: string; img: TImage);
begin
  if SelectPicturex(img) then
  begin
    SavePictureX(SeminarSerial, img.Name, Language, img);
    ShowPictureX(SeminarSerial, img.Name, Language, img);
  end;

end;



procedure TV_SeminarTypeCertificateNewFRM.Certifcates1Click(Sender: TObject);
var
  Frm: TH_HelpFRM;
begin

  frm := TH_HelpFRM.Create(nil);
  try

    frm.IN_RtfTExt := certificatesHelpRE.Text;
    frm.IN_RichEdit := certificatesHelpRE;
    frm.ShowModal;
  finally
    frm.Free;
  end;

end;

procedure TV_SeminarTypeCertificateNewFRM.InsertSeminarTypePictureRecord(const TypeSerial: Integer);
var
  Serial: Integer;
  str: string;
  strIns: string;
begin
  if TypeSerial < 1 then
    exit;


//create the records if not exist
  strIns := 'insert into seminar_Type_pictures '
    + '(serial_number,FK_SEMINAR_TYPE_SERIAL, LANGUAGE_GREEK_OR_ENGLISH) values (:Serial, :typeSerial, :lang)';

  str :=
    ' select serial_number'
    + '  from'
    + '      seminar_Type_pictures stp'
    + '  where'
    + '   stp.fk_seminar_Type_serial= :SeminarTYpeSerial and stp.language_greek_or_english = :lang';

  if ksCountRecVarSQL(cn, str, [TypeSerial, 'G']) = 0 then
  begin
    serial := ksGenerateSerial(cn, 'GEN_SEMINAR_TYPE_PICTURES');
    ksExecSQLVar(cn, strIns, [serial, TypeSerial, 'G']);
  end;

  if ksCountRecVarSQL(cn, str, [TypeSerial, 'E']) = 0 then
  begin
    serial := ksGenerateSerial(cn, 'GEN_SEMINAR_TYPE_PICTURES');
    ksExecSQLVar(cn, strIns, [serial, TypeSerial, 'E']);
  end;

end;

procedure TV_SeminarTypeCertificateNewFRM.ClearPictureX(const SeminarSerial: Integer; const
  aFieldName: string; const Language: string; img: Timage);
begin
//  showMessage('clear lang='+language);

  img.Picture := nil;
  SavePictureX(SeminarSerial, aFieldName,
    LanguageRGP.Values[LanguageRGP.ItemIndex], img);
end;



function TV_SeminarTypeCertificateNewFRM.SelectPictureX(var img: TImage): Boolean;
var
  fileName: string;
begin
  result := false;
  if not OpenPictureDialog1.Execute then
  begin
//    showMessage('exit');
    Exit;
  end;
  filename := OpenPictureDialog1.FileName;
  Img.Picture := nil;
  img.Picture.LoadFromFile(filename);
  result := true;
end;

{
procedure TV_SeminarTypeCertificateNewFRM.CopyFromTemplateBTNClick(Sender: TObject);
var
 TypeSerial:integer;
 qr:TksQuery;
begin
  if not IN_allowModify then
    exit;


  qr:=TksQuery.Create(cn,'select serial_number,fk_seminar from seminar where serial_number= :SeminarSerial');
  try
    qr.ParamByName('SeminarSerial').Value:=IN_SeminarTypeSerial;
    qr.Open;
    TYpeSErial:=qr.FieldByName('fk_seminar').AsInteger;
    qr.Close;
  finally
    qr.Free;
  end;

  if (IN_SeminarTypeSerial >0) and (TypeSerial>0) then begin
   CopyTemplatePIctures(IN_SeminarTYpeSerial,TypeSerial);
   LanguageRGP.ItemIndex:=0;
   ShowAllData(IN_SeminarTypeSerial,'G');
  end;
end;
}

procedure TV_SeminarTypeCertificateNewFRM.CopyHardBTNClick(Sender: TObject);
var
  SeminarSerial:Integer;
  PictureSerial:Integer;
  Language:string;
begin

    SeminarSerial:=IN_SeminarTypeSerial;
    PictureSerial:=SeminarPictureSQL.FieldByName('serial_number').AsInteger;
    Language:= SeminarPictureSQL.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').AsString;
    CopyFromDefault(PictureSerial,-1,Language);
end;


procedure TV_SeminarTypeCertificateNewFRM.ShowPictureDataX(const TypeSerial: Integer; const Language: string);
begin
  SeminarPictureSQL.Close;
  SeminarPictureSQL.ParamByName('SeminarSerial').Value := TypeSerial;
  SeminarPictureSQL.ParamByName('language').Value := Language;
  SeminarPictureSQL.Open;

end;


procedure TV_SeminarTypeCertificateNewFRM.ShowAllData(const SeminarSerial: Integer; const Language: string);
begin
  InsertSeminarTypePictureRecord(SeminarSerial);
  SHowPictureX(SeminarSerial, TL.Name, Language, TL);
  SHowPictureX(SeminarSerial, TR.Name, Language, TR);
  SHowPictureX(SeminarSerial, BL.Name, Language, BL);
  SHowPictureX(SeminarSerial, BR.Name, Language, BR);
  SHowPictureDataX(SeminarSerial, Language);

end;


procedure TV_SeminarTypeCertificateNewFRM.CopyDefaultBTNClick(Sender: TObject);
var
  SeminarSerial:Integer;
  PictureSerial:Integer;
  Language:string;
begin

    SeminarSerial:= IN_SeminarTypeSerial;
    PictureSerial:=SeminarPictureSQL.FieldByName('serial_number').AsInteger;
    Language:= SeminarPictureSQL.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').AsString;
    CopyFromDefault(PictureSerial,0,Language);
    ShowAllData(SeminarSerial,Language);

end;

procedure TV_SeminarTypeCertificateNewFRM.CopyFromDefault(Const PictureSerial:Integer;Const DefaultPicSerial:Integer;Const Language:String);
var
  DefaultQr:TksQuery;
  pictQR:TksQuery;
//  PictureSerial:integer;
  Picture_FK:Integer;
//  Language:String;
begin

  DefaultQR:=TksQuery.Create(cn,'select * from prototype_pictures where serial_number= :defSerial and LANGUAGE_GREEK_OR_ENGLISH = :language');
  PictQR:=TksQuery.Create(cn,'SELECT * FROM seminar_type_pictures where serial_number = :SerialNumber ');

  try
    DefaultQr.ParamByName('DefSerial').Value:=DefaultPicSerial;
    DefaultQr.ParamByName('Language').Value:=Language;
    DefaultQR.Open;

    if DefaultQR.IsEmpty then begin
      exit;
    end;

    pictQr.ParamByName('SerialNumber').Value:=PictureSerial;
    PictQr.Open;
    if PictQR.IsEmpty then
      exit;


    pictQR.Edit;
    CopyDataRecord(DefaultQr,pictQR);

    Picture_FK:=SeminarPictureSQL.FieldByName('FK_SEMINAR_TYPE_SERIAL').AsInteger;
    PictQr.FieldByName('FK_SEMINAR_TYPE_SERIAL').Value:=Picture_FK;

    PictQr.Post;
  finally
    pictQR.Free;
    DefaultQr.Free;
  end;


end;

{
procedure TV_SeminarTypeCertificateNewFRM.SaveHardBTNClick(Sender: TObject);
var
  PictureSerial:Integer;
  Language:string;
begin
    if SeminarPictureSQL.State in [dsEdit,dsInsert] then begin
      SeminarPictureSQL.post;
    end;
    PictureSerial:=SeminarPictureSQL.FieldByName('serial_number').AsInteger;
    Language:= SeminarPictureSQL.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').AsString;
end;
}


procedure TV_SeminarTypeCertificateNewFRM.RzBitBtn1Click(Sender: TObject);
begin
    UpdateAllIconOffsets();
    PrintTestCertificate();
end;



procedure TV_SeminarTypeCertificateNewFRM.PrintTestCertificate();
//use the first random certificate you can find
//But specify correct seminar for picture and icon
var
  SeminarTypeSerial:Integer;
  Language:string;
  qr:TksQuery;
  str:String;
  CertificateSerial:integer;
  Frm:TR_certificateFRM;
begin

    Language:= SeminarPictureSQL.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').AsString;
    SeminarTypeSerial:= SeminarPictureSQL.FieldByName('FK_SEMINAR_TYPE_SERIAL').AsInteger;


str:=' Select first 1 sem.fk_seminar as type_serial, sem.serial_number as seminar_serial, sc.serial_number as certificate_serial'
  +'  from'
  +'      Seminar sem  inner join'
  +'      seminar_certificate sc on sem.serial_number=sc.fk_seminar_serial';

    qr:=TksQuery.Create(cn,str);
    try
      //select the first seminar you can find with a certificate
      Qr.Open;
      if qr.IsEmpty then begin
        ShowMessage('Cannot find an existing Certificate');
        exit;
      end;
      CertificateSerial:=qr.FieldByName('Certificate_Serial').AsInteger;
    finally
      qr.Free;
    end;


  frm :=  TR_certificateFRM.Create(nil);
  try
    frm.PrintTestSeminarCertificate('101',CertificateSErial,SeminarTypeSerial,SeminarTypeSerial,SeminarTypeSerial,Language);
  finally
    frm.Free;
  end;

end;



procedure TV_SeminarTypeCertificateNewFRM.SavePictureX(const SeminarSerial: Integer; const
  position : string; const Language: string; img: Timage);
//  BlobField: TField;
var
  BlobField: TBlobField;
  BS: TStream;
  str2: string;
  qr: TksQuery;
  iconSerial:Integer;
begin

//  CodeSite.send(InttoStr(SeminarSerial));

//  CodeSite.Send(afieldName);
//  CodeSite.Send(Language);
//  CodeSite.Send(img.Name);

    str2:=
    'select * from seminar_Type_icon stp '
    + ' where stp.fk_seminar_Type = :seminarSerial and LANGUAGE_GREEK_OR_ENGLISH = :language'
    + ' and stp.position_corner= :position ';

  qr := TksQuery.Create(cn, str2);
  try
      qr.close;
      qr.ParamByName('seminarSerial').Value := seminarSerial;
      qr.ParamByName('Language').Value := Language;
      qr.ParamByName('position').Value := position;
      qr.open;

      if qr.IsEmpty then  begin
       iconSerial:= ksGenerateSerial(cn,'GEN_SEMINAR_TYPE_ICON');
       qr.Insert;
       qr.FieldByName('serial_number').Value:=iconSerial;
       qr.FieldByName('fk_seminar_type').Value:=SeminarSerial;
       qr.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').Value:=language;
       qr.FieldByName('POSITION_CORNER').Value:=position;
       qr.Post;
      end;

      qr.Edit;
      BlobField := qr.FieldByName('icon_blob') as TBlobField;
      BS := qr.CreateBlobStream(BlobField, bmWrite);
      try
        Bs.Position := 0;
        Img.Picture.SaveToStream(BS);

        if BS.Size = 0 then
        begin
          BlobField.Clear;
        end;
        qr.Post;

      finally
    //        BS.Free;
      // it seems that delphi makes the pointer nil if reference count of the object is decreased to zero.
      //  where qr is closed and i get a runtime error
      end;

  finally
    BS.Free;
    qr.Free;
  end;
end;


procedure TV_SeminarTypeCertificateNewFRM.ShowPictureX(const SeminarSerial: Integer; const
  Position: string; const Language: string; img: TImage);
var
  code: string;
  BlobFIeld: TField;
  BS: TStream;
  qr: TksQuery;
//  imgTemp:TImage;
str:string;

begin

  if SeminarSerial < 1 then
    exit;
  if (Language <> 'G') and (Language <> 'E') then
  begin
    showMessage('ERROR lang=' + language);
    exit;
  end;

  Img.Picture := nil;

  str:='select * from seminar_Type_icon stp where stp.fk_seminar_Type= :seminarTypeSerial and LANGUAGE_GREEK_OR_ENGLISH = :language'
  + ' and stp.position_corner= :position';
  qr := TksQuery.Create(cn,str);

  try
      qr.close;
      qr.ParamByName('seminarTypeSerial').Value := SeminarSerial;
      qr.ParamByName('LANGUAGE').Value := Language;
      qr.ParamByName('position').Value := position;
      qr.open;
      if qr.IsEmpty then
        exit;


      BlobField := qr.FieldByName('icon_blob');

      BS := qr.CreateBlobStream(BlobField, bmRead);
      try
        BS.Position := 0;
        if bs.Size > 0 then
          Img.Picture.LoadFromStream(bs)
        else
          Img.Picture := nil;
      finally
      end;
//     qr.Close; not yet

  finally
    bs.Free;
    qr.Free;
  end;


end;
//////////////////////////////////////////
procedure TV_SeminarTypeCertificateNewFRM.UpdateAllIconOffsets();
const
   PosArray :TArray<String> =[ 'TL', 'TR' ,'BL', 'BR'];
var
  qr:TksQuery;
  str:string;
  position:string;
  offsetx,offsetY:integer;
  SeminarSerial:Integer;
  Language:String;
begin
      ksPostTables([SeminarPictureSQL]);

      SeminarSerial:=SeminarPictureSQL.FieldByName('FK_seminar_type_serial').AsInteger;
      Language:=SeminarPictureSQL.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').AsString;

      if SeminarSerial<1 then
        exit;

      for position in PosArray do begin
        offsetX:=SeminarPictureSQL.FieldByName(Position+'_X').AsInteger;
        offsetY:=SeminarPictureSQL.FieldByName(Position+'_Y').AsInteger;
        UpdateOneIconOffsets(SeminarSerial,Language,position,offsetx,offsetY);
      end;

end;

procedure TV_SeminarTypeCertificateNewFRM.UpdateOneIconOffsets(const SeminarSerial: Integer; const Language,  Position:String;Const OffsetX,OffsetY:Integer);
var
  qr: TksQuery;
  iconSerial:Integer;
  str:string;
  SerialNumber:integer;
begin

  str:= '  select * from seminar_type_icon sti '
  +' where sti.fk_seminar_type= :seminarSerial and sti.language_greek_or_english= :Language and sti.position_corner= :position ';
  qr:= TksQuery.Create(cn,str);
  try
    qr.ParamByName('SeminarSerial').Value:= SeminarSerial;
    qr.ParamByName('Language').Value:= Language;
    qr.ParamByName('Position').Value:= Position;
    qr.Open;
    serialNumber:=qr.FieldByName('serial_number').AsInteger;
  finally
    qr.Free;
  end;

  if (SerialNumber=0) then begin
    SerialNumber:=ksGenerateSerial(cn,'GEN_SEMINAR_TYPE_ICON');
    str := 'insert into  seminar_type_icon (Serial_number,fk_seminar_type,language_greek_or_english,position_corner)'
     +' values( :SerialNumber, :seminar, :language, :Position)';
    ksExecSQLVar(cn,str,[SerialNumber,SeminarSerial,Language,Position]);
  end;

  str:=
 '  update seminar_type_icon sti'
  +'        set sti.offset_x = :offsetX, sti.offset_y= :offsetY'
  +' where sti.serial_number= :Serial';

  ksExecSQLVar(cn,str,[offsetX,offsetY,SerialNumber]);

end;


End.
