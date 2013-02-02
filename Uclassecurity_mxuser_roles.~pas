UNIT Uclassecurity_mxuser_roles;

{
GENERADO AUTOMATICAMENTE POR "Generador v.2012"
AUTOR              : HARWIN EDIL PEREZ SALINAS   [harwinedil@gmail.com]
DESCRIPCION        : Clase para interactuar con la Tabla : security_mxuser_roles
FECHA CREACION     : 14/12/2012 Hora: 0:07:03
ULTIMA MODIFICACION: 14/12/2012 Hora: 0:07:03
MODIFICADO POR     : HARWIN EDIL PEREZ SALINAS
OBSERVACIONES      :

}

INTERFACE

USES
  sysUtils,uLkJSON,AstaDrv2,AstaClientDataset,AstaParamList,UBaseObject,Uconstantes,
  forms, classes,UGralUtilidades,DBCtrls,SUIDBCtrls;


TYPE
	Psecurity_mxuser_roles = ^Tsecurity_mxuser_roles;
	Tsecurity_mxuser_roles = CLASS(TBaseObject)
	PRIVATE
		aid      	: Integer; 
		amxuser_id	: Integer; 
		arol_id  	: Integer;
	PUBLIC
		CONSTRUCTOR     Create;		OVERLOAD;
		CONSTRUCTOR     Create(pid:Integer; pmxuser_id:Integer; prol_id:Integer); OVERLOAD;
		CONSTRUCTOR     Create(const pObjeto:Tsecurity_mxuser_roles);OVERLOAD;
		DESTRUCTOR      Destroy;	OVERRIDE;
		PROCEDURE       init;		OVERRIDE;
		PROCEDURE       setAtributos(pid:Integer; pmxuser_id:Integer; prol_id:Integer);		

		PROCEDURE       fromJson(o:TlkJSONobject); OVERRIDE;
		PROCEDURE       fromJsonString(s:string);  OVERRIDE;
		FUNCTION        toJsonString : string; OVERRIDE;
		FUNCTION        sqlGetField(field:string) : string; OVERRIDE;
		FUNCTION        sqlGetKeyValue(key,value : string) : string; OVERRIDE;
		FUNCTION        sqlGetAll : string; OVERRIDE;
		PROCEDURE       QBE( columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL); OVERLOAD;OVERRIDE;
		PROCEDURE       filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL); OVERRIDE;
		PROCEDURE       QBE(ClientDS: TAstaClientDataSet; where:string = '';params:TAstaParamList=NIL);  OVERLOAD;OVERRIDE;
    function        getList(ClientDS: TAstaClientDataSet;user_id:integer) : TList;

		FUNCTION        save(ClientDS: TAstaClientDataSet; transacction: byte) : byte; OVERRIDE;
		FUNCTION        exist(ClientDS: TAstaClientDataSet) : boolean;OVERRIDE;
		PROCEDURE       fromClientDataSet(ClientDS: TAstaClientDataSet);OVERRIDE;
		PROCEDURE       fromGUI(form:TForm ); OVERRIDE;
		PROCEDURE       toGUI(form:TForm ); OVERRIDE;
		PROCEDURE       nextID(ClientDS: TAstaClientDataSet); OVERRIDE;

		PROCEDURE   	setid(pid:Integer);
		PROCEDURE   	setmxuser_id(pmxuser_id:Integer);
		PROCEDURE   	setrol_id(prol_id:Integer);

		FUNCTION    	getid        	:Integer;
		FUNCTION    	getmxuser_id 	:Integer;
		FUNCTION    	getrol_id    	:Integer;

		PROPERTY    	id         : Integer   	read getid        	write setid        ;
		PROPERTY    	mxuser_id  : Integer   	read getmxuser_id 	write setmxuser_id ;
		PROPERTY    	rol_id     : Integer   	read getrol_id    	write setrol_id    ;


	END;

IMPLEMENTATION
{Tsecurity_mxuser_roles}

CONSTRUCTOR Tsecurity_mxuser_roles.Create;
BEGIN
	aid       := 0;
	amxuser_id:= 0;
	arol_id   := 0;
	autocommit := true;
END;

CONSTRUCTOR Tsecurity_mxuser_roles.Create(pid:Integer; pmxuser_id:Integer; prol_id:Integer);
BEGIN
	aid       := pid       ;
	amxuser_id:= pmxuser_id;
	arol_id   := prol_id   ;
	autocommit := true;
END;

CONSTRUCTOR Tsecurity_mxuser_roles.Create(const pObjeto:Tsecurity_mxuser_roles);
BEGIN
	aid       := pObjeto.id       ;
	amxuser_id:= pObjeto.mxuser_id;
	arol_id   := pObjeto.rol_id   ;
	autocommit := pObjeto.autocommit;
END;

DESTRUCTOR Tsecurity_mxuser_roles.Destroy;
BEGIN
	
	inherited Destroy;
END;

PROCEDURE Tsecurity_mxuser_roles.init;
BEGIN
	aid       := 0;
	amxuser_id:= 0;
	arol_id   := 0;														
END;

PROCEDURE Tsecurity_mxuser_roles.fromJsonString(s:string);
BEGIN
	self.fromJson(TlkJSON.ParseText(s) as TlkJSONobject);
END;

PROCEDURE Tsecurity_mxuser_roles.fromJson(o:TlkJSONobject);
BEGIN
	id        := (o.Field['id'] as TlkJSONnumber).Value;
	mxuser_id := (o.Field['mxuser_id'] as TlkJSONnumber).Value;
	rol_id    := (o.Field['rol_id'] as TlkJSONnumber).Value;
END;

FUNCTION Tsecurity_mxuser_roles.toJsonString : string;
var  json : TlkJSONobject;
BEGIN
	json := TlkJSONobject.Create();
	TRY	
		json.Add('id',TlkJSONNumber.Generate(id));
		json.Add('mxuser_id',TlkJSONNumber.Generate(mxuser_id));
		json.Add('rol_id',TlkJSONNumber.Generate(rol_id));
	FINALLY
		RESULT := TlkJSON.GenerateText(json);
		FreeAndNIL(json);
	END;
END;


PROCEDURE Tsecurity_mxuser_roles.setAtributos(pid:Integer; pmxuser_id:Integer; prol_id:Integer);		
BEGIN
	aid       := pid       ;
	amxuser_id:= pmxuser_id;
	arol_id   := prol_id   ;	
END;

FUNCTION Tsecurity_mxuser_roles.sqlGetField(field:string) : string;
BEGIN
	RESULT := 'select '+field+' from security_mxuser_roles order by '+field;
END;

FUNCTION Tsecurity_mxuser_roles.sqlGetKeyValue(key,value : string) : string;
BEGIN
	RESULT := 'select '+key+' as key,'+value+'as value from security_mxuser_roles order by '+value;
END;

FUNCTION  Tsecurity_mxuser_roles.sqlGetAll : string;
BEGIN
	RESULT := 'select * from security_mxuser_roles';
END;

PROCEDURE Tsecurity_mxuser_roles.filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
var  	y : string;
	i : word;
BEGIN
	y := ' where ';
	IF SELF.id<>0 THEN
	BEGIN
		cds.sql.add( y +'id= :pid');
		cds.ParamByName('pid').asInteger	:= SELF.id;
		y := ' and ';
	END;

	IF SELF.mxuser_id<>0 THEN
	BEGIN
		cds.sql.add( y +'mxuser_id= :pmxuser_id');
		cds.ParamByName('pmxuser_id').asInteger	:= SELF.mxuser_id;
		y := ' and ';
	END;

	IF SELF.rol_id<>0 THEN
	BEGIN
		cds.sql.add( y +'rol_id= :prol_id');
		cds.ParamByName('prol_id').asInteger	:= SELF.rol_id;
		y := ' and ';
	END;


	if where <> '' then
	begin
	cds.sql.add(where);
	for i:=0 to params.count-1 do
		cds.params.AddOneParamItem(params.items[i]);
	end;
END;


PROCEDURE Tsecurity_mxuser_roles.QBE(ClientDS: TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add(sqlGetAll);
	filtrar(ClientDS,where,params);
	clientDS.prepare;
	clientDS.Open;
END;

PROCEDURE Tsecurity_mxuser_roles.QBE(columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add('select '+columns+ ' from security_mxuser_roles');
	ClientDS.SQL.Add('where '+where);

	if params <> NIL then
		ClientDS.Params := params;

	clientDS.prepare;
	clientDS.Open;
END;

function Tsecurity_mxuser_roles.exist(ClientDS: TAstaClientDataSet): boolean;
begin
	initDataSet(ClientDS);
	ClientDS.SQL.Add('select id from security_mxuser_roles where ID=:pID');
	ClientDS.ParamByName('pID').AsInteger := SELF.ID;
	ClientDS.Open;

	Result := not ClientDS.IsEmpty;
end;

procedure Tsecurity_mxuser_roles.fromClientDataSet(ClientDS: TAstaClientDataSet);
begin
	inherited;
	IF NOT ClientDS.Active THEN EXIT;
	SELF.id        := clientDS.FieldByName('id').AsInteger;
	SELF.mxuser_id := clientDS.FieldByName('mxuser_id').AsInteger;
	SELF.rol_id    := clientDS.FieldByName('rol_id').AsInteger;
end;


procedure Tsecurity_mxuser_roles.fromGUI(form: TForm);
begin
	with form do
	begin
{		SELF.id       := utils.formObtenerPropiedad(FindComponent('cid'),'Text');
		SELF.mxuser_id:= utils.formObtenerPropiedad(FindComponent('cmxuser_id'),'Text');
		SELF.rol_id   := utils.formObtenerPropiedad(FindComponent('crol_id'),'Text');
}
	end;
end;

procedure Tsecurity_mxuser_roles.toGUI(form: TForm);
begin
	inherited;
	with form do
	begin
{	utils.formAsignaPropiedad(FindComponent('cid'),'Text', IntTOStr(SELF.id));
	utils.formAsignaPropiedad(FindComponent('cmxuser_id'),'Text', IntTOStr(SELF.mxuser_id));
	utils.formAsignaPropiedad(FindComponent('crol_id'),'Text', IntTOStr(SELF.rol_id));
}
	end;
end;

function Tsecurity_mxuser_roles.save(ClientDS: TAstaClientDataSet;transacction: byte): byte;
//var   date : TDateTime;
begin
//	RESULT := cFalse;
//	date := self.getFechaHoraServer(ClientDS);
	initDataSet(ClientDS);

//	if autocommit then
//		ClientDS.AstaClientSocket.StartTransaction;

   TRY

	case transacction of

	1 : begin         //update
		ClientDS.SQL.Add('UPDATE security_mxuser_roles SET '+
				' mxuser_id = :pmxuser_id'+
				',rol_id = :prol_id'+
				' WHERE id = :pid'
		);		
		ClientDS.ParamByName('pid').asInteger              := SELF.id;
		ClientDS.ParamByName('pmxuser_id').asInteger       := SELF.mxuser_id;
		ClientDS.ParamByName('prol_id').asInteger          := SELF.rol_id;
	end;

	0: begin	//insert
//		SELF.nextID(clientDS);

//		initDataSet(ClientDS);
		ClientDS.SQL.Add('INSERT INTO security_mxuser_roles (mxuser_id,rol_id)');
		ClientDS.SQL.Add(' VALUES ');
		ClientDS.SQL.Add('(:pmxuser_id,:prol_id)');

		ClientDS.ParamByName('pmxuser_id').asInteger       := SELF.mxuser_id;
		ClientDS.ParamByName('prol_id').asInteger          := SELF.rol_id;
	end;

	2: begin //delete
		ClientDS.SQL.Add('delete from security_mxuser_roles where mxUser_id =:pid');
		ClientDS.ParamByName('pID').asInteger := SELF.mxuser_id;
	end;

  end;
//	if autocommit then
//		ClientDS.AstaClientSocket.StartTransaction;
	Result := cTrue;

   FINALLY
{	if autocommit then
		ClientDS.ExecSQLTransaction
	else
		ClientDS.ExecSQL;}
   END;

end;

procedure Tsecurity_mxuser_roles.nextID(ClientDS: TAstaClientDataSet);
begin
end;


PROCEDURE Tsecurity_mxuser_roles.setid(pid:Integer);
BEGIN
	aid:= pid;
END;

PROCEDURE Tsecurity_mxuser_roles.setmxuser_id(pmxuser_id:Integer);
BEGIN
	amxuser_id:= pmxuser_id;
END;

PROCEDURE Tsecurity_mxuser_roles.setrol_id(prol_id:Integer);
BEGIN
	arol_id:= prol_id;
END;


FUNCTION Tsecurity_mxuser_roles.getid	:Integer;
BEGIN
	RESULT := aid;
END;

FUNCTION Tsecurity_mxuser_roles.getmxuser_id	:Integer;
BEGIN
	RESULT := amxuser_id;
END;

FUNCTION Tsecurity_mxuser_roles.getrol_id	:Integer;
BEGIN
	RESULT := arol_id;
END;

function Tsecurity_mxuser_roles.getList(ClientDS: TAstaClientDataSet;
  user_id: integer): TList;
var  P: Psecurity_mxuser_roles;
begin
     result := TList.Create;
     self.mxuser_id := user_id;
     QBE(ClientDS);

     ClientDS.First;
     while not ClientDS.Eof do
     begin
     new(P);
     P^ := Tsecurity_mxuser_roles.Create;
	   P.id        := clientDS.FieldByName('id').AsInteger;
	   P.mxuser_id := clientDS.FieldByName('mxuser_id').AsInteger;
	   P.rol_id    := clientDS.FieldByName('rol_id').AsInteger;
     result.Add(P);
     ClientDS.Next;
     end;
end;

END.

