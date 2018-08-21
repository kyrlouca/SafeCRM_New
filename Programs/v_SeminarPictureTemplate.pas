unit v_SeminarPictureTemplate;

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
  TV_SeminarPictureTemplateFRM = class(TForm)
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
    SeminarPictureSQLSERIAL_NUMBER: TIntegerField;
    SeminarPictureSQLPICTURE_SEMINAR: TBlobField;
    SeminarPictureSQLLINE_A1: TWideStringField;
    SeminarPictureSQLLINE_A2: TWideStringField;
    SeminarPictureSQLLINE_B1: TWideStringField;
    SeminarPictureSQLLINE_B2: TWideStringField;
    SeminarPictureSQLLINE_B3: TWideStringField;
    SeminarPictureSQLFK_SEMINAR_SERIAL: TIntegerField;
    SeminarPictureSQLLANGUAGE_GREEK_OR_ENGLISH: TWideStringField;
    SeminarPictureSQLLINE_C1: TWideStringField;
    SeminarPictureSQLPICTURE_TOP_L1: TBlobField;
    SeminarPictureSQLPICTURE_TOP_R1: TBlobField;
    SeminarPictureSQLPICTURE_BOT_L1: TBlobField;
    SeminarPictureSQLPICTURE_BOT_R1: TBlobField;
    SeminarPictureSQLTL_X: TIntegerField;
    SeminarPictureSQLTL_Y: TIntegerField;
    SeminarPictureSQLTR_X: TIntegerField;
    SeminarPictureSQLTR_Y: TIntegerField;
    SeminarPictureSQLBL_X: TIntegerField;
    SeminarPictureSQLBL_Y: TIntegerField;
    SeminarPictureSQLBR_X: TIntegerField;
    SeminarPictureSQLBR_Y: TIntegerField;
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
    procedure FormActivate(Sender: TObject);
    procedure CopyFromTemplateBTNClick(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
    procedure CheckPicturesX(const TypeSerial: Integer);
    procedure ShowAllData(const SeminarSerial: Integer; const Language: string);

    function SelectPictureX(var img: TImage): Boolean;
    procedure ShowPictureDataX(const TypeSerial: Integer; const Language:  string);
    procedure ShowPictureX(const TypeSerial: Integer; const aFieldName: string; const Language: string; img: TImage);
    procedure SavePictureX(const SeminarSerial: Integer; const aFieldName:string; const Language: string; img: Timage);
    procedure SelectAndSavePictureX(const SeminarSerial: Integer; const Language: string; img: TImage);
    procedure ClearPictureX(const SeminarSerial: Integer; const aFieldName:string; const Language: string; img: Timage);
    procedure CopyTemplatePIctures(const SeminarSerial, TypeSerial:  Integer);


  public
    { Public declarations }
    IN_SeminarSerial:Integer;
    IN_allowModify:boolean;

  end;

var
  V_SeminarPictureTemplateFRM: TV_SeminarPictureTemplateFRM;

implementation

uses   U_Database, G_generalProcs, H_Help, G_SFCommonProcs;


{$R *.DFM}

procedure TV_SeminarPictureTemplateFRM.BitBtn2Click(Sender: TObject);
begin
    ksPostTables([SeminarPictureSQL]);

end;

procedure TV_SeminarPictureTemplateFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TV_SeminarPictureTemplateFRM.PictTSShow(Sender: TObject);
var
  allowModify: boolean;
SeminarSerial:Integer;
begin
  IN_allowMOdify:=True;

  allowModify := IN_AllowMOdify;
  PictureGRP.Enabled := allowModify;

  SeminarSerial := IN_SeminarSerial;
  LanguageRGP.ItemIndex := 0;
  ShowAllData(seminarSerial,'G');
{
  CheckPicturesX(SeminarSerial);
  SHowPictureX(SeminarSerial, Picture_top_l1.Name, 'G', Picture_top_L1);
  SHowPictureX(SeminarSerial, Picture_top_R1.Name, 'G', Picture_top_R1);
  SHowPictureX(SeminarSerial, Picture_bot_l1.Name, 'G', Picture_bot_L1);
  SHowPictureX(SeminarSerial, Picture_bot_R1.Name, 'G', Picture_bot_R1);
  SHowPictureDataX(SeminarSerial, 'G');
}
end;

procedure TV_SeminarPictureTemplateFRM.CloseBTNClick(Sender: TObject);
begin
  close;
end;



procedure TV_SeminarPictureTemplateFRM.FormActivate(Sender: TObject);
var
  str:string;
  qr:TksQuery;
begin
 //Check onShow of TabSheet PictTS
   str:='select stt.seminar_name from seminar stt where stt.serial_number = :serialNumber';
  try
      qr:=TksQuery.Create(cn,str);
      qr.ParamByName('SerialNumber').value:=IN_SeminarSerial;
      qr.Open;
    TitlePNL.Caption:=qr.FieldByName('seminar_name').AsString;
  finally
    qr.Free;
  end;

end;

procedure TV_SeminarPictureTemplateFRM.FormCreate(Sender: TObject);
var
  qr:TksQuery;
  str:String;
begin
  cn:=U_databaseFRM.DataConnection;



end;

procedure TV_SeminarPictureTemplateFRM.LanguageRGPChange(Sender: TObject);
var
  SeminarSerial: Integer;
begin
  if SeminarPictureSQL.State in [dsEdit, dsInsert] then
    SeminarPictureSQL.Post;
  SeminarSerial := IN_SeminarSerial;
  if SeminarSerial < 1 then
    exit;
  if trim(LanguageRGP.Value) = '' then
    exit;

  ShowAllData(SeminarSerial,LanguageRGP.Value);
end;

procedure TV_SeminarPictureTemplateFRM.PictureGRPExit(Sender: TObject);
begin
  if SeminarPictureSQL.State in [dsEdit, dsInsert] then
  begin
    SeminarPictureSQL.Post;
  end;

end;

procedure TV_SeminarPictureTemplateFRM.PICTURE_TOP_L1DblClick(Sender: TObject);
begin
  SelectAndSavePictureX(IN_SeminarSerial,
    LanguageRGP.Values[LanguageRGP.ItemIndex], TImage(Sender));

end;

procedure TV_SeminarPictureTemplateFRM.PICTURE_TOP_L1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (ssCtrl in Shift) then
  begin
    ClearPictureX(IN_SeminarSerial,
      TImage(sender).name, LanguageRGP.Values[LanguageRGP.ItemIndex],
      TImage(Sender));
  end;

end;

////////////////////////////////////////
///
///
///

procedure TV_SeminarPictureTemplateFRM.SelectAndSavePictureX(const SeminarSerial: Integer; const
  Language: string; img: TImage);
begin
  if SelectPicturex(img) then
  begin
    SavePictureX(SeminarSerial, img.Name, Language, img);
    ShowPictureX(SeminarSerial, img.Name, Language, img);

  end;

end;



procedure TV_SeminarPictureTemplateFRM.Certifcates1Click(Sender: TObject);
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

procedure TV_SeminarPictureTemplateFRM.CheckPicturesX(const TypeSerial: Integer);
var
  Serial: Integer;
  str: string;
  strIns: string;
begin
//create the records if not exist

  strIns := 'insert into seminar_pictures '
    + '(serial_number,FK_SEMINAR_SERIAL, LANGUAGE_GREEK_OR_ENGLISH) values (:Serial, :typeSerial, :lang)';

  if TypeSerial < 1 then
    exit;

  str :=
    ' select serial_number'
    + '  from'
    + '      seminar_pictures stp'
    + '  where'
    + '   stp.fk_seminar_serial= :SeminarTYpeSerial and stp.language_greek_or_english = :lang';

  if ksCountRecVarSQL(cn, str, [TypeSerial, 'G']) = 0 then
  begin
    serial := ksGenerateSerial(cn, 'GEN_SEMINAR_PICTURES');
    ksExecSQLVar(cn, strIns, [serial, TypeSerial, 'G']);
  end;

  if ksCountRecVarSQL(cn, str, [TypeSerial, 'E']) = 0 then
  begin
    serial := ksGenerateSerial(cn, 'GEN_SEMINAR_PICTURES');
    ksExecSQLVar(cn, strIns, [serial, TypeSerial, 'E']);
  end;

end;

procedure TV_SeminarPictureTemplateFRM.ClearPictureX(const SeminarSerial: Integer; const
  aFieldName: string; const Language: string; img: Timage);
begin
//  showMessage('clear lang='+language);

  img.Picture := nil;
  SavePictureX(SeminarSerial, aFieldName,
    LanguageRGP.Values[LanguageRGP.ItemIndex], img);
end;

procedure TV_SeminarPictureTemplateFRM.SavePictureX(const SeminarSerial: Integer; const
  aFieldName: string; const Language: string; img: Timage);
var
//  BlobField: TField;
  BlobField: TBlobField;
  BS: TStream;
  str2: string;
  qr: TksQuery;
begin

  CodeSite.send(InttoStr(SeminarSerial));

  CodeSite.Send(afieldName);
  CodeSite.Send(Language);
  CodeSite.Send(img.Name);
  str2 := 'select * from seminar_pictures stp '
    + ' where stp.fk_seminar_serial= :seminarSerial and LANGUAGE_GREEK_OR_ENGLISH = :language';
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
//        qr.close;


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

function TV_SeminarPictureTemplateFRM.SelectPictureX(var img: TImage): Boolean;
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

procedure TV_SeminarPictureTemplateFRM.CopyFromTemplateBTNClick(Sender: TObject);
var
 TypeSerial:integer;
 qr:TksQuery;
 Language:string;
begin
  if not IN_allowModify then
    exit;

  Language:=   LanguageRGP.Values[LanguageRGP.ItemIndex]  ;
  qr:=TksQuery.Create(cn,'select serial_number,fk_seminar from seminar where serial_number= :SeminarSerial');

  try
    qr.ParamByName('SeminarSerial').Value:=IN_SeminarSerial;
    qr.Open;
    TYpeSErial:=qr.FieldByName('fk_seminar').AsInteger;
    qr.Close;
  finally
    qr.Free;
  end;

  if (IN_SeminarSerial >0) and (TypeSerial>0) then begin
   CopyTemplatePIctures(IN_SeminarSerial,TypeSerial);
//   LanguageRGP.ItemIndex:=0;
   ShowAllData(IN_SeminarSerial,Language);
  end;
end;

procedure TV_SeminarPictureTemplateFRM.ShowPictureDataX(const TypeSerial: Integer; const Language: string);
begin
  SeminarPictureSQL.Close;
  SeminarPictureSQL.ParamByName('SeminarSerial').Value := TypeSerial;
  SeminarPictureSQL.ParamByName('language').Value := Language;
  SeminarPictureSQL.Open;

end;


procedure TV_SeminarPictureTemplateFRM.ShowAllData(const SeminarSerial: Integer; const Language: string);
begin
  CheckPicturesX(SeminarSerial);
  SHowPictureX(SeminarSerial, Picture_top_l1.Name, Language, Picture_top_L1);
  SHowPictureX(SeminarSerial, Picture_top_R1.Name, Language, Picture_top_R1);
  SHowPictureX(SeminarSerial, Picture_bot_l1.Name, Language, Picture_bot_L1);
  SHowPictureX(SeminarSerial, Picture_bot_R1.Name, Language, Picture_bot_R1);
  SHowPictureDataX(SeminarSerial, Language);

end;


procedure TV_SeminarPictureTemplateFRM.ShowPictureX(const TypeSerial: Integer; const
  aFieldName: string; const Language: string; img: TImage);
var
  code: string;
  BlobFIeld: TField;
  BS: TStream;
  qr: TksQuery;
//  imgTemp:TImage;

begin

  if TypeSerial < 1 then
    exit;
  if (Language <> 'G') and (Language <> 'E') then
  begin
    showMessage('ERROR lang=' + language);
    exit;
  end;

  Img.Picture := nil;

  qr := TksQuery.Create(cn,
    'select * from seminar_pictures stp where stp.fk_seminar_serial= :seminarSerial and LANGUAGE_GREEK_OR_ENGLISH = :language');
  try
      qr.close;
      qr.ParamByName('seminarSerial').Value := TypeSerial;
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
//     qr.Close;


  finally
    bs.Free;
    qr.Free;
  end;

end;
//////////////////////////////////////////


procedure TV_SeminarPictureTemplateFRM.CopyTemplatePIctures(const SeminarSerial, TypeSerial:  Integer);
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

End.
