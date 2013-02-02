unit UfrmGenSuc;

interface

uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
	Dialogs, UfrmBase1, DB, AstaDrv2, AstaClientDataset, ImgList, ComCtrls,
	ToolWin, TFlatTitlebarUnit, SUIDBCtrls, ExtCtrls, TFlatSpeedButtonUnit,
	StdCtrls, TFlatEditUnit,DBCtrls,
	UGralUtilidades,
	UConstantes,
	UclasGEnperson,
	UclasGENSUC,
	Uclassecurity_mxuser, ExtDlgs, Mask, TFlatMaskEditUnit, SUIComboBox, TFlatGroupBoxUnit,
	RXSwitch, ToolEdit, CurrEdit
	;

type
	TfrmgenSuc = class(TfrmBase1)
    lRequired: TLabel;
		qReport: TAstaClientDataSet;
		oImage: TOpenPictureDialog;
    lCode: TLabel;
    lSuc: TLabel;
    lObs: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    lDirection: TLabel;
    lphone: TLabel;
    lEmail: TLabel;
    lContact: TLabel;
    lMastercontact: TLabel;
    cDESCRIPTION: TFlatEdit;
    cSUB: TFlatEdit;
    cOBS: TFlatEdit;
    cADDRESS: TFlatEdit;
    cPHONE: TFlatEdit;
    cEMAIL: TFlatEdit;
    cRESPONSABLEID: TFlatEdit;
    lPetrobox: TLabel;
    cDATA0: TFlatEdit;
    lAlias: TLabel;
    cDATA1: TFlatEdit;
		procedure cLastname1Exit(Sender: TObject);
		procedure suiDBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
		procedure cSUBExit(Sender: TObject);
		procedure cRESPONSABLEIDExit(Sender: TObject);
    procedure cSUBKeyPress(Sender: TObject; var Key: Char);
	private
			registro : TGENSUC;
	public
			procedure init;		override;
			procedure NewR;		override;
			procedure Save;		override;
			procedure Delete; override;
			procedure QBE;		override;
			procedure Print;	override;
			procedure loadConfig; override;
			procedure freeAll;   override;
			procedure updateData; override;
			function  isDeletable : boolean;
			procedure showRegistro;
			procedure loadRegistro;
			procedure findID ;
			function  isGUIOK:boolean;
			PROCEDURE findMaster(ID:string);
	end;

var
	frmgenSuc: TfrmgenSuc;

implementation
uses UfrmMAIN, StrUtils;
{$R *.dfm}

{ TfrmSysUser }

procedure TfrmgenSuc.Delete;
begin
	inherited;
	if (not isDeletable) or (transaction=tAdd) then
	begin
			 showmsg(frmMAIN.getLabel(mNoPuedeEliminar));
			 Exit;
	end;

	try
			if registro.save(cds,tDelete) = cTrue then
			begin
				NewR;
				showmsg(frmMAIN.getLabel(mRecordDelete));
			end;


	except on e:Exception do
		begin
          Application.MessageBox( Pchar(frmMAIN.getLabel(mErrorTransacc)+EOL+e.Message),Pchar(frmMAIN.getLabel(capError)), MB_ICONSTOP);
					showmsg(frmMAIN.getLabel(mNOSupportTransaction));
		end;
	end;
end;

procedure TfrmgenSuc.freeAll;
begin
	inherited;
	FreeAndNil(registro);
end;

procedure TfrmgenSuc.init;
begin
	inherited;
	registro := TGENSUC.Create;
	transaction := tAdd;
	updateData;
end;

procedure TfrmgenSuc.loadConfig;
begin
	inherited;
end;

procedure TfrmgenSuc.NewR;
begin
	inherited;
	registro.init;
	registro.initDataSet(cds);
	transaction := tAdd;

  lMastercontact.Caption := '';
end;

procedure TfrmgenSuc.Print;
begin
	inherited;

end;

procedure TfrmgenSuc.QBE;
begin
	inherited;
	registro.init;

	////////////////////////////company id solo si no es super//////////////
    if cSUB.Text<>''then
    		registro.SUB		 := StrToInt(cSUB.Text);
		registro.COMPANYID   := GUser.COMPANY_ID;

		registro.DESCRIPTION := cDESCRIPTION.Text;
		registro.ADDRESS     := cADDRESS.Text;
		registro.PHONE			:= cPHONE.Text;
		registro.EMAIL			:= cEMAIL.Text;
		registro.RESPONSABLEID := cRESPONSABLEID.Text;
	////////////////////////////////////////////////////////////

	try
			registro.QBE(cds);

			if cds.RecordCount = 0 then
			begin
					showmsg(frmMAIN.getLabel(mRecordNOFound));
					transaction := tAdd;
			end
			else if cds.RecordCount = 1 then
			begin
					showmsg(frmMAIN.getLabel(mRecordFound));
					transaction := tUpdate;
			end
			else begin
					showmsg(frmMAIN.getLabel(mRecordsFound)+' '+IntToStr(cds.RecordCount));
					transaction := tUpdate;
			end;

			cds.Last;
			registro.fromClientDataSet(cds);
			showRegistro;
      cDESCRIPTION.SetFocus;

	except on e:Exception do
		begin
					Application.MessageBox( Pchar(frmMAIN.getLabel( mErrorTransacc)+EOL+e.Message),Pchar(frmMAIN.getLabel(capError)), MB_ICONSTOP);
					showmsg(frmMAIN.getLabel(mNOSupportTransaction));
		end;
	end;

end;

procedure TfrmgenSuc.Save;
//var  id:integer;
begin
	if (not isFullRequired) OR (not isGUIOK) then Exit;

	try
			loadRegistro;

			if registro.save(cds,transaction ) = cTrue then
			begin
					showmsg(frmMAIN.getLabel(mSuccess));
//					showRegistro;
			end;
	except on e:Exception do
		begin
					Application.MessageBox( Pchar(frmMAIN.getLabel( mErrorTransacc)+EOL+e.Message),Pchar(frmMAIN.getLabel(capError)), MB_ICONSTOP);
					showmsg(frmMAIN.getLabel(mNOSupportTransaction));
		end;
	end;

end;

function TfrmgenSuc.isDeletable: boolean;
begin
		 RESULT := registro.ID <> 0;
end;


procedure TfrmgenSuc.loadRegistro;
begin
	 if transaction=tAdd then
			 registro.init;

		registro.fromGUI(self);
		/////////////////////company///////////////////////
		registro.COMPANYID :=  GUser.COMPANY_ID;
		registro.STATUS		 :=  eActivo;
		/////////////////////////////////////////////////////
end;

procedure TfrmgenSuc.showRegistro;
begin
		lMastercontact.Caption := '';
		registro.toGUI(self);
		findMaster(registro.RESPONSABLEID);
end;

procedure TfrmgenSuc.findID;
begin
		 transaction := tAdd;

		 if cSUB.Text='' then exit;

		 registro.init;
		 registro.Sub := StrToInt(cSUB.Text);
		 registro.COMPANYID := GUser.COMPANY_ID;

	try
			registro.QBE(cds);
			if cds.RecordCount > 0 then
			begin
				cds.First;
				registro.fromClientDataSet(cds);
				transaction := tUpdate;
				showRegistro;
			end;

	except on e:Exception do
		begin
					Application.MessageBox( Pchar(frmMAIN.getLabel(mErrorTransacc)+EOL+e.Message),Pchar(frmMAIN.getLabel(capError)), MB_ICONSTOP);
					showmsg(frmMAIN.getLabel(mNOSupportTransaction));
		end;
	end;
end;

procedure TfrmgenSuc.cLastname1Exit(Sender: TObject);
begin
		inherited;
		findID;
end;

procedure TfrmgenSuc.suiDBNavigator1Click(Sender: TObject;
	Button: TNavigateBtn);
begin
	inherited;
	if not cds.Active then exit;

	registro.fromClientDataSet(cds);
	showRegistro;
	transaction := tUpdate;
end;

procedure TfrmgenSuc.updateData;
begin
	{
	if qDoc.Active then qDoc.Close;
	qDoc.ParamByName('type').AsInteger := tDocumento;
	qdoc.ParamByName('company').AsInteger := GUser.COMPANYID;
	qDoc.Open;

	if qExp.Active then qExp.Close;
	qExp.ParamByName('type').AsInteger := tCiudad;
	qExp.ParamByName('company').AsInteger := GUser.COMPANYID;
	qExp.Open;

	if qPais.Active then qPais.Close;
	qPais.ParamByName('type').AsInteger := tPais;
	qPais.ParamByName('company').AsInteger := GUser.COMPANYID;
	qPais.Open;

	if qOcupacion.Active then qOcupacion.Close;
	qOcupacion.ParamByName('type').AsInteger := tOcupacion;
	qOcupacion.ParamByName('company').AsInteger := GUser.COMPANYID;
	qOcupacion.Open;
	}
end;

function TfrmgenSuc.isGUIOK: boolean;
begin
		RESULT := FALSE;

		if lCaption.Caption='' then
		begin
			   showmsg(frmMAIN.getLabel(mFieldRequired));
				 cRESPONSABLEID.SetFocus;
				 Exit;
		end;

		RESULT := TRUE;
end;

procedure TfrmgenSuc.cSUBExit(Sender: TObject);
begin
	findID;
end;

procedure TfrmgenSuc.findMaster(ID:string);
var  aux : TGENPERSON;
		 qAux : TAstaClientDataSet;
begin
		aux := TGENPERSON.Create;
		qAux := TAstaClientDataSet.Create(self);
		qAUX.AstaClientSocket := cds.AstaClientSocket;

		try
		aux.ID := ID;
		aux.QBE(qAux);
		aux.fromClientDataSet(qAux);
		lMastercontact.Caption := aux.getNameLong;
		finally
				 FreeAndNil(aux);
				 FreeAndNil(qAux);
		end;
end;

procedure TfrmgenSuc.cRESPONSABLEIDExit(Sender: TObject);
begin
	if cRESPONSABLEID.Text='' then exit;
	findMaster(cRESPONSABLEID.Text);
end;


procedure TfrmgenSuc.cSUBKeyPress(Sender: TObject; var Key: Char);
begin
     if not utils.esNumeroNatural(key) then abort;
end;

initialization
  RegisterClass(TfrmgenSuc);
end.
