unit UfrmIntroFactura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UfrmBaseIntro, StdCtrls, Mask, TFlatMaskEditUnit, DB, AstaDrv2,
  AstaClientDataset, ImgList, TFlatTitlebarUnit, ComCtrls, ToolWin,
  ExtCtrls, TFlatEditUnit, TFlatSpinEditUnit, ToolEdit, CurrEdit, Grids,
  BaseGrid, AdvGrid, AdvCGrid, SUIComboBox, JvExMask, JvToolEdit, SUIEdit,
  JvExStdCtrls, JvEdit, JvValidateEdit, DBCtrls, SUIDBCtrls;

type
  TfrmIntroFactura = class(TfrmBaseIntro)
    Panel2: TPanel;
    pLimite: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lSucursal: TLabel;
    Label5: TLabel;
    lCodigo: TLabel;
    lFecha: TLabel;
    lVendedor: TLabel;
    gResumen: TAdvColumnGrid;
    Panel4: TPanel;
    Label2: TLabel;
    cHorario: TsuiComboBox;
    cDAYTIME: TJvDateEdit;
    Label6: TLabel;
    cCode: TsuiEdit;
    Label7: TLabel;
    Label8: TLabel;
    suiEdit1: TsuiEdit;
    Label9: TLabel;
    suiEdit2: TsuiEdit;
    Label10: TLabel;
    suiComboBox1: TsuiComboBox;
    suiComboBox2: TsuiComboBox;
    Label11: TLabel;
    Label12: TLabel;
    suiEdit4: TsuiEdit;
    suiComboBox3: TsuiComboBox;
    lcc: TLabel;
    Label13: TLabel;
    suiComboBox4: TsuiComboBox;
    JvValidateEdit1: TJvValidateEdit;
    JvValidateEdit2: TJvValidateEdit;
    Label14: TLabel;
    Label15: TLabel;
    JvValidateEdit3: TJvValidateEdit;
    Label16: TLabel;
    Label17: TLabel;
    JvValidateEdit4: TJvValidateEdit;
    Label18: TLabel;
    suiEdit3: TsuiEdit;
    Label19: TLabel;
    suiEdit5: TsuiEdit;
    cSELLERID: TsuiDBLookupComboBox;
    Label20: TLabel;
    Label21: TLabel;
    suiEdit6: TsuiEdit;
    Label22: TLabel;
    suiEdit7: TsuiEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
        procedure loadConfig; override;
  end;

var
  frmIntroFactura: TfrmIntroFactura;

implementation

{$R *.dfm}

{ TfrmBaseIntro2 }

procedure TfrmIntroFactura.loadConfig;
begin
  inherited;
  caption := lCaption.Caption;
  
end;

procedure TfrmIntroFactura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  action := caFree;
end;

end.
