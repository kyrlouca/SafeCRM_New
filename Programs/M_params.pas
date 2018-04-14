unit M_params;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, DBAccess, IBC,
  MemDS, vcl.wwspeedbutton, vcl.wwdbnavigator, Vcl.ExtCtrls, vcl.wwclearpanel,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, RzPanel, RzRadGrp, Vcl.Mask,
  vcl.Wwdbedit, Vcl.Buttons, RzButton, Vcl.DBCtrls,jpeg,pngimage, Vcl.ExtDlgs,
  RzShellDialogs;

type
 TitTYPES=(itJPG,itPNG,itBMP);
  TLabelArray = Array of Tlabel;
  TFieldArray = Array of TwwDbEdit;
  TStringArray= Array of String;
  TM_paramsFRM = class(TForm)
    ReadOnlyTrans: TIBCTransaction;
    UpdateTrans: TIBCTransaction;
    Button1: TButton;
    FindGeneralParameterSQL: TIBCQuery;
    ButtonsPNL: TPanel;
    Panel1: TPanel;
    BitBtn1: TRzBitBtn;
    Panel2: TPanel;
    TitleLbl: TLabel;
    RzPanel1: TRzPanel;
    OptionGRP: TRzRadioGroup;
    GroupBox1: TGroupBox;
    PIdLbl: TLabel;
    PS1Lbl: TLabel;
    PI1Lbl: TLabel;
    PF1Lbl: TLabel;
    PS2LBL: TLabel;
    PS3LBL: TLabel;
    PS4LBL: TLabel;
    PS5LBL: TLabel;
    PS6LBL: TLabel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    VS1FLD: TwwDBEdit;
    VI1FLD: TwwDBEdit;
    VF1FLD: TwwDBEdit;
    ParamFLD: TwwDBEdit;
    VS2FLD: TwwDBEdit;
    VS3FLD: TwwDBEdit;
    VS4FLD: TwwDBEdit;
    VS5FLD: TwwDBEdit;
    VS6FLD: TwwDBEdit;
    File1FLD: TEdit;
    FindParamSRC: TIBCDataSource;
    FindGeneralParameterSQLCODE: TWideStringField;
    FindGeneralParameterSQLINT_1: TIntegerField;
    FindGeneralParameterSQLINT_2: TIntegerField;
    FindGeneralParameterSQLSTR_1: TWideStringField;
    FindGeneralParameterSQLSTR_2: TWideStringField;
    FindGeneralParameterSQLSTR_3: TWideStringField;
    FindGeneralParameterSQLSTR_4: TWideStringField;
    FindGeneralParameterSQLSTR_5: TWideStringField;
    FindGeneralParameterSQLSTR_6: TWideStringField;
    FindGeneralParameterSQLFLOAT_1: TFloatField;
    FindGeneralParameterSQLFLOAT_2: TFloatField;
    FindGeneralParameterSQLDESCRIPTION: TWideStringField;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    FindGeneralParameterSQLANAD_PICTURE: TBlobField;
    DoSQL: TIBCSQL;
    OpenPictureDialog1: TOpenPictureDialog;
    ImgShow: TImage;
    Label3: TLabel;
    RzBitBtn4: TRzBitBtn;
    CertificateGenFLD: TwwDBEdit;
    InstructorBTN: TSpeedButton;
    Label2: TLabel;
    Label4: TLabel;
    PersonGenFLD: TwwDBEdit;
    SpeedButton2: TSpeedButton;
    FileOpen1: TFileOpenDialog;
    FolderSelectDLG: TRzSelectFolderDialog;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OptionGRPClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure FindGeneralParameterSQLAfterScroll(DataSet: TDataSet);
    procedure InstructorBTNClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

  private
    { Private declarations }
    cn:TIBCConnection;
//    procedure SelectPicture();
    procedure SelectPicture2();
  procedure ShowPicture();

    procedure ShowOneRecord(RecordIndex:Integer);
  procedure ShowXLabels(LabelValueLine:TstringArray; LabelArray:TlabelArray;FieldsArray:TFieldArray);
  function SelectGenId(const connection: TIBCConnection; const GenName:  string): integer;
  function UpdateGenId(const connection: TIBCConnection; const GenName:  string;Const GEnValue:Integer): integer;

  public
    { Public declarations }
  end;

var
  M_paramsFRM: TM_paramsFRM;

implementation

{$R *.dfm}

uses U_Database, G_KyrSQL, M_Main;

procedure TM_paramsFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TM_paramsFRM.Button1Click(Sender: TObject);
var
qr:TksQuery;
name:String;
begin
  qr:=TksQuery.Create(cn,'select * from person');
  try
    qr.Open;
    name:=qr.FieldByName('first_name').AsString;
    showMessage('name'+name);
  finally
    qr.Free;
  end;

end;

procedure TM_paramsFRM.FindGeneralParameterSQLAfterScroll(DataSet: TDataSet);
var
  code:string;
  BlobFIeld:TField;
  BS:TStream;
begin

  ShowPicture();

end;

procedure TM_paramsFRM.FormActivate(Sender: TObject);
var
  CertNumber:Integer;
begin
ShowOneRecord(0);
  certNumber:= SelectGenId(cn,'GEN_SEMINAR_CERTIFICATE');
  certificateGENFLD.Text:=intToStr(certNumber);

  certNumber:= SelectGenId(cn,'GEN_PERSON');
  PersonGEnFLD.Text:=intToStr(certNumber);

end;

procedure TM_paramsFRM.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
        if self.FindGeneralParameterSQL.State in [dsEdit,dsInsert] then begin
              self.FindGeneralParameterSQL.Post ;
        end;

end;

procedure TM_paramsFRM.FormCreate(Sender: TObject);
begin
cn:=U_databaseFRM.DataConnection;
end;

procedure TM_paramsFRM.InstructorBTNClick(Sender: TObject);
var
  Serial:Integer;
begin

serial:= StrToIntDef( CertificateGenFLD.Text,-1);
if serial>0 then
  UpdateGenId(cn,'GEN_SEMINAR_CERTIFICATE',serial);
end;

procedure TM_paramsFRM.OptionGRPClick(Sender: TObject);
begin

  ShowOneRecord(OptionGRP.ItemIndex);

end;


function TM_paramsFRM.SelectGenId(const connection: TIBCConnection; const GenName:  string): integer;
var
  qr: TksQuery;
  Str:String;
begin
  Str:='SELECT GEN_ID( '+GenName+ ', 0 ) FROM RDB$DATABASE';
  try
    qr := TksQuery.Create(connection, str);
    qr.Open;
    result := qr.FieldByName('GEN_ID').AsInteger;
  finally
    qr.Free;
  end;

ENd;

function TM_paramsFRM.UpdateGenId(const connection: TIBCConnection; const GenName:  string;Const GEnValue:Integer): integer;
var
  qr: TksQuery;
  Str:String;
begin
  str:='ALTER SEQUENCE '+ genName+ ' RESTART WITH '+inttoStr(genValue);
  ksExecSQLVar(connection,str,[]);
  result:=GEnValue;

ENd;




procedure TM_paramsFRM.RzBitBtn1Click(Sender: TObject);
begin
self.FindGeneralParameterSQL.Cancel;
end;

procedure TM_paramsFRM.RzBitBtn2Click(Sender: TObject);
begin
        if self.FindGeneralParameterSQL.State in [dsEdit,dsInsert] then begin
              self.FindGeneralParameterSQL.Post ;
        end;

end;

procedure TM_paramsFRM.RzBitBtn4Click(Sender: TObject);
begin
  SelectPIcture2;
end;


procedure TM_paramsFRM.ShowXLabels(LabelValueLine:TstringArray; LabelArray:TlabelArray;FieldsArray:TFieldArray);


Var
        TheLabel:Tlabel;
        TheField:TwwDBEdit;
        LabelCaption:String;
        i:integer;
        key:string;

begin
        if self.FindGeneralParameterSQL.State in [dsEdit,dsInsert] then begin // to save previoius record
              self.FindGeneralParameterSQL.Post ;
        end;

        Key:=LabelValueLine[0];

        With Self.FindGeneralParameterSQL do begin
          Close;
          ParamByName('Code').Value:=Key;
          Open;
          If Self.FindGeneralParameterSQL.RecordCount>0 then begin
                Edit;
          end else begin
                Insert;
                FieldByName('Code').Value:=Key;
          end;
       end;


       for i:= Low(LabelValueLine)+1 to High(LabelValueLine) do begin

           LabelCaption:=LabelValueLine[i];   // find the caption of the label in the array
           TheLabel:=LabelArray[I];
           TheField:=FieldsArray[I];
          iF LabelCaption>'' then begin
                TheLabel.Visible:=True;
                TheLabel.Caption:=LabelCaption;
                TheField.Visible:=true;
          end else begin
                TheLabel.Visible:=False;
                TheField.Visible:=False;
          end;
       end;



end;

procedure TM_paramsFRM.SpeedButton1Click(Sender: TObject);
var
  fileName:string;
  folderName:string;
begin
   if not FolderSelectDLG.Execute then begin
      showMessage('exit');
      Exit;
  end;
 foldername :=FolderSelectDLG.SelectedPathName;
 FIle1Fld.Text:=folderName;
 exit;


  if not FileOPen1.Execute then     begin
      showMessage('exit');
      Exit;
  end;
 filename :=FileOpen1.FileName;
 FIle1Fld.Text:=filename;


end;

procedure TM_paramsFRM.SpeedButton2Click(Sender: TObject);
var
  Serial:Integer;
begin
  serial:= StrToIntDef( PersonGEnFLD.Text,-1);
  if serial>0 then
    UpdateGenId(cn,'GEN_Person',serial);

end;

procedure TM_paramsFRM.ShowOneRecord(RecordIndex:Integer);
Const
//        LabelValuesArray:Array[0..4,0..8] of String = (
        LabelValuesArray:Array[0..4] of TStringArray = (
                ['T00','Reports Title - First line ','Ö.Ð.Á.','','','Folder to Save Word Files','','',''],
                ['T01','Folder for Backup','','','','','','',''],
                ['T02','Unused','','','','','','',''],
                ['T03','','VAT Rate','','','','','',''],
                ['T04','','','','','','','','']
                );

Var
        I:Integer;
        max:integer;
        LebelValueLine:Array of String;
        line:Array of String;
        LabelArray : TLabelArray;
        FieldsArray :TFieldArray;

begin
       //zero Element is used for the key
       LabelArray :=[ PIdLbl,Ps1Lbl  ,pf1lbl, pi1lbl,ps2lbl, ps3lbl, ps4lbl, ps5lbl,ps6lbl ];
       FIeldsArray:=[ ParamFLD,VS1FLD ,VF1FLD, VI1FLD,vs2FLD, vs3FLD, vs4FLD, Vs5FLD,Vs6FLD];


       ShowXLabels(LabelValuesArray[RecordIndex],LabelArray,FieldsArray);


end;


procedure TM_paramsFRM.SelectPicture2();
var
  BlobField: TField;
  BS: TStream;
  fileName:String;
  code:String;
  str1:String;
  qr:TksQuery;
  imgTemp:TImage;

Begin

  code:=FindGeneralParameterSQL.FieldByName('code').AsString;
  if Trim(Code)='' then
    exit;

  if not OpenPictureDialog1.Execute then     begin
      showMessage('exit');
      Exit;
  end;

  imgTemp:=Timage.Create(self);
  qr:= TksQuery.Create(cn,'select * from general_Parameter where code = :TheCode');
   try
    filename :=OpenPictureDialog1.FileName;
    ImgTemp.Picture:=nil;
    imgTemp.Picture.LoadFromFile(filename);

    with qr do  begin
      close;
      qr.ParamByName('Thecode').AsString :=Code;
      open;
      if qr.IsEmpty then
        exit;

      Edit;
      BlobField := qr.FieldByName('anad_picture');
      BS := CreateBlobStream(BlobField,bmWrite);

      try
        ImgTEmp.Picture.SaveToStream(BS);
      finally

      end;
      Post;

//    bs.Position:=0;
//      close;
    end;
  finally
    qr.Free;
    imgTEmp.Free;
  end;
  FindGeneralParameterSQL.Refresh;

end;

procedure TM_paramsFRM.ShowPicture();
 var
  code:string;
  BlobFIeld:TField;
  BS:TStream;
  qr:TksQuery;
//  imgTemp:TImage;
  SeminarSerial:Integer;

begin
  code:=FindGeneralParameterSQL.FieldByName('code').AsString;
  if Trim(Code)='' then
    exit;

  qr:= TksQuery.Create(cn,'select * from general_Parameter where code = :TheCode');
   try
      with qr do begin
      close;
      qr.ParamByName('Thecode').AsString :=Code;
      open;
      if qr.IsEmpty then
        exit;

        BlobField := FieldByName('anad_picture');
        BS := CreateBlobStream(BlobField,bmRead);

        try
          bs.Position:=0;
          ImgShow.Picture.LoadFromStream(bs);
              if BS.Size = 0 then  begin
                 BlobField.Clear;
              end;

        finally

        end;

//      close;
      end;
   finally
      bs.Free;
      qr.Free;
   end;

end;


end.
