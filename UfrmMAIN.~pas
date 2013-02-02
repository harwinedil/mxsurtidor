unit UfrmMAIN;

interface

uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
	Dialogs, StdCtrls, ComCtrls, ScktComp, AstaCustomSocket,	AstaClientSocket, DB,
	AstaDrv2, AstaClientDataset,	ATGStatusBar, Grids, DBGrids, Mask,strUtils,
	DBCtrls, XPMan, BtnListB,
	ExtCtrls,
	UConstantes,
  UGralUtilidades,
	Uclassecurity_mxuser,
  Uclassecurity_option,UfrmLogin, frxExportXLS, frxExportTXT,
  frxExportMail, frxExportRTF, frxClass, frxExportPDF, ImgList,
  SUIImagePanel,
  Uclasgeneral_cotizacionme,ValEdit, ADODB, jpeg
	;

type
	TfrmMAIN = class(TForm)
    socketMX: TAstaClientSocket;
		XPManifest1: TXPManifest;
    qParam: TAstaClientDataSet;
    pMenu: TPanel;
    Splitter1: TSplitter;
		image16: TImageList;
		qMenu: TAstaClientDataSet;
		pGeneral: TsuiPanel;
    mGeneral: TTreeView;
		pSistema: TsuiPanel;
    mSistema: TTreeView;
    pSeguridad: TsuiPanel;
    StatusBar1: TStatusBar;
    OpenDialog1: TOpenDialog;
		mSeguridad: TTreeView;
		pSurtidor: TsuiPanel;
		mSurtidor: TTreeView;
    cds: TAstaClientDataSet;
    pdfExport: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    frxMailExport1: TfrxMailExport;
    frxTXTExport1: TfrxTXTExport;
    frxXLSExport1: TfrxXLSExport;
    Image1: TImage;
    ADOQuery1: TADOQuery;
    qEmpresa: TAstaClientDataSet;
    mxprovider: TAstaClientDataSet;
    qPriv: TAstaClientDataSet;
		procedure FormCreate(Sender: TObject);
		procedure FormDestroy(Sender: TObject);
		procedure dobleClick(Sender:TObject);
		procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure socketMXDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure socketMXConnect(Sender: TObject; Socket: TCustomWinSocket);
	private
			lMenu : TList;
			loadedMenu : boolean;
			loadedParam: boolean;
	public
      app_id   : integer;
			appName  : string;
			mx			 : string;
			nversion : byte;
			nrelease : byte;
			ncompilation: integer;
			version	: string;
			logo		: string;
			configLocal : TvalueListEditor;
			servers : TvalueListEditor;
      labels  : TValueListEditor;

			procedure loadParams;
      procedure loadLogo;
      procedure loadMenu;
      procedure addPanel(option:Psecurity_option);
      procedure logOFF;
			procedure CreateMDIChild(frm : TFormClass; pcaption:string = ''; ptag:integer=0);
			procedure ventanasNormales;

			function  getParamList(typeID:byte) : TStrings;                 OVERLOAD;
			function  getParamList(typeID:byte; Nvalue:string) : TStrings; OVERLOAD;
			function  getParamID(typeID:byte;key0:string) : Integer;
			function  getParamKEY0(ID:integer) : string;
			function  getParamVALUE(ID:integer;NVALUE:string) : string; overload;
      function  getParamValue(key:string;NValue:string='') : string; overload;
			procedure execComando(comando:string);
			procedure execForm(clase:string; pcaption:string = ''; ptag:integer=0);
			procedure AlCerrarMDI( Sender: TObject; var Action: TCloseAction );
      function  getLabel(key:string) : string;
      function  getConfig(key:string) : string;
      procedure setCotizacionME;
      procedure consultaporVIN;

	end;

var
	frmMAIN: TfrmMAIN;

implementation

uses Math;
{$R *.dfm}

procedure TfrmMAIN.FormCreate(Sender: TObject);
var  i:word;
begin
///borrar esto luego
//          ADOQuery1.Parameters.ParamByName('literal').Value := 'MIL';
//          ADOQuery1.Open;
		 loadedMenu := false;
		 loadedParam:= false;

			mx      := 'MXSoluciones 2012-2013';
			appName := 'MXSurtidor';
      app_id  :=  100;
			nversion := 1;
			nrelease := 0;
			ncompilation := 130126;
			version := IntToStr(nversion)+'.'+IntToStr(nrelease)+'.'+IntToStr(ncompilation);

		 configLocal := TValueListEditor.Create(self);
		 servers := TValueListEditor.Create(self);
     labels  := TValueListEditor.Create(self);

		 if not FileExists(ExtractFilePath(Application.ExeName)+fconfiglocal) then
		 begin
          Application.MessageBox( Pchar(frmMAIN.getLabel(mNOConfigLocal)),Pchar(frmMAIN.getLabel(capError)), MB_ICONSTOP);
					Application.Terminate;
		 end
		 else begin
					configLocal.Strings.LoadFromFile(ExtractFilePath(Application.ExeName)+fconfiglocal);
					if FileExists(ExtractFilePath(Application.ExeName)+fservers) then
							servers.Strings.LoadFromFile(ExtractFilePath(Application.ExeName)+fservers);
		 end;

     if FileExists(ExtractFilePath(Application.ExeName)+flabel) then
         labels.Strings.LoadFromFile(ExtractFilePath(Application.ExeName)+flabel);

		 socketMX.Address := IfThen(servers.Values[ configLocal.Values[kMXServer]]='','127.0.0.1',servers.Values[ configLocal.Values[kMXServer]]);
		 socketMX.Port		:= StrToInt( IfThen((configLocal.Values[kMXPort])='','9000',configLocal.Values[kMXPort]));
		 socketMX.ApplicationName    := appName;
		 socketMX.ApplicationVersion := version;


    frmLogin := TfrmLogin.Create(self);
    frmLogin.Caption  := frmLogin.Caption + ' para '+appName+' v.'+version;                 

    if ParamCount> 0 then
    begin
         frmLogin.cuser.Text := ParamStr(1);
         frmLogin.cpass.Text := ParamStr(2);
    end;

    //cargamos la lista servidores y ponemos el por defecto
    for i:=1 to servers.RowCount-1 do
        frmLogin.cServer.Items.Add(servers.Keys[i]);
    frmLogin.cServer.ItemIndex := frmLogin.cServer.Items.IndexOf(configLocal.Values[kMXServer]);

    if frmLogin.ShowModal = mrOk then
    begin
         try
          //socketMX.Active	:= true;
          loadMenu;
          loadParams;
          setCotizacionME;
          caption :=  configLocal.values[kcompany]+' ::: '+configLocal.Values[kMXServer]+' ::: '+ appName+ ' v.'+version;
          StatusBar1.Panels.Items[0].Text := configLocal.Values[kMXServer]+':'+socketMX.Address+':'+IntToStr(socketMX.Port);
          StatusBar1.Panels.Items[1].Text := 'User: '+GUser.LOGIN;
          StatusBar1.Panels.Items[3].Text	:= mx;
          self.WindowState := wsMaximized;
          self.Show;
          application.ProcessMessages;


          logo :=  IfThen(configLocal.Values[klogo]='', 'logo.jpg',configLocal.Values[klogo]);
          loadLogo;

         except on E:Exception do
             begin
                  Application.MessageBox(Pchar(Format(frmMAIN.getLabel(mErrorConectarSocket),[socketMX.Address,socketMX.Port])+EOL+e.message),Pchar(frmMAIN.getLabel(capError)), MB_ICONSTOP);
                  Application.Terminate;
             end;
         end;

    end
    else
        Application.Terminate;

end;

procedure TfrmMAIN.loadParams;
begin
  try
			if qParam.Active then qParam.close;
			qParam.ParamByName('company').AsInteger := gUser.COMPANY_ID;
			qParam.Open;

      qEmpresa.Close;
      qEmpresa.Open;
      qEmpresa.First;
      loadedParam := true;

      Application.ProcessMessages;
  except on E:Exception do
        Application.MessageBox(PChar('Error: '+e.message),Pchar(getlabel(capError)),MB_ICONERROR);
  end;
end;

function TfrmMAIN.getParamID(typeID: byte; key0:string): Integer;
begin
     if not qParam.Active then
				loadParams;

		 RESULT :=0;
		 if key0 ='' then exit;

     qParam.First;
     while not qParam.Eof do
     begin
					if qParam.FieldByName('key0').asString = Key0 then
          begin
							 RESULT := qParam.fieldbyname('ID').AsInteger;
							 Exit;
          end;
					qParam.Next;
     end;

end;

function TfrmMAIN.getParamList(typeID: byte): TStrings;
begin
     RESULT := TStringList.Create;

		 if not qParam.Active then
				loadParams;

     qParam.First;
     while not qParam.Eof do
		 begin
          if qParam.FieldByName('type_ID').AsInteger in [typeID,tGeneral] then
						 RESULT.Add(qParam.fieldbyname('key0').AsString);
          qParam.Next;
		 end;

end;

function TfrmMAIN.getParamList(typeID: byte; Nvalue: string): TStrings;
begin
		 if not qParam.Active then
				loadParams;

		 RESULT := TStrings.Create;
     qParam.First;
     while not qParam.Eof do
     begin
          if qParam.FieldByName('type_ID').AsInteger in [typeID,tGeneral] then
             RESULT.Add(qParam.fieldbyname(Nvalue).AsString);
          qParam.Next;
     end;
end;

function TfrmMAIN.getParamKEY0(ID: integer): string;
begin
     if not qParam.Active then
				loadParams;

		 RESULT :='';
     qParam.First;

     while not qParam.Eof do
		 begin
          if qParam.FieldByName('ID').AsInteger = ID then
					begin
							 RESULT := qParam.fieldbyname('key0').AsString;
               Exit;
					end;
          qParam.Next;
     end;
end;

function TfrmMAIN.getParamVALUE(ID: integer; NVALUE: string): string;
begin
		 RESULT :='';
end;

procedure TfrmMAIN.loadLogo;
begin
      Image1.Picture := NIL;
		 if FileExists(logo) then
				 image1.Picture.LoadFromFile(logo);
		 image1.Update;
//     if FileExists(ExtractFilePath(Application.ExeName)+'theme/'+configLocal.Values['Theme']) then
//     begin
//        suiTheme.ThemeFile := ExtractFilePath(Application.ExeName)+'theme/'+configLocal.Values['Theme'];
//     end;
end;

procedure TfrmMAIN.loadMenu;
var  option : Psecurity_option;
     i : word;
begin
//     qMenu.ParamByName('company').AsInteger := GUser.COMPANYID;
    try
     if qMenu.Active then qMenu.Close;

     qMenu.ParamByName('app_id').AsInteger := app_id;
     qMenu.ParamByName('user_id').AsInteger:= GUser.id;
		 qMenu.Open;

     new(option);
		 option^ := Tsecurity_option.Create;
		 lMenu := option.toList(qMenu);
     qMenu.Close;

		 if lMenu.Count<1 then exit;

     for i:=0 to lMenu.Count-1 do
		 begin
					option := lMenu.Items[i];

          if option.ISLEVEL=0 then
						 AddPanel(option);

          Application.ProcessMessages;
		 end;

     //escondemos los paneles sin items
     pGeneral.Visible  := mGeneral.Items.Count > 0;
     pSurtidor.Visible := mSurtidor.Items.Count > 0;
     pSeguridad.Visible:= mSeguridad.Items.Count > 0;
     pSistema.Visible  := mSistema.Items.Count > 0;


		 loadedMenu := true;

     except on E:Exception do
          Application.MessageBox(pchar(e.Message),Pchar(getLabel(capError)),MB_ICONERROR);
     end;
end;

procedure TfrmMAIN.addPanel(option: Psecurity_option);
var  tree : TTreeView;
		 panel: TsuiPanel;
		 node : TTreeNode;
		 i : word;
		 item : Psecurity_option;
begin
		 panel := NIL;
		 tree  := NIL;

		 case option.ID of
			 1 : begin
								panel := pGeneral;
								tree  := mGeneral;
					 end;
			 15: begin
								panel := pSurtidor;
								tree  := mSurtidor;
					 end;

			 99: begin
								panel := pSeguridad;
								tree  := mSeguridad;
					 end;
			 100:begin
								panel := pSistema;
								tree :=  mSistema;
					 end;
			 else Exit;
		 end;

		 if (panel=NIL) or (tree=NIL) then exit;

		 tree.items.BeginUpdate;
		 //creando los items y asignando eventos
		 if lMenu.Count<1 then exit;
		 for i:=0 to lMenu.Count-1 do
		 begin
					item := lMenu.Items[i];
					if item.PARENT = option.ID then
					begin
						node := tree.Items.AddChildObjectFirst(NIL,item.DESCRIPTION,item);
						node.ImageIndex    := item.KEY0;
						node.SelectedIndex := item.KEY0;
						item.parentName    := option.DESCRIPTION;
					end;
		 end;
		 tree.Items.EndUpdate;
		 tree.Update;


		 panel.Caption := option.DESCRIPTION;
		 panel.Height  := (tree.Items.Count * 22)+32;

  	 if tree.Items.Count>0 then
        panel.Visible := true
     else
         panel.Visible   := false;

		 panel.Update;

		 Application.ProcessMessages;
		 self.Update;
		 self.Repaint;
end;

procedure TfrmMAIN.FormDestroy(Sender: TObject);
begin
  try
     socketMX.Close;
		 utils.LiberarLista(lMenu);
		 FreeAndNil(configLocal);
     FreeAndNil(servers);
     FreeAndNil(labels);
  except
       //nada
  end;
end;

procedure TfrmMAIN.dobleClick(Sender: TObject);
var  item   : Psecurity_option;
begin
  try
		 if (Sender as TTreeView).Selected = NIL then Exit;
		 item := (Sender as TTreeView).Selected.Data;
		 if item = NIL then EXIT;

		 case item.ISLEVEL of
					1 :  execForm(item.CALL, IfThen(item.parentName<>'',item.parentName+' - ','')+item.DESCRIPTION,item.id);
					2 :  execComando(item.CALL);
		 end;
     Application.ProcessMessages;
  except on e:Exception do
         Application.MessageBox(pchar(e.Message),Pchar(getLabel(capError)),MB_ICONERROR);
  end;
end;

procedure TfrmMAIN.execComando(comando: string);
begin
  try
		 if UpperCase(comando) = 'EXIT' then
				Close
		 else if UpperCase(comando) = 'CASCADA' then
		 begin
					ventanasNormales;
					Cascade;
		 end
		 else if UpperCase(comando) = 'LOGO' then
		 begin
					if not OpenDialog1.Execute then exit;
					logo := OpenDialog1.FileName;
					configLocal.Values[klogo] := logo;
					configLocal.Strings.SaveToFile(fconfiglocal);
					loadLogo;
		 end
     else if comando = 'TfrmTransporte_item' then
          ConsultaporVIN;


  except on e:Exception do
         Application.MessageBox(pchar(e.Message),Pchar(getLabel(capError)),MB_ICONERROR);
  end;


end;

procedure TfrmMAIN.execForm(clase: string; pcaption:string = ''; ptag:integer=0);
begin
  try
		 CreateMDIChild(TFormClass(GetClass(clase)),pcaption,pTag);
  except on e:Exception do
     //    Application.MessageBox(pchar(e.Message),Pchar(getLabel(capError)),MB_ICONERROR);
  end;

end;

procedure TfrmMAIN.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
     if Application.MessageBox(Pchar(frmMAIN.getLabel(mSalirSistema)), 'Confirmar...',
          MB_ICONQUESTION OR MB_YESNO ) = ID_YES then
		 begin
				logOFF;
				CanClose := true;
		 end
		 else
				 CanClose := false;
end;

procedure TfrmMAIN.logOFF;
begin

end;

procedure TfrmMAIN.CreateMDIChild(frm: TFormClass; pcaption:string = ''; ptag:integer=0);
var
	i:integer;
	bCreated:boolean;
	f:TForm;
begin

try
	bCreated:=False;
	for i:= 0 to SELF.MDIChildCount-1 do
	begin
		if SELF.MDIChildren[i] is frm then
		begin
			f:=SELF.MDIChildren[i] as frm ;
			bCreated:=True;
			Break;
		end;
	end;

	if not bCreated then
	begin
		f := frm.Create(Application);
		f.FormStyle := fsMDIChild;
		f.OnClose   := AlCerrarMDI;
    f.Tag       := pTag;
//    f.Left      := pMenu.Left+ 10;
//    f.Top       := 5;
		if pcaption<>'' then f.Caption := pcaption;
		f.Show;
	end
	else
	begin
		case Application.MessageBox(Pchar(frmMAIN.getLabel(sMDIChildFormCreated)), 'Confirmar...',
          MB_ICONQUESTION OR MB_YESNOCANCEL ) of
		 mrYES         : f.Show;
		 mrNO        : begin
										f := frm.Create(Application);
										f.FormStyle := fsMDIChild;
										f.OnClose   := AlCerrarMDI;
                    f.Tag       := pTag;
//                    f.Left      := pMenu.Left+ 10;
//                    f.Top       := 5;
										if pcaption<>'' then f.Caption := pcaption;
										f.Show;
										end;
		 mrCancel     : //do notingg
		end; //case
	end;
  except on e:Exception do
         Application.MessageBox(pchar(e.Message),Pchar(getLabel(capError)),MB_ICONERROR);
  end;

end;

procedure TfrmMAIN.ventanasNormales;
var i: Integer;
begin
	for i := 0 to MDIChildCount - 1 do
    MDIChildren[i].WindowState := wsNormal;
end;


procedure TfrmMAIN.AlCerrarMDI(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

function TfrmMAIN.getLabel(key: string): string;
begin
     key := trim(key);
     RESULT := IfThen(labels.Values[key]='',key,labels.Values[key]);
end;

function TfrmMAIN.getConfig(key: string): string;
begin
     key := trim(key);
     RESULT := IfThen(configLocal.Values[key]='',key,configLocal.Values[key]);
end;

procedure TfrmMAIN.socketMXDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
     //desconectado
     qEmpresa.Close;
     qMenu.Close;
     qParam.Close;
end;

function TfrmMAIN.getParamVALUE(key, NValue: string): string;
begin
     if not qParam.Active then
				loadParams;

		 RESULT :='';
     qParam.First;

     while not qParam.Eof do
		 begin
          if qParam.FieldByName('key0').AsString = key then
					begin
               if NValue='' then
                  RESULT := qParam.fieldbyname('value0').AsString
               else
							     RESULT := qParam.fieldbyname(NValue).AsString;
               Exit;
					end;
          qParam.Next;
     end;

end;

procedure TfrmMAIN.setCotizacionME;
var  cot : Tgeneral_cotizacionme;
begin
     cot := Tgeneral_cotizacionme.Create;

     try
         try
         cot.addToday(cds);
         except on e:Exception do
             Application.MessageBox(pChar(e.Message),pChar(getLabel(capError)),MB_ICONERROR);
         end;
     finally
          FreeAndNil(cot);
     end;

end;

procedure TfrmMAIN.consultaporVIN;
begin
{  frmTransporte_item := TfrmTransporte_item.Create(SELF);

  frmTransporte_item.clean;
  frmTransporte_item.bPrint.Enabled := true;
  frmTransporte_item.bAdd.visible := true;
  frmTransporte_item.bSave.visible := false;
  frmTransporte_item.bConsulta.Visible := true;

  frmTransporte_item.ShowModal;
}
end;

procedure TfrmMAIN.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key = VK_F5 then
     begin
        Screen.Cursor := crHourGlass;
        try
          loadParams;
          key := 0;
        finally
          Screen.Cursor := crDefault;
        end;
     end;
end;

procedure TfrmMAIN.socketMXConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
    try
     qEmpresa.Close;
     qEmpresa.Open;

     if qEmpresa.Active then
          if frmLogin <> NIL then
            frmLogin.ccompany.KeyValue := qEmpresa.fieldbyname('id').AsInteger;

     except on E:Exception do
            begin
                 Application.MessageBox(Pchar('No se ha podido establecer conexion con el servidor. '+e.message),capError,MB_ICONERROR);
            end;
     end;

end;

end.
