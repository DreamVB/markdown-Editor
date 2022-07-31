program mdEdit;

{$mode objfpc}{$H+}

uses
 {$IFDEF UNIX}
  cthreads,
                           {$ENDIF} {$IFDEF HASAMIGA}
  athreads,
                           {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms,
  Unit1,
  Unit2,
  Tools,
  Unit3,
  Unit4,
  Unit5,
  Unit6,
  Unit7 { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Scaled := True;
  Application.Initialize;
  Application.CreateForm(Tfrmmain, frmmain);
  Application.CreateForm(TfrmImage, frmImage);
  Application.CreateForm(TfrmHyeperLink, frmHyeperLink);
  Application.CreateForm(TfrmTable, frmTable);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.CreateForm(TfrmLan, frmLan);
  Application.CreateForm(TfrmChars, frmChars);
  Application.Run;
end.
