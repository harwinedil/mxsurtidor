unit UfrmIntroCotizacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UfrmBaseIntro, StdCtrls, Mask, TFlatMaskEditUnit, DB, AstaDrv2,
  AstaClientDataset, ImgList, TFlatTitlebarUnit, ComCtrls, ToolWin,
  ExtCtrls, TFlatEditUnit, TFlatSpinEditUnit, ToolEdit, CurrEdit, JvExMask,
  JvToolEdit;

type
  TfrmIntroCotizacion = class(TfrmBaseIntro)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cMN: TCurrencyEdit;
    cMNMIN: TCurrencyEdit;
    cMNMAX: TCurrencyEdit;
    cUFV: TCurrencyEdit;
    cFecha: TJvDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
        procedure loadConfig; override;
  end;

var
  frmIntroCotizacion: TfrmIntroCotizacion;

implementation

{$R *.dfm}

{ TfrmBaseIntro2 }

procedure TfrmIntroCotizacion.loadConfig;
begin
  inherited;
  caption := lCaption.Caption;
  
end;

procedure TfrmIntroCotizacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  action := caFree;
end;

end.
