unit Unit5;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons;

type

  { TfrmAbout }

  TfrmAbout = class(TForm)
    Line3d1: TBevel;
    imgLogo: TImage;
    lblTitle: TLabel;
    lblVersion: TLabel;
    lblInfo: TLabel;
    cmdOK: TSpeedButton;
    procedure cmdOKClick(Sender: TObject);
  private

  public

  end;

var
  frmAbout: TfrmAbout;

implementation

{$R *.lfm}

{ TfrmAbout }

procedure TfrmAbout.cmdOKClick(Sender: TObject);
begin
  Close;
end;

end.
