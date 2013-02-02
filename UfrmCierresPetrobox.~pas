unit UfrmCierresPetrobox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UfrmBaseIntro, Grids, BaseGrid, AdvGrid, AdvCGrid, DB, AstaDrv2,
  AstaClientDataset, ImgList, TFlatTitlebarUnit, ComCtrls, ToolWin,
  ExtCtrls;

type
  TfrmCierrePetrobox = class(TfrmBaseIntro)
    grid: TAdvColumnGrid;
    procedure bCloseClick(Sender: TObject);
    procedure bSaveClick(Sender: TObject);
    procedure gridDblClickCell(Sender: TObject; ARow, ACol: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCierrePetrobox: TfrmCierrePetrobox;

implementation

{$R *.dfm}

procedure TfrmCierrePetrobox.bCloseClick(Sender: TObject);
begin
     ModalResult := mrCancel;

end;

procedure TfrmCierrePetrobox.bSaveClick(Sender: TObject);
begin
     ModalResult := mrOk;
end;

procedure TfrmCierrePetrobox.gridDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
    inherited;
    ModalResult := mrOk;
end;

end.
