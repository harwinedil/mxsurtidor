unit UfrmSysRol;

interface

uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
	Dialogs, UfrmBase1, DB, AstaDrv2, AstaClientDataset, ImgList, ComCtrls,
	ToolWin, TFlatTitlebarUnit, SUIDBCtrls, ExtCtrls, TFlatSpeedButtonUnit,
	StdCtrls, TFlatEditUnit,DBCtrls,
	UGralUtilidades,
	UConstantes,
	UclasSYSROL,
  Uclassecurity_option,Uclassecurity_option_privilegies,
	Uclassecurity_mxuser, JvExComCtrls, JvComCtrls, JvCheckTreeView
	;

type
	TfrmSysRol = class(TfrmBase1)
		cDescription: TFlatEdit;
		Label1: TLabel;
		Label6: TLabel;
		Label8: TLabel;
		qReport: TAstaClientDataSet;
    Label2: TLabel;
    cpriv: TJvCheckTreeView;
    qMarca: TAstaClientDataSet;
    qMenu: TAstaClientDataSet;
		procedure cDescriptionExit(Sender: TObject);
		procedure suiDBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
	private
			registro : TSYSROL;

      privilegios: Tlist;
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
			function   isDeletable : boolean;
			procedure  showRegistro;
			procedure  loadRegistro;
      procedure  loadLista;
      function   existeEnLista(id:integer):boolean;
			procedure  findID ;

      procedure   cargarArbol;
      procedure   marcarPrivilegios;
      procedure   addHijos(var pnodo:TtreeNode;option:Tsecurity_option ;var Lista:TList);

	end;

var
	frmSysRol: TfrmSysRol;

implementation
uses UfrmMAIN;
{$R *.dfm}

{ TfrmSysUser }

procedure TfrmSysRol.Delete;
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

procedure TfrmSysRol.freeAll;
begin
	inherited;
	FreeAndNil(registro);
  utils.LiberarLista(privilegios);
end;

procedure TfrmSysRol.init;
begin
	inherited;
	registro := TSYSROL.Create;
  privilegios := TList.Create;
	transaction := tAdd;
	updateData;
end;

procedure TfrmSysRol.loadConfig;
begin
	inherited;

end;

procedure TfrmSysRol.NewR;
begin
	inherited;
	registro.init;
	registro.initDataSet(cds);
	transaction := tAdd;
  cargarArbol;
end;

procedure TfrmSysRol.Print;
begin
	inherited;

end;

procedure TfrmSysRol.QBE;
begin
	inherited;
	registro.init;

	registro.DESCRIPTION     	:= cDescription.Text;
	////////////////////////////company id solo si no es super//////////////
  registro.COMPANYID        := Guser.company_id;
	////////////////////////////////////////////////////////////

	try
			registro.QBE(cds);
      cds.SortDataSetByFieldName('ID',false);

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
					showmsg(frmMAIN.getLabel(mRecordsFound)+IntToStr(cds.RecordCount));
					transaction := tUpdate;
			end;

			cds.Last;
			registro.fromClientDataSet(cds);
			showRegistro;

	except on e:Exception do
		begin
					Application.MessageBox(Pchar(frmMAIN.getLabel(mErrorTransacc)),Pchar(frmMAIN.getLabel(capError)),MB_ICONERROR);
					showmsg(frmMAIN.getLabel(mNOSupportTransaction));
		end;
	end;

end;

procedure TfrmSysRol.Save;
var  id : integer;
begin
	inherited;

	if not isFullRequired then Exit;

	try
			loadRegistro;

			if registro.save(cds,transaction) = cTrue then
			begin
					showmsg(frmMAIN.getLabel(mSuccess));

          loadLista;
          Tsecurity_option_privilegies(registro).saveList(cds,registro.ID,privilegios);

					id := registro.ID;
					registro.init;
					registro.ID := id;
					registro.QBE(cds);
					registro.fromClientDataSet(cds);
					showRegistro;

			end;

	except on e:Exception do
		begin
					Application.MessageBox( Pchar(frmMAIN.getLabel(mErrorTransacc)+EOL+e.Message),Pchar(frmMAIN.getLabel(capError)), MB_ICONSTOP);
					showmsg(frmMAIN.getLabel(mNOSupportTransaction));
		end;
	end;

end;

function TfrmSysRol.isDeletable: boolean;
begin
		 RESULT := registro.ID <> 0;
end;


procedure TfrmSysRol.loadRegistro;
begin
	 if transaction=tAdd then
			 registro.init;

		registro.fromGUI(self);
    registro.COMPANYID := GUser.company_id;
    registro.UCREATED  := Guser.id;
    registro.UUPDATED  := Guser.id;
		/////////////////////company///////////////////////
		/////////////////////////////////////////////////////
end;

procedure TfrmSysRol.showRegistro;
begin
    if registro.ID=0 then exit;
     
		registro.toGUI(self);
    cargarArbol;
    marcarPrivilegios;
    cpriv.Items.GetFirstNode.Expand(true);
end;

procedure TfrmSysRol.findID;
begin
		 transaction := tAdd;
		 if cDescription.Text='' then exit;

		 registro.init;
		 registro.DESCRIPTION := cDescription.Text;
		 registro.COMPANYID := GUser.company_id;

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

procedure TfrmSysRol.cDescriptionExit(Sender: TObject);
begin
		inherited;
		findID;
end;

procedure TfrmSysRol.suiDBNavigator1Click(Sender: TObject;
	Button: TNavigateBtn);
begin
	inherited;
	if not cds.Active then exit;

	registro.fromClientDataSet(cds);
	showRegistro;
	transaction := tUpdate;
end;

procedure TfrmSysRol.updateData;
begin
	inherited;

end;

procedure TfrmSysRol.cargarArbol;
var  L:TList;  i:word;
     op : Tsecurity_option;
     root: TTreeNode;
     p : Psecurity_option;
     nodo: TTreeNode;
begin
     cpriv.Items.Clear;

     op := Tsecurity_option.Create;
     try
     qMenu.Close;
     qMenu.ParamByName('app_id').AsInteger := frmMAIN.app_id;
     qMenu.Open;
     qMenu.SortDataSetByFieldNames(['islevel','id'],[false,false]);
     L := op.toList(qMenu);

 	   cpriv.items.BeginUpdate;
     root := cpriv.Items.AddFirst(NIL,frmMAIN.appName);
     root.ImageIndex := -1;
     root.SelectedIndex := -1;

     if L.Count>0 then
        for i:=0 to L.Count-1 do
        begin
             p := L.Items[i];
             if P.islevel = 0 then //si es panel aggregar al arbol en el primer nivel
             begin
                  nodo := cpriv.Items.AddChildObject(root,P.description,P);
                  nodo.ImageIndex     := 2;
                  nodo.SelectedIndex  := 2;

                  if P.id =100 then//sistema
                     cpriv.Checked[nodo] := true;

                  addHijos(nodo,P^,L);
             end;
        end;

     finally
           cpriv.Items.EndUpdate;
           FreeAndNil(op);
           FreeAndNil(L);
     end;
end;

procedure TfrmSysRol.marcarPrivilegios;
var  list : TList;
     i,j  : word;
     P    : Psecurity_option_privilegies;
     nodo,n1,n2,n3 : TTreeNode;
     O    : Psecurity_option;
     neg  : Tsecurity_option_privilegies;
begin
     neg  := Tsecurity_option_privilegies.Create;
     list := neg.getList(registro.ID,qMarca);
     cpriv.CheckBoxOptions.CascadeOptions := [];

     try
     if list.Count>0 then
     for i:= 0 to list.Count-1 do
     begin
          P := list.Items[i];

          //ahora buscamos el option_id y los marcamos
          if cpriv.Items.Count>0 then
          for j:=0 to cpriv.Items.Count-1 do
          begin
               nodo := cpriv.Items.Item[j];

               if nodo.Data <> NIL then
               begin
                    //en P privilegios y en O opcion del arbol
                    O := nodo.Data;
                    if O.id = P.option_id then
                    begin
                       cpriv.Checked[nodo] := true;

                       //si es transaccional ver i,u,d
                       if O.transacc then
                       begin
                          n1 := nodo.getFirstChild;
                          n2 := nodo.GetNextChild(n1);
                          n3 := nodo.GetNextChild(n2);

                          cpriv.Checked[n1] := P.i;
                          cpriv.Checked[n2] := P.u;
                          cpriv.Checked[n3] := P.d;
                       end;
                       break;
                    end;
               end;
          end;
     end;

     finally
         FreeAndNil(neg);
         cpriv.CheckBoxOptions.CascadeOptions := [poOnCheck,poOnUnCheck];
     end;

end;

procedure TfrmSysRol.addHijos(var pnodo: TtreeNode; option: Tsecurity_option;
  var Lista: TList);
var i : word;
    H : Psecurity_option;
    new : TTreeNode;
    n1,n2,n3:TTreenode;
begin
     if lista.Count <= 0 then exit;

     for i:=0 to lista.Count-1 do
     begin
          H := lista.Items[i];

          if H.islevel in [1,2] then  //formulario
          begin
               if H.parent = option.id then //si es hijo del panel actual
               begin
                    new := cpriv.Items.AddChildObject(pnodo,H.description,H);
                    new.ImageIndex := H.key0;
                    new.SelectedIndex := H.key0;

                    if (H.islevel=1) and (H.transacc) then
                    begin
                         n1:=cpriv.Items.AddChild(new,'Crear '+ H.description);
                         n2:=cpriv.Items.AddChild(new,'Editar '+H.description);
                         n3:=cpriv.Items.AddChild(new,'Eliminar '+H.description);
                         n1.ImageIndex :=1;
                         n2.ImageIndex :=1;
                         n3.ImageIndex :=1;
                         n1.SelectedIndex :=1;
                         n2.SelectedIndex :=1;
                         n3.SelectedIndex :=1;

                    end;

                    if (H.id = 199) then //salir
                       cpriv.Checked[new] := true;
               end;
          end;
     end;

end;

procedure TfrmSysRol.loadLista;
var i:word;
    P:Psecurity_option_privilegies;
    nodo,padre,n1,n2,n3:TTreeNode;
    O,Oparent:Psecurity_option;

begin
     utils.LiberarLista(privilegios);
     privilegios := TList.Create;

     for i:=0 to cpriv.Items.Count-1 do
     begin
          nodo := cpriv.Items.Item[i];

          if (nodo.Level=2) and (cpriv.Checked[nodo])  then  //solo las opciones EJECUTABLES
          begin
               O := nodo.Data;
               O.description;
               new(P);
               P^ := Tsecurity_option_privilegies.Create;
               P.option_id := O.id;

               if O.transacc then      //si es transaccional
               begin
                    n1 := nodo.getFirstChild;
//                    ShowMessage(n1.Text);
                    n2 := nodo.GetNextChild(n1);
//                    ShowMessage(n2.Text);
                    n3 := nodo.GetNextChild(n2);
//                    ShowMessage(n3.Text);

                    P.i         := cpriv.Checked[n1];
                    P.u         := cpriv.Checked[n2];
                    P.d         := cpriv.Checked[n3];
               end;

               privilegios.Add(P);

               //si no existe el padre incluimos en la lista
               padre := nodo.Parent;
               Oparent := padre.Data;
               if not existeEnLista(Oparent.id) then
               begin
                    new(P);
                    P^ := Tsecurity_option_privilegies.Create;
                    P.option_id := Oparent.id;
                    privilegios.Add(P);
               end;
          end;
     end;

     //si no existe sistema y salir lo ponemos por default
     if not existeEnLista(100) then  //sistema
     begin
          new(P);
          P^ := Tsecurity_option_privilegies.Create;
          P.option_id := 100;
          privilegios.Add(P);
     end;

     if not existeEnLista(199) then //salir
     begin
          new(P);
          P^ := Tsecurity_option_privilegies.Create;
          P.option_id := 199;
          privilegios.Add(P);
     end;


end;

function TfrmSysRol.existeEnLista(
  id:integer): boolean;
var  i:word; item:Psecurity_option_privilegies;
begin
     RESULT := false;

     if privilegios.Count>0 then
     for i:=0 to privilegios.Count-1 do
     begin
          item := privilegios.Items[i];
          if item.option_id = id then
          begin
               RESULT := TRUE;
               Exit;
          end;
     end;     
end;

initialization
  RegisterClass(TfrmSysRol);
end.
