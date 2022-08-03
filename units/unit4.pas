unit Unit4;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  MaskEdit, Buttons, StdCtrls, Tools;

type

  { TfrmTable }

  TfrmTable = class(TForm)
    cmdInsert: TButton;
    cmdClose: TButton;
    cboCellAlign: TComboBox;
    Label1: TLabel;
    lblRows: TLabeledEdit;
    lblCells: TLabeledEdit;
    procedure cmdCloseClick(Sender: TObject);
    procedure cmdInsertClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure MakeTableCode;
    procedure ShowErr(S: string);
    function IsNumberX(S: string): boolean;
  public

  end;

var
  frmTable: TfrmTable;

implementation

{$R *.lfm}

{ TfrmTable }

function TfrmTable.IsNumberX(S: string): boolean;
var
  iValue, iCode: integer;
begin

  iValue := 0;

  Val(S, iValue, iCode);

  if iCode = 0 then
  begin
    Result := True;
  end
  else
  begin
    Result := False;
  end;
end;

procedure TfrmTable.ShowErr(S: string);
begin
  MessageDlg(Text, S + ' was not a correct integer.', mtError, [mbOK], 0);
end;

procedure TfrmTable.MakeTableCode;
var
  R, C, X, Y: integer;
  sHeader: string;
  sAlign: string;
  sCells: string;
  sRow: string;
begin
  X := 1;
  Y := 1;

  sHeader := '|';
  sRow := '';
  sCells := '';

  R := StrToInt(lblRows.Text);
  C := StrToInt(lblCells.Text);

  if cboCellAlign.ItemIndex = 0 then
  begin
    sAlign := ':-----';
  end;
  if cboCellAlign.ItemIndex = 1 then
  begin
    sAlign := '-----:';
  end;
  if cboCellAlign.ItemIndex = 2 then
  begin
    sAlign := ':-----:';
  end;
  if cboCellAlign.ItemIndex = 3 then
  begin
    sAlign := '-------';
  end;

  //Do headers
  while Y <= C do
  begin
    sHeader := sHeader + ' Header |';
    Inc(Y);
  end;
  sHeader := sHeader + sLineBreak + '|';

  //Do Alignment
  Y := 1;

  while Y <= C do
  begin
    sHeader := sHeader + sAlign + '|';
    Inc(Y);
  end;

  sHeader := sHeader + sLineBreak;
  //Build rows and cells
  while X <= R do
  begin
    for Y := 1 to C do
    begin
      sCells := sCells + 'foo   |';
    end;

    sRow := sRow + '|' + sCells + sLineBreak;
    sCells := '';
    Inc(X);
  end;

  //Store the table code.
  Tools.TableCode := sHeader + sRow + sLineBreak;

  sCells := '';
  sAlign := '';
  sRow := '';
end;

procedure TfrmTable.FormCreate(Sender: TObject);
begin
  cboCellAlign.ItemIndex := 0;
end;

procedure TfrmTable.cmdCloseClick(Sender: TObject);
begin
  tools.ButtonPress := 0;
  Close;
end;

procedure TfrmTable.cmdInsertClick(Sender: TObject);
begin
  if not IsNumberX(lblRows.Text) then
  begin
    ShowErr('Rows');
    lblRows.SetFocus;
  end
  else if not IsNumberX(lblCells.Text) then
  begin
    ShowErr('Columns');
    lblCells.SetFocus;
  end
  else
  begin
    tools.ButtonPress := 1;
    MakeTableCode();
    Close;
  end;
end;

end.
