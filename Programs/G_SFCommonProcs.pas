unit G_SFCommonProcs;

interface
uses
System.Character,G_KyriacosTypes, Messages, System.SysUtils, System.DateUtils,System.Variants,Classes, Graphics, Controls,  Dialogs,
  StdCtrls,Db;

type
  Txxx =(trRead,trWrite);
  TParameterRecord= record
        P_ID:String;
        P_Description:String;
  end;



function test1():Integer;
Function CalcDaysOld(const DateSeminar,DateRef:TDateTime;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Integer;
Function FormatGreekDate(const aDateTime:TDateTime;Const GreekOrEnglish:String):string;
Function RemoveAccents(Const val:String):string;
function AllUpper (val:string):Boolean;
function AllLower (val:string):Boolean;
Procedure CopyDataRecord(SourceDataset,DestDataset:TDataSet);
Function G_Boolean(bool :Boolean):string;


implementation
function test1():Integer;
begin
  result:=1;
end;

Function CalcDaysOld(const DateSeminar,DateRef:TDateTime;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Integer;
var
  mySign:Integer;
  DateReminder:TDatetime;
begin
  if isAfter then
    mySign:=1
  else
    mySign:=-1;

  try
    if IsDayUnit then
      DateReminder:= IncDay( DateSeminar, mySign * NumberOfUnits)
    else
      DateReminder:= IncMonth( DateSeminar, mySign * NumberOFUnits);

    DateREminder:=Trunc( DateREminder);
    result:= Trunc(DateReminder)-TRunc(DateRef);

  except
    result:=-1;
  end;





end;

Function FormatGreekDate(const aDateTime:TDateTime;Const GreekOrEnglish:String):string;
const
  GreekMonths   :Array of String =['Ιανουαρίου', 'Φεβρουαρίου','Μαρτίου','Απριλίου','Μαίου','Ιουνίου','Ιουλίου','Αυγούστου','Σεπτεμβρίου', 'Οκτωβρίου','Νοεμβρίου', 'Δεκεμβρίου'];
  EnglishMonths :Array of String =['Janouary', 'Febrouary','March','April','May','June','Jyly','August','September','October','November','December'];
var
Year,Month,Day:Word;
sMonth:String;
begin

  DecodeDate(aDateTime, Year ,Month,Day);
  if Year=0 then begin
    result:='dd/mm/yyyy';
    exit;
  end;

  if GreekOrEnglish='G' then
    sMOnth:=GreekMonths[Month-1]
  else
    sMonth:=EnglishMonths[MOnth-1];
  result:= intToStr(day)+' ' + sMonth+' '+IntTOStr(Year);

end;


Function RemoveAccents(Const val:String):string;
const
  Accented = '’ΌΏΈΊΉΎ';
  Plain = 'ΑΟΩΕΙΗΥ';
var
  sMonth:String;
  temp:string;
  ch:String;
  str:String;
  ndx:Integer;
begin
  result:='';
  for ch in val do begin
    ndx:= Pos(ch,Accented);
    if ndx>0 then
      temp:=copy(Plain,ndx,1)
    else
      temp:= ch;

    result:=result+temp;
  end;

end;


function AllUpper (val:string):Boolean;
var
  chr : Char;
begin
  if length(val)<1 then begin
    result:=false;
    exit;
  end;

  result:=true;
  for chr in Val do begin
    if system.Character.IsLetter(chr) and (not System.Character.IsUpper(chr)) then begin
           result:=false;
           exit;
    end;

  end;
end;

function AllLower (val:string):Boolean;
var
  chr : Char;
begin
  if length(val)<1 then begin
    result:=false;
    exit;
  end;

  result:=true;
  for chr in Val do begin
    if system.Character.IsLetter(chr) and (not System.Character.IsLower(chr)) then begin
        result:=false;
        exit;
    end;

  end;
end;


Procedure CopyDataRecord(SourceDataset,DestDataset:TDataSet);
Var
   MaxFields:Integer;
   VField,SourceField:TField;
   TheFieldName:String;
   I:integer;
begin

  For I:=0 to DestDataset.FieldCount-1 do begin
    vField:=DestDataset.Fields[i];
    if (UpperCase(vField.FieldName)='SERIAL_NUMBER')
    or (UpperCase(vField.FieldName)='FK_SEMINAR_SERIAL')then
    begin
      continue;
    end;

    SourceField:=SourceDataset.FindField(vField.FieldName);
    if SourceField <> nil then begin
      vField.Value:= SourceField.Value;
    end;
  end;
end;



Function G_Boolean(bool :Boolean):string;
begin
  if bool then
    result:='Y'
  else
    result:='N';
end;


end.
