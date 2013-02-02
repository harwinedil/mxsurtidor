unit UfrmSelectBomba;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UfrmBaseIntro, TFlatCheckListBoxUnit, DB, AstaDrv2,
  AstaClientDataset, ImgList, TFlatTitlebarUnit, ComCtrls, ToolWin,
  ExtCtrls;

type
  TfrmSelectBomba = class(TfrmBaseIntro)
    cBombas: TFlatCheckListBox;
    procedure bCloseClick(Sender: TObject);
    procedure bSaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure init; OVERRIDE;
    procedure freeall; override;
    procedure updateData; override;
    function  getSelectionList : String;
  end;

var
  frmSelectBomba: TfrmSelectBomba;

implementation

{$R *.dfm}

{ TfrmSelectBomba }

procedure TfrmSelectBomba.freeall;
begin
  inherited;
  cds.Close;
end;

function TfrmSelectBomba.getSelectionList: String;
var  i : word;
     coma: string;
begin
     RESULT := '';
     coma := '';
     for i:=0 to cBombas.Items.Count-1 do
     begin
          if  cBombas.Checked[i] then
          begin
               result := result+coma +#39+cds.Lookup('descripcion',cBombas.Items.Strings[i],'ID')+#39;
               coma := ',';
          end;
     end;
end;

procedure TfrmSelectBomba.init;
begin
  inherited;
  updateData;
end;

procedure TfrmSelectBomba.updateData;
begin
  inherited;
  if cds.Active then cds.Close;
  cds.Open;

  cBombas.Items.Clear;
  while not cds.Eof do
  begin
       cBombas.Items.Add(cds.fieldbyname('descripcion').AsString);
       cds.Next;
  end;
end;

procedure TfrmSelectBomba.bCloseClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TfrmSelectBomba.bSaveClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrYes;
end;

procedure TfrmSelectBomba.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  action := caFree;
end;

end.
