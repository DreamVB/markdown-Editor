unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ComCtrls,
  StdCtrls, ExtCtrls, Tools, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7,
  FileUtil, StrUtils, Windows, process;

type

  { Tfrmmain }

  Tfrmmain = class(TForm)
    Bevel1: TBevel;
    FindDialog1: TFindDialog;
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    mnuInsertFile: TMenuItem;
    Separator13: TMenuItem;
    mnuWordwrap: TMenuItem;
    mnuView: TMenuItem;
    mnuCharCodes: TMenuItem;
    mnuHighlight: TMenuItem;
    mnuH2: TMenuItem;
    mnuH3: TMenuItem;
    mnuH4: TMenuItem;
    mnuH5: TMenuItem;
    mnuH6: TMenuItem;
    mnuH1: TMenuItem;
    Separator12: TMenuItem;
    mnuSubscript: TMenuItem;
    mnuSuperscript: TMenuItem;
    mnuNewWnd: TMenuItem;
    mnuBoldItalic: TMenuItem;
    mnuGoto: TMenuItem;
    mnuFindNext: TMenuItem;
    mnuFind: TMenuItem;
    mnuReplace: TMenuItem;
    ReplaceDialog1: TReplaceDialog;
    Separator11: TMenuItem;
    mnuSave: TMenuItem;
    mnuCodeLan: TMenuItem;
    mnuInlineCode: TMenuItem;
    Separator10: TMenuItem;
    mnuSection: TMenuItem;
    Separator9: TMenuItem;
    mnuLowercase: TMenuItem;
    mnuUppercase: TMenuItem;
    mnuConv: TMenuItem;
    Separator8: TMenuItem;
    mnuDateTime: TMenuItem;
    mnuTable: TMenuItem;
    cmdDateTime: TToolButton;
    cmdLstCheck: TToolButton;
    cmdCodeLanuage: TToolButton;
    cmdBoldItlic: TToolButton;
    cmdSubscript: TToolButton;
    cmdSuperscript: TToolButton;
    cmdMark: TToolButton;
    cmdHtmlCodes: TToolButton;
    ToolButton3: TToolButton;
    txtEd: TMemo;
    mnuHelp: TMenuItem;
    mnuAbout: TMenuItem;
    mnuEdit: TMenuItem;
    mnuStrike: TMenuItem;
    mnuBQuote: TMenuItem;
    mnuCode: TMenuItem;
    mnuHeadings: TMenuItem;
    mnuHyperlink: TMenuItem;
    mnuImage: TMenuItem;
    mnuHozLine: TMenuItem;
    mnuUOList: TMenuItem;
    mnuOList: TMenuItem;
    mnuOpen: TMenuItem;
    mnuSaveAs: TMenuItem;
    mnuExit: TMenuItem;
    Separator7: TMenuItem;
    Separator6: TMenuItem;
    Separator5: TMenuItem;
    Separator4: TMenuItem;
    Separator3: TMenuItem;
    mnuUndo: TMenuItem;
    mnuCut: TMenuItem;
    mnuCopy: TMenuItem;
    mnuPaste: TMenuItem;
    mnuInsert: TMenuItem;
    mnuSelectAll: TMenuItem;
    mnuBold: TMenuItem;
    mnuItalic: TMenuItem;
    Separator2: TMenuItem;
    Separator1: TMenuItem;
    mnuNew: TMenuItem;
    mnuFile: TMenuItem;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    cmdNew: TToolButton;
    ToolButton10: TToolButton;
    cmdBold: TToolButton;
    cmdItalic: TToolButton;
    cmdStrike: TToolButton;
    ToolButton14: TToolButton;
    cmdOList: TToolButton;
    cmdUOList: TToolButton;
    ToolButton17: TToolButton;
    cmdQuote: TToolButton;
    cmdCode: TToolButton;
    cmdOpen: TToolButton;
    cmdTable: TToolButton;
    cmdHyperlink: TToolButton;
    cmdImg: TToolButton;
    ToolButton23: TToolButton;
    cmdHLine: TToolButton;
    cmdSave: TToolButton;
    ToolButton4: TToolButton;
    cmdUndo: TToolButton;
    ToolButton7: TToolButton;
    cmdH1: TToolButton;
    cmdH2: TToolButton;
    procedure Button1Click(Sender: TObject);
    procedure cmdBoldClick(Sender: TObject);
    procedure cmdBoldItlicClick(Sender: TObject);
    procedure cmdCodeClick(Sender: TObject);
    procedure cmdCodeLanuageClick(Sender: TObject);
    procedure cmdDateTimeClick(Sender: TObject);
    procedure cmdH1Click(Sender: TObject);
    procedure cmdH2Click(Sender: TObject);
    procedure cmdHLineClick(Sender: TObject);
    procedure cmdHtmlCodesClick(Sender: TObject);
    procedure cmdHyperlinkClick(Sender: TObject);
    procedure cmdImgClick(Sender: TObject);
    procedure cmdItalicClick(Sender: TObject);
    procedure cmdLstCheckClick(Sender: TObject);
    procedure cmdMarkClick(Sender: TObject);
    procedure cmdNewClick(Sender: TObject);
    procedure cmdOListClick(Sender: TObject);
    procedure cmdOpenClick(Sender: TObject);
    procedure cmdQuoteClick(Sender: TObject);
    procedure cmdSaveClick(Sender: TObject);
    procedure cmdStrikeClick(Sender: TObject);
    procedure cmdTableClick(Sender: TObject);
    procedure cmdUndoClick(Sender: TObject);
    procedure cmdUOListClick(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure mnuBoldItalicClick(Sender: TObject);
    procedure mnuCharCodesClick(Sender: TObject);
    procedure mnuCodeLanClick(Sender: TObject);
    procedure mnuFindClick(Sender: TObject);
    procedure mnuGotoClick(Sender: TObject);
    procedure mnuHighlightClick(Sender: TObject);
    procedure mnuInlineCodeClick(Sender: TObject);
    procedure mnuBoldClick(Sender: TObject);
    procedure mnuBQuoteClick(Sender: TObject);
    procedure mnuCopyClick(Sender: TObject);
    procedure mnuDateTimeClick(Sender: TObject);
    procedure mnuH1Click(Sender: TObject);
    procedure mnuH2Click(Sender: TObject);
    procedure mnuH3Click(Sender: TObject);
    procedure mnuH4Click(Sender: TObject);
    procedure mnuH5Click(Sender: TObject);
    procedure mnuH6Click(Sender: TObject);
    procedure mnuHozLineClick(Sender: TObject);
    procedure mnuHyperlinkClick(Sender: TObject);
    procedure mnuImageClick(Sender: TObject);
    procedure mnuInsertFileClick(Sender: TObject);
    procedure mnuItalicClick(Sender: TObject);
    procedure mnuLowercaseClick(Sender: TObject);
    procedure mnuNewWndClick(Sender: TObject);
    procedure mnuOListClick(Sender: TObject);
    procedure mnuPasteClick(Sender: TObject);
    procedure mnuReplaceClick(Sender: TObject);
    procedure mnuSaveAsClick(Sender: TObject);
    procedure mnuSelectAllClick(Sender: TObject);
    procedure mnuStrikeClick(Sender: TObject);
    procedure mnuSubscriptClick(Sender: TObject);
    procedure mnuSuperscriptClick(Sender: TObject);
    procedure mnuTableClick(Sender: TObject);
    procedure mnuUndoClick(Sender: TObject);
    procedure mnuAboutClick(Sender: TObject);
    procedure mnuCutClick(Sender: TObject);
    procedure mnuExitClick(Sender: TObject);
    procedure mnuNewClick(Sender: TObject);
    procedure mnuOpenClick(Sender: TObject);
    procedure mnuSaveClick(Sender: TObject);
    procedure mnuUOListClick(Sender: TObject);
    procedure mnuUppercaseClick(Sender: TObject);
    procedure mnuWordwrapClick(Sender: TObject);
    procedure ReplaceDialog1Find(Sender: TObject);
    procedure ReplaceDialog1Replace(Sender: TObject);
    procedure txtEdChange(Sender: TObject);
    procedure txtEdKeyPress(Sender: TObject; var Key: char);
    procedure txtEdMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
  private
    procedure MDStyle(Insert: string);
    procedure MDTag(Insert: string);
    procedure MDHeader(Count: integer);
    procedure MDList(Ordered: boolean);
    procedure MDDoCase(Upper: boolean);
    procedure HandleClickItem(Sender: TObject);
    procedure HandleCustomClick(Sender: TObject);
    procedure LoadTemplates;
    procedure CustomMenuItem;
    procedure CannotFindText;
    procedure UpdateStatusBar;
    procedure DoOpenDocument;

  const
    dlgFilter = 'Markdown Files(*.md)|*.md|Text Files(*.txt)|*.txt|All Files(*.*)|*.*';
  const
    DocChanged = 'The Document has changed do you want to save now?';
  const
    DefaultDateTimeFrmt = 'DD/MM/YY hh:mm:ss';
  public

  end;

var
  frmmain: Tfrmmain;
  TemplatePath: string;
  FindStr: string;
  DlgExecuteOK: boolean;
  m_OpenFile: string;

implementation

{$R *.lfm}

{ Tfrmmain }

procedure Tfrmmain.DoOpenDocument;
var
  od: TOpenDialog;
begin
  od := TOpenDialog.Create(self);
  od.Title := 'Open';
  od.Filter := dlgFilter;

  if od.Execute then
  begin
    m_OpenFile := od.FileName;
    txted.Lines.LoadFromFile(m_OpenFile);
    txtEd.Modified := False;
  end;
  od.Free;
end;

procedure Tfrmmain.UpdateStatusBar;
begin
  StatusBar1.Panels[0].Text :=
    '  Ln ' + IntToStr(txted.CaretPos.Y + 1) + ', Col ' + IntToStr(txtEd.CaretPos.X);

  if txtEd.Modified then
  begin
    StatusBar1.Panels[1].Text := 'MOD';
  end
  else
  begin
    StatusBar1.Panels[1].Text := '';
  end;
end;

procedure Tfrmmain.CannotFindText;
begin
  MessageDlg(Text, 'Cannot Find "' + FindStr + '"',
    mtInformation, [mbOK], 0);
end;

function SearchMemo(Memo: TMemo; const SearchString: string;
  Options: TFindOptions): boolean;
var
  Buffer, P: PChar;
  Size: word;

begin

  Result := False;

  if Length(SearchString) = 0 then
    Exit;

  Size := Memo.GetTextLen;

  if (Size = 0) then
    Exit;

  Buffer := SysUtils.StrAlloc(Size + 1);

  try
    Memo.GetTextBuf(Buffer, Size + 1);

    if frDown in Options then
      P := SearchBuf(Buffer, Size, Memo.SelStart, Memo.SelLength, SearchString, [soDown])
    else
      P := SearchBuf(Buffer, Size, Memo.SelStart, Memo.SelLength, SearchString, []);

    if (frMatchCase in Options) then
      P := SearchBuf(Buffer, Size, Memo.SelStart, Memo.SelLength,
        SearchString, [soMatchCase]);

    if (frWholeWord in Options) then

      P := SearchBuf(Buffer, Size, Memo.SelStart, Memo.SelLength,
        SearchString, [soWholeWord]);

    if P <> nil then
    begin
      Memo.SelStart := P - Buffer;
      Memo.SelLength := Length(SearchString);
      Result := True;
    end;
  finally
    SysUtils.StrDispose(Buffer);
  end;

  Memo.SetFocus;
end;

procedure Tfrmmain.HandleCustomClick(Sender: TObject);
var
  S: string;
begin
  S := Trim(InputBox('Custom Section', 'Enter selection text', ''));
  if Length(S) > 0 then
  begin
    txted.SelText := '## ' + S + sLineBreak;
  end;
  txted.SetFocus;
end;

procedure Tfrmmain.CustomMenuItem;
var
  mi: TMenuItem;
begin
  mi := TMenuItem.Create(mnuSection);
  mi.Caption := 'Custom';
  mi.Default := True;
  mi.OnClick := @HandleCustomClick;
  mnuSection.Add(mi);
end;

procedure Tfrmmain.HandleClickItem(Sender: TObject);
var
  mi: TMenuItem;
  lzFile: string;
  sl: TStringList;
begin
  mi := TMenuItem(Sender);

  lzFile := TemplatePath + mi.Caption + '.txt';
  //Check the file is here.

  if FileExists(lzFile) then
  begin
    sl := TStringList.Create;
    sl.LoadFromFile(lzFile);
    txtEd.SelText := sl.GetText;
  end;
  txtEd.SetFocus;
  sl.Free;
end;


procedure Split(Delimiter: char; Str: string; ListOfStrings: TStrings);
begin
  ListOfStrings.Clear;
  ListOfStrings.Delimiter := Delimiter;
  ListOfStrings.StrictDelimiter := True; // Requires D2006 or newer.
  ListOfStrings.DelimitedText := Str;
end;

procedure Tfrmmain.LoadTemplates;
var
  mi: TMenuItem;
  SR: TSearchRec;
begin

  if FindFirst(TemplatePath + '*.txt', faAnyFile, SR) = 0 then
  begin
    repeat
      //Create menu item
      mi := TMenuItem.Create(mnuSection);
      mi.Caption := ExtractFileNameWithoutExt(sr.Name);
      mi.OnClick := @HandleClickItem;
      mnuSection.Add(mi);
    until FindNext(SR) <> 0;
  end;
end;

procedure Tfrmmain.MDDoCase(Upper: boolean);
begin
  if txtEd.SelLength > 0 then
  begin
    if Upper then
    begin
      txted.SelText := Uppercase(txted.SelText);
    end
    else
    begin
      txted.SelText := Lowercase(txted.SelText);
    end;
  end;
  txted.SetFocus;
end;

procedure Tfrmmain.MDList(Ordered: boolean);
var
  S: string;
  lst: TStringList;
  I: integer;
  S0: string;
  sCheck: string;
begin
  S0 := '';
  lst := TStringList.Create;
  S := txtEd.SelText;

  sCheck := '';

  if cmdLstCheck.Down then
  begin
    sCheck := '[ ] ';
  end;

  Split(#13, S, lst);
  for I := 0 to lst.Count - 1 do
  begin
    if Ordered then
    begin
      S0 := S0 + IntToStr(I + 1) + '. ' + sCheck + Trim(lst[I]) + sLineBreak;
    end
    else
    begin
      S0 := S0 + '- ' + sCheck + Trim(lst[I]) + sLineBreak;
    end;
  end;
  txted.SelText := Trim(S0);
  S0 := '';
  s := '';
  lst.Free;
end;

procedure Tfrmmain.MDHeader(Count: integer);
var
  X: integer;
  S: string;
begin
  S := '';

  for X := 1 to Count do
  begin
    S := S + '#';
  end;

  txted.SelText := S + ' ' + txtEd.SelText;
  S := '';
  txted.SetFocus;
end;

procedure Tfrmmain.MDTag(Insert: string);
var
  S0: string;
  sEnd: string;
begin
  S0 := txtEd.SelText;

  sEnd := '</' + Insert + '>';

  txtEd.SelText := '<' + Insert + '>' + S0 + sEnd;

  if Length(S0) = 0 then
  begin
    txted.SelStart := txtEd.SelStart - Length(sEnd);
  end;

  txtEd.SetFocus;
  S0 := '';
  sEnd := '';
end;

procedure Tfrmmain.MDStyle(Insert: string);
var
  S0: string;
begin

  S0 := txted.SelText;
  txted.SelText := Insert + S0 + Insert;

  if Length(S0) = 0 then
  begin
    txted.SelStart := txted.SelStart - Length(Insert);
  end;

  txted.SetFocus;
end;

procedure Tfrmmain.FormCreate(Sender: TObject);
begin
  DlgExecuteOK := False;
  mnuAbout.Caption := '&About ' + Caption + '...';
  //App data path
  Data_Path := ExtractFilePath(Application.ExeName) + 'data\';

  //Template path
  TemplatePath := Data_Path + 'tpl\';
  //Create custom menu
  CustomMenuItem;
  //Load the section templates
  if DirectoryExists(TemplatePath) then
  begin
    LoadTemplates;
  end;
  txtEdChange(Sender);
end;

procedure Tfrmmain.mnuBoldItalicClick(Sender: TObject);
begin
  MDStyle('***');
end;

procedure Tfrmmain.mnuCharCodesClick(Sender: TObject);
var
  frm: TfrmChars;
begin
  tools.ButtonPress := 0;

  frm := TfrmChars.Create(self);
  frm.ShowModal;

  if tools.ButtonPress = 1 then begin
    txtEd.SelText := tools.CharCode;
  end;

  txted.SetFocus;
  frm.Free;
end;

procedure Tfrmmain.mnuCodeLanClick(Sender: TObject);
var
  frm : TfrmLan;
begin
  tools.ButtonPress := 0;
  frm := TfrmLan.Create(self);
  frmLan.ShowModal;
  if tools.ButtonPress = 1 then
  begin
    txted.SelText := '```' + tools.CodeLan + sLineBreak + txtEd.SelText +
      sLineBreak + '```';
  end;
  txted.SetFocus;
  frm.Free;
end;

procedure Tfrmmain.mnuFindClick(Sender: TObject);
begin
  FindDialog1.FindText := txtEd.SelText;
  FindDialog1.Execute;
end;

procedure Tfrmmain.mnuGotoClick(Sender: TObject);
var
  iCode, lnIndex, lnLen, RetVal: integer;
  sNum: string;
begin

  lnIndex := 0;
  RetVal := 0;

  lnIndex := (txtEd.CaretPos.Y + 1);
  sNum := Trim(InputBox('Goto', 'Line Number:', IntToStr(lnIndex)));

  //Check for vaild int
  val(sNum, lnIndex, iCode);

  if iCode = 1 then
  begin
    MessageDlg(Text, 'Input was not a valid Integer.', mtWarning, [mbOK], 0);
  end
  else
  begin
    //Convert the string to a number
    lnIndex := StrToInt(sNum);
    //Get line index
    RetVal := SendMessage(txtEd.Handle, EM_LINEINDEX, lnIndex - 1, 0);
    //Get line length
    lnLen := SendMessage(txtEd.Handle, EM_LINELENGTH, RetVal, 0) + 2;
    //highlight the line
    txtEd.SelStart := RetVal;
    txtEd.SelLength := lnLen;
    txtEd.SetFocus;
  end;
end;

procedure Tfrmmain.mnuHighlightClick(Sender: TObject);
begin
  txtEd.SelText := '<mark>' + txtEd.SelText + '</mark>';
  txtEd.SetFocus;
end;

procedure Tfrmmain.mnuInlineCodeClick(Sender: TObject);
begin
  if Pos('`', txtEd.Text) > 0 then
  begin
    MDStyle('``');
  end
  else
  begin
    MDStyle('`');
  end;
  txted.SetFocus;
end;

procedure Tfrmmain.cmdNewClick(Sender: TObject);
begin
  mnuNewClick(Sender);
end;

procedure Tfrmmain.cmdOListClick(Sender: TObject);
begin
  mnuOListClick(Sender);
end;

procedure Tfrmmain.cmdH1Click(Sender: TObject);
begin
  mnuH1Click(Sender);
end;

procedure Tfrmmain.cmdBoldClick(Sender: TObject);
begin
  mnuBoldClick(Sender);
end;

procedure Tfrmmain.cmdBoldItlicClick(Sender: TObject);
begin
  mnuBoldItalicClick(Sender);
end;

procedure Tfrmmain.Button1Click(Sender: TObject);
BEGIN
end;

procedure Tfrmmain.cmdCodeClick(Sender: TObject);
begin
  mnuInlineCodeClick(Sender);
end;

procedure Tfrmmain.cmdCodeLanuageClick(Sender: TObject);
begin
  mnuCodeLanClick(Sender);
end;

procedure Tfrmmain.cmdDateTimeClick(Sender: TObject);
begin
  mnuDateTimeClick(Sender);
end;

procedure Tfrmmain.cmdH2Click(Sender: TObject);
begin
  mnuH2Click(Sender);
end;

procedure Tfrmmain.cmdHLineClick(Sender: TObject);
begin
  mnuHozLineClick(Sender);
end;

procedure Tfrmmain.cmdHtmlCodesClick(Sender: TObject);
begin
  mnuCharCodesClick(sender);
end;

procedure Tfrmmain.cmdHyperlinkClick(Sender: TObject);
begin
  mnuHyperlinkClick(Sender);
end;

procedure Tfrmmain.cmdImgClick(Sender: TObject);
begin
  mnuImageClick(Sender);
end;

procedure Tfrmmain.cmdItalicClick(Sender: TObject);
begin
  mnuItalicClick(Sender);
end;

procedure Tfrmmain.cmdLstCheckClick(Sender: TObject);
begin

end;

procedure Tfrmmain.cmdMarkClick(Sender: TObject);
begin
  mnuHighlightClick(Sender);
end;

procedure Tfrmmain.cmdOpenClick(Sender: TObject);
begin
  mnuOpenClick(Sender);
end;

procedure Tfrmmain.cmdQuoteClick(Sender: TObject);
begin
  mnuBQuoteClick(Sender);
end;

procedure Tfrmmain.cmdSaveClick(Sender: TObject);
begin
  mnuSaveClick(Sender);
end;

procedure Tfrmmain.cmdStrikeClick(Sender: TObject);
begin
  mnuStrikeClick(Sender);
end;

procedure Tfrmmain.cmdTableClick(Sender: TObject);
begin
  mnuTableClick(Sender);
end;

procedure Tfrmmain.cmdUndoClick(Sender: TObject);
begin
  mnuUndoClick(Sender);
end;

procedure Tfrmmain.cmdUOListClick(Sender: TObject);
begin
  mnuUOListClick(Sender);
end;

procedure Tfrmmain.FindDialog1Find(Sender: TObject);
begin
  with Sender as TFindDialog do
  begin
    FindStr := FindText;
    if not SearchMemo(txtEd, FindText, Options) then
    begin
      CannotFindText;
    end;
  end;
end;

procedure Tfrmmain.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  CloseAction := caNone;

  if txtEd.Modified then
  begin
    case MessageDlg(Text, DocChanged, mtInformation, [mbYes, mbNo, mbCancel], 0) of
      mrNo:
      begin
        CloseAction := caFree;
      end;
      mrYes:
      begin
        if FileExists(m_OpenFile) then
        begin
          txtEd.Lines.SaveToFile(m_OpenFile);
          CloseAction := caFree;
        end
        else
        begin
          mnuSaveAsClick(Sender);
          if DlgExecuteOK then
          begin
            CloseAction := caFree;
          end;
        end;
      end;
    end;
  end
  else
  begin
    CloseAction := caFree;
  end;

end;

procedure Tfrmmain.mnuBoldClick(Sender: TObject);
begin
  MDStyle('**');
end;

procedure Tfrmmain.mnuBQuoteClick(Sender: TObject);
var
  S: string;
  lst: TStringList;
  I: integer;
  S0: string;
begin
  S0 := '';
  lst := TStringList.Create;
  S := txtEd.SelText;
  Split(#13, S, lst);
  for I := 0 to lst.Count - 1 do
  begin
    S0 := S0 + '> ' + Trim(lst[I]) + sLineBreak;
  end;

  if Length(S0) = 0 then
  begin
    txted.SelText := '> ';
  end
  else
  begin
    txted.SelText := Trim(S0);
  end;

  S0 := '';
  S := '';
  lst.Free;

end;

procedure Tfrmmain.mnuCopyClick(Sender: TObject);
begin
  txted.CopyToClipboard;
  txted.SetFocus;
end;

procedure Tfrmmain.mnuDateTimeClick(Sender: TObject);
var
  sFrmt: string;
  NoCancel: boolean;
begin
  sFrmt := DefaultDateTimeFrmt;
  NoCancel := InputQuery('Date / Time', 'Format', sFrmt);

  if NoCancel then
  begin
    txted.SelText := FormatDateTime(sFrmt, Now) + sLineBreak;
  end;

  txted.SetFocus;
  sFrmt := '';
end;

procedure Tfrmmain.mnuH1Click(Sender: TObject);
begin
  MDHeader(1);
end;

procedure Tfrmmain.mnuH2Click(Sender: TObject);
begin
  MDHeader(2);
end;

procedure Tfrmmain.mnuH3Click(Sender: TObject);
begin
  MDHeader(3);
end;

procedure Tfrmmain.mnuH4Click(Sender: TObject);
begin
  MDHeader(4);
end;

procedure Tfrmmain.mnuH5Click(Sender: TObject);
begin
  MDHeader(5);
end;

procedure Tfrmmain.mnuH6Click(Sender: TObject);
begin
  MDHeader(6);
end;

procedure Tfrmmain.mnuHozLineClick(Sender: TObject);
begin
  txted.SelText := sLineBreak + '----------' + sLineBreak + sLineBreak;
  txted.SetFocus;
end;

procedure Tfrmmain.mnuHyperlinkClick(Sender: TObject);
var
  frm : TfrmHyeperLink;
begin
  frm := TfrmHyeperLink.Create(self);
  Tools.ButtonPress := 0;
  frmHyeperLink.ShowModal;

  if Tools.ButtonPress = 1 then
  begin
    txted.SelText := '[' + Tools.LinkUrl + '](' + Tools.LinkUrl +
      ' "' + Tools.LinkDesc + '")' + sLineBreak;
  end;

  txted.SetFocus;
  frm.Free;
end;

procedure Tfrmmain.mnuImageClick(Sender: TObject);
var
  frm : TfrmImage;
begin
  frm := TfrmImage.Create(self);
  Tools.ButtonPress := 0;
  FrmImage.ShowModal;

  if Tools.ButtonPress = 1 then
  begin
    txted.SelText := '![' + Tools.ImgDesc + '](' + Tools.ImgLink + ')' + sLineBreak;
  end;

  txted.SetFocus;
  frm.Free;
end;

procedure Tfrmmain.mnuInsertFileClick(Sender: TObject);
var
  od : TOpenDialog;
  sl : TStringList;
begin
  od := TOpenDialog.Create(self);
  sl := TStringList.Create;

  od.Title := 'Insert File';
  od.Filter := dlgFilter;
  od.FilterIndex := 1;

  if od.Execute then begin
    sl.LoadFromFile(od.FileName);
    txted.SelText := sl.GetText;
    sl.Free;
  end;
  od.Free;
end;

procedure Tfrmmain.mnuItalicClick(Sender: TObject);
begin
  MDStyle('*');
end;

procedure Tfrmmain.mnuLowercaseClick(Sender: TObject);
begin
  MDDoCase(False);
end;

procedure Tfrmmain.mnuNewWndClick(Sender: TObject);
var
  p: TProcess;
begin
  //Start a new process of the app
  p := TProcess.Create(nil);
  p.Executable := Application.ExeName;
  p.Execute;
  p.Free;
end;

procedure Tfrmmain.mnuOListClick(Sender: TObject);
begin
  MDList(True);
end;

procedure Tfrmmain.mnuPasteClick(Sender: TObject);
begin
  txted.PasteFromClipboard;
  txted.SetFocus;
end;

procedure Tfrmmain.mnuReplaceClick(Sender: TObject);
begin
  ReplaceDialog1.FindText := FindStr;
  ReplaceDialog1.Execute;
end;

procedure Tfrmmain.mnuSaveAsClick(Sender: TObject);
var
  sd: TSaveDialog;
begin
  sd := TSaveDialog.Create(self);
  sd.Title := 'Save As';
  sd.FilterIndex := 1;
  sd.Filter := dlgFilter;
  sd.DefaultExt := 'md';

  DlgExecuteOK := sd.Execute;

  if DlgExecuteOK then
  begin

    if FileExists(sd.FileName) then
    begin
      if MessageDlg(Text, 'The filename already exists do you want to overwrite the file?',
        mtInformation, [mbYes, mbNo, mbCancel], 0) = mrYes then
      begin
        m_OpenFile := sd.FileName;
        txted.Lines.SaveToFile(sd.FileName);
      end;
    end
    else
    begin
      m_OpenFile := sd.FileName;
      txted.Lines.SaveToFile(sd.FileName);
    end;
    txtEd.Modified := False;
  end;
  sd.Free;
  txted.SetFocus;
  UpdateStatusBar;
end;

procedure Tfrmmain.mnuSelectAllClick(Sender: TObject);
begin
  txted.SelectAll;
  txted.SetFocus;
end;

procedure Tfrmmain.mnuStrikeClick(Sender: TObject);
begin
  MDStyle('~~');
end;

procedure Tfrmmain.mnuSubscriptClick(Sender: TObject);
begin
  MDTag('sub');
end;

procedure Tfrmmain.mnuSuperscriptClick(Sender: TObject);
begin
  MDTag('sup');
end;

procedure Tfrmmain.mnuTableClick(Sender: TObject);
begin
  tools.ButtonPress := 0;
  frmTable.ShowModal;

  if tools.ButtonPress = 1 then
  begin
    txted.SelText := tools.TableCode;
  end;

  txted.SetFocus;
end;

procedure Tfrmmain.mnuUndoClick(Sender: TObject);
begin
  txted.Undo;
  txted.SetFocus;
end;

procedure Tfrmmain.mnuAboutClick(Sender: TObject);
var
  frm: TfrmAbout;
begin
  frm := TfrmAbout.Create(self);
  frm.ShowModal;
end;

procedure Tfrmmain.mnuCutClick(Sender: TObject);
begin
  txted.CutToClipboard;
  txted.SetFocus;
end;

procedure Tfrmmain.mnuExitClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmmain.mnuNewClick(Sender: TObject);
begin

  if txtEd.Modified then
  begin
    case MessageDlg(Text, DocChanged, mtInformation, [mbYes, mbNo, mbCancel], 0) of

      mrNo:
      begin
        txtEd.Clear;
        txtEd.Modified := False;
        m_OpenFile := '';
      end;
      mrYes:
      begin

        if FileExists(m_OpenFile) then
        begin
          txtEd.Lines.SaveToFile(m_OpenFile);
          txtEd.Clear;
          txtEd.Modified := False;
          m_OpenFile := '';
        end
        else
        begin
          mnuSaveAsClick(Sender);
          if DlgExecuteOK then
          begin
            txtEd.Clear;
            txtEd.Modified := False;
            m_OpenFile := '';
          end;
        end;
      end;
    end;
  end
  else
  begin
    txted.Clear;
    m_OpenFile := '';
  end;

  UpdateStatusBar;
end;

procedure Tfrmmain.mnuOpenClick(Sender: TObject);
begin

  if txtEd.Modified then
  begin
    case MessageDlg(Text, DocChanged, mtInformation, [mbYes, mbNo, mbCancel], 0) of
      mrNo:
      begin
        DoOpenDocument;
      end;
      mrYes:
      begin

        if FileExists(m_OpenFile) then
        begin
          txtEd.Lines.SaveToFile(m_OpenFile);
          DoOpenDocument;
        end
        else
        begin
          mnuSaveAsClick(Sender);
          if DlgExecuteOK then
          begin
            DoOpenDocument;
          end;
        end;
      end;
    end;
  end
  else
  begin
    DoOpenDocument;
  end;

  UpdateStatusBar;
  txted.SetFocus;

end;

procedure Tfrmmain.mnuSaveClick(Sender: TObject);
begin
  if FileExists(m_OpenFile) then
  begin
    txtEd.Lines.SaveToFile(m_OpenFile);
    txtEd.Modified := False;
  end
  else
  begin
    mnuSaveAsClick(Sender);
  end;

  UpdateStatusBar;
end;

procedure Tfrmmain.mnuUOListClick(Sender: TObject);
begin
  MDList(False);
end;

procedure Tfrmmain.mnuUppercaseClick(Sender: TObject);
begin
  MDDoCase(True);
end;

procedure Tfrmmain.mnuWordwrapClick(Sender: TObject);
begin
  mnuWordwrap.Checked := not mnuWordwrap.Checked;
  txtEd.WordWrap := mnuWordwrap.Checked;
end;

procedure Tfrmmain.ReplaceDialog1Find(Sender: TObject);
begin
  with Sender as TReplaceDialog do
    if not SearchMemo(txtEd, FindText, Options) then
    begin
      CannotFindText;
    end;
end;

procedure Tfrmmain.ReplaceDialog1Replace(Sender: TObject);
var
  Found: boolean;
begin
  with ReplaceDialog1 do

  begin
    { Replace }
    if (frReplace in Options) and (txtEd.SelText = FindText) then
      txtEd.SelText := ReplaceText;

    Found := SearchMemo(txtEd, FindText, Options);

    { Replace All }
    if (frReplaceAll in Options) then
    begin
      txtEd.SelStart := 0;
      while Found do
      begin
        if (txtEd.SelText = FindText) then
          txtEd.SelText := ReplaceText;
        Found := SearchMemo(txtEd, FindText, Options);
      end;
      if not Found then
        SendMessage(txtEd.Handle, WM_VSCROLL, SB_TOP, 0);
    end;

    if (not Found) and (frReplace in Options) then
    begin
      CannotFindText;
    end;
  end;
end;

procedure Tfrmmain.txtEdChange(Sender: TObject);
begin
  UpdateStatusBar;
end;

procedure Tfrmmain.txtEdKeyPress(Sender: TObject; var Key: char);
var
  line, col, indent: integer;
  S: string;
begin

  if key = '[' then
  begin
    txted.SelText := '[]';
    txted.SelStart := txted.SelStart - 1;
    key := #0;
  end;
  if key = '(' then
  begin
    txted.SelText := '()';
    txted.SelStart := txted.SelStart - 1;
    key := #0;
  end;

  if key = '{' then
  begin
    txted.SelText := '{}';
    txted.SelStart := txted.SelStart - 1;
    key := #0;
  end;

  if key = #13 then
  begin
    key := #0;
    with Sender as TMemo do
    begin
      // figure out line and column position of caret
      line := CaretPos.Y;
      Col := CaretPos.X;

      // get part of current line in front of caret
      S := Copy(Lines[line], 1, col);

      // count blanks and tabs in this string
      indent := 0;
      while (indent < length(S)) and (S[indent + 1] in [' ', #9]) do
        Inc(indent);

      // insert a linebreak followed by the substring of blanks and tabs
      SelText := sLineBreak + Copy(S, 1, indent);
      S := '';
    end;
  end;
end;

procedure Tfrmmain.txtEdMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
begin
  txtEdChange(Sender);
end;

end.
