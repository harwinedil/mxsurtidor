unit UfrmMXUser;

interface

uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
	Dialogs, UfrmBase1, DB, AstaDrv2, AstaClientDataset, ImgList, ComCtrls,
	ToolWin, TFlatTitlebarUnit, SUIDBCtrls, ExtCtrls, TFlatSpeedButtonUnit,
	StdCtrls, TFlatEditUnit,DBCtrls,	ExtDlgs, TFlatCheckListBoxUnit, RXSwitch,
  Mask, TFlatMaskEditUnit, SUIComboBox, AstaUtil, AstaDBtools,
	UGralUtilidades,
	UConstantes,
	UclasGEnperson,Uclassecurity_mxuser_roles, TFlatListBoxUnit,
	Uclassecurity_mxuser, ToolEdit, CurrEdit	;

type
	TfrmMXUser = class(TfrmBase1)
    lRequired: TLabel;
		qReport: TAstaClientDataSet;
		oImage: TOpenPictureDialog;
    lCode: TLabel;
    lSuc: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    lDirection: TLabel;
    lContact: TLabel;
    lMastercontact: TLabel;
    cStatus: TRxSwitch;
    cLog: TRxSwitch;
    qRol: TAstaClientDataSet;
    cRoles: TFlatCheckListBox;
    cLogin: TFlatEdit;
    cPassw: TFlatEdit;
    cRetype: TFlatEdit;
    cContact_id: TFlatEdit;
    Label1: TLabel;
		procedure suiDBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
		procedure cloginExit(Sender: TObject);
		procedure cContact_idExit(Sender: TObject);
    procedure cloginKeyPress(Sender: TObject; var Key: Char);
    procedure cRolesClickCheck(Sender: TObject);
	private
			registro : Tsecurity_mxuser;
	public
			procedure init;		override;
			procedure NewR;		override;
      procedure ADD;
			procedure Save;		override;
			procedure Delete; override;
			procedure QBE;		override;
			procedure Print;	override;
			procedure loadConfig; override;
			procedure freeAll;   override;
			procedure updateData; override;
			function   isDeletable : boolean;
			procedure  showRegistro;
			procedure  loadRegistro;
			procedure  findID ;
			function   isGUIOK:boolean;
			PROCEDURE  findMaster(ID:string);
      procedure  cleanSelected;
	end;

var
	frmMXUser: TfrmMXUser;

implementation
uses UfrmMAIN, StrUtils;
{$R *.dfm}

{ TfrmSysUser }

procedure TfrmMXUser.Delete;
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

procedure TfrmMXUser.freeAll;
begin
	inherited;
	FreeAndNil(registro);
end;

procedure TfrmMXUser.init;
begin
	inherited;
	registro := Tsecurity_mxuser.Create;
	transaction := tAdd;
	updateData;
  cLog.StateOn := false;

end;

procedure TfrmMXUser.loadConfig;
begin
	inherited;
  cStatus.Caption := frmMAIN.getLabel(cStatus.Caption);
  cLog.Caption    := frmMAIN.getLabel(cLog.Caption);
end;

procedure TfrmMXUser.NewR;
begin
	inherited;
	registro.init;
	registro.initDataSet(cds);
	transaction := tAdd;

  lMastercontact.Caption := '';
  cleanSelected;
  cLog.StateOn := false;
end;

procedure TfrmMXUser.Print;
begin
	inherited;

end;

procedure TfrmMXUser.QBE;
begin
	inherited;
	registro.init;

  registro.login :=  clogin.Text;
  registro.contact_id := cContact_id.Text;
  registro.company_id := GUser.company_id;

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
      cPassw.SetFocus;

	except on e:Exception do
		begin
					Application.MessageBox( Pchar(frmMAIN.getLabel( mErrorTransacc)+EOL+e.Message),Pchar(frmMAIN.getLabel(capError)), MB_ICONSTOP);
					showmsg(frmMAIN.getLabel(mNOSupportTransaction));
		end;
	end;

end;

procedure TfrmMXUser.Save;
//var  id:integer;
begin
	if (not isFullRequired) OR (not isGUIOK) then Exit;

	try
			loadRegistro;

			if registro.save(cds,transaction ) = cTrue then
			begin
					showmsg(frmMAIN.getLabel(mSuccess));
					showRegistro;
			end;
	except on e:Exception do
		begin
					Application.MessageBox( Pchar(frmMAIN.getLabel( mErrorTransacc)+EOL+e.Message),Pchar(frmMAIN.getLabel(capError)), MB_ICONSTOP);
					showmsg(frmMAIN.getLabel(mNOSupportTransaction));
		end;
	end;

end;

function TfrmMXUser.isDeletable: boolean;
begin
		 RESULT := registro.ID <> 0;
end;


procedure TfrmMXUser.loadRegistro;
var  i : word;
     P : Psecurity_mxuser_roles;
begin
	 if transaction=tAdd then
			 registro.init;

		registro.fromGUI(self);
		/////////////////////company///////////////////////
		registro.COMPANY_ID :=  GUser.company_id;
		registro.STATUS		  :=  IfThen(cStatus.StateOn,eActivo,eInactivo);
    registro.log        :=  IfThen(cLog.StateOn,eActivo,eInactivo);
		/////////////////////////////////////////////////////
    if registro.changeRol then
    begin
         registro.roles.Clear;

         for i:=0 to cRoles.Items.Count-1 do
         begin
            if cRoles.Checked[i] then
            begin
              new(P);
              P^ := Tsecurity_mxuser_roles.Create(0,registro.id,qRol.Lookup('description',cRoles.Items.Strings[i],'ID'));
              registro.roles.Add(P);
            end;
         end;
    end;
end;

procedure TfrmMXUser.showRegistro;
var  i : Word;
     des:string;
     P : Psecurity_mxuser_roles;
begin
		lMastercontact.Caption := '';
		registro.toGUI(self);
    cRetype.Text  := cPassw.Text;
		findMaster(registro.contact_id);

    cleanSelected;
    if registro.roles.Count> 0 then
    for i:=0 to registro.roles.Count-1 do
    begin
         P := registro.roles.Items[i];
         des := qRol.Lookup('id',P.rol_id,'description');
         cRoles.Checked[cRoles.Items.IndexOf(des)] := true;
    end;
    registro.changeRol := false;
end;

procedure TfrmMXUser.findID;
begin
		 transaction := tAdd;

 if clogin.Text='' then exit;

		 registro.init;
  	 registro.login := clogin.Text;
		 registro.COMPANY_ID := GUser.company_id;

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

procedure TfrmMXUser.suiDBNavigator1Click(Sender: TObject;
	Button: TNavigateBtn);
begin
	inherited;
	if not cds.Active then exit;

	registro.fromClientDataSet(cds);
	showRegistro;
	transaction := tUpdate;
end;

procedure TfrmMXUser.updateData;
var  i:Word;
begin

	if qRol.Active then qRol.Close;
	qRol.ParamByName('company_id').AsInteger := GUser.company_id;
	qRol.Open;

  qRol.First;
  i:=0;
  while not qRol.Eof do
  begin
       cRoles.Items.Add(qRol.fieldbyname('Description').AsString);
       cRoles.Checked[i] := false;
       inc(i);
       qRol.Next;
  end;
end;

function TfrmMXUser.isGUIOK: boolean;
begin
		RESULT := FALSE;

		if lCaption.Caption='' then
		begin
			   showmsg(frmMAIN.getLabel(mFieldRequired));
				 cContact_id.SetFocus;
				 Exit;
		end;

    if cPassw.Text<>cRetype.Text then
		begin
			   showmsg(frmMAIN.getLabel(mConfirmPassword));
				 cPassw.SetFocus;
				 Exit;
		end;
		RESULT := TRUE;
end;

procedure TfrmMXUser.cloginExit(Sender: TObject);
begin
	findID;
end;

procedure TfrmMXUser.findMaster(ID:string);
var  aux : TGENPERSON;
		 qAux : TAstaClientDataSet;
begin
     if cContact_id.Text='' then exit;

		aux := TGENPERSON.Create;
		qAux := TAstaClientDataSet.Create(self);
		qAUX.AstaClientSocket := cds.AstaClientSocket;

		try
		aux.ID := ID;
    aux.COMPANYID := GUser.company_id;
		aux.QBE(qAux);
		aux.fromClientDataSet(qAux);
		lMastercontact.Caption := aux.getNameLong;
		finally
				 FreeAndNil(aux);
				 FreeAndNil(qAux);
		end;
end;

procedure TfrmMXUser.cContact_idExit(Sender: TObject);
begin
     if cContact_id.Text='' then exit;
        	findMaster(cContact_id.Text);
end;


procedure TfrmMXUser.cloginKeyPress(Sender: TObject; var Key: Char);
begin
     if not utils.esNumeroNatural(key) then abort;
end;

procedure TfrmMXUser.ADD;
begin

end;

procedure TfrmMXUser.cRolesClickCheck(Sender: TObject);
begin
  inherited;
  registro.changeRol := true;
end;

procedure TfrmMXUser.cleanSelected;
var  i:word;
begin
     for i:=0 to cRoles.Items.Count do
         cRoles.Checked[i] := false;
end;

initialization
  RegisterClass(TfrmMXUser);
end.
