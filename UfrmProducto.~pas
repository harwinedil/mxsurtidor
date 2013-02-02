unit UfrmProducto;

interface

uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
	Dialogs, UfrmBaseIntro, DB, AstaDrv2, AstaClientDataset, ImgList,AstaUtil,
	TFlatTitlebarUnit, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,AstaDBtools,
	SUIDBCtrls,Uclassurtidor_producto,Uconstantes,DBCtrls, ScktComp,strUtils,
	AstaCustomSocket, AstaClientSocket,Uclassecurity_mxuser;

type
	TfrmsurProducto = class(TfrmBaseIntro)
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
		registro : Tsurtidor_producto;
	public
			procedure init;		override;
			procedure freeAll;   override;
			procedure updateData; override;
			procedure syncro;
	end;

var
	frmsurProducto: TfrmsurProducto;

implementation
uses UfrmMAIN;
{$R *.dfm}

procedure TfrmsurProducto.freeAll;
begin
	inherited;
	FreeAndNil(registro);
end;

procedure TfrmsurProducto.init;
begin
	inherited;
	registro := Tsurtidor_producto.Create;
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

procedure TfrmsurProducto.updateData;
begin
	inherited;
	registro.QBE(cds);
end;

procedure TfrmsurProducto.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmsurProducto.syncro;
var  i : word;
begin
	if qPetrobox.Active then qPetrobox.Close;
	qPetrobox.Open;

	if not cds.Active then
		registro.QBE(cds);

  i := 0;
	while not qPetrobox.Eof do
	begin
			if cds.Locate('id',qPetrobox.fieldbyname('id').AsString,[loCaseInsensitive]) then //actualiza
			begin
					 registro.fromClientDataSet(qPetrobox);
					 registro.save(qTran,tUpdate);
			end
			else begin //inserta
					 registro.fromClientDataSet(qPetrobox);
           registro.abrev := IntToStr(i);
           registro.codigo1 := i;
					 registro.save(qTran,tAdd);
           inc(i);
			end;
			qPetrobox.Next;
	end;
	qPetrobox.Close;
	ShowMessage(frmMAIN.getLabel(mSyncroEND));
	registro.init;
	registro.QBE(cds);
end;

procedure TfrmsurProducto.bSyncroClick(Sender: TObject);
begin
	inherited;
	syncro;
end;

procedure TfrmsurProducto.socketPetroboxConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  inherited;
  bSyncro.Enabled:=true;
end;

initialization
	RegisterClass(TfrmsurProducto);

end.
