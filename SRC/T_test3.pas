unit T_test3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, p_attendance, Vcl.Menus, VirtualTable, Data.DB, DBAccess, IBC, MemDS, Vcl.StdCtrls, Vcl.Mask,
  vcl.wwdbedit, vcl.wwdotdot, vcl.wwdbcomb, RzLabel, RzDBLbl, Vcl.Buttons, vcl.wwspeedbutton, vcl.wwdbnavigator, vcl.wwclearpanel,
  vcl.wwcheckbox, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, RzButton, RzPanel, Vcl.ExtCtrls;

type
  TT_test3Frm = class(TP_attendanceFRM)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  T_test3Frm: TT_test3Frm;

implementation

{$R *.dfm}

end.
