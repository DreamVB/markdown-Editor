unit Unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  StdCtrls, Tools;

type

  { TfrmImage }

  TfrmImage = class(TForm)
    cmdClose: TButton;
    cmdInsert: TButton;
    lblImgDesc: TLabeledEdit;
    lblImgUrl: TLabeledEdit;
    procedure cmdCloseClick(Sender: TObject);
    procedure cmdInsertClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  frmImage: TfrmImage;

implementation

{$R *.lfm}

{ TfrmImage }

procedure TfrmImage.FormCreate(Sender: TObject);
begin

end;

procedure TfrmImage.cmdCloseClick(Sender: TObject);
begin
  Tools.ButtonPress := 0;
  Close;
end;

procedure TfrmImage.cmdInsertClick(Sender: TObject);
begin
  Tools.ButtonPress := 1;
  Tools.ImgDesc := lblImgDesc.Text;
  Tools.ImgLink := lblImgUrl.Text;
  Close;
end;

end.
