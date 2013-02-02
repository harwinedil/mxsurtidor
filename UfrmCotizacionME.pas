unit UfrmCotizacionME;

interface

uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
	Dialogs, UfrmBaseIntro, DB, AstaDrv2, AstaClientDataset, ImgList,AstaUtil,
	TFlatTitlebarUnit, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,AstaDBtools,
	SUIDBCtrls,Uclasgeneral_cotizacionme,Uconstantes,DBCtrls, ScktComp,strUtils,
  UGralUtilidades,UfrmIntroCotizacion,
	AstaCustomSocket, AstaClientSocket, BaseGrid, AdvGrid, AdvCGrid;

type
	TfrmCotizacionME = class(TfrmBaseIntro)
		qPetrobox: TAstaClientDataSet;
		socketPetrobox: TAstaClientSocket;
		qTran: TAstaClientDataSet;
    grid: TAdvColumnGrid;
		procedure FormKeyDown(Sender: TObject; var Key: Word;
			Shift: TShiftState);
		procedure bSyncroClick(Sender: TObject);
    procedure socketPetroboxConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure suiDBGrid1DblClick(Sender: TObject);
    procedure gridDblClickCell(Sender: TObject; ARow, ACol: Integer);
	private
		registro : Tgeneral_cotizacionme;
	public
			procedure init;		override;
			procedure freeAll;   override;
			procedure updateData; override;
			procedure syncro;       override;
      procedure add; OVERRIDE;
 			procedure loadConfig; OVERRIDE;
      procedure formatoGrid;
	end;

var
	frmCotizacionME: TfrmCotizacionME;

implementation
uses UfrmMAIN;
{$R *.dfm}

procedure TfrmCotizacionME.freeAll;
begin
	inherited;
	FreeAndNil(registro);
end;

procedure TfrmCotizacionME.init;
begin
	inherited;
	registro := Tgeneral_cotizacionme.Create;
	//socketPetrobox.Address := IfThen(frmMAIN.configLocal.Values[kPetroboxServer]='','127.0.0.1',frmMAIN.configLocal.Values[kPetroboxServer]);
	//socketPetrobox.Port		:= StrToInt( IfThen((frmMAIN.configLocal.Values[kPetroboxPort])='','7001',frmMAIN.configLocal.Values[kPetroboxPort]));
	try
	//	socketPetrobox.Active := true;
	except on E:Exception do
       Application.MessageBox( Pchar(frmMAIN.getLabel(mErrorConectarSocket)+EOL+e.Message),Pchar(frmMAIN.getLabel(capError)), MB_ICONSTOP);
	end;

	updateData;
end;

procedure TfrmCotizacionME.updateData;
begin
	inherited;
  registro.init;
	registro.QBE(cds);
  utils.DataSetTOGrid(cds,grid);
  formatoGrid;
end;

procedure TfrmCotizacionME.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmCotizacionME.syncro;
begin
{	if qPetrobox.Active then qPetrobox.Close;
	qPetrobox.Open;

	if not cds.Active then
		registro.QBE(cds);

	while not qPetrobox.Eof do
	begin
			if cds.Locate('id',qPetrobox.fieldbyname('id').AsString,[loCaseInsensitive]) then //actualiza
			begin
					 registro.fromClientDataSet(qPetrobox);
					 registro.save(qTran,tUpdate);
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
  }
end;

procedure TfrmCotizacionME.bSyncroClick(Sender: TObject);
begin
	inherited;
	syncro;
end;

procedure TfrmCotizacionME.socketPetroboxConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  inherited;
  bSyncro.Enabled:=true;
end;

procedure TfrmCotizacionME.add;
begin
  inherited;
  frmIntroCotizacion := TfrmIntroCotizacion.Create(self);

    registro.fromClientDataSet(cds);
    If registro.fecha<>0 then
    begin
         with frmIntroCotizacion do
         begin
              cFecha.Text := DateToStr(registro.fecha);
              cmn.Value   := registro.mn;
              cmnmin.Value:= registro.mnmin;
              cmnmax.Value:= registro.mnmax;
              cufv.Value  := registro.ufv;
         end;
    end;

  if frmIntroCotizacion.ShowModal = mrYes then
  begin
       if not utils.esfechaValida(frmIntroCotizacion.cfecha.text) then exit;

       registro.fecha := StrToDate(frmIntroCotizacion.cFecha.text);
       registro.mn    := frmIntroCotizacion.cmn.Value;
       registro.mnmin := frmIntroCotizacion.cmnmin.Value;
       registro.mnmax := frmIntroCotizacion.cmnmax.Value;
       registro.ufv   := frmIntroCotizacion.cufv.Value;

       if registro.exist(cds) then
          registro.save(cds,tUpdate)
       else
           registro.save(cds,tAdd);

           updateData;
   end;
end;

procedure TfrmCotizacionME.loadConfig;
begin
  inherited;
  lCaption.Caption := format(frmMAIN.getLabel(lCaption.Caption),[frmMAIN.getParamValue('ME')]);
end;

procedure TfrmCotizacionME.suiDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  registro.fromClientDataSet(cds);
  add;
end;

procedure TfrmCotizacionME.formatoGrid;
var  f:word;
begin
     for f:=1 to grid.RowCount-1 do
     begin
          grid.Cells[1,f] := utils.toString(grid.Floats[1,f],4);
          grid.Cells[2,f] := utils.toString(grid.Floats[2,f],4);
          grid.Cells[3,f] := utils.toString(grid.Floats[3,f],4);
          grid.Cells[4,f] := utils.toString(grid.Floats[4,f],4);
     end;
end;

procedure TfrmCotizacionME.gridDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
  inherited;
  cds.Locate('fecha',grid.Dates[0,ARow],[loCaseInsensitive]);
  add;
end;

initialization
	RegisterClass(TfrmCotizacionME);

end.
