UNIT Uclassecurity_option;

{
GENERADO AUTOMATICAMENTE POR "Generador v.2012"
AUTOR              : HARWIN EDIL PEREZ SALINAS   [harwinedil@gmail.com]
DESCRIPCION        : Clase para interactuar con la Tabla : security_option
FECHA CREACION     : 13/12/2012 Hora: 17:19:42
ULTIMA MODIFICACION: 13/12/2012 Hora: 17:19:42
MODIFICADO POR     : HARWIN EDIL PEREZ SALINAS
OBSERVACIONES      :

}

INTERFACE

USES
  sysUtils,uLkJSON,AstaDrv2,AstaClientDataset,AstaParamList,UBaseObject,Uconstantes,
  forms, classes,UGralUtilidades,DBCtrls,SUIDBCtrls;


TYPE
	Psecurity_option = ^Tsecurity_option;
	Tsecurity_option = CLASS(TBaseObject)
	PRIVATE
		aid        	: Integer; 
		adescription	: String; 
		acall      	: String;
		akey0      	: Integer;
		aparent    	: Integer;
		aislevel   	: Integer;
		aapp_id    	: Integer;
		acreated   	: TDateTime;
		aucreated_id	: Integer;
		aupdated   	: TDateTime;
		auupdated_id	: Integer;
		aconcurrency	: Integer;
		astatus    	: String;
		aitem      	: Integer;
	PUBLIC
    transacc   : boolean; 
    ParentName : string;
		CONSTRUCTOR     Create;		OVERLOAD;
		CONSTRUCTOR     Create(pid:Integer; pdescription:String; pcall:String; pkey0:Integer; pparent:Integer; pislevel:Integer; papp_id:Integer; pcreated:TDateTime; pucreated_id:Integer; pupdated:TDateTime; puupdated_id:Integer; pconcurrency:Integer; pstatus:String; pitem:Integer); OVERLOAD;
		CONSTRUCTOR     Create(const pObjeto:Tsecurity_option);OVERLOAD;
		DESTRUCTOR      Destroy;	OVERRIDE;
		PROCEDURE       init;		OVERRIDE;
		PROCEDURE       setAtributos(pid:Integer; pdescription:String; pcall:String; pkey0:Integer; pparent:Integer; pislevel:Integer; papp_id:Integer; pcreated:TDateTime; pucreated_id:Integer; pupdated:TDateTime; puupdated_id:Integer; pconcurrency:Integer; pstatus:String; pitem:Integer);		

		PROCEDURE       fromJson(o:TlkJSONobject); OVERRIDE;
		PROCEDURE       fromJsonString(s:string);  OVERRIDE;
		FUNCTION        toJsonString : string; OVERRIDE;
		FUNCTION        sqlGetField(field:string) : string; OVERRIDE;
		FUNCTION        sqlGetKeyValue(key,value : string) : string; OVERRIDE;
		FUNCTION        sqlGetAll : string; OVERRIDE;
		PROCEDURE       QBE( columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL); OVERLOAD;OVERRIDE;
		PROCEDURE       filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL); OVERRIDE;
		PROCEDURE       QBE(ClientDS: TAstaClientDataSet; where:string = '';params:TAstaParamList=NIL);  OVERLOAD;OVERRIDE;
    function        toList(ClientDS: TAstaClientDataSet): TList;

		FUNCTION        save(ClientDS: TAstaClientDataSet; transacction: byte) : byte; OVERRIDE;
		FUNCTION        exist(ClientDS: TAstaClientDataSet) : boolean;OVERRIDE;
		PROCEDURE       fromClientDataSet(ClientDS: TAstaClientDataSet);OVERRIDE;
		PROCEDURE       fromGUI(form:TForm ); OVERRIDE;
		PROCEDURE       toGUI(form:TForm ); OVERRIDE;
		PROCEDURE       nextID(ClientDS: TAstaClientDataSet); OVERRIDE;

		PROCEDURE   	setid(pid:Integer);
		PROCEDURE   	setdescription(pdescription:String);
		PROCEDURE   	setcall(pcall:String);
		PROCEDURE   	setkey0(pkey0:Integer);
		PROCEDURE   	setparent(pparent:Integer);
		PROCEDURE   	setislevel(pislevel:Integer);
		PROCEDURE   	setapp_id(papp_id:Integer);
		PROCEDURE   	setcreated(pcreated:TDateTime);
		PROCEDURE   	setucreated_id(pucreated_id:Integer);
		PROCEDURE   	setupdated(pupdated:TDateTime);
		PROCEDURE   	setuupdated_id(puupdated_id:Integer);
		PROCEDURE   	setconcurrency(pconcurrency:Integer);
		PROCEDURE   	setstatus(pstatus:String);
		PROCEDURE   	setitem(pitem:Integer);

		FUNCTION    	getid          	:Integer;
		FUNCTION    	getdescription 	:String;
		FUNCTION    	getcall        	:String;
		FUNCTION    	getkey0        	:Integer;
		FUNCTION    	getparent      	:Integer;
		FUNCTION    	getislevel     	:Integer;
		FUNCTION    	getapp_id      	:Integer;
		FUNCTION    	getcreated     	:TDateTime;
		FUNCTION    	getucreated_id 	:Integer;
		FUNCTION    	getupdated     	:TDateTime;
		FUNCTION    	getuupdated_id 	:Integer;
		FUNCTION    	getconcurrency 	:Integer;
		FUNCTION    	getstatus      	:String;
		FUNCTION    	getitem        	:Integer;

		PROPERTY    	id           : Integer   	read getid          	write setid          ;
		PROPERTY    	description  : String    	read getdescription 	write setdescription ;
		PROPERTY    	call         : String    	read getcall        	write setcall        ;
		PROPERTY    	key0         : Integer   	read getkey0        	write setkey0        ;
		PROPERTY    	parent       : Integer   	read getparent      	write setparent      ;
		PROPERTY    	islevel      : Integer   	read getislevel     	write setislevel     ;
		PROPERTY    	app_id       : Integer   	read getapp_id      	write setapp_id      ;
		PROPERTY    	created      : TDateTime 	read getcreated     	write setcreated     ;
		PROPERTY    	ucreated_id  : Integer   	read getucreated_id 	write setucreated_id ;
		PROPERTY    	updated      : TDateTime 	read getupdated     	write setupdated     ;
		PROPERTY    	uupdated_id  : Integer   	read getuupdated_id 	write setuupdated_id ;
		PROPERTY    	concurrency  : Integer   	read getconcurrency 	write setconcurrency ;
		PROPERTY    	status       : String    	read getstatus      	write setstatus      ;
		PROPERTY    	item         : Integer   	read getitem        	write setitem        ;


	END;

IMPLEMENTATION

uses DB,UfrmMain;
{Tsecurity_option}

CONSTRUCTOR Tsecurity_option.Create;
BEGIN
	aid         := 0;
	adescription:= '';
	acall       := '';
	akey0       := 0;
	aparent     := 0;
	aislevel    := 0;
	aapp_id     := 0;
	acreated    := 0;
	aucreated_id:= 0;
	aupdated    := 0;
	auupdated_id:= 0;
	aconcurrency:= 0;
	astatus     := '';
	aitem       := 0;
  transacc    := false;
	autocommit := true;
END;

CONSTRUCTOR Tsecurity_option.Create(pid:Integer; pdescription:String; pcall:String; pkey0:Integer; pparent:Integer; pislevel:Integer; papp_id:Integer; pcreated:TDateTime; pucreated_id:Integer; pupdated:TDateTime; puupdated_id:Integer; pconcurrency:Integer; pstatus:String; pitem:Integer);
BEGIN
	aid         := pid         ;
	adescription:= pdescription;
	acall       := pcall       ;
	akey0       := pkey0       ;
	aparent     := pparent     ;
	aislevel    := pislevel    ;
	aapp_id     := papp_id     ;
	acreated    := pcreated    ;
	aucreated_id:= pucreated_id;
	aupdated    := pupdated    ;
	auupdated_id:= puupdated_id;
	aconcurrency:= pconcurrency;
	astatus     := pstatus     ;
	aitem       := pitem       ;
  transacc    := false;
	autocommit := true;
END;

CONSTRUCTOR Tsecurity_option.Create(const pObjeto:Tsecurity_option);
BEGIN
	aid         := pObjeto.id         ;
	adescription:= pObjeto.description;
	acall       := pObjeto.call       ;
	akey0       := pObjeto.key0       ;
	aparent     := pObjeto.parent     ;
	aislevel    := pObjeto.islevel    ;
	aapp_id     := pObjeto.app_id     ;
	acreated    := pObjeto.created    ;
	aucreated_id:= pObjeto.ucreated_id;
	aupdated    := pObjeto.updated    ;
	auupdated_id:= pObjeto.uupdated_id;
	aconcurrency:= pObjeto.concurrency;
	astatus     := pObjeto.status     ;
	aitem       := pObjeto.item       ;
  transacc    := false;
	autocommit := pObjeto.autocommit;
END;

DESTRUCTOR Tsecurity_option.Destroy;
BEGIN

	inherited Destroy;
END;

PROCEDURE Tsecurity_option.init;
BEGIN
	aid         := 0;
	adescription:= '';
	acall       := '';
	akey0       := 0;
	aparent     := 0;
	aislevel    := 0;
	aapp_id     := 0;
	acreated    := 0;
	aucreated_id:= 0;
	aupdated    := 0;
	auupdated_id:= 0;
	aconcurrency:= 0;
	astatus     := '';
	aitem       := 0;
  transacc    := false;
END;

PROCEDURE Tsecurity_option.fromJsonString(s:string);
BEGIN
	self.fromJson(TlkJSON.ParseText(s) as TlkJSONobject);
END;

PROCEDURE Tsecurity_option.fromJson(o:TlkJSONobject);
BEGIN
	id          := (o.Field['id'] as TlkJSONnumber).Value;
	description := (o.Field['description'] as TlkJSONstring).Value;
	call        := (o.Field['call'] as TlkJSONstring).Value;
	key0        := (o.Field['key0'] as TlkJSONnumber).Value;
	parent      := (o.Field['parent'] as TlkJSONnumber).Value;
	islevel     := (o.Field['islevel'] as TlkJSONnumber).Value;
	app_id      := (o.Field['app_id'] as TlkJSONnumber).Value;
	created     := (o.Field['created'] as TlkJSONnumber).Value;
	ucreated_id := (o.Field['ucreated_id'] as TlkJSONnumber).Value;
	updated     := (o.Field['updated'] as TlkJSONnumber).Value;
	uupdated_id := (o.Field['uupdated_id'] as TlkJSONnumber).Value;
	concurrency := (o.Field['concurrency'] as TlkJSONnumber).Value;
	status      := (o.Field['status'] as TlkJSONstring).Value;
	item        := (o.Field['item'] as TlkJSONnumber).Value;
END;

FUNCTION Tsecurity_option.toJsonString : string;
var  json : TlkJSONobject;
BEGIN
	json := TlkJSONobject.Create();
	TRY
		json.Add('id',TlkJSONNumber.Generate(id));
		json.Add('description',TlkJSONstring.Generate(description));
		json.Add('call',TlkJSONstring.Generate(call));
		json.Add('key0',TlkJSONNumber.Generate(key0));
		json.Add('parent',TlkJSONNumber.Generate(parent));
		json.Add('islevel',TlkJSONNumber.Generate(islevel));
		json.Add('app_id',TlkJSONNumber.Generate(app_id));
		json.Add('created',TlkJSONNumber.Generate(created));
		json.Add('ucreated_id',TlkJSONNumber.Generate(ucreated_id));
		json.Add('updated',TlkJSONNumber.Generate(updated));
		json.Add('uupdated_id',TlkJSONNumber.Generate(uupdated_id));
		json.Add('concurrency',TlkJSONNumber.Generate(concurrency));
		json.Add('status',TlkJSONstring.Generate(status));
		json.Add('item',TlkJSONNumber.Generate(item));
	FINALLY
		RESULT := TlkJSON.GenerateText(json);
		FreeAndNIL(json);
	END;
END;


PROCEDURE Tsecurity_option.setAtributos(pid:Integer; pdescription:String; pcall:String; pkey0:Integer; pparent:Integer; pislevel:Integer; papp_id:Integer; pcreated:TDateTime; pucreated_id:Integer; pupdated:TDateTime; puupdated_id:Integer; pconcurrency:Integer; pstatus:String; pitem:Integer);
BEGIN
	aid         := pid         ;
	adescription:= pdescription;
	acall       := pcall       ;
	akey0       := pkey0       ;
	aparent     := pparent     ;
	aislevel    := pislevel    ;
	aapp_id     := papp_id     ;
	acreated    := pcreated    ;
	aucreated_id:= pucreated_id;
	aupdated    := pupdated    ;
	auupdated_id:= puupdated_id;
	aconcurrency:= pconcurrency;
	astatus     := pstatus     ;
	aitem       := pitem       ;
END;

FUNCTION Tsecurity_option.sqlGetField(field:string) : string;
BEGIN
	RESULT := 'select '+field+' from security_option order by '+field;
END;

FUNCTION Tsecurity_option.sqlGetKeyValue(key,value : string) : string;
BEGIN
	RESULT := 'select '+key+' as key,'+value+'as value from security_option order by '+value;
END;

FUNCTION  Tsecurity_option.sqlGetAll : string;
BEGIN
	RESULT := 'select * from security_option';
END;

PROCEDURE Tsecurity_option.filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
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

	IF SELF.description<>'' THEN
	BEGIN
		cds.sql.add( y +'description= :pdescription');
		cds.ParamByName('pdescription').asString	:= SELF.description;
		y := ' and ';
	END;

	IF SELF.islevel<>0 THEN
	BEGIN
		cds.sql.add( y +'islevel= :pislevel');
		cds.ParamByName('pislevel').asInteger	:= SELF.islevel;
		y := ' and ';
	END;

	IF SELF.app_id<>0 THEN
	BEGIN
		cds.sql.add( y +'app_id= :papp_id');
		cds.ParamByName('papp_id').asInteger	:= SELF.app_id;
		y := ' and ';
	END;

	IF SELF.status<>'' THEN
	BEGIN
		cds.sql.add( y +'status= :pstatus');
		cds.ParamByName('pstatus').asString	:= SELF.status;
		y := ' and ';
	END;

	if where <> '' then
	begin
	cds.sql.add(where);
	for i:=0 to params.count-1 do
		cds.params.AddOneParamItem(params.items[i]);
	end;
END;


PROCEDURE Tsecurity_option.QBE(ClientDS: TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add(sqlGetAll);
	filtrar(ClientDS,where,params);
	clientDS.prepare;
	clientDS.Open;
END;

PROCEDURE Tsecurity_option.QBE(columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add('select '+columns+ ' from security_option');
	ClientDS.SQL.Add('where '+where);

	if params <> NIL then
		ClientDS.Params := params;

	clientDS.prepare;
	clientDS.Open;
END;

function Tsecurity_option.exist(ClientDS: TAstaClientDataSet): boolean;
begin
	initDataSet(ClientDS);
	ClientDS.SQL.Add('select id from security_option where ID=:pID');
	ClientDS.ParamByName('pID').AsInteger := SELF.ID;
	ClientDS.Open;

	Result := not ClientDS.IsEmpty;
end;

procedure Tsecurity_option.fromClientDataSet(ClientDS: TAstaClientDataSet);
begin
	inherited;
	IF NOT ClientDS.Active THEN EXIT;
	SELF.id          := clientDS.FieldByName('id').AsInteger;
	SELF.description := clientDS.FieldByName('description').AsString;
	SELF.call        := clientDS.FieldByName('call').AsString;
	SELF.key0        := clientDS.FieldByName('key0').AsInteger;
	SELF.parent      := clientDS.FieldByName('parent').AsInteger;
	SELF.islevel     := clientDS.FieldByName('islevel').AsInteger;
	SELF.app_id      := clientDS.FieldByName('app_id').AsInteger;
	SELF.created     := clientDS.FieldByName('created').AsDateTime;
	SELF.ucreated_id := clientDS.FieldByName('ucreated_id').AsInteger;
	SELF.updated     := clientDS.FieldByName('updated').AsDateTime;
	SELF.uupdated_id := clientDS.FieldByName('uupdated_id').AsInteger;
	SELF.concurrency := clientDS.FieldByName('concurrency').AsInteger;
	SELF.status      := clientDS.FieldByName('status').AsString;
	SELF.item        := clientDS.FieldByName('item').AsInteger;
  SELF.transacc    := clientDS.FieldByName('transacc').AsBoolean;
end;


procedure Tsecurity_option.fromGUI(form: TForm);
begin
	with form do
	begin
{		SELF.id         := utils.formObtenerPropiedad(FindComponent('cid'),'Text');
		SELF.description:= utils.formObtenerPropiedad(FindComponent('cdescription'),'Text');
		SELF.call       := utils.formObtenerPropiedad(FindComponent('ccall'),'Text');
		SELF.key0       := utils.formObtenerPropiedad(FindComponent('ckey0'),'Text');
		SELF.parent     := utils.formObtenerPropiedad(FindComponent('cparent'),'Text');
		SELF.islevel    := utils.formObtenerPropiedad(FindComponent('cislevel'),'Text');
		SELF.app_id     := utils.formObtenerPropiedad(FindComponent('capp_id'),'Text');
		SELF.created    := utils.formObtenerPropiedad(FindComponent('ccreated'),'Text');
		SELF.ucreated_id:= utils.formObtenerPropiedad(FindComponent('cucreated_id'),'Text');
		SELF.updated    := utils.formObtenerPropiedad(FindComponent('cupdated'),'Text');
		SELF.uupdated_id:= utils.formObtenerPropiedad(FindComponent('cuupdated_id'),'Text');
		SELF.concurrency:= utils.formObtenerPropiedad(FindComponent('cconcurrency'),'Text');
		SELF.status     := utils.formObtenerPropiedad(FindComponent('cstatus'),'Text');
		SELF.item       := utils.formObtenerPropiedad(FindComponent('citem'),'Text');
}
	end;
end;

procedure Tsecurity_option.toGUI(form: TForm);
begin
	inherited;
	with form do
	begin
 {	utils.formAsignaPropiedad(FindComponent('cid'),'Text', IntTOStr(SELF.id));
	utils.formAsignaPropiedad(FindComponent('cdescription'),'Text', (SELF.description));
	utils.formAsignaPropiedad(FindComponent('ccall'),'Text', (SELF.call));
	utils.formAsignaPropiedad(FindComponent('ckey0'),'Text', IntTOStr(SELF.key0));
	utils.formAsignaPropiedad(FindComponent('cparent'),'Text', IntTOStr(SELF.parent));
	utils.formAsignaPropiedad(FindComponent('cislevel'),'Text', IntTOStr(SELF.islevel));
	utils.formAsignaPropiedad(FindComponent('capp_id'),'Text', IntTOStr(SELF.app_id));
	utils.formAsignaPropiedad(FindComponent('ccreated'),'Text', IntTOStr(SELF.created));
	utils.formAsignaPropiedad(FindComponent('cucreated_id'),'Text', IntTOStr(SELF.ucreated_id));
	utils.formAsignaPropiedad(FindComponent('cupdated'),'Text', IntTOStr(SELF.updated));
	utils.formAsignaPropiedad(FindComponent('cuupdated_id'),'Text', IntTOStr(SELF.uupdated_id));
	utils.formAsignaPropiedad(FindComponent('cconcurrency'),'Text', IntTOStr(SELF.concurrency));
	utils.formAsignaPropiedad(FindComponent('cstatus'),'Text', (SELF.status));
	utils.formAsignaPropiedad(FindComponent('citem'),'Text', IntTOStr(SELF.item));
  }
	end;
end;

function Tsecurity_option.save(ClientDS: TAstaClientDataSet;transacction: byte): byte;
//var   date : TDateTime;
begin
	RESULT := cFalse;
//	date := self.getFechaHoraServer(ClientDS);
	initDataSet(ClientDS);

//	if autocommit then
//		ClientDS.AstaClientSocket.StartTransaction;

   TRY

	case transacction of

	1 : begin         //update
		ClientDS.SQL.Add('UPDATE security_option SET '+
				' description = :pdescription'+
				',call = :pcall'+
				',key0 = :pkey0'+
				',parent = :pparent'+
				',islevel = :pislevel'+
				',app_id = :papp_id'+
				',created = :pcreated'+
				',ucreated_id = :pucreated_id'+
				',updated = :pupdated'+
				',uupdated_id = :puupdated_id'+
				',concurrency = :pconcurrency'+
				',status = :pstatus'+
				',item = :pitem'+
				' WHERE id = :pid'
		);
		ClientDS.ParamByName('pid').asInteger                := SELF.id;
		ClientDS.ParamByName('pdescription').asString        := SELF.description;
		ClientDS.ParamByName('pcall').asString               := SELF.call;
		ClientDS.ParamByName('pkey0').asInteger              := SELF.key0;
		ClientDS.ParamByName('pparent').asInteger            := SELF.parent;
		ClientDS.ParamByName('pislevel').asInteger           := SELF.islevel;
		ClientDS.ParamByName('papp_id').asInteger            := SELF.app_id;
		ClientDS.ParamByName('pcreated').asDatetime          := SELF.created;
		ClientDS.ParamByName('pucreated_id').asInteger       := SELF.ucreated_id;
		ClientDS.ParamByName('pupdated').asDatetime          := SELF.updated;
		ClientDS.ParamByName('puupdated_id').asInteger       := SELF.uupdated_id;
		ClientDS.ParamByName('pconcurrency').asInteger       := SELF.concurrency+1;
		ClientDS.ParamByName('pstatus').asString             := SELF.status;
		ClientDS.ParamByName('pitem').asInteger              := SELF.item;
	end;

	0: begin	//insert
		SELF.nextID(clientDS);

		initDataSet(ClientDS);
		ClientDS.SQL.Add('INSERT INTO security_option (id,description,call,key0,parent,islevel,app_id,created,ucreated_id,updated,uupdated_id,concurrency,status,item)');
		ClientDS.SQL.Add(' VALUES ');
		ClientDS.SQL.Add('(:pid,:pdescription,:pcall,:pkey0,:pparent,:pislevel,:papp_id,:pcreated,:pucreated_id,:pupdated,:puupdated_id,:pconcurrency,:pstatus,:pitem)');
		ClientDS.ParamByName('pid').asInteger                := SELF.id;
		ClientDS.ParamByName('pdescription').asString        := SELF.description;
		ClientDS.ParamByName('pcall').asString               := SELF.call;
		ClientDS.ParamByName('pkey0').asInteger              := SELF.key0;
		ClientDS.ParamByName('pparent').asInteger            := SELF.parent;
		ClientDS.ParamByName('pislevel').asInteger           := SELF.islevel;
		ClientDS.ParamByName('papp_id').asInteger            := SELF.app_id;
		ClientDS.ParamByName('pcreated').asDatetime          := SELF.created;
		ClientDS.ParamByName('pucreated_id').asInteger       := SELF.ucreated_id;
		ClientDS.ParamByName('pupdated').asDatetime          := SELF.updated;
		ClientDS.ParamByName('puupdated_id').asInteger       := SELF.uupdated_id;
		ClientDS.ParamByName('pconcurrency').asInteger       := 0;
		ClientDS.ParamByName('pstatus').asString             := SELF.status;
		ClientDS.ParamByName('pitem').asInteger              := SELF.item;
	end;

	2: begin //delete
		ClientDS.SQL.Add('delete from security_option where id =:pid');
		ClientDS.ParamByName('pID').asInteger := SELF.ID;
	end;

  end;
//	if autocommit then
//		ClientDS.AstaClientSocket.StartTransaction;
	Result := cTrue;

   FINALLY
	if autocommit then
		ClientDS.ExecSQLTransaction
	else
		ClientDS.ExecSQL;
   END;
end;

procedure Tsecurity_option.nextID(ClientDS: TAstaClientDataSet);
begin

end;


PROCEDURE Tsecurity_option.setid(pid:Integer);
BEGIN
	aid:= pid;
END;

PROCEDURE Tsecurity_option.setdescription(pdescription:String);
BEGIN
	adescription:= pdescription;
END;

PROCEDURE Tsecurity_option.setcall(pcall:String);
BEGIN
	acall:= pcall;
END;

PROCEDURE Tsecurity_option.setkey0(pkey0:Integer);
BEGIN
	akey0:= pkey0;
END;

PROCEDURE Tsecurity_option.setparent(pparent:Integer);
BEGIN
	aparent:= pparent;
END;

PROCEDURE Tsecurity_option.setislevel(pislevel:Integer);
BEGIN
	aislevel:= pislevel;
END;

PROCEDURE Tsecurity_option.setapp_id(papp_id:Integer);
BEGIN
	aapp_id:= papp_id;
END;

PROCEDURE Tsecurity_option.setcreated(pcreated:TDateTime);
BEGIN
	acreated:= pcreated;
END;

PROCEDURE Tsecurity_option.setucreated_id(pucreated_id:Integer);
BEGIN
	aucreated_id:= pucreated_id;
END;

PROCEDURE Tsecurity_option.setupdated(pupdated:TDateTime);
BEGIN
	aupdated:= pupdated;
END;

PROCEDURE Tsecurity_option.setuupdated_id(puupdated_id:Integer);
BEGIN
	auupdated_id:= puupdated_id;
END;

PROCEDURE Tsecurity_option.setconcurrency(pconcurrency:Integer);
BEGIN
	aconcurrency:= pconcurrency;
END;

PROCEDURE Tsecurity_option.setstatus(pstatus:String);
BEGIN
	astatus:= pstatus;
END;

PROCEDURE Tsecurity_option.setitem(pitem:Integer);
BEGIN
	aitem:= pitem;
END;


FUNCTION Tsecurity_option.getid	:Integer;
BEGIN
	RESULT := aid;
END;

FUNCTION Tsecurity_option.getdescription	:String;
BEGIN
	RESULT := adescription;
END;

FUNCTION Tsecurity_option.getcall	:String;
BEGIN
	RESULT := acall;
END;

FUNCTION Tsecurity_option.getkey0	:Integer;
BEGIN
	RESULT := akey0;
END;

FUNCTION Tsecurity_option.getparent	:Integer;
BEGIN
	RESULT := aparent;
END;

FUNCTION Tsecurity_option.getislevel	:Integer;
BEGIN
	RESULT := aislevel;
END;

FUNCTION Tsecurity_option.getapp_id	:Integer;
BEGIN
	RESULT := aapp_id;
END;

FUNCTION Tsecurity_option.getcreated	:TDateTime;
BEGIN
	RESULT := acreated;
END;

FUNCTION Tsecurity_option.getucreated_id	:Integer;
BEGIN
	RESULT := aucreated_id;
END;

FUNCTION Tsecurity_option.getupdated	:TDateTime;
BEGIN
	RESULT := aupdated;
END;

FUNCTION Tsecurity_option.getuupdated_id	:Integer;
BEGIN
	RESULT := auupdated_id;
END;

FUNCTION Tsecurity_option.getconcurrency	:Integer;
BEGIN
	RESULT := aconcurrency;
END;

FUNCTION Tsecurity_option.getstatus	:String;
BEGIN
	RESULT := astatus;
END;

FUNCTION Tsecurity_option.getitem	:Integer;
BEGIN
	RESULT := aitem;
END;


function Tsecurity_option.toList(ClientDS: TAstaClientDataSet): TList;
var  item : Psecurity_option;
begin
  RESULT := TList.Create;
	IF NOT ClientDS.Active THEN EXIT;

  ClientDS.First;
  while not ClientDS.Eof do
  begin
    new(item);
    item^ := Tsecurity_option.Create;

    item.ID          := clientDS.FieldByName('ID').AsInteger;
    item.DESCRIPTION := clientDS.FieldByName('DESCRIPTION').AsString;
    item.CALL        := clientDS.FieldByName('CALL').AsString;
    item.KEY0        := clientDS.FieldByName('KEY0').AsInteger;
    item.PARENT      := clientDS.FieldByName('PARENT').AsInteger;
    item.ISLEVEL     := clientDS.FieldByName('ISLEVEL').AsInteger;
    item.APP_ID      := clientDS.FieldByName('APP_ID').AsInteger;
    item.CREATED     := clientDS.FieldByName('CREATED').AsDateTime;
    item.UCREATED_ID := clientDS.FieldByName('UCREATED_id').AsInteger;
    item.UPDATED     := clientDS.FieldByName('UPDATED').AsDateTime;
    item.UUPDATED_ID := clientDS.FieldByName('UUPDATED_id').AsInteger;
    item.CONCURRENCY := clientDS.FieldByName('CONCURRENCY').AsInteger;
    item.STATUS      := clientDS.FieldByName('STATUS').AsString;
    item.item        := clientDS.FieldByName('item').AsInteger;
    item.transacc    := clientDS.FieldByName('transacc').AsBoolean;

    RESULT.Add(item);
    ClientDS.Next;
  end;

end;

END.

