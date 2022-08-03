unit Unit7;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls, Tools;

type

  { TfrmChars }

  TfrmChars = class(TForm)
    bPreview: TBevel;
    cmdInsert: TButton;
    cmdClose: TButton;
    lstData: TListBox;
    procedure bPreviewPaint(Sender: TObject);
    procedure cmdCloseClick(Sender: TObject);
    procedure cmdInsertClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lstDataSelectionChange(Sender: TObject; User: boolean);
  private
    procedure LoadHtmlChars;
  public

  end;

var
  frmChars: TfrmChars;
  lChars: TStringList;
  ch: string;

implementation

{$R *.lfm}

{ TfrmChars }

procedure TfrmChars.LoadHtmlChars;
var
  lzFile, sLine: string;
  X: integer;
  s_Pos: integer;
begin
  lzFile := tools.Data_Path + 'htmlchars.b';
  lChars := TStringList.Create;

  if FileExists(lzFile) then
  begin
    lChars.LoadFromFile(lzFile);
  end;

  if lChars.Count > 0 then
  begin
    lstData.Clear;

    for X := 0 to lChars.Count - 1 do
    begin
      sLine := Trim(lChars[X]);

      if Length(sLine) > 0 then
      begin
        s_Pos := Pos('|', sLine);
        if s_Pos > 0 then
        begin
          lstData.Items.Add(LeftStr(sLine, s_Pos - 1));
        end;
      end;
    end;
  end;
  if lstData.Count > 0 then
    lstData.ItemIndex := 1;
end;

procedure TfrmChars.FormCreate(Sender: TObject);
begin
  LoadHtmlChars;
  bPreview.Canvas.Font.Size := 60;
  bPreview.Canvas.Brush.Color := clWhite;
  bPreview.Canvas.Brush.Style := bsSolid;
end;

procedure TfrmChars.lstDataSelectionChange(Sender: TObject; User: boolean);
var
  sLine: string;
  sPos: integer;
begin
  sLine := lChars[lstData.ItemIndex];

  sPos := Pos('|', sLine);

  if sPos > 0 then
  begin
    Tools.CharCode := Trim(Copy(sLine, sPos + 1));
    ch := Trim(LeftStr(sLine, sPos - 1));
  end;

  if lstData.ItemIndex = 0 then ch := ' ';

  bPreviewPaint(Sender);
end;

procedure TfrmChars.cmdInsertClick(Sender: TObject);
begin
  Tools.ButtonPress := 1;
  Close;
end;

procedure TfrmChars.cmdCloseClick(Sender: TObject);
begin
  Tools.ButtonPress := 0;
  Close;
end;

procedure TfrmChars.bPreviewPaint(Sender: TObject);
var
  x, y: integer;
begin
  x := (bPreview.Width - bPreview.Canvas.TextWidth(ch)) div 2;
  y := (bPreview.Height - bPreview.Canvas.TextHeight(ch)) div 2;
  bPreview.Canvas.FillRect(0, 0, bPreview.Width, bPreview.Height);
  //draw the char
  bPreview.Canvas.TextOut(x, y, ch);
end;

end.
