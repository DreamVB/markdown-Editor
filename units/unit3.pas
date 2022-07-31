unit Unit3;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, Tools;

type

  { TfrmHyeperLink }

  TfrmHyeperLink = class(TForm)
    cmdInsert: TButton;
    cmdClose: TButton;
    lblLinkDesc: TLabeledEdit;
    lblLinkUrl: TLabeledEdit;
    procedure cmdCloseClick(Sender: TObject);
    procedure cmdInsertClick(Sender: TObject);
  private

  public

  end;

var
  frmHyeperLink: TfrmHyeperLink;

implementation

{$R *.lfm}

{ TfrmHyeperLink }

procedure TfrmHyeperLink.cmdCloseClick(Sender: TObject);
begin
  tools.ButtonPress := 0;
  Close;
end;

procedure TfrmHyeperLink.cmdInsertClick(Sender: TObject);
begin
  tools.ButtonPress := 1;
  Tools.LinkDesc := lblLinkDesc.Text;
  tools.LinkUrl := lblLinkUrl.Text;
  Close;
end;

end.
