unit UfrmManguera;

interface

uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
	Dialogs, UfrmBaseIntro, DB, AstaDrv2, AstaClientDataset, ImgList,AstaUtil,
	TFlatTitlebarUnit, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,AstaDBtools,
	SUIDBCtrls,Uclassurtidor_manguera,Uconstantes,DBCtrls, ScktComp,strUtils,
	AstaCustomSocket, AstaClientSocket,Uclassecurity_mxuser;

type
	TfrmManguera = class(TfrmBaseIntro)
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
		registro : Tsurtidor_manguera;
	public
			procedure init;		override;
			procedure freeAll;   override;
			procedure updateData; override;
			procedure syncro;
	end;

var
	frmManguera: TfrmManguera;

implementation
uses UfrmMAIN;
{$R *.dfm}

procedure TfrmManguera.freeAll;
begin
	inherited;
	FreeAndNil(registro);
end;

procedure TfrmManguera.init;
begin
	inherited;
	registro := Tsurtidor_manguera.Create;
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

procedure TfrmManguera.updateData;
begin
	inherited;
	registro.QBE(cds);
end;

procedure TfrmManguera.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmManguera.syncro;
begin
	if qPetrobox.Active then qPetrobox.Close;
	qPetrobox.Open;

	if not cds.Active then
		registro.QBE(cds);

	while not qPetrobox.Eof do
	begin
			if cds.Locate('id',qPetrobox.fieldbyname('id').AsString,[loCaseInsensitive]) then //actualiza
			begin
//					 registro.fromClientDataSet(qPetrobox);
//					 registro.save(qTran,tUpdate);
			end
			else begin //inserta
					 registro.fromClientDataSet(qPetrobox);
					 registro.save(qTran,tAdd);
			end;
			qPetrobox.Next;
	end;
	qPetrobox.Close;
	ShowMessage(frmMAIN.getLabel(mSyncroEND));
	registro.init;
	registro.QBE(cds);
end;

procedure TfrmManguera.bSyncroClick(Sender: TObject);
begin
	inherited;
	syncro;
end;

procedure TfrmManguera.socketPetroboxConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  inherited;
  bSyncro.Enabled:=true;
end;

initialization
	RegisterClass(TfrmManguera);

end.
