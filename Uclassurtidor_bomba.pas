UNIT Uclassurtidor_bomba;

{
GENERADO AUTOMATICAMENTE POR "Generador v.2012"
AUTOR              : HARWIN EDIL PEREZ SALINAS   [harwinedil@gmail.com]
DESCRIPCION        : Clase para interactuar con la Tabla : surtidor_bomba
FECHA CREACION     : 13/12/2012 Hora: 13:49:12
ULTIMA MODIFICACION: 13/12/2012 Hora: 13:49:12
MODIFICADO POR     : HARWIN EDIL PEREZ SALINAS
OBSERVACIONES      :

}

INTERFACE

USES
  sysUtils,uLkJSON,AstaDrv2,AstaClientDataset,AstaParamList,UBaseObject,Uconstantes,
  forms, classes,UGralUtilidades,UclasSYSUSER,DBCtrls,SUIDBCtrls;


TYPE
	Psurtidor_bomba = ^Tsurtidor_bomba;
	Tsurtidor_bomba = CLASS(TBaseObject)
	PRIVATE
		aid                       	: String; 
		adescripcion              	: String; 
		aidestacion               	: String; 
		aalias                    	: String; 
		apetrobox                 	: String; 
		aaforadorvalormaximovolumen	: Currency;
	PUBLIC
		CONSTRUCTOR     Create;		OVERLOAD;
		CONSTRUCTOR     Create(pid:String; pdescripcion:String; pidestacion:String; palias:String; ppetrobox:String; paforadorvalormaximovolumen:Currency); OVERLOAD;
		CONSTRUCTOR     Create(const pObjeto:Tsurtidor_bomba);OVERLOAD;
		DESTRUCTOR      Destroy;	OVERRIDE;
		PROCEDURE       init;		OVERRIDE;
		PROCEDURE       setAtributos(pid:String; pdescripcion:String; pidestacion:String; palias:String; ppetrobox:String; paforadorvalormaximovolumen:Currency);		

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
		PROCEDURE   	setdescripcion(pdescripcion:String);
		PROCEDURE   	setidestacion(pidestacion:String);
		PROCEDURE   	setalias(palias:String);
		PROCEDURE   	setpetrobox(ppetrobox:String);
		PROCEDURE   	setaforadorvalormaximovolumen(paforadorvalormaximovolumen:Currency);

		FUNCTION    	getid                         	:String;
		FUNCTION    	getdescripcion                	:String;
		FUNCTION    	getidestacion                 	:String;
		FUNCTION    	getalias                      	:String;
		FUNCTION    	getpetrobox                   	:String;
		FUNCTION    	getaforadorvalormaximovolumen 	:Currency;

		PROPERTY    	id                          : String    	read getid                         	write setid                         ;
		PROPERTY    	descripcion                 : String    	read getdescripcion                	write setdescripcion                ;
		PROPERTY    	idestacion                  : String    	read getidestacion                 	write setidestacion                 ;
		PROPERTY    	alias                       : String    	read getalias                      	write setalias                      ;
		PROPERTY    	petrobox                    : String    	read getpetrobox                   	write setpetrobox                   ;
		PROPERTY    	aforadorvalormaximovolumen  : Currency  	read getaforadorvalormaximovolumen 	write setaforadorvalormaximovolumen ;

		
	END;

IMPLEMENTATION
{Tsurtidor_bomba}

CONSTRUCTOR Tsurtidor_bomba.Create;
BEGIN
	aid                        := '';
	adescripcion               := '';
	aidestacion                := '';
	aalias                     := '';
	apetrobox                  := '';
	aaforadorvalormaximovolumen:= 0;	
	autocommit := true;												
END;

CONSTRUCTOR Tsurtidor_bomba.Create(pid:String; pdescripcion:String; pidestacion:String; palias:String; ppetrobox:String; paforadorvalormaximovolumen:Currency);
BEGIN
	aid                        := pid                        ;
	adescripcion               := pdescripcion               ;
	aidestacion                := pidestacion                ;
	aalias                     := palias                     ;
	apetrobox                  := ppetrobox                  ;
	aaforadorvalormaximovolumen:= paforadorvalormaximovolumen;
	autocommit := true;
END;

CONSTRUCTOR Tsurtidor_bomba.Create(const pObjeto:Tsurtidor_bomba);
BEGIN
	aid                        := pObjeto.id                        ;
	adescripcion               := pObjeto.descripcion               ;
	aidestacion                := pObjeto.idestacion                ;
	aalias                     := pObjeto.alias                     ;
	apetrobox                  := pObjeto.petrobox                  ;
	aaforadorvalormaximovolumen:= pObjeto.aforadorvalormaximovolumen;
	autocommit := pObjeto.autocommit;
END;

DESTRUCTOR Tsurtidor_bomba.Destroy;
BEGIN
	
	inherited Destroy;
END;

PROCEDURE Tsurtidor_bomba.init;
BEGIN
	aid                        := '';
	adescripcion               := '';
	aidestacion                := '';
	aalias                     := '';
	apetrobox                  := '';
	aaforadorvalormaximovolumen:= 0;														
END;

PROCEDURE Tsurtidor_bomba.fromJsonString(s:string);
BEGIN
	self.fromJson(TlkJSON.ParseText(s) as TlkJSONobject);
END;

PROCEDURE Tsurtidor_bomba.fromJson(o:TlkJSONobject);
BEGIN
	id                         := (o.Field['id'] as TlkJSONstring).Value;
	descripcion                := (o.Field['descripcion'] as TlkJSONstring).Value;
	idestacion                 := (o.Field['idestacion'] as TlkJSONstring).Value;
	alias                      := (o.Field['alias'] as TlkJSONstring).Value;
	petrobox                   := (o.Field['petrobox'] as TlkJSONstring).Value;
	aforadorvalormaximovolumen := (o.Field['aforadorvalormaximovolumen'] as TlkJSONnumber).Value;
END;

FUNCTION Tsurtidor_bomba.toJsonString : string;
var  json : TlkJSONobject;
BEGIN
	json := TlkJSONobject.Create();
	TRY	
		json.Add('id',TlkJSONstring.Generate(id));
		json.Add('descripcion',TlkJSONstring.Generate(descripcion));
		json.Add('idestacion',TlkJSONstring.Generate(idestacion));
		json.Add('alias',TlkJSONstring.Generate(alias));
		json.Add('petrobox',TlkJSONstring.Generate(petrobox));
		json.Add('aforadorvalormaximovolumen',TlkJSONNumber.Generate(aforadorvalormaximovolumen));
	FINALLY
		RESULT := TlkJSON.GenerateText(json);
		FreeAndNIL(json);
	END;
END;


PROCEDURE Tsurtidor_bomba.setAtributos(pid:String; pdescripcion:String; pidestacion:String; palias:String; ppetrobox:String; paforadorvalormaximovolumen:Currency);		
BEGIN
	aid                        := pid                        ;
	adescripcion               := pdescripcion               ;
	aidestacion                := pidestacion                ;
	aalias                     := palias                     ;
	apetrobox                  := ppetrobox                  ;
	aaforadorvalormaximovolumen:= paforadorvalormaximovolumen;	
END;

FUNCTION Tsurtidor_bomba.sqlGetField(field:string) : string;
BEGIN
	RESULT := 'select '+field+' from surtidor_bomba order by '+field;
END;

FUNCTION Tsurtidor_bomba.sqlGetKeyValue(key,value : string) : string;
BEGIN
	RESULT := 'select '+key+' as key,'+value+'as value from surtidor_bomba order by '+value;
END;

FUNCTION  Tsurtidor_bomba.sqlGetAll : string;
BEGIN
	RESULT := 'select * from surtidor_bomba';
END;

PROCEDURE Tsurtidor_bomba.filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
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

	IF SELF.descripcion<>'' THEN
	BEGIN
		cds.sql.add( y +'descripcion= :pdescripcion');
		cds.ParamByName('pdescripcion').asString	:= SELF.descripcion;
		y := ' and ';
	END;

	IF SELF.idestacion<>'' THEN
	BEGIN
		cds.sql.add( y +'idestacion= :pidestacion');
		cds.ParamByName('pidestacion').asString	:= SELF.idestacion;
		y := ' and ';
	END;

	IF SELF.alias<>'' THEN
	BEGIN
		cds.sql.add( y +'alias= :palias');
		cds.ParamByName('palias').asString	:= SELF.alias;
		y := ' and ';
	END;

	IF SELF.petrobox<>'' THEN
	BEGIN
		cds.sql.add( y +'petrobox= :ppetrobox');
		cds.ParamByName('ppetrobox').asString	:= SELF.petrobox;
		y := ' and ';
	END;

	IF SELF.aforadorvalormaximovolumen<>0 THEN
	BEGIN
		cds.sql.add( y +'aforadorvalormaximovolumen= :paforadorvalormaximovolumen');
		cds.ParamByName('paforadorvalormaximovolumen').asCurrency	:= SELF.aforadorvalormaximovolumen;
		y := ' and ';
	END;


	if where <> '' then
	begin
	cds.sql.add(where);
	for i:=0 to params.count-1 do
		cds.params.AddOneParamItem(params.items[i]);
	end;
END;


PROCEDURE Tsurtidor_bomba.QBE(ClientDS: TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add(sqlGetAll);
	filtrar(ClientDS,where,params);
	clientDS.prepare;
	clientDS.Open;
END;

PROCEDURE Tsurtidor_bomba.QBE(columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add('select '+columns+ ' from surtidor_bomba');
	ClientDS.SQL.Add('where '+where);

	if params <> NIL then
		ClientDS.Params := params;

	clientDS.prepare;
	clientDS.Open;
END;

function Tsurtidor_bomba.exist(ClientDS: TAstaClientDataSet): boolean;
begin
	initDataSet(ClientDS);
	ClientDS.SQL.Add('select id from surtidor_bomba where ID=:pID');
	ClientDS.ParamByName('pID').AsString := SELF.ID;
	ClientDS.Open;

	Result := not ClientDS.IsEmpty;
end;

procedure Tsurtidor_bomba.fromClientDataSet(ClientDS: TAstaClientDataSet);
begin
	inherited;
	IF NOT ClientDS.Active THEN EXIT;
	SELF.id                         := clientDS.FieldByName('id').AsString;
	SELF.descripcion                := clientDS.FieldByName('descripcion').AsString;
	SELF.idestacion                 := clientDS.FieldByName('idestacion').AsString;
	SELF.alias                      := clientDS.FieldByName('alias').AsString;
	SELF.petrobox                   := clientDS.FieldByName('petrobox').AsString;
	SELF.aforadorvalormaximovolumen := clientDS.FieldByName('aforadorvalormaximovolumen').AsCurrency;
end;


procedure Tsurtidor_bomba.fromGUI(form: TForm);
begin
	with form do
	begin
{		SELF.id                        := utils.formObtenerPropiedad(FindComponent('cid'),'Text');
		SELF.descripcion               := utils.formObtenerPropiedad(FindComponent('cdescripcion'),'Text');
		SELF.idestacion                := utils.formObtenerPropiedad(FindComponent('cidestacion'),'Text');
		SELF.alias                     := utils.formObtenerPropiedad(FindComponent('calias'),'Text');
		SELF.petrobox                  := utils.formObtenerPropiedad(FindComponent('cpetrobox'),'Text');
		SELF.aforadorvalormaximovolumen:= utils.formObtenerPropiedad(FindComponent('caforadorvalormaximovolumen'),'Text');
 }
	end;
end;

procedure Tsurtidor_bomba.toGUI(form: TForm);
begin
	inherited;
	with form do
	begin
{	utils.formAsignaPropiedad(FindComponent('cid'),'Text', (SELF.id));
	utils.formAsignaPropiedad(FindComponent('cdescripcion'),'Text', (SELF.descripcion));
	utils.formAsignaPropiedad(FindComponent('cidestacion'),'Text', (SELF.idestacion));
	utils.formAsignaPropiedad(FindComponent('calias'),'Text', (SELF.alias));
	utils.formAsignaPropiedad(FindComponent('cpetrobox'),'Text', (SELF.petrobox));
	utils.formAsignaPropiedad(FindComponent('caforadorvalormaximovolumen'),'Text', IntTOStr(SELF.aforadorvalormaximovolumen));
}
	end;
end;

function Tsurtidor_bomba.save(ClientDS: TAstaClientDataSet;transacction: byte): byte;
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
		ClientDS.SQL.Add('UPDATE surtidor_bomba SET '+
				' descripcion = :pdescripcion'+
				',idestacion = :pidestacion'+
				',alias = :palias'+
				',petrobox = :ppetrobox'+
				',aforadorvalormaximovolumen = :paforadorvalormaximovolumen'+
				' WHERE id = :pid'
		);
		ClientDS.ParamByName('pid').asString                                := SELF.id;
		ClientDS.ParamByName('pdescripcion').asString                       := SELF.descripcion;
		ClientDS.ParamByName('pidestacion').asString                        := SELF.idestacion;
		ClientDS.ParamByName('palias').asString                             := SELF.alias;
		ClientDS.ParamByName('ppetrobox').asString                          := SELF.petrobox;
		ClientDS.ParamByName('paforadorvalormaximovolumen').asCurrency      := SELF.aforadorvalormaximovolumen;
	end;

	0: begin	//insert
		SELF.nextID(clientDS);

		initDataSet(ClientDS);
		ClientDS.SQL.Add('INSERT INTO surtidor_bomba (id,descripcion,idestacion,alias,petrobox,aforadorvalormaximovolumen)');
		ClientDS.SQL.Add(' VALUES ');
		ClientDS.SQL.Add('(:pid,:pdescripcion,:pidestacion,:palias,:ppetrobox,:paforadorvalormaximovolumen)');
		ClientDS.ParamByName('pid').asString                                := SELF.id;
		ClientDS.ParamByName('pdescripcion').asString                       := SELF.descripcion;
		ClientDS.ParamByName('pidestacion').asString                        := SELF.idestacion;
		ClientDS.ParamByName('palias').asString                             := SELF.alias;
		ClientDS.ParamByName('ppetrobox').asString                          := SELF.petrobox;
		ClientDS.ParamByName('paforadorvalormaximovolumen').asCurrency      := SELF.aforadorvalormaximovolumen;
	end;

	2: begin //delete
		ClientDS.SQL.Add('delete from surtidor_bomba where id =:pid');
		ClientDS.ParamByName('pID').AsString := SELF.ID;
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

procedure Tsurtidor_bomba.nextID(ClientDS: TAstaClientDataSet);
begin

end;


PROCEDURE Tsurtidor_bomba.setid(pid:String);
BEGIN
	aid:= pid;
END;

PROCEDURE Tsurtidor_bomba.setdescripcion(pdescripcion:String);
BEGIN
	adescripcion:= pdescripcion;
END;

PROCEDURE Tsurtidor_bomba.setidestacion(pidestacion:String);
BEGIN
	aidestacion:= pidestacion;
END;

PROCEDURE Tsurtidor_bomba.setalias(palias:String);
BEGIN
	aalias:= palias;
END;

PROCEDURE Tsurtidor_bomba.setpetrobox(ppetrobox:String);
BEGIN
	apetrobox:= ppetrobox;
END;

PROCEDURE Tsurtidor_bomba.setaforadorvalormaximovolumen(paforadorvalormaximovolumen:Currency);
BEGIN
	aaforadorvalormaximovolumen:= paforadorvalormaximovolumen;
END;


FUNCTION Tsurtidor_bomba.getid	:String;
BEGIN
	RESULT := aid;
END;

FUNCTION Tsurtidor_bomba.getdescripcion	:String;
BEGIN
	RESULT := adescripcion;
END;

FUNCTION Tsurtidor_bomba.getidestacion	:String;
BEGIN
	RESULT := aidestacion;
END;

FUNCTION Tsurtidor_bomba.getalias	:String;
BEGIN
	RESULT := aalias;
END;

FUNCTION Tsurtidor_bomba.getpetrobox	:String;
BEGIN
	RESULT := apetrobox;
END;

FUNCTION Tsurtidor_bomba.getaforadorvalormaximovolumen	:Currency;
BEGIN
	RESULT := aaforadorvalormaximovolumen;
END;


END.

