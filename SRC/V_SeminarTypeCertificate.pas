unit V_SeminarTypeCertificate;

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
  TV_SeminarTypeCertificateFRM = class(TForm)
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
    PageCtl: TPageControl;
    PictTS: TTabSheet;
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
    PICTURE_TOP_L1: TImage;
    RzPanel4: TRzPanel;
    PICTURE_TOP_R1: TImage;
    RzPanel5: TRzPanel;
    PICTURE_BOT_L1: TImage;
    RzPanel6: TRzPanel;
    PICTURE_BOT_R1: TImage;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    CopyFromTemplateBTN: TRzBitBtn;
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
    CopyDefaultBTN: TRzBitBtn;
    CopyHardBTN: TRzBitBtn;
    SaveHardBTN: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure CloseBTNClick(Sender: TObject);
    procedure PictTSShow(Sender: TObject);
    procedure LanguageRGPChange(Sender: TObject);
    procedure PictureGRPExit(Sender: TObject);
    procedure PICTURE_TOP_L1DblClick(Sender: TObject);
    procedure PICTURE_TOP_L1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Certifcates1Click(Sender: TObject);
    procedure CopyFromTemplateBTNClick(Sender: TObject);
    procedure CopyHardBTNClick(Sender: TObject);
    procedure SaveHardBTNClick(Sender: TObject);
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
    procedure ShowPictureX(const TypeSerial: Integer; const aFieldName: string; const Language: string; img: TImage);
//    procedure SavePictureX(const SeminarTypeSerial: Integer; const aFieldName:string; const Language: string; img: Timage);
    procedure SavePictureX(const SeminarSerial: Integer; const
  aFieldName: string; const Language: string; img: Timage);

    procedure SelectAndSavePictureX(const SeminarSerial: Integer; const Language: string; img: TImage);
    procedure ClearPictureX(const SeminarSerial: Integer; const aFieldName:string; const Language: string; img: Timage);
    procedure CopyTemplatePIctures(const SeminarSerial, TypeSerial:  Integer);

    procedure CopyFromDefault(Const PictureSerial:Integer;Const DefaultPicSerial:Integer;Const Language:String);
  procedure PrintTestCertificate();



  public
    { Public declarations }
    IN_SeminarTypeSerial:Integer;
    IN_allowModify:boolean;
    IN_FormTitle:string;

  end;

var
  V_SeminarTypeCertificateFRM: TV_SeminarTypeCertificateFRM;

implementation

uses   U_Database, G_generalProcs, H_Help, G_SFCommonProcs, R_Certificate;


{$R *.DFM}

procedure TV_SeminarTypeCertificateFRM.BitBtn2Click(Sender: TObject);
begin
    ksPostTables([SeminarPictureSQL]);

end;

procedure TV_SeminarTypeCertificateFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TV_SeminarTypeCertificateFRM.PictTSShow(Sender: TObject);
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

procedure TV_SeminarTypeCertificateFRM.CloseBTNClick(Sender: TObject);
begin
  close;
end;



procedure TV_SeminarTypeCertificateFRM.FormActivate(Sender: TObject);
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


end;

procedure TV_SeminarTypeCertificateFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TV_SeminarTypeCertificateFRM.LanguageRGPChange(Sender: TObject);
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

procedure TV_SeminarTypeCertificateFRM.PictureGRPExit(Sender: TObject);
begin
  if SeminarPictureSQL.State in [dsEdit, dsInsert] then
  begin
    SeminarPictureSQL.Post;
  end;

end;

procedure TV_SeminarTypeCertificateFRM.PICTURE_TOP_L1DblClick(Sender: TObject);
begin
  SelectAndSavePictureX(IN_SeminarTypeSerial,
    LanguageRGP.Values[LanguageRGP.ItemIndex], TImage(Sender));

end;

procedure TV_SeminarTypeCertificateFRM.PICTURE_TOP_L1MouseDown(Sender: TObject;
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

procedure TV_SeminarTypeCertificateFRM.SelectAndSavePictureX(const SeminarSerial: Integer; const
  Language: string; img: TImage);
begin
//  SeminarSerial:=SeminarSQL.fieldbyName('serial_number').AsInteger;
  if SelectPicturex(img) then
  begin
    SavePictureX(SeminarSerial, img.Name, Language, img);
    ShowPictureX(SeminarSerial, img.Name, Language, img);
//    ShowPictureData(TypeSerial,LanguageRGP.Value);
  end;

end;



procedure TV_SeminarTypeCertificateFRM.Certifcates1Click(Sender: TObject);
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

procedure TV_SeminarTypeCertificateFRM.InsertSeminarTypePictureRecord(const TypeSerial: Integer);
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

procedure TV_SeminarTypeCertificateFRM.ClearPictureX(const SeminarSerial: Integer; const
  aFieldName: string; const Language: string; img: Timage);
begin
//  showMessage('clear lang='+language);

  img.Picture := nil;
  SavePictureX(SeminarSerial, aFieldName,
    LanguageRGP.Values[LanguageRGP.ItemIndex], img);
end;



function TV_SeminarTypeCertificateFRM.SelectPictureX(var img: TImage): Boolean;
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

procedure TV_SeminarTypeCertificateFRM.CopyFromTemplateBTNClick(Sender: TObject);
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


procedure TV_SeminarTypeCertificateFRM.CopyHardBTNClick(Sender: TObject);
var
  SeminarSerial:Integer;
  PictureSerial:Integer;
  Language:string;
begin

//    SeminarSerial:= SeminarTypeSQL.FieldByName('serial_number').AsInteger;
    SeminarSerial:=IN_SeminarTypeSerial;
    PictureSerial:=SeminarPictureSQL.FieldByName('serial_number').AsInteger;
    Language:= SeminarPictureSQL.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').AsString;
    CopyFromDefault(PictureSerial,-1,Language);
//    SeminarTypeSQL.Refresh;
//    ShowAll(SeminarSerial,Language);
end;


procedure TV_SeminarTypeCertificateFRM.ShowPictureDataX(const TypeSerial: Integer; const Language: string);
begin
  SeminarPictureSQL.Close;
  SeminarPictureSQL.ParamByName('SeminarSerial').Value := TypeSerial;
  SeminarPictureSQL.ParamByName('language').Value := Language;
  SeminarPictureSQL.Open;

end;


procedure TV_SeminarTypeCertificateFRM.ShowAllData(const SeminarSerial: Integer; const Language: string);
begin
  InsertSeminarTypePictureRecord(SeminarSerial);
  SHowPictureX(SeminarSerial, Picture_top_l1.Name, Language, Picture_top_L1);
  SHowPictureX(SeminarSerial, Picture_top_R1.Name, Language, Picture_top_R1);
  SHowPictureX(SeminarSerial, Picture_bot_l1.Name, Language, Picture_bot_L1);
  SHowPictureX(SeminarSerial, Picture_bot_R1.Name, Language, Picture_bot_R1);
  SHowPictureDataX(SeminarSerial, Language);

end;


procedure TV_SeminarTypeCertificateFRM.ShowPictureX(const TypeSerial: Integer; const
  aFieldName: string; const Language: string; img: TImage);
var
  code: string;
  BlobFIeld: TField;
  BS: TStream;
  qr: TksQuery;
//  imgTemp:TImage;
str:string;

begin

  if TypeSerial < 1 then
    exit;
  if (Language <> 'G') and (Language <> 'E') then
  begin
    showMessage('ERROR lang=' + language);
    exit;
  end;

  Img.Picture := nil;

  str:='select * from seminar_Type_pictures stp where stp.fk_seminar_Type_serial= :seminarTypeSerial and LANGUAGE_GREEK_OR_ENGLISH = :language';
  qr := TksQuery.Create(cn,str);

  try
      qr.close;
      qr.ParamByName('seminarTypeSerial').Value := TypeSerial;
      qr.ParamByName('LANGUAGE').Value := Language;
      qr.open;
      if qr.IsEmpty then
        exit;

      if (qr.FindField(aFieldName) = nil) then
      begin
        ShowMessage('Cannot find field. Name of the picture =fieldname= ' +
          aFieldName);
        exit;
      end;

//        if aFieldName='PICTURE_TOP_R1' then
//         img.Picture.LoadFromFile('C:\Data\DelphiProjects\Safe_CRM\pictures\SafetyLogo.png');

      BlobField := qr.FieldByName(aFieldName);

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


procedure TV_SeminarTypeCertificateFRM.CopyTemplatePIctures(const SeminarSerial, TypeSerial:  Integer);
//copied from v_seminar
var
  serial: Integer;
  Typeqr: TksQuery;
  seminarQr: TksQuery;
  str: string;
  fdesc, fmessage, fafter, fperson, fstart, fDays: string;
  fnumber_of_days: Integer;
  ActionDate: TDate;
//  ActionDateRec: TActionDateRec;
  blobRead, blobWrite: TBlobField;
  streamRead, StreamWrite: TStream;
  img: TImage;
  I: Integer;
begin

 showMessage('fix from type');
  ksExecSQLVar(cn,
    'delete from SEMINAR_pictures where fk_seminar_serial=:serial',
    [SeminarSerial]);
//    exit;

  str :=
    ' INSERT INTO SEMINAR_PICTURES'
    + '   (SERIAL_NUMBER,  FK_SEMINAR_SERIAL,LANGUAGE_GREEK_OR_ENGLISH,'
    + '   LINE_A1, LINE_A2, LINE_B1, LINE_B2, LINE_B3,LINE_C1,'
    + '   picture_top_l1,picture_top_r1, picture_bot_l1,picture_bot_r1,'
    + '   tl_x,tl_y, tr_x,tr_y, bl_x,bl_y,br_x,br_y)'
    + '    VALUES ('
    + '    :s1,:s2,:s3,'
    + '    :l1,:l2,:l3,:l4,:l5,:l6,'
    + '    :p1,:p2,:p3,:p4,'
    + '    :t1,:t2,:t3,:t4,:t5,:t6,:t7,:t8)';

// img:=Timage.Create(self);
  SeminarQr := TksQuery.Create(cn,
    ' select * from seminar_pictures where fk_seminar_serial= :seminarSerial');
  Typeqr := TksQuery.Create(cn,
    'select * from seminar_type_pictures where fk_seminar_type_serial= :Typeserial');
  try
    Typeqr.ParamByName('Typeserial').Value := TYpeSerial;
    Typeqr.Open;
    SeminarQr.ParamByName('seminarSerial').Value := SeminarSerial;
    SeminarQR.Open;

    try

      while not Typeqr.Eof do
      begin

        serial := ksGenerateSerial(cn, 'GEN_SEMINAR_PICTURES');

//    blobRead := Typeqr.FieldByName('picture_seminar') as TBlobField;
//    streamRead := Typeqr.CreateBlobStream(blobRead, bmRead);
//    Img.Picture.LoadFromStream(streamRead);

        SeminarQR.Insert;
        SeminarQR.FieldByName('Serial_number').value := Serial;
        SeminarQR.FieldByName('FK_Seminar_serial').value := SeminarSerial;
        CopyDataRecord(typeQr, SeminarQR);
//    blobWrite := Seminarqr.FieldByName('picture_seminar') as TBlobField;
//    streamWrite := Seminarqr.CreateBlobStream(blobWrite, bmWrite);
//    StreamWrite.Position:=0;
//    Img.Picture.SaveToStream(streamWrite);
        SeminarQR.Post;
        TypeQr.Next;
      end;
    finally
//    streamWrite.Free;
//    streamRead.Free;

    end;
  finally
    Typeqr.Free;
    SeminarQr.Free;
//   img.Free;
  end;

end;




procedure TV_SeminarTypeCertificateFRM.CopyDefaultBTNClick(Sender: TObject);
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

procedure TV_SeminarTypeCertificateFRM.CopyFromDefault(Const PictureSerial:Integer;Const DefaultPicSerial:Integer;Const Language:String);
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

procedure TV_SeminarTypeCertificateFRM.SaveHardBTNClick(Sender: TObject);
var
  PictureSerial:Integer;
  Language:string;
begin
    if SeminarPictureSQL.State in [dsEdit,dsInsert] then begin
      SeminarPictureSQL.post;
    end;
    PictureSerial:=SeminarPictureSQL.FieldByName('serial_number').AsInteger;
    Language:= SeminarPictureSQL.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').AsString;
//    SaveToDefault(PictureSerial,-1,Language);

end;



procedure TV_SeminarTypeCertificateFRM.SavePictureX(const SeminarSerial: Integer; const
  aFieldName: string; const Language: string; img: Timage);
//  BlobField: TField;
var
  BlobField: TBlobField;
  BS: TStream;
  str2: string;
  qr: TksQuery;
begin

  CodeSite.send(InttoStr(SeminarSerial));

  CodeSite.Send(afieldName);
  CodeSite.Send(Language);
  CodeSite.Send(img.Name);
    str2:=
    'select * from seminar_Type_pictures stp '
    + ' where stp.fk_seminar_Type_serial= :seminarSerial and LANGUAGE_GREEK_OR_ENGLISH = :language';

  qr := TksQuery.Create(cn, str2);
  try
      qr.close;
      qr.ParamByName('seminarSerial').Value := seminarSerial;
      qr.ParamByName('Language').Value := Language;
      qr.open;
      if qr.IsEmpty then
        exit;

      if (qr.FindField(aFieldName) = nil) then
      begin
        ShowMessage('Cannot find field. Name of the picture =fieldname= ' +
          aFieldName);
        exit;
      end;

      qr.Edit;
      BlobField := qr.FieldByName(aFieldName) as TBlobField;
      BS := qr.CreateBlobStream(BlobField, bmWrite);
      try
        Bs.Position := 0;
        Img.Picture.SaveToStream(BS);

        if BS.Size = 0 then
        begin
          BlobField.Clear;
        end;
        qr.Post;
//        qr.close;  //do not close yet


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


procedure TV_SeminarTypeCertificateFRM.RzBitBtn1Click(Sender: TObject);
begin
  PrintTestCertificate();
end;



procedure TV_SeminarTypeCertificateFRM.PrintTestCertificate();
var
  SeminarTypeSerial:Integer;
  PictureSerial:Integer;
  Language:string;
  qr:TksQuery;
  str:String;
//  SeminarSerial:Integer;
  CertificateSerial:integer;
  Frm:TR_certificateFRM;
begin

//    SeminarTypeSerial:= IN_SeminarTypeSerial;
    PictureSerial:=SeminarPictureSQL.FieldByName('serial_number').AsInteger;
    Language:= SeminarPictureSQL.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').AsString;

str:=' Select first 1 sem.fk_seminar as type_serial, sem.serial_number as seminar_serial, sc.serial_number as certificate_serial'
  +'  from'
  +'      Seminar sem  inner join'
  +'      seminar_certificate sc on sem.serial_number=sc.fk_seminar_serial';


//  +'  where'
//  +'      sem.fk_seminar = :typeSerial';

    qr:=TksQuery.Create(cn,str);
    try
//      qr.ParamByName('typeSerial').Value:=TypeSerial;
      Qr.Open;
      if qr.IsEmpty then begin
        ShowMessage('Cannot find an existing Certificate');
        exit;
      end;

//      SeminarSerial:=qr.FieldByName('Seminar_Serial').AsInteger;
      CertificateSerial:=qr.FieldByName('Certificate_Serial').AsInteger;
    finally
      qr.Free;
    end;


  frm :=  TR_certificateFRM.Create(nil);
  try
//    frm.PrintTestSeminar(CertificateSerial,PictureSerial,Language);
  finally
    frm.Free;
  end;




end;



End.
