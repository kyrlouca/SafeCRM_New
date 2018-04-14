unit G_OtherProcs;

interface
uses G_generalProcs,
ppPrnabl, ppClass, ppCtrls, ppDB, ppBands,ppTypes,
  ppCache, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport;
type
TopPrinterSettings= Record
  name:string;
  copies:Integer;
  printToFile:boolean;
  DocumentName:String;
End;
Function setPrinter(Report:TppReport; onPrinter:boolean; printerSettings:TopPrinterSettings):Integer;

implementation

Function setPrinter(Report:TppReport; onPrinter:boolean; printerSettings:TopPrinterSettings):Integer;
begin

  if (OnPrinter) then begin    //24Mar2017 to printi without dialog
          Report.DeviceType := dtPrinter;
          Report.ShowPrintDialog := false;

          report.PrinterSetup.Copies:= PrinterSettings.copies;
          report.PrinterSetup.PrinterName:=PrinterSettings.name;

  end else begin
          Report.DeviceType := dtScreen;
          Report.ShowPrintDialog := true;
          report.PrinterSetup.Copies:=1;
  end;
  result:=99;

end;

end.
