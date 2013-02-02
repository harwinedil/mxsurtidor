unit UfrmIntroDobleList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UfrmBaseIntro, DB, AstaDrv2, AstaClientDataset, ImgList,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, TFlatSplitterUnit, TFlatPanelUnit,
	TFlatListBoxUnit, TFlatButtonUnit,UGralUtilidades, SUIListBox,
  TFlatTitlebarUnit, Buttons;

type
  TfrmIntroDobleList = class(TfrmBaseIntro)
    Panel2: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
		Panel4: TPanel;
		Label2: TLabel;
    ListBox1: TListBox;
    bDerAll: TSpeedButton;
    bDerOne: TSpeedButton;
    bIzqOne: TSpeedButton;
    bIzqAll: TSpeedButton;
    cRegistros: TListBox;
    cSeleccionandos: TListBox;
		procedure bDerAllClick(Sender: TObject);
		procedure bIzqAllClick(Sender: TObject);
		procedure bDerOneClick(Sender: TObject);
		procedure bIzqOneClick(Sender: TObject);
    procedure cRegistrosDblClick(Sender: TObject);
    procedure cSeleccionandosDblClick(Sender: TObject);
	private
			table : string;
			companyid : integer;
	public
			procedure init(tabla:string; company:integer);		overload;
			procedure Save;		override;
			procedure loadConfig; override;
			procedure freeAll;   override;
			procedure updateData; override;
			procedure borrarSeleccionados;
			procedure setTabla(tabla:string);
			procedure setSeleccionados(lista:TStringList);
			function  getSeleccionados : TStrings;

	end;

var
	frmIntroDobleList: TfrmIntroDobleList;

implementation
uses UfrmMAIN, StdConvs;
{$R *.dfm}

procedure TfrmIntroDobleList.borrarSeleccionados;
var  i : word;
begin
		if cSeleccionandos.Items.Count <= 0 then exit;
		
		for i:=0 to cSeleccionandos.Items.Count-1 do
			if cRegistros.Items.IndexOf(cSeleccionandos.Items.Strings[i]) <> -1 then
				 cRegistros.Items.Delete(cRegistros.Items.IndexOf(cSeleccionandos.Items.Strings[i]));
end;

procedure TfrmIntroDobleList.freeAll;
begin
	inherited;
end;

procedure TfrmIntroDobleList.init(tabla:string; company:integer);
begin
	utils.formLimpiarEntradas(self);
	table := tabla;
  companyid := company;

	updateData;
  borrarSeleccionados;
end;

procedure TfrmIntroDobleList.loadConfig;
begin
	inherited;

end;

procedure TfrmIntroDobleList.Save;
begin
	inherited;

end;

procedure TfrmIntroDobleList.setSeleccionados(lista: TStringList);
begin
    cSeleccionandos.Items.Clear;
		cSeleccionandos.Items := lista;
end;

procedure TfrmIntroDobleList.updateData;
begin
	inherited;
	cRegistros.Items.Clear;
	if cds.Active then cds.Close;
	cds.SQL.Clear;

	if table = 'sysROL' then
	begin
			cds.SQL.Add('select description from security_ROL where company_ID=:companyID');
			lCaption.Caption := 'Seleccionar Roles para Usuarios';
	end;

	cds.ParamByName('companyID').AsInteger := companyid;

	cds.Open;
	cds.First;

	//cargar resultado
	while not cds.Eof do
	begin
			 cRegistros.Items.Add(cds.fieldbyname('description').AsString);
			 cds.Next;
	end;
//	cRegistros.Items.Sort;
end;

procedure TfrmIntroDobleList.bDerAllClick(Sender: TObject);
var  i : word;
begin
	 if cRegistros.Items.Count > 0 then
			for i:=0 to cRegistros.Items.Count-1 do
					cSeleccionandos.Items.Add(cRegistros.Items.Strings[i]);

	 cRegistros.Items.Clear;
//	 cSeleccionandos.Items.Sort;
end;

procedure TfrmIntroDobleList.bIzqAllClick(Sender: TObject);
var  i : word;
begin
	 if cSeleccionandos.Items.Count > 0 then
			for i:=0 to cSeleccionandos.Items.Count-1 do
					cRegistros.Items.Add(cSeleccionandos.Items.Strings[i]);

	 cSeleccionandos.Items.Clear;
//	 cRegistros.Items.Sort;
end;

procedure TfrmIntroDobleList.bDerOneClick(Sender: TObject);
begin
		//si no hay item seleccionado
		if cRegistros.ItemIndex < 0 then exit;
		cSeleccionandos.Items.Add(cRegistros.Items.Strings[cRegistros.itemIndex]);
		cRegistros.Items.Delete(cRegistros.itemIndex);
//		cSeleccionandos.Items.Sort;
end;

procedure TfrmIntroDobleList.bIzqOneClick(Sender: TObject);
begin
		//si no hay item seleccionado
		if cSeleccionandos.ItemIndex < 0 then exit;

		cRegistros.Items.Add(cSeleccionandos.Items.Strings[cSeleccionandos.itemIndex]);
		cSeleccionandos.Items.Delete(cSeleccionandos.itemIndex);
//		cRegistros.Items.Sort;

end;

procedure TfrmIntroDobleList.setTabla(tabla: string);
begin
		table := tabla;
end;

function TfrmIntroDobleList.getSeleccionados: TStrings;
begin
		RESULT := TStrings(cSeleccionandos.Items);
end;

procedure TfrmIntroDobleList.cRegistrosDblClick(Sender: TObject);
begin
		bDerOne.Click;
end;

procedure TfrmIntroDobleList.cSeleccionandosDblClick(Sender: TObject);
begin
  bIzqOne.Click;
end;

end.
