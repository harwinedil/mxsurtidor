unit UfrmBuscar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UfrmBaseIntro, StdCtrls, TFlatEditUnit, DB, AstaDrv2,UConstantes,
  AstaClientDataset, ImgList, TFlatTitlebarUnit, ComCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, SUIDBCtrls;

type
  TfrmBuscar = class(TfrmBaseIntro)
    Panel2: TPanel;
    cID: TFlatEdit;
    cDes: TFlatEdit;
		suiDBGrid1: TsuiDBGrid;
		procedure suiDBGrid1DblClick(Sender: TObject);
    procedure bSaveClick(Sender: TObject);
    procedure cIDKeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
	private
		{ Private declarations }
	public
				Tabla :  string;
				ID,Descripcion : string;
			procedure init(TableName:string);
			procedure buscar;
      procedure loadConfig;override;
	end;

var
	frmBuscar: TfrmBuscar;

implementation
uses UfrmMAIN;
{$R *.dfm}

procedure TfrmBuscar.suiDBGrid1DblClick(Sender: TObject);
begin
		ID := cds.fieldbyname('ID').AsString;
		Descripcion := cds.fieldbyname('descripCion').AsString;
		ModalResult := mrYes;
end;

procedure TfrmBuscar.bSaveClick(Sender: TObject);
begin
		ID := cds.fieldbyname('ID').AsString;
		Descripcion := cds.fieldbyname('descripCion').AsString;
		ModalResult := mrYes;
end;

procedure TfrmBuscar.init(TableName:string);
begin
   tabla := TableName;

	 if cds.Active then cds.Close;
	 cds.SQL.Clear;

	 if tabla = 'genPerson' then
	 begin
			cds.SQL.Add('select ID, (lastname1||'+#39+' '+#39+'||lastname2||'+#39+' '+#39+'||NAME) as DESCRIPCION from genPerson');
			lCaption.Caption := frmMAIN.getLabel(capBuscarPerson);
	 end
	 else if tabla = 'genSuc' then
	 begin
			cds.SQL.Add('select sub as SUC, description as descripcion,ID from genSUC');
			lCaption.Caption := frmMAIN.getLabel(capBuscarSuc);
	 end
	 else begin
			cds.SQL.Add('select key0 as Codigo, value0 as descripcion, ID from sysParam');
			lCaption.Caption := frmMAIN.getLabel(capBuscarParam);
	 end;


end;

procedure TfrmBuscar.buscar;
var  y : string;
begin
//		init;
     if cds.Active then cds.Close;

     if tabla = 'genPerson' then
     begin
         y := 'where ';
         if trim(cID.Text)<>'' then
         begin
              cds.Sql.Add(y+'id like :pid');
              y := ' and ';
              cds.ParamByName('Pid').AsString := cID.Text+'%';
         end;

         if trim(cDes.Text) <> '' then
         begin
             cds.SQL.Add(y + '(lastname1 like :p1 or lastname2 like :p2 or name like :p3)');
             cds.ParamByName('p1').AsString 	:=  '%'+cDes.Text+'%';
             cds.ParamByName('p2').AsString 	:=  '%'+cDes.Text+'%';
             cds.ParamByName('p3').AsString 	:=  '%'+cDes.Text+'%';
         end;
         cds.SQL.Add('order by lastname1,lastname2,name');
     end;

		 try
		 cds.Prepare;
		 cds.Open;
		 Except on e:Exception do
           Application.MessageBox( Pchar(e.message),Pchar(frmMain.getLabel(capError)), MB_ICONSTOP);
		 end;
end;

procedure TfrmBuscar.cIDKeyPress(Sender: TObject; var Key: Char);
begin
		 if Key = #13 then
			buscar;
end;

procedure TfrmBuscar.suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
     		ID := cds.fieldbyname('ID').AsString;
		    Descripcion := cds.fieldbyname('descripCion').AsString;
		    ModalResult := mrYes;
     end;
end;

procedure TfrmBuscar.loadConfig;
begin
  inherited;
  self.Caption := frmMAIN.getLabel(self.Caption);
end;

end.
