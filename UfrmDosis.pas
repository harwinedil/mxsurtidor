unit UfrmDosis;

interface

uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
	Dialogs, UfrmBaseIntro, DB, AstaDrv2, AstaClientDataset, ImgList,AstaUtil,
	TFlatTitlebarUnit, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,AstaDBtools,
	SUIDBCtrls,Uclassurtidor_dosis,Uconstantes,DBCtrls, ScktComp,strUtils,
  UGralUtilidades, AstaCustomSocket, AstaClientSocket,Uclassecurity_mxuser
	;

const
     tCompu = 312;  //id factura computarizada
     tManual= 313;  //id factura manual
type
	TfrmDosis = class(TfrmBaseIntro)
		suiDBGrid1: TsuiDBGrid;
		qPetrobox: TAstaClientDataSet;
		socketPetrobox: TAstaClientSocket;
		qTran: TAstaClientDataSet;
		procedure FormKeyDown(Sender: TObject; var Key: Word;
			Shift: TShiftState);
		procedure bSyncroClick(Sender: TObject);
    procedure socketPetroboxConnect(Sender: TObject;
      Socket: TCustomWinSocket);
	private
		registro : Tsurtidor_dosis;
	public
			procedure init;		override;
			procedure freeAll;   override;   
			procedure updateData; override;
			procedure syncro;       override;
      procedure add; OVERRIDE;
	end;

var
	frmDosis: TfrmDosis;

implementation
uses UfrmMAIN;
{$R *.dfm}

procedure TfrmDosis.freeAll;
begin
	inherited;
	FreeAndNil(registro);
end;

procedure TfrmDosis.init;
begin
	inherited;
	registro := Tsurtidor_dosis.Create;
	socketPetrobox.Address := IfThen(frmMAIN.configLocal.Values[kPetroboxServer]='','127.0.0.1',frmMAIN.configLocal.Values[kPetroboxServer]);
	socketPetrobox.Port		:= StrToInt( IfThen((frmMAIN.configLocal.Values[kPetroboxPort])='','7001',frmMAIN.configLocal.Values[kPetroboxPort]));
  socketPetrobox.ApplicationName    := frmMAIN.appName;
  socketPetrobox.ApplicationVersion := frmMAIN.version;
  socketPetrobox.UserName           := Guser.login;

	try
		socketPetrobox.Active := true;
	except on E:Exception do
       Application.MessageBox( Pchar(frmMAIN.getLabel(mErrorConectarSocket)+EOL+e.Message),Pchar(frmMAIN.getLabel(capError)), MB_ICONSTOP);
	end;

	updateData;
end;

procedure TfrmDosis.updateData;
begin
	inherited;
	registro.QBE(cds);
end;

procedure TfrmDosis.FormKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	inherited;
	if key= VK_F11 then
	begin
			 syncro;
			 updateData;
			 key := 0;
	end;
end;

procedure TfrmDosis.syncro;
begin
	if qPetrobox.Active then qPetrobox.Close;
	qPetrobox.Open;

	if not cds.Active then
		registro.QBE(cds);

	while not qPetrobox.Eof do
	begin
			if cds.Locate('id',qPetrobox.fieldbyname('id').AsString,[loCaseInsensitive]) then //actualiza
			begin
					 registro.fromClientDataSet(qPetrobox);
           registro.tipo_id := tCompu;
           registro.fecha_autorizacion := utils.toFechaRangoFin(registro.fecha_autorizacion);
					 registro.save(qTran,tUpdate);
			end
			else begin //inserta
					 registro.fromClientDataSet(qPetrobox);
           registro.tipo_id := tCompu;
           registro.fecha_autorizacion := utils.toFechaRangoFin(registro.fecha_autorizacion);
					 registro.save(qTran,tAdd);
			end;
			qPetrobox.Next;
	end;
	qPetrobox.Close;
	ShowMessage(frmMAIN.getLabel(mSyncroEND));
	registro.init;
	registro.QBE(cds);
end;

procedure TfrmDosis.bSyncroClick(Sender: TObject);
begin
	inherited;
	syncro;
end;

procedure TfrmDosis.socketPetroboxConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  inherited;
  bSyncro.Enabled:=true;
end;

procedure TfrmDosis.add;
begin
  inherited;

end;

initialization
	RegisterClass(TfrmDosis);

end.
