unit Unit6;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons, Tools;

type

  { TfrmLan }

  TfrmLan = class(TForm)
    cmdInsert1: TSpeedButton;
    lbllanguage: TLabel;
    lstLan: TListBox;
    cmdInsert: TSpeedButton;
    procedure cmdInsert1Click(Sender: TObject);
    procedure cmdInsertClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  frmLan: TfrmLan;

implementation

{$R *.lfm}

{ TfrmLan }

procedure TfrmLan.cmdInsertClick(Sender: TObject);
begin
  tools.CodeLan := Lowercase(lstLan.Items[lstLan.ItemIndex]);
  Tools.ButtonPress := 1;
  Close;
end;

procedure TfrmLan.FormCreate(Sender: TObject);
begin
  lstLan.ItemIndex := 0;
end;

procedure TfrmLan.cmdInsert1Click(Sender: TObject);
begin
  tools.ButtonPress := 0;
  Close;
end;

end.
