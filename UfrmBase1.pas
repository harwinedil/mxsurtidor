unit UfrmBase1;

interface

uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
	Dialogs, ToolWin, ComCtrls, ExtCtrls, SUIDBCtrls, TFlatTitlebarUnit,
	SUIToolBar, ImgList, DB, AstaDrv2, AstaClientDataset,DBCtrls,
	UGralUtilidades, Menus, TypInfo,TFlatComboBoxUnit,
	UConstantes, StdCtrls, Mask, JvExMask, JvToolEdit, JvExStdCtrls, JvEdit,
  JvValidateEdit, ToolEdit, CurrEdit;

type
  TfrmBase1 = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    nav: TsuiDBNavigator;
		itool: TImageList;
		cds: TAstaClientDataSet;
		dsNav: TDataSource;
		ToolBar1: TToolBar;
    bAdd: TToolButton;
    bSave: TToolButton;
		bDel: TToolButton;
    ToolButton16: TToolButton;
    bQBE: TToolButton;
    bPrint: TToolButton;
    ToolButton19: TToolButton;
		ToolButton20: TToolButton;
		bClose: TToolButton;
		ToolButton1: TToolButton;
    lCaption: TFlatTitlebar;
    msg: TFlatTitlebar;
		procedure bAddClick(Sender: TObject);
		procedure bSaveClick(Sender: TObject);
		procedure bDelClick(Sender: TObject);
		procedure bQBEClick(Sender: TObject);
		procedure bPrintClick(Sender: TObject);
		procedure bCloseClick(Sender: TObject);
		procedure FormCreate(Sender: TObject);
		procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure colorON(Sender: TObject);
    procedure colorOFF(Sender: TObject);

	private
		{ Private declarations }
	protected
			transaction : byte;
	public
			procedure init;		virtual;
			procedure NewR;		virtual;
			procedure Save;		virtual;
			procedure Delete; virtual;
			procedure QBE;		virtual;
			procedure Print;	virtual;
			procedure loadConfig; virtual;
			procedure freeAll;   virtual;
			function   isFullRequired  : boolean;virtual;
			procedure showmsg(mes:string);
			procedure updateData; virtual;
	end;

var
	frmBase1: TfrmBase1;

implementation
uses UfrmMAIN;
{$R *.dfm}

procedure TfrmBase1.Delete;
begin

end;

procedure TfrmBase1.init;
begin
		utils.formLimpiarEntradas(self);
    transaction := tUpdate;
end;

procedure TfrmBase1.NewR;
begin
		utils.formLimpiarEntradas(self);
		msg.Caption := '';
    transaction := tAdd;
end;

procedure TfrmBase1.Print;
begin

end;

procedure TfrmBase1.QBE;
begin

end;

procedure TfrmBase1.Save;
begin

end;

procedure TfrmBase1.bAddClick(Sender: TObject);
begin
	NewR;
end;

procedure TfrmBase1.bSaveClick(Sender: TObject);
begin
	Save;
end;

procedure TfrmBase1.bDelClick(Sender: TObject);
begin
	Delete;
end;

procedure TfrmBase1.bQBEClick(Sender: TObject);
begin
	QBE;
end;

procedure TfrmBase1.bPrintClick(Sender: TObject);
begin
	Print;
end;

procedure TfrmBase1.bCloseClick(Sender: TObject);
begin
	close;
end;

procedure TfrmBase1.loadConfig;
var i : word;
		comp : TComponent;
begin
     //leyendo las etiquetas
      lCaption.Caption := frmMAIN.getLabel(lCaption.Caption);
			for i:= 0 to self.ComponentCount-1 do
			begin
					comp := self.Components[i];
          if (comp is TLabel) and (comp.Tag = 0) then //solo las etiquetas con tag 0 PONER en 1 las que no se quieren tocar
               (comp as TLabel).Caption := frmMAIN.getLabel((comp as TLabel).Caption)
          else if (comp is TToolButton) then
               begin
                    (comp as TToolButton).Caption := frmMAIN.getLabel((comp as TToolButton).Caption);
                    (comp as TToolButton).Hint    := (comp as TToolButton).Caption;
               end;
			end;
end;

procedure TfrmBase1.FormCreate(Sender: TObject);
begin
		 loadConfig;
		 init;
end;

procedure TfrmBase1.FormDestroy(Sender: TObject);
begin
		freeAll;
end;

procedure TfrmBase1.freeAll;
begin

end;

function TfrmBase1.isFullRequired: boolean;
var i : word;
		comp : TComponent;
		PropInfo : PPropInfo;
begin
			RESULT := FALSE;

			for i:= 0 to self.ComponentCount-1 do
			begin
					comp := self.Components[i];

					if comp.Tag = 1 then  //componente requerido
					begin
											PropInfo := GetPropInfo(comp.ClassInfo,'Text');
											if Assigned( PropInfo ) then
											begin
													 if trim(GetStrProp( comp,'Text')) = '' then
													 begin
																showmsg(frmMAIN.getLabel(mFieldRequired));
																TWinControl(comp).SetFocus;
																exit;
													 end;
											end;

										 PropInfo := GetPropInfo(comp.ClassInfo,'Value');
										 if Assigned( PropInfo ) then
										 begin
												if GetOrdProp( comp, 'Value') = 0 then
														begin
																showmsg(frmMAIN.getLabel(mFieldRequired));
																TWinControl(comp).SetFocus;
																exit;
														end;
										 end;
					end;

			end;
			RESULT := TRUE;
end;

procedure TfrmBase1.showmsg(mes: string);
begin
			msg.Caption := DateTimeToStr(now)+': '+mes;
end;

procedure TfrmBase1.updateData;
begin

end;

procedure TfrmBase1.FormKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin

			case key of
					 vk_f2: begin
												if bAdd.Enabled then bAdd.Click; key:=0;
									end;
					 VK_F3: begin
											if bDel.Enabled then bDel.Click; key:=0;
									end;
					 vk_f4: begin
											if bQBE.Enabled then bQBE.Click; key:=0;
									end;

					 VK_F8: begin
											if bPrint.Enabled then bPrint.Click; key:=0;
									end;
					 VK_F10:begin
										if bSave.Enabled then bSave.Click; key:=0;
									end;
					 VK_F12:begin
											close; key:=0;
									end;
					 VK_F5: begin
											 updateData;
											 key := 0;
									end;
					 VK_HOME: begin if ssctrl in shift then
                          begin
													     if cds.Active then cds.First;
													     nav.OnClick(self,nbFirst);
													     key:=0
                          end;
										end;
					 VK_END:  begin
                          if ssctrl in shift then
                          begin
                            if cds.Active then cds.Last;
                            nav.OnClick(self,nbLast);
                            key:=0
                          end;
										end;
					VK_PRIOR: begin
													if cds.Active then cds.Prior;
													nav.OnClick(self,nbPrior);
													key:=0
										end;
					VK_NEXT :begin
													if cds.Active then cds.Next;
													nav.OnClick(self,nbNext);
													key:=0
										end;
					VK_RETURN: begin
										 //			SelectNext(ActiveControl,true,true);
//													key := 0;
											end;
			end;
end;

procedure TfrmBase1.colorOFF(Sender: TObject);
begin
     if (Sender is TEdit)            then (Sender as TEdit).Color     := clBtnFace
else if (Sender is TComboBox)        then (Sender as TComboBox).Color := clBtnFace
else if (sender is TMemo)            then (Sender as TMemo).Color     := clBtnFace
else if (Sender is TFlatComboBox)    then (Sender as TFlatComboBox).Color := clBtnFace
else if (Sender is TJvDateEdit)      then (sender as TJvDateEdit).Color   := clBtnFace
else if (Sender is TJvValidateEdit)  then (sender as TJvValidateEdit).Color:=clBtnFace
else if (Sender is TCurrencyEdit)    then (Sender as TCurrencyEdit).Color  := clBtnFace
else if (Sender is TJvEdit)          then (Sender as TJvEdit).Color        := clBtnFace
end;

procedure TfrmBase1.colorON(Sender: TObject);
begin
     if (Sender is TEdit)            then (Sender as TEdit).Color     := clWhite
else if (Sender is TComboBox)        then (Sender as TComboBox).Color := clWhite
else if (sender is TMemo)            then (Sender as TMemo).Color     := clWhite
else if (Sender is TFlatComboBox)    then (Sender as TFlatComboBox).Color := clWhite
else if (Sender is TJvDateEdit)      then (sender as TJvDateEdit).Color   := clWhite
else if (Sender is TJvValidateEdit)  then (sender as TJvValidateEdit).Color:=clWhite
else if (Sender is TCurrencyEdit)    then (Sender as TCurrencyEdit).Color  := clWhite
else if (Sender is TJvEdit)          then (Sender as TJvEdit).Color        := clWhite

end;

end.
