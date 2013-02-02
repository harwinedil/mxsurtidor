UNIT Uclassurtidor_vendedor;

{
GENERADO AUTOMATICAMENTE POR "Generador v.2012"
AUTOR              : HARWIN EDIL PEREZ SALINAS   [harwinedil@gmail.com]
DESCRIPCION        : Clase para interactuar con la Tabla : surtidor_vendedor
FECHA CREACION     : 13/12/2012 Hora: 10:31:37
ULTIMA MODIFICACION: 13/12/2012 Hora: 10:31:37
MODIFICADO POR     : HARWIN EDIL PEREZ SALINAS
OBSERVACIONES      :

}

INTERFACE

USES
  sysUtils,uLkJSON,AstaDrv2,AstaClientDataset,AstaParamList,UBaseObject,Uconstantes,
  forms, classes,UGralUtilidades,UclasSYSUSER,DBCtrls,SUIDBCtrls;


TYPE
	Psurtidor_vendedor = ^Tsurtidor_vendedor;
	Tsurtidor_vendedor = CLASS(TBaseObject)
	PRIVATE
		aid       	: String[22];
		acodigo   	: String[9];
		anombre   	: String[60];
		aidestacion	: String[22];
	PUBLIC
		CONSTRUCTOR     Create;		OVERLOAD;
		CONSTRUCTOR     Create(pid:String; pcodigo:String; pnombre:String; pidestacion:String); OVERLOAD;
		CONSTRUCTOR     Create(const pObjeto:Tsurtidor_vendedor);OVERLOAD;
		DESTRUCTOR      Destroy;	OVERRIDE;
		PROCEDURE       init;		OVERRIDE;
		PROCEDURE       setAtributos(pid:String; pcodigo:String; pnombre:String; pidestacion:String);

		PROCEDURE       fromJson(o:TlkJSONobject); OVERRIDE;
		PROCEDURE       fromJsonString(s:string);  OVERRIDE;
		FUNCTION        toJsonString : string; OVERRIDE;
		FUNCTION        sqlGetField(field:string) : string; OVERRIDE;
		FUNCTION        sqlGetKeyValue(key,value : string) : string; OVERRIDE;
		FUNCTION        sqlGetAll : string; OVERRIDE;
		PROCEDURE       QBE( columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL); OVERLOAD;OVERRIDE;
		PROCEDURE       filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL); OVERRIDE;
		PROCEDURE       QBE(ClientDS: TAstaClientDataSet; where:string = '';params:TAstaParamList=NIL);  OVERLOAD;OVERRIDE;

		FUNCTION        save(ClientDS: TAstaClientDataSet; transacction: byte) : byte; OVERRIDE;
		FUNCTION        exist(ClientDS: TAstaClientDataSet) : boolean;OVERRIDE;
		PROCEDURE       fromClientDataSet(ClientDS: TAstaClientDataSet);OVERRIDE;
		PROCEDURE       fromGUI(form:TForm ); OVERRIDE;
		PROCEDURE       toGUI(form:TForm ); OVERRIDE;
		PROCEDURE       nextID(ClientDS: TAstaClientDataSet); OVERRIDE;

		PROCEDURE   	setid(pid:String);
		PROCEDURE   	setcodigo(pcodigo:String);
		PROCEDURE   	setnombre(pnombre:String);
		PROCEDURE   	setidestacion(pidestacion:String);

		FUNCTION    	getid         	:String;
		FUNCTION    	getcodigo     	:String;
		FUNCTION    	getnombre     	:String;
		FUNCTION    	getidestacion 	:String;

		PROPERTY    	id          : String    	read getid         	write setid         ;
		PROPERTY    	codigo      : String    	read getcodigo     	write setcodigo     ;
		PROPERTY    	nombre      : String    	read getnombre     	write setnombre     ;
		PROPERTY    	idestacion  : String    	read getidestacion 	write setidestacion ;

		
	END;

IMPLEMENTATION
{Tsurtidor_vendedor}

CONSTRUCTOR Tsurtidor_vendedor.Create;
BEGIN
	aid        := '';
	acodigo    := '';
	anombre    := '';
	aidestacion:= '';	
	autocommit := true;												
END;

CONSTRUCTOR Tsurtidor_vendedor.Create(pid:String; pcodigo:String; pnombre:String; pidestacion:String);
BEGIN
	aid        := pid        ;
	acodigo    := pcodigo    ;
	anombre    := pnombre    ;
	aidestacion:= pidestacion;
	autocommit := true;
END;

CONSTRUCTOR Tsurtidor_vendedor.Create(const pObjeto:Tsurtidor_vendedor);
BEGIN
	aid        := pObjeto.id        ;
	acodigo    := pObjeto.codigo    ;
	anombre    := pObjeto.nombre    ;
	aidestacion:= pObjeto.idestacion;
	autocommit := pObjeto.autocommit;
END;

DESTRUCTOR Tsurtidor_vendedor.Destroy;
BEGIN
	
	inherited Destroy;
END;

PROCEDURE Tsurtidor_vendedor.init;
BEGIN
	aid        := '';
	acodigo    := '';
	anombre    := '';
	aidestacion:= '';
END;

PROCEDURE Tsurtidor_vendedor.fromJsonString(s:string);
BEGIN
	self.fromJson(TlkJSON.ParseText(s) as TlkJSONobject);
END;

PROCEDURE Tsurtidor_vendedor.fromJson(o:TlkJSONobject);
BEGIN
	id         := (o.Field['id'] as TlkJSONstring).Value;
	codigo     := (o.Field['codigo'] as TlkJSONstring).Value;
	nombre     := (o.Field['nombre'] as TlkJSONstring).Value;
	idestacion := (o.Field['idestacion'] as TlkJSONstring).Value;
END;

FUNCTION Tsurtidor_vendedor.toJsonString : string;
var  json : TlkJSONobject;
BEGIN
	json := TlkJSONobject.Create();
	TRY	
		json.Add('id',TlkJSONstring.Generate(id));
		json.Add('codigo',TlkJSONstring.Generate(codigo));
		json.Add('nombre',TlkJSONstring.Generate(nombre));
		json.Add('idestacion',TlkJSONstring.Generate(idestacion));
	FINALLY
		RESULT := TlkJSON.GenerateText(json);
		FreeAndNIL(json);
	END;
END;


PROCEDURE Tsurtidor_vendedor.setAtributos(pid:String; pcodigo:String; pnombre:String; pidestacion:String);		
BEGIN
	aid        := pid        ;
	acodigo    := pcodigo    ;
	anombre    := pnombre    ;
	aidestacion:= pidestacion;	
END;

FUNCTION Tsurtidor_vendedor.sqlGetField(field:string) : string;
BEGIN
	RESULT := 'select '+field+' from surtidor_vendedor order by '+field;
END;

FUNCTION Tsurtidor_vendedor.sqlGetKeyValue(key,value : string) : string;
BEGIN
	RESULT := 'select '+key+' as key,'+value+'as value from surtidor_vendedor order by '+value;
END;

FUNCTION  Tsurtidor_vendedor.sqlGetAll : string;
BEGIN
	RESULT := 'select * from surtidor_vendedor';
END;

PROCEDURE Tsurtidor_vendedor.filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
var  	y : string;
	i : word;
BEGIN
	y := ' where ';
	IF SELF.id<>'' THEN
	BEGIN
		cds.sql.add( y +'id= :pid');
		cds.ParamByName('pid').asString	:= SELF.id;
		y := ' and ';
	END;

	IF SELF.codigo<>'' THEN
	BEGIN
		cds.sql.add( y +'codigo= :pcodigo');
		cds.ParamByName('pcodigo').asString	:= SELF.codigo;
		y := ' and ';
	END;

	IF SELF.nombre<>'' THEN
	BEGIN
		cds.sql.add( y +'nombre= :pnombre');
		cds.ParamByName('pnombre').asString	:= SELF.nombre;
		y := ' and ';
	END;

	IF SELF.idestacion<>'' THEN
	BEGIN
		cds.sql.add( y +'idestacion= :pidestacion');
		cds.ParamByName('pidestacion').asString	:= SELF.idestacion;
		y := ' and ';
	END;


	if where <> '' then
	begin
	cds.sql.add(where);
	for i:=0 to params.count-1 do
		cds.params.AddOneParamItem(params.items[i]);
	end;
END;


PROCEDURE Tsurtidor_vendedor.QBE(ClientDS: TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add(sqlGetAll);
	filtrar(ClientDS,where,params);
	clientDS.prepare;
	clientDS.Open;
END;

PROCEDURE Tsurtidor_vendedor.QBE(columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add('select '+columns+ ' from surtidor_vendedor');
	ClientDS.SQL.Add('where '+where);

	if params <> NIL then
		ClientDS.Params := params;

	clientDS.prepare;
	clientDS.Open;
END;

function Tsurtidor_vendedor.exist(ClientDS: TAstaClientDataSet): boolean;
begin
	initDataSet(ClientDS);
	ClientDS.SQL.Add('select id from surtidor_vendedor where ID=:pID');
	ClientDS.ParamByName('pID').AsString := SELF.ID;
	ClientDS.Open;

	Result := not ClientDS.IsEmpty;
end;

procedure Tsurtidor_vendedor.fromClientDataSet(ClientDS: TAstaClientDataSet);
begin
	inherited;
	IF NOT ClientDS.Active THEN EXIT;
	SELF.id         := clientDS.FieldByName('id').AsString;
	SELF.codigo     := clientDS.FieldByName('codigo').AsString;
	SELF.nombre     := clientDS.FieldByName('nombre').AsString;
	SELF.idestacion := clientDS.FieldByName('idestacion').AsString;
end;


procedure Tsurtidor_vendedor.fromGUI(form: TForm);
begin
	with form do
	begin
		SELF.id        := utils.formObtenerPropiedad(FindComponent('cid'),'Text');
		SELF.codigo    := utils.formObtenerPropiedad(FindComponent('ccodigo'),'Text');
		SELF.nombre    := utils.formObtenerPropiedad(FindComponent('cnombre'),'Text');
		SELF.idestacion:= utils.formObtenerPropiedad(FindComponent('cidestacion'),'Text');
	end;
end;

procedure Tsurtidor_vendedor.toGUI(form: TForm);
begin
	inherited;
	with form do
	begin
	utils.formAsignaPropiedad(FindComponent('cid'),'Text', (SELF.id));
	utils.formAsignaPropiedad(FindComponent('ccodigo'),'Text', (SELF.codigo));
	utils.formAsignaPropiedad(FindComponent('cnombre'),'Text', (SELF.nombre));
	utils.formAsignaPropiedad(FindComponent('cidestacion'),'Text', (SELF.idestacion));
	end;
end;

function Tsurtidor_vendedor.save(ClientDS: TAstaClientDataSet;transacction: byte): byte;
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
		ClientDS.SQL.Add('UPDATE surtidor_vendedor SET '+
				'codigo = :pcodigo'+
				',nombre = :pnombre'+
				',idestacion = :pidestacion'+
				' WHERE id = :pid'
		);
		ClientDS.ParamByName('pid').asString                := SELF.id;
		ClientDS.ParamByName('pcodigo').asString            := SELF.codigo;
		ClientDS.ParamByName('pnombre').asString            := SELF.nombre;
		ClientDS.ParamByName('pidestacion').asString        := SELF.idestacion;
	end;

	0: begin	//insert
		SELF.nextID(clientDS);

		initDataSet(ClientDS);
		ClientDS.SQL.Add('INSERT INTO surtidor_vendedor (id,codigo,nombre,idestacion)');
		ClientDS.SQL.Add(' VALUES ');
		ClientDS.SQL.Add('(:pid,:pcodigo,:pnombre,:pidestacion)');
		ClientDS.ParamByName('pid').asString                := SELF.id;
		ClientDS.ParamByName('pcodigo').asString            := SELF.codigo;
		ClientDS.ParamByName('pnombre').asString            := SELF.nombre;
		ClientDS.ParamByName('pidestacion').asString        := SELF.idestacion;
	end;

	2: begin //delete
		ClientDS.SQL.Add('delete from surtidor_vendedor where id =:pid');
		ClientDS.ParamByName('pID').AsString := SELF.ID;
	end;

  end;
//	if autocommit then
//		ClientDS.AstaClientSocket.StartTransaction;
	Result := cTrue;

   FINALLY
	ClientDS.ExecSQLTransaction;
//	if autocommit then
//			ClientDS.AstaClientSocket.EndTransaction(true);
   END;
end;

procedure Tsurtidor_vendedor.nextID(ClientDS: TAstaClientDataSet);
begin

end;


PROCEDURE Tsurtidor_vendedor.setid(pid:String);
BEGIN
	aid:= pid;
END;

PROCEDURE Tsurtidor_vendedor.setcodigo(pcodigo:String);
BEGIN
	acodigo:= pcodigo;
END;

PROCEDURE Tsurtidor_vendedor.setnombre(pnombre:String);
BEGIN
	anombre:= pnombre;
END;

PROCEDURE Tsurtidor_vendedor.setidestacion(pidestacion:String);
BEGIN
	aidestacion:= pidestacion;
END;


FUNCTION Tsurtidor_vendedor.getid	:String;
BEGIN
	RESULT := aid;
END;

FUNCTION Tsurtidor_vendedor.getcodigo	:String;
BEGIN
	RESULT := acodigo;
END;

FUNCTION Tsurtidor_vendedor.getnombre	:String;
BEGIN
	RESULT := anombre;
END;

FUNCTION Tsurtidor_vendedor.getidestacion	:String;
BEGIN
	RESULT := aidestacion;
END;


END.

