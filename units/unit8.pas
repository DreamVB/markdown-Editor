unit Unit8;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Tools, LazFileUtils;

type

  { TfrmLic }

  TfrmLic = class(TForm)
    mnuInsert: TButton;
    cmdClose: TButton;
    lblTitle: TLabel;
    lstLic: TListBox;
    procedure cmdCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure mnuInsertClick(Sender: TObject);
  private
    procedure LoadLicenses;
  public

  end;

var
  frmLic: TfrmLic;
  LicData: TStringList;

implementation

{$R *.lfm}

{ TfrmLic }

procedure TfrmLic.LoadLicenses;
var
  lzFile, sLine: string;
  X, SPos: integer;
begin
  lzFile := tools.Data_Path + 'license.b';
  sLine := '';
  LicData := TStringList.Create;

  if FileExistsUTF8(lzFile) then
  begin
    LicData.LoadFromFile(lzFile);

    lstLic.Clear;

    for X := 0 to LicData.Count - 1 do
    begin
      sLine := Trim(LicData[X]);
      SPos := Pos('|', sLine);

      if SPos > 0 then
      begin
        lstLic.Items.Add(Trim(LeftStr(sLine, SPos - 1)));
      end;
      if lstLic.Count > 0 then
        lstLic.ItemIndex := 0;
    end;
  end;
end;

procedure TfrmLic.mnuInsertClick(Sender: TObject);
var
  sLine: string;
  sPos: integer;
begin

  sLine := LicData[lstLic.ItemIndex];
  sPos := Pos('|', sLine);

  if sPos > 0 then
  begin
    sLine := Trim(Copy(sLine, sPos + 1));
  end;

  tools.ButtonPress := 1;
  tools.LicStr := '[' + lstLic.Items[lstLic.ItemIndex] + '](' + sLine + ')';
  sLine := '';
  Close;
end;

procedure TfrmLic.FormCreate(Sender: TObject);
begin
  LoadLicenses;
end;

procedure TfrmLic.cmdCloseClick(Sender: TObject);
begin
  tools.ButtonPress := 0;
  Close;
end;

procedure TfrmLic.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  LicData.Free;
  lstLic.Clear;
end;

end.
