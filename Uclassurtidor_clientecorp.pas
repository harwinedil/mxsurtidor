UNIT Uclassurtidor_clientecorp;

{
GENERADO AUTOMATICAMENTE POR "Generador v.2012"
AUTOR              : HARWIN EDIL PEREZ SALINAS   [harwinedil@gmail.com]
DESCRIPCION        : Clase para interactuar con la Tabla : surtidor_clientecorp
FECHA CREACION     : 13/12/2012 Hora: 10:24:38
ULTIMA MODIFICACION: 13/12/2012 Hora: 10:24:38
MODIFICADO POR     : HARWIN EDIL PEREZ SALINAS
OBSERVACIONES      :

}

INTERFACE

USES
  sysUtils,uLkJSON,AstaDrv2,AstaClientDataset,AstaParamList,UBaseObject,Uconstantes,
  forms, classes,UGralUtilidades,UclasSYSUSER,DBCtrls,SUIDBCtrls;


TYPE
	Psurtidor_clientecorp = ^Tsurtidor_clientecorp;
	Tsurtidor_clientecorp = CLASS(TBaseObject)
	PRIVATE
		aid    	: String[3]; 
		anombre	: String[3]; 
		atipo  	: String[3]; 
		asaldobs	: Double;
	PUBLIC
		CONSTRUCTOR     Create;		OVERLOAD;
		CONSTRUCTOR     Create(pid:String; pnombre:String; ptipo:String; psaldobs:Double); OVERLOAD;
		CONSTRUCTOR     Create(const pObjeto:Tsurtidor_clientecorp);OVERLOAD;
		DESTRUCTOR      Destroy;	OVERRIDE;
		PROCEDURE       init;		OVERRIDE;
		PROCEDURE       setAtributos(pid:String; pnombre:String; ptipo:String; psaldobs:Double);		

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
		PROCEDURE   	setnombre(pnombre:String);
		PROCEDURE   	settipo(ptipo:String);
		PROCEDURE   	setsaldobs(psaldobs:Double);

		FUNCTION    	getid      	:String;
		FUNCTION    	getnombre  	:String;
		FUNCTION    	gettipo    	:String;
		FUNCTION    	getsaldobs 	:Double;

		PROPERTY    	id       : String    	read getid      	write setid      ;
		PROPERTY    	nombre   : String    	read getnombre  	write setnombre  ;
		PROPERTY    	tipo     : String    	read gettipo    	write settipo    ;
		PROPERTY    	saldobs  : Double    	read getsaldobs 	write setsaldobs ;

		
	END;

IMPLEMENTATION
{Tsurtidor_clientecorp}

CONSTRUCTOR Tsurtidor_clientecorp.Create;
BEGIN
	aid     := '';
	anombre := '';
	atipo   := '';
	asaldobs:= 0;	
	autocommit := true;												
END;

CONSTRUCTOR Tsurtidor_clientecorp.Create(pid:String; pnombre:String; ptipo:String; psaldobs:Double);
BEGIN
	aid     := pid     ;
	anombre := pnombre ;
	atipo   := ptipo   ;
	asaldobs:= psaldobs;
	autocommit := true;
END;

CONSTRUCTOR Tsurtidor_clientecorp.Create(const pObjeto:Tsurtidor_clientecorp);
BEGIN
	aid     := pObjeto.id     ;
	anombre := pObjeto.nombre ;
	atipo   := pObjeto.tipo   ;
	asaldobs:= pObjeto.saldobs;
	autocommit := pObjeto.autocommit;
END;

DESTRUCTOR Tsurtidor_clientecorp.Destroy;
BEGIN
	
	inherited Destroy;
END;

PROCEDURE Tsurtidor_clientecorp.init;
BEGIN
	aid     := '';
	anombre := '';
	atipo   := '';
	asaldobs:= 0;														
END;

PROCEDURE Tsurtidor_clientecorp.fromJsonString(s:string);
BEGIN
	self.fromJson(TlkJSON.ParseText(s) as TlkJSONobject);
END;

PROCEDURE Tsurtidor_clientecorp.fromJson(o:TlkJSONobject);
BEGIN
	id      := (o.Field['id'] as TlkJSONstring).Value;
	nombre  := (o.Field['nombre'] as TlkJSONstring).Value;
	tipo    := (o.Field['tipo'] as TlkJSONstring).Value;
	saldobs := (o.Field['saldobs'] as TlkJSONnumber).Value;
END;

FUNCTION Tsurtidor_clientecorp.toJsonString : string;
var  json : TlkJSONobject;
BEGIN
	json := TlkJSONobject.Create();
	TRY	
		json.Add('id',TlkJSONstring.Generate(id));
		json.Add('nombre',TlkJSONstring.Generate(nombre));
		json.Add('tipo',TlkJSONstring.Generate(tipo));
		json.Add('saldobs',TlkJSONNumber.Generate(saldobs));
	FINALLY
		RESULT := TlkJSON.GenerateText(json);
		FreeAndNIL(json);
	END;
END;


PROCEDURE Tsurtidor_clientecorp.setAtributos(pid:String; pnombre:String; ptipo:String; psaldobs:Double);		
BEGIN
	aid     := pid     ;
	anombre := pnombre ;
	atipo   := ptipo   ;
	asaldobs:= psaldobs;	
END;

FUNCTION Tsurtidor_clientecorp.sqlGetField(field:string) : string;
BEGIN
	RESULT := 'select '+field+' from surtidor_clientecorp order by '+field;
END;

FUNCTION Tsurtidor_clientecorp.sqlGetKeyValue(key,value : string) : string;
BEGIN
	RESULT := 'select '+key+' as key,'+value+'as value from surtidor_clientecorp order by '+value;
END;

FUNCTION  Tsurtidor_clientecorp.sqlGetAll : string;
BEGIN
	RESULT := 'select * from surtidor_clientecorp';
END;

PROCEDURE Tsurtidor_clientecorp.filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
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

	IF SELF.nombre<>'' THEN
	BEGIN
		cds.sql.add( y +'nombre= :pnombre');
		cds.ParamByName('pnombre').asString	:= SELF.nombre;
		y := ' and ';
	END;

	IF SELF.tipo<>'' THEN
	BEGIN
		cds.sql.add( y +'tipo= :ptipo');
		cds.ParamByName('ptipo').asString	:= SELF.tipo;
		y := ' and ';
	END;

	IF SELF.saldobs<>0 THEN
	BEGIN
		cds.sql.add( y +'saldobs= :psaldobs');
		cds.ParamByName('psaldobs').asDouble	:= SELF.saldobs;
		y := ' and ';
	END;


	if where <> '' then
	begin
	cds.sql.add(where);
	for i:=0 to params.count-1 do
		cds.params.AddOneParamItem(params.items[i]);
	end;
END;


PROCEDURE Tsurtidor_clientecorp.QBE(ClientDS: TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add(sqlGetAll);
	filtrar(ClientDS,where,params);
	clientDS.prepare;
	clientDS.Open;
END;

PROCEDURE Tsurtidor_clientecorp.QBE(columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add('select '+columns+ ' from surtidor_clientecorp');
	ClientDS.SQL.Add('where '+where);

	if params <> NIL then
		ClientDS.Params := params;

	clientDS.prepare;
	clientDS.Open;
END;

function Tsurtidor_clientecorp.exist(ClientDS: TAstaClientDataSet): boolean;
begin
	initDataSet(ClientDS);
	ClientDS.SQL.Add('select id from surtidor_clientecorp where ID=:pID');
	ClientDS.ParamByName('pID').AsInteger := SELF.ID;
	ClientDS.Open;

	Result := not ClientDS.IsEmpty;
end;

procedure Tsurtidor_clientecorp.fromClientDataSet(ClientDS: TAstaClientDataSet);
begin
	inherited;
	IF NOT ClientDS.Active THEN EXIT;
	SELF.id      := clientDS.FieldByName('id').AsString;
	SELF.nombre  := clientDS.FieldByName('nombre').AsString;
	SELF.tipo    := clientDS.FieldByName('tipo').AsString;
	SELF.saldobs := clientDS.FieldByName('saldobs').AsDouble;
end;


procedure Tsurtidor_clientecorp.fromGUI(form: TForm);
begin
	with form do
	begin
		SELF.id     := utils.formObtenerPropiedad(FindComponent('cid'),'Text');
		SELF.nombre := utils.formObtenerPropiedad(FindComponent('cnombre'),'Text');
		SELF.tipo   := utils.formObtenerPropiedad(FindComponent('ctipo'),'Text');
		SELF.saldobs:= utils.formObtenerPropiedad(FindComponent('csaldobs'),'Text');
	end;
end;

procedure Tsurtidor_clientecorp.toGUI(form: TForm);
begin
	inherited;
	with form do
	begin
	utils.formAsignaPropiedad(FindComponent('cid'),'Text', (SELF.id));
	utils.formAsignaPropiedad(FindComponent('cnombre'),'Text', (SELF.nombre));
	utils.formAsignaPropiedad(FindComponent('ctipo'),'Text', (SELF.tipo));
	utils.formAsignaPropiedad(FindComponent('csaldobs'),'Text', IntTOStr(SELF.saldobs));
	end;
end;

function Tsurtidor_clientecorp.save(ClientDS: TAstaClientDataSet;transacction: byte): byte;
var   date : TDateTime;
begin
	RESULT := cFalse;
	date := self.getFechaHoraServer(ClientDS);
	initDataSet(ClientDS);

//	if autocommit then
//		ClientDS.AstaClientSocket.StartTransaction;

   TRY

	case transacction of

	1 : begin         //update
		ClientDS.SQL.Add('UPDATE surtidor_clientecorp SET '+
				' id = :pid'+
				',nombre = :pnombre'+
				',tipo = :ptipo'+
				',saldobs = :psaldobs'+
				' WHERE id = :pid'
		);		
		ClientDS.ParamByName('pid').asString             := SELF.id;
		ClientDS.ParamByName('pnombre').asString         := SELF.nombre;
		ClientDS.ParamByName('ptipo').asString           := SELF.tipo;
		ClientDS.ParamByName('psaldobs').asDouble        := SELF.saldobs;
	end;

	0: begin	//insert
		SELF.nextID(clientDS);

		initDataSet(ClientDS);
		ClientDS.SQL.Add('INSERT INTO surtidor_clientecorp (id,nombre,tipo,saldobs)');
		ClientDS.SQL.Add(' VALUES ');
		ClientDS.SQL.Add('(:pid,:pnombre,:ptipo,:psaldobs)');		
		ClientDS.ParamByName('pid').asString             := SELF.id;
		ClientDS.ParamByName('pnombre').asString         := SELF.nombre;
		ClientDS.ParamByName('ptipo').asString           := SELF.tipo;
		ClientDS.ParamByName('psaldobs').asDouble        := SELF.saldobs;
	end;
	
	2: begin //delete
		ClientDS.SQL.Add('delete from surtidor_clientecorp where id =:pid');
		ClientDS.ParamByName('pID').asInteger := SELF.ID;
	end;

	4: begin //enable
		ClientDS.SQL.Add('update surtidor_clientecorp set status=:pstatus where id =:pid');
		ClientDS.ParamByName('pID').asInteger    := SELF.ID;
		ClientDS.ParamByName('pstatus').asString := '1';
	end;

	5: begin //disable
		ClientDS.SQL.Add('update surtidor_clientecorp set status=:pstatus where id =:pid');
		ClientDS.ParamByName('pID').asInteger    := SELF.ID;
		ClientDS.ParamByName('pstatus').asString := '0';
	end;

	end;
	if autocommit then
		ClientDS.AstaClientSocket.StartTransaction;

	ClientDS.ExecSQL;
	Result := cTrue;

   FINALLY
	if autocommit then
			ClientDS.AstaClientSocket.EndTransaction(true);
   END;
end;

procedure Tsurtidor_clientecorp.nextID(ClientDS: TAstaClientDataSet);
begin
		 initDataSet(ClientDS);

		 ClientDS.SQL.Add('select max(sub) as sub from surtidor_clientecorp where companyid = :pcompanyID');
		 ClientDS.ParamByName('pcompanyID').AsInteger := self.COMPANYID;
		 ClientDS.Open;

		 self.SUB := ClientDS.fieldbyName('sub').AsInteger + 1;
		 self.ID  := (SELF.companyID * //1000000)+ SELF.SUB;
end;


PROCEDURE Tsurtidor_clientecorp.setid(pid:String);
BEGIN
	aid:= pid;
END;

PROCEDURE Tsurtidor_clientecorp.setnombre(pnombre:String);
BEGIN
	anombre:= pnombre;
END;

PROCEDURE Tsurtidor_clientecorp.settipo(ptipo:String);
BEGIN
	atipo:= ptipo;
END;

PROCEDURE Tsurtidor_clientecorp.setsaldobs(psaldobs:Double);
BEGIN
	asaldobs:= psaldobs;
END;


FUNCTION Tsurtidor_clientecorp.getid	:String;
BEGIN
	RESULT := aid;
END;

FUNCTION Tsurtidor_clientecorp.getnombre	:String;
BEGIN
	RESULT := anombre;
END;

FUNCTION Tsurtidor_clientecorp.gettipo	:String;
BEGIN
	RESULT := atipo;
END;

FUNCTION Tsurtidor_clientecorp.getsaldobs	:Double;
BEGIN
	RESULT := asaldobs;
END;


END.

