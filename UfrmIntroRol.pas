unit UfrmIntroRol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UfrmBaseIntro, DB, AstaDrv2, AstaClientDataset, ImgList,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, TFlatSplitterUnit, TFlatPanelUnit,
  TFlatListBoxUnit, TFlatButtonUnit, TFlatTitlebarUnit;

type
  TfrmIntroRol = class(TfrmBaseIntro)
    Panel2: TPanel;
    cRegistros: TFlatListBox;
    Label1: TLabel;
    Panel3: TPanel;
		FlatButton1: TFlatButton;
    FlatButton2: TFlatButton;
    FlatButton3: TFlatButton;
    FlatButton4: TFlatButton;
    Panel4: TPanel;
    cSeleccionandos: TFlatListBox;
    Label2: TLabel;
    procedure FlatButton1Click(Sender: TObject);
    procedure FlatButton4Click(Sender: TObject);
    procedure FlatButton2Click(Sender: TObject);
    procedure FlatButton3Click(Sender: TObject);
	private
		{ Private declarations }
	public
			procedure init;		override;
			procedure Save;		override;
			procedure loadConfig; override;
			procedure freeAll;   override;
			procedure updateData; override;
			procedure borrarSeleccionados;
			procedure setSeleccionados(lista:TStringList);

	end;

var
	frmIntroRol: TfrmIntroRol;

implementation
uses UfrmMAIN;
{$R *.dfm}

procedure TfrmIntroRol.borrarSeleccionados;
var  i : word;
begin
		if cSeleccionandos.Items.Count <= 0 then exit;
		
		for i:=0 to cSeleccionandos.Items.Count-1 do
			if cRegistros.Items.IndexOf(cSeleccionandos.Items.Strings[i]) <> -1 then
				 cRegistros.Items.Delete(cRegistros.Items.IndexOf(cSeleccionandos.Items.Strings[i]));
end;

procedure TfrmIntroRol.freeAll;
begin
	inherited;
end;

procedure TfrmIntroRol.init;
begin
	inherited;
	updateData;
  borrarSeleccionados;
end;

procedure TfrmIntroRol.loadConfig;
begin
	inherited;

end;

procedure TfrmIntroRol.Save;
begin
	inherited;

end;

procedure TfrmIntroRol.setSeleccionados(lista: TStringList);
begin
		cSeleccionandos.Items := lista;
		cSeleccionandos.Items.Sort;
end;

procedure TfrmIntroRol.updateData;
begin
	inherited;
	if cds.Active then cds.Close;
	cds.Open;
	cds.First;

	cRegistros.Items.Clear;

	while not cds.Eof do
	begin
			 cRegistros.Items.Add(cds.fieldbyname('description').AsString);
			 cds.Next;
	end;
	cRegistros.Items.Sort;
end;

procedure TfrmIntroRol.FlatButton1Click(Sender: TObject);
var  i : word;
begin
	 if cRegistros.Items.Count > 0 then
			for i:=0 to cRegistros.Items.Count-1 do
					cSeleccionandos.Items.Add(cRegistros.Items.Strings[i]);

	 cRegistros.Items.Clear;
	 cSeleccionandos.Items.Sort;
end;

procedure TfrmIntroRol.FlatButton4Click(Sender: TObject);
var  i : word;
begin
	 if cSeleccionandos.Items.Count > 0 then
			for i:=0 to cSeleccionandos.Items.Count-1 do
					cRegistros.Items.Add(cSeleccionandos.Items.Strings[i]);

	 cSeleccionandos.Items.Clear;
	 cRegistros.Items.Sort;
end;

procedure TfrmIntroRol.FlatButton2Click(Sender: TObject);
begin
		//si no hay item seleccionado
		if cRegistros.ItemIndex < 0 then exit;
		cSeleccionandos.Items.Add(cRegistros.Items.Strings[cRegistros.itemIndex]);
		cRegistros.Items.Delete(cRegistros.itemIndex);
		cSeleccionandos.Items.Sort;
end;

procedure TfrmIntroRol.FlatButton3Click(Sender: TObject);
begin
		//si no hay item seleccionado
		if cSeleccionandos.ItemIndex < 0 then exit;

		cRegistros.Items.Add(cSeleccionandos.Items.Strings[cSeleccionandos.itemIndex]);
		cSeleccionandos.Items.Delete(cSeleccionandos.itemIndex);
		cRegistros.Items.Sort;

end;

end.
