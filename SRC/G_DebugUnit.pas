unit G_DebugUnit;
//      G_DebugUnit.TRecViewer<ThdHawbItemRecord>.GetFields(HawbItem);
//will send to codesite a record as a stringlist

interface

Uses

 db,System.SysUtils, System.Variants, System.Classes,
 rtti,TypInfo,CodeSiteLogging;

Type
  TRecViewer<F: record> = class
  public
    class function GetFields(const Rec: F): string;
  end;
  procedure GD_ShowDataRecord(var Data);

implementation

class function TRecViewer<F>.GetFields(const Rec: F): string;
var
  ctx   : TRttiContext;
  t     : TRttiType;
  field : TRttiField;
  RttiType:TRttiType;

  value:TValue;
  str:String;
begin
 Result := '';
 ctx := TRttiContext.Create;

 rttiType:=ctx.GetType(TypeInfo(F));
// result:= 'rttitype:'+rttiType.Name;
result:='||'+rttiType.Name;
 for field in rttiType.GetFields do begin
//   Result := Result + #13+'|' + Format('Field: %-12s : Type : %-10s : Value : %-s', [field.Name, field.FieldType.Name, field.GetValue(@Rec).toString]);
   Result := Result + #13+'|' + Format('Field: %-50s: %s', [field.Name, field.GetValue(@Rec).toString]);
 end;
   CodeSite.Send(Result);


end;



procedure GD_ShowDataRecord(var Data);
var
  Dataset: TDataset;
  i: Integer;
  out:String;
begin
  Dataset := TDataset(Data);

  codesite.EnterMethod('++ '+dataset.Name);
  for i := 0 to Dataset.FieldCount - 1 do begin
     out:= Dataset.FieldList[i].DisplayName+'--'+ Dataset.Fields[i].AsString;
     codesite.send(out);
  end;
  codesite.ExitMethod('---');

end;



end.
