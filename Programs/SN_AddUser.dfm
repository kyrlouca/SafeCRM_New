’
 TSN_ADDUSERFRM 0ö  TPF0TSN_AddUserFRMSN_AddUserFRMLeftTopĒ BorderIcons BorderStylebsDialogCaptionAdd UserClientHeight2ClientWidthDColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightņ	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoDesktopCenter
OnActivateFormActivateOnClose	FormClosePixelsPerInchx
TextHeight TPanelTopPanelPNLLeft Top WidthDHeight<AlignalTopCaptionAdd UserFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Heightß	Font.NameArial
Font.StylefsBold 
ParentFontTabOrder   TPanelPanel3Left TopWidthDHeight1AlignalBottom
BevelInnerbvRaised
BevelOuter	bvLoweredTabOrder TBitBtnBitBtn2Left
TopWidth]Height)CaptionAcceptDefault	Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightš	Font.NameArial
Font.Style 
Glyph.Data
ā  Ž  BMŽ      v   (   $            h                                    ĄĄĄ    ’  ’   ’’ ’   ’ ’ ’’  ’’’ 333333333333333333  333333333333ó33333  334C3333333833333  33B$33333338ó3333  34""C333338333333  3B""$33333338ó333  4"*""C3338ó8ó3333  2"£¢"C3338ó3333  :*3:"$3338ų38ó8ó33  3£33¢"C33333333  3333:"$3333338ó8ó3  33333¢"C33333333  33333:"$3333338ó8ó  333333¢"C3333333  333333:"C3333338ó  3333333¢#3333333  3333333:3333333383  333333333333333333  	NumGlyphs
ParentFontTabOrder OnClickBitBtn2Click  TBitBtnBitBtn6LeftpTopWidthZHeight)Cancel	CaptionCancelFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightš	Font.NameArial
Font.Style 
Glyph.Data
ā  Ž  BMŽ      v   (   $            h                                    ĄĄĄ    ’  ’   ’’ ’   ’ ’ ’’  ’’’ 333333333333333333  3333333333?333333  39333333ó33?33  3939338ó3?ó3  39338ó8óų33  33338ó338ó  3393333833ų3  33333338ó33?3  33313333333833  3339333338ó333  3333333383333  339333333333  33333838ó8ó3  3339333333  33933333ų38ó8ó  3333339333833’  33333333333333383  333333333333333333  	NumGlyphs
ParentFontTabOrderOnClickBitBtn6Click   TPanelPanel4Left Top<WidthDHeightÅ AlignalClientTabOrder TBitBtnBitBtn3Left0TopxWidthKHeightCaptionAdd UserTabOrder   TBitBtnBitBtn4Left0Top  WidthKHeightCaptionDelete UserTabOrder  TBitBtnBitBtn5Left0TopČ WidthKHeightCaptionChange UserTabOrder  	TGroupBox	GroupBox1LeftTopWidthį Height CaptionUser DetailsFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightó	Font.NameArial
Font.StylefsBold 
ParentFontTabOrder TLabelLabel1LeftTop!Width*HeightCaptionUser IDFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightō	Font.NameArial
Font.Style 
ParentFont  TLabelLabel3Left
TopaWidth8HeightCaptionPasswordFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightō	Font.NameArial
Font.Style 
ParentFont  TLabelLabel2Left TopAWidth"HeightCaptionNameFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightō	Font.NameArial
Font.Style 
ParentFont  	TwwDBEdit	UserIDFLDLeftNTopWidthyHeightCharCaseecUpperCase	DataFieldUSER_ID
DataSourceTableSRCFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightō	Font.NameArial
Font.Style 
ParentFontTabOrder UnboundDataType	wwDefaultWantReturnsWordWrap  	TwwDBEditUserNameFLDLeftNTop@WidthyHeight	DataField	USER_NAME
DataSourceTableSRCFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightō	Font.NameArial
Font.Style 
ParentFontTabOrderUnboundDataType	wwDefaultWantReturnsWordWrap  	TwwDBEditPasswordFLDLeftNTop]WidthyHeight	DataFieldUSER_PASSWORD
DataSourceTableSRCFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightō	Font.NameArial
Font.Style 	MaxLength

ParentFontPasswordChar*TabOrderUnboundDataType	wwDefaultWantReturnsWordWrap    TIBCTransaction	ReadTransDefaultConnectionU_databaseFRM.DataConnectionIsolationLeveliblReadOnlyReadCommittedLeft(Top  TIBCTransaction
WriteTransDefaultConnectionU_databaseFRM.DataConnectionLeft(TopE  TIBCDataSourceTableSRCDataSetTableSQLLeftŠ Top  	TIBCQueryTableSQLSQLInsert.StringsINSERT INTO SECURITY_USER6  (USER_ID, USER_PASSWORD, USER_NAME, FK_USER_STATION)VALUES:  (:USER_ID, :USER_PASSWORD, :USER_NAME, :FK_USER_STATION) SQLDelete.StringsDELETE FROM SECURITY_USERWHERE  USER_ID = :Old_USER_ID SQLUpdate.StringsUPDATE SECURITY_USERSETp  USER_ID = :USER_ID, USER_PASSWORD = :USER_PASSWORD, USER_NAME = :USER_NAME, FK_USER_STATION = :FK_USER_STATIONWHERE  USER_ID = :Old_USER_ID SQLRefresh.StringsLSELECT USER_ID, USER_PASSWORD, USER_NAME, FK_USER_STATION FROM SECURITY_USERWHERE  USER_ID = :USER_ID SQLLock.StringsSELECT NULL FROM SECURITY_USERWHEREUSER_ID = :Old_USER_IDFOR UPDATE WITH LOCK SQLRecCount.StringsSELECT COUNT(*) FROM (!SELECT 1 AS C  FROM SECURITY_USER    ) q Transaction	ReadTransUpdateTransaction
WriteTransSQL.StringsSelect * from security_user whereuser_id= :UserID Left  Top	ParamDataDataType	ftUnknownNameUserIDValue   TWideStringFieldTableSQLUSER_ID	FieldNameUSER_IDRequired		FixedChar	Size  TWideStringFieldTableSQLUSER_PASSWORD	FieldNameUSER_PASSWORDRequired		FixedChar	Size  TWideStringFieldTableSQLUSER_NAME	FieldName	USER_NAME	FixedChar	SizeP  TIntegerFieldTableSQLFK_USER_STATION	FieldNameFK_USER_STATION    