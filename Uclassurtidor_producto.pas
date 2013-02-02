UNIT Uclassurtidor_producto;

{
GENERADO AUTOMATICAMENTE POR "Generador v.2012"
AUTOR              : HARWIN EDIL PEREZ SALINAS   [harwinedil@gmail.com]
DESCRIPCION        : Clase para interactuar con la Tabla : surtidor_producto
FECHA CREACION     : 13/12/2012 Hora: 11:56:33
ULTIMA MODIFICACION: 13/12/2012 Hora: 11:56:33
MODIFICADO POR     : HARWIN EDIL PEREZ SALINAS
OBSERVACIONES      :

}

INTERFACE

USES
  sysUtils,uLkJSON,AstaDrv2,AstaClientDataset,AstaParamList,UBaseObject,Uconstantes,
  forms, classes,UGralUtilidades,UclasSYSUSER,DBCtrls,SUIDBCtrls;


TYPE
	Psurtidor_producto = ^Tsurtidor_producto;
	Tsurtidor_producto = CLASS(TBaseObject)
	PRIVATE
		aid           	: Integer;
		anumero       	: Integer;
		adescripcion  	: String;
		aprecio       	: Currency;
		aunidad_id    	: Integer;
		aprecioterceros	: Currency;
		aabrev        	: String;
		acodigo1      	: Integer;
	PUBLIC
		CONSTRUCTOR     Create;		OVERLOAD;
		CONSTRUCTOR     Create(pid:Integer; pnumero:Integer; pdescripcion:String; pprecio:Currency; punidad_id:Integer; pprecioterceros:Currency; pabrev:String; pcodigo1:Integer); OVERLOAD;
		CONSTRUCTOR     Create(const pObjeto:Tsurtidor_producto);OVERLOAD;
		DESTRUCTOR      Destroy;	OVERRIDE;
		PROCEDURE       init;		OVERRIDE;
		PROCEDURE       setAtributos(pid:Integer; pnumero:Integer; pdescripcion:String; pprecio:Currency; punidad_id:Integer; pprecioterceros:Currency; pabrev:String; pcodigo1:Integer);		

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

		PROCEDURE   	setid(pid:Integer);
		PROCEDURE   	setnumero(pnumero:Integer);
		PROCEDURE   	setdescripcion(pdescripcion:String);
		PROCEDURE   	setprecio(pprecio:Currency);
		PROCEDURE   	setunidad_id(punidad_id:Integer);
		PROCEDURE   	setprecioterceros(pprecioterceros:Currency);
		PROCEDURE   	setabrev(pabrev:String);
		PROCEDURE   	setcodigo1(pcodigo1:Integer);

		FUNCTION    	getid             	:Integer;
		FUNCTION    	getnumero         	:Integer;
		FUNCTION    	getdescripcion    	:String;
		FUNCTION    	getprecio         	:Currency;
		FUNCTION    	getunidad_id      	:Integer;
		FUNCTION    	getprecioterceros 	:Currency;
		FUNCTION    	getabrev          	:String;
		FUNCTION    	getcodigo1        	:Integer;

		PROPERTY    	id              : Integer   	read getid             	write setid             ;
		PROPERTY    	numero          : Integer   	read getnumero         	write setnumero         ;
		PROPERTY    	descripcion     : String    	read getdescripcion    	write setdescripcion    ;
		PROPERTY    	precio          : Currency  	read getprecio         	write setprecio         ;
		PROPERTY    	unidad_id       : Integer   	read getunidad_id      	write setunidad_id      ;
		PROPERTY    	precioterceros  : Currency  	read getprecioterceros 	write setprecioterceros ;
		PROPERTY    	abrev           : String    	read getabrev          	write setabrev          ;
		PROPERTY    	codigo1         : Integer   	read getcodigo1        	write setcodigo1        ;

		
	END;

IMPLEMENTATION
{Tsurtidor_producto}

CONSTRUCTOR Tsurtidor_producto.Create;
BEGIN
	aid            := 0;
	anumero        := 0;
	adescripcion   := '';
	aprecio        := 0;
	aunidad_id     := 0;
	aprecioterceros:= 0;
	aabrev         := '';
	acodigo1       := 0;	
	autocommit := true;												
END;

CONSTRUCTOR Tsurtidor_producto.Create(pid:Integer; pnumero:Integer; pdescripcion:String; pprecio:Currency; punidad_id:Integer; pprecioterceros:Currency; pabrev:String; pcodigo1:Integer);
BEGIN
	aid            := pid            ;
	anumero        := pnumero        ;
	adescripcion   := pdescripcion   ;
	aprecio        := pprecio        ;
	aunidad_id     := punidad_id     ;
	aprecioterceros:= pprecioterceros;
	aabrev         := pabrev         ;
	acodigo1       := pcodigo1       ;
	autocommit := true;
END;

CONSTRUCTOR Tsurtidor_producto.Create(const pObjeto:Tsurtidor_producto);
BEGIN
	aid            := pObjeto.id            ;
	anumero        := pObjeto.numero        ;
	adescripcion   := pObjeto.descripcion   ;
	aprecio        := pObjeto.precio        ;
	aunidad_id     := pObjeto.unidad_id     ;
	aprecioterceros:= pObjeto.precioterceros;
	aabrev         := pObjeto.abrev         ;
	acodigo1       := pObjeto.codigo1       ;
	autocommit := pObjeto.autocommit;
END;

DESTRUCTOR Tsurtidor_producto.Destroy;
BEGIN
	
	inherited Destroy;
END;

PROCEDURE Tsurtidor_producto.init;
BEGIN
	aid            := 0;
	anumero        := 0;
	adescripcion   := '';
	aprecio        := 0;
	aunidad_id     := 0;
	aprecioterceros:= 0;
	aabrev         := '';
	acodigo1       := 0;														
END;

PROCEDURE Tsurtidor_producto.fromJsonString(s:string);
BEGIN
	self.fromJson(TlkJSON.ParseText(s) as TlkJSONobject);
END;

PROCEDURE Tsurtidor_producto.fromJson(o:TlkJSONobject);
BEGIN
	id             := (o.Field['id'] as TlkJSONnumber).Value;
	numero         := (o.Field['numero'] as TlkJSONnumber).Value;
	descripcion    := (o.Field['descripcion'] as TlkJSONstring).Value;
	precio         := (o.Field['precio'] as TlkJSONnumber).Value;
	unidad_id      := (o.Field['unidad_id'] as TlkJSONnumber).Value;
	precioterceros := (o.Field['precioterceros'] as TlkJSONnumber).Value;
	abrev          := (o.Field['abrev'] as TlkJSONstring).Value;
	codigo1        := (o.Field['codigo1'] as TlkJSONnumber).Value;
END;

FUNCTION Tsurtidor_producto.toJsonString : string;
var  json : TlkJSONobject;
BEGIN
	json := TlkJSONobject.Create();
	TRY	
		json.Add('id',TlkJSONNumber.Generate(id));
		json.Add('numero',TlkJSONNumber.Generate(numero));
		json.Add('descripcion',TlkJSONstring.Generate(descripcion));
		json.Add('precio',TlkJSONNumber.Generate(precio));
		json.Add('unidad_id',TlkJSONNumber.Generate(unidad_id));
		json.Add('precioterceros',TlkJSONNumber.Generate(precioterceros));
		json.Add('abrev',TlkJSONstring.Generate(abrev));
		json.Add('codigo1',TlkJSONNumber.Generate(codigo1));
	FINALLY
		RESULT := TlkJSON.GenerateText(json);
		FreeAndNIL(json);
	END;
END;


PROCEDURE Tsurtidor_producto.setAtributos(pid:Integer; pnumero:Integer; pdescripcion:String; pprecio:Currency; punidad_id:Integer; pprecioterceros:Currency; pabrev:String; pcodigo1:Integer);
BEGIN
	aid            := pid            ;
	anumero        := pnumero        ;
	adescripcion   := pdescripcion   ;
	aprecio        := pprecio        ;
	aunidad_id     := punidad_id     ;
	aprecioterceros:= pprecioterceros;
	aabrev         := pabrev         ;
	acodigo1       := pcodigo1       ;	
END;

FUNCTION Tsurtidor_producto.sqlGetField(field:string) : string;
BEGIN
	RESULT := 'select '+field+' from surtidor_producto order by '+field;
END;

FUNCTION Tsurtidor_producto.sqlGetKeyValue(key,value : string) : string;
BEGIN
	RESULT := 'select '+key+' as key,'+value+'as value from surtidor_producto order by '+value;
END;

FUNCTION  Tsurtidor_producto.sqlGetAll : string;
BEGIN
	RESULT := 'select * from surtidor_producto';
END;

PROCEDURE Tsurtidor_producto.filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
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

	IF SELF.numero<>0 THEN
	BEGIN
		cds.sql.add( y +'numero= :pnumero');
		cds.ParamByName('pnumero').asInteger	:= SELF.numero;
		y := ' and ';
	END;

	IF SELF.descripcion<>'' THEN
	BEGIN
		cds.sql.add( y +'descripcion= :pdescripcion');
		cds.ParamByName('pdescripcion').asString	:= SELF.descripcion;
		y := ' and ';
	END;

	IF SELF.precio<>0 THEN
	BEGIN
		cds.sql.add( y +'precio= :pprecio');
		cds.ParamByName('pprecio').asCurrency	:= SELF.precio;
		y := ' and ';
	END;

	IF SELF.unidad_id<>0 THEN
	BEGIN
		cds.sql.add( y +'unidad_id= :punidad_id');
		cds.ParamByName('punidad_id').asInteger	:= SELF.unidad_id;
		y := ' and ';
	END;

	IF SELF.precioterceros<>0 THEN
	BEGIN
		cds.sql.add( y +'precioterceros= :pprecioterceros');
		cds.ParamByName('pprecioterceros').asCurrency	:= SELF.precioterceros;
		y := ' and ';
	END;

	IF SELF.abrev<>'' THEN
	BEGIN
		cds.sql.add( y +'abrev= :pabrev');
		cds.ParamByName('pabrev').asString	:= SELF.abrev;
		y := ' and ';
	END;

	IF SELF.codigo1<>0 THEN
	BEGIN
		cds.sql.add( y +'codigo1= :pcodigo1');
		cds.ParamByName('pcodigo1').asInteger	:= SELF.codigo1;
		y := ' and ';
	END;


	if where <> '' then
	begin
	cds.sql.add(where);
	for i:=0 to params.count-1 do
		cds.params.AddOneParamItem(params.items[i]);
	end;
END;


PROCEDURE Tsurtidor_producto.QBE(ClientDS: TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add(sqlGetAll);
	filtrar(ClientDS,where,params);
	clientDS.prepare;
	clientDS.Open;
END;

PROCEDURE Tsurtidor_producto.QBE(columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add('select '+columns+ ' from surtidor_producto');
	ClientDS.SQL.Add('where '+where);

	if params <> NIL then
		ClientDS.Params := params;

	clientDS.prepare;
	clientDS.Open;
END;

function Tsurtidor_producto.exist(ClientDS: TAstaClientDataSet): boolean;
begin
	initDataSet(ClientDS);
	ClientDS.SQL.Add('select id from surtidor_producto where ID=:pID');
	ClientDS.ParamByName('pID').AsInteger := SELF.ID;
	ClientDS.Open;

	Result := not ClientDS.IsEmpty;
end;

procedure Tsurtidor_producto.fromClientDataSet(ClientDS: TAstaClientDataSet);
begin
	inherited;
	IF NOT ClientDS.Active THEN EXIT;
	SELF.id             := clientDS.FieldByName('id').AsInteger;
	SELF.numero         := clientDS.FieldByName('numero').AsInteger;
	SELF.descripcion    := clientDS.FieldByName('descripcion').AsString;
	SELF.precio         := clientDS.FieldByName('precio').AsCurrency;
	SELF.unidad_id      := clientDS.FieldByName('unidad_id').AsInteger;
	SELF.precioterceros := clientDS.FieldByName('precioterceros').AsCurrency;
	SELF.abrev          := clientDS.FieldByName('abrev').AsString;
	SELF.codigo1        := clientDS.FieldByName('codigo1').AsInteger;

end;


procedure Tsurtidor_producto.fromGUI(form: TForm);
begin
	with form do
	begin
{///		SELF.id            := utils.formObtenerPropiedad(FindComponent('cid'),'Text');
		SELF.numero        := utils.formObtenerPropiedad(FindComponent('cnumero'),'Text');
		SELF.descripcion   := utils.formObtenerPropiedad(FindComponent('cdescripcion'),'Text');
		SELF.precio        := utils.formObtenerPropiedad(FindComponent('cprecio'),'Text');
		SELF.unidad_id     := utils.formObtenerPropiedad(FindComponent('cunidad_id'),'Text');
		SELF.precioterceros:= utils.formObtenerPropiedad(FindComponent('cprecioterceros'),'Text');
		SELF.abrev         := utils.formObtenerPropiedad(FindComponent('cabrev'),'Text');
		SELF.codigo1       := utils.formObtenerPropiedad(FindComponent('ccodigo1'),'Text');
}
	end;
end;

procedure Tsurtidor_producto.toGUI(form: TForm);
begin
	inherited;
	with form do
	begin
{	utils.formAsignaPropiedad(FindComponent('cid'),'Text', IntTOStr(SELF.id));
	utils.formAsignaPropiedad(FindComponent('cnumero'),'Text', IntTOStr(SELF.numero));
	utils.formAsignaPropiedad(FindComponent('cdescripcion'),'Text', (SELF.descripcion));
	utils.formAsignaPropiedad(FindComponent('cprecio'),'Text', IntTOStr(SELF.precio));
	utils.formAsignaPropiedad(FindComponent('cunidad_id'),'Text', IntTOStr(SELF.unidad_id));
	utils.formAsignaPropiedad(FindComponent('cprecioterceros'),'Text', IntTOStr(SELF.precioterceros));
	utils.formAsignaPropiedad(FindComponent('cabrev'),'Text', (SELF.abrev));
	utils.formAsignaPropiedad(FindComponent('ccodigo1'),'Text', IntTOStr(SELF.codigo1));
  }
	end;
end;

function Tsurtidor_producto.save(ClientDS: TAstaClientDataSet;transacction: byte): byte;
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
		ClientDS.SQL.Add('UPDATE surtidor_producto SET '+
				' numero = :pnumero'+
				',descripcion = :pdescripcion'+
				',precio = :pprecio'+
				',unidad_id = :punidad_id'+
				',precioterceros = :pprecioterceros'+
				' WHERE id = :pid'
		);
		ClientDS.ParamByName('pid').asInteger                   := SELF.id;
		ClientDS.ParamByName('pnumero').asInteger               := SELF.numero;
		ClientDS.ParamByName('pdescripcion').asString           := SELF.descripcion;
		ClientDS.ParamByName('pprecio').asCurrency              := SELF.precio;
		ClientDS.ParamByName('punidad_id').asInteger            := SELF.unidad_id;
		ClientDS.ParamByName('pprecioterceros').asCurrency      := SELF.precioterceros;
	end;

	0: begin	//insert
		SELF.nextID(clientDS);

		initDataSet(ClientDS);
		ClientDS.SQL.Add('INSERT INTO surtidor_producto (id,numero,descripcion,precio,unidad_id,precioterceros,abrev,codigo1)');
		ClientDS.SQL.Add(' VALUES ');
		ClientDS.SQL.Add('(:pid,:pnumero,:pdescripcion,:pprecio,:punidad_id,:pprecioterceros,:pabrev,:pcodigo1)');
		ClientDS.ParamByName('pid').asInteger                   := SELF.id;
		ClientDS.ParamByName('pnumero').asInteger               := SELF.numero;
		ClientDS.ParamByName('pdescripcion').asString           := SELF.descripcion;
		ClientDS.ParamByName('pprecio').asCurrency              := SELF.precio;
		ClientDS.ParamByName('punidad_id').asInteger            := SELF.unidad_id;
		ClientDS.ParamByName('pprecioterceros').asCurrency      := SELF.precioterceros;
		ClientDS.ParamByName('pabrev').asString                 := SELF.abrev;
		ClientDS.ParamByName('pcodigo1').asInteger              := SELF.codigo1;
	end;

	2: begin //delete
		ClientDS.SQL.Add('delete from surtidor_producto where id =:pid');
		ClientDS.ParamByName('pID').AsInteger := SELF.ID;
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

procedure Tsurtidor_producto.nextID(ClientDS: TAstaClientDataSet);
begin
end;


PROCEDURE Tsurtidor_producto.setid(pid:Integer);
BEGIN
	aid:= pid;
END;

PROCEDURE Tsurtidor_producto.setnumero(pnumero:Integer);
BEGIN
	anumero:= pnumero;
END;

PROCEDURE Tsurtidor_producto.setdescripcion(pdescripcion:String);
BEGIN
	adescripcion:= pdescripcion;
END;

PROCEDURE Tsurtidor_producto.setprecio(pprecio:Currency);
BEGIN
	aprecio:= pprecio;
END;

PROCEDURE Tsurtidor_producto.setunidad_id(punidad_id:Integer);
BEGIN
	aunidad_id:= punidad_id;
END;

PROCEDURE Tsurtidor_producto.setprecioterceros(pprecioterceros:Currency);
BEGIN
	aprecioterceros:= pprecioterceros;
END;

PROCEDURE Tsurtidor_producto.setabrev(pabrev:String);
BEGIN
	aabrev:= pabrev;
END;

PROCEDURE Tsurtidor_producto.setcodigo1(pcodigo1:Integer);
BEGIN
	acodigo1:= pcodigo1;
END;


FUNCTION Tsurtidor_producto.getid	:Integer;
BEGIN
	RESULT := aid;
END;

FUNCTION Tsurtidor_producto.getnumero	:Integer;
BEGIN
	RESULT := anumero;
END;

FUNCTION Tsurtidor_producto.getdescripcion	:String;
BEGIN
	RESULT := adescripcion;
END;

FUNCTION Tsurtidor_producto.getprecio	:Currency;
BEGIN
	RESULT := aprecio;
END;

FUNCTION Tsurtidor_producto.getunidad_id	:Integer;
BEGIN
	RESULT := aunidad_id;
END;

FUNCTION Tsurtidor_producto.getprecioterceros	:Currency;
BEGIN
	RESULT := aprecioterceros;
END;

FUNCTION Tsurtidor_producto.getabrev	:String;
BEGIN
	RESULT := aabrev;
END;

FUNCTION Tsurtidor_producto.getcodigo1	:Integer;
BEGIN
	RESULT := acodigo1;
END;


END.

