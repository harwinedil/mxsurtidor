UNIT Uclassurtidor_manguera;

{
GENERADO AUTOMATICAMENTE POR "Generador v.2012"
AUTOR              : HARWIN EDIL PEREZ SALINAS   [harwinedil@gmail.com]
DESCRIPCION        : Clase para interactuar con la Tabla : surtidor_manguera
FECHA CREACION     : 13/12/2012 Hora: 13:58:33
ULTIMA MODIFICACION: 13/12/2012 Hora: 13:58:33
MODIFICADO POR     : HARWIN EDIL PEREZ SALINAS
OBSERVACIONES      :

}

INTERFACE

USES
  sysUtils,uLkJSON,AstaDrv2,AstaClientDataset,AstaParamList,UBaseObject,Uconstantes,
  forms, classes,UGralUtilidades,UclasSYSUSER,DBCtrls,SUIDBCtrls;


TYPE
	Psurtidor_manguera = ^Tsurtidor_manguera;
	Tsurtidor_manguera = CLASS(TBaseObject)
	PRIVATE
		aid           	: String; 
		adescripcion  	: String; 
		amecanico     	: Currency; 
		aalias_manguera	: Integer; 
		aproducto_id  	: Integer; 
		abomba_id     	: String;
	PUBLIC
		CONSTRUCTOR     Create;		OVERLOAD;
		CONSTRUCTOR     Create(pid:String; pdescripcion:String; pmecanico:Currency; palias_manguera:Integer; pproducto_id:Integer; pbomba_id:String); OVERLOAD;
		CONSTRUCTOR     Create(const pObjeto:Tsurtidor_manguera);OVERLOAD;
		DESTRUCTOR      Destroy;	OVERRIDE;
		PROCEDURE       init;		OVERRIDE;
		PROCEDURE       setAtributos(pid:String; pdescripcion:String; pmecanico:Currency; palias_manguera:Integer; pproducto_id:Integer; pbomba_id:String);		

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
		PROCEDURE   	setmecanico(pmecanico:Currency);
		PROCEDURE   	setalias_manguera(palias_manguera:Integer);
		PROCEDURE   	setproducto_id(pproducto_id:Integer);
		PROCEDURE   	setbomba_id(pbomba_id:String);

		FUNCTION    	getid             	:String;
		FUNCTION    	getdescripcion    	:String;
		FUNCTION    	getmecanico       	:Currency;
		FUNCTION    	getalias_manguera 	:Integer;
		FUNCTION    	getproducto_id    	:Integer;
		FUNCTION    	getbomba_id       	:String;

		PROPERTY    	id              : String    	read getid             	write setid             ;
		PROPERTY    	descripcion     : String    	read getdescripcion    	write setdescripcion    ;
		PROPERTY    	mecanico        : Currency  	read getmecanico       	write setmecanico       ;
		PROPERTY    	alias_manguera  : Integer   	read getalias_manguera 	write setalias_manguera ;
		PROPERTY    	producto_id     : Integer   	read getproducto_id    	write setproducto_id    ;
		PROPERTY    	bomba_id        : String    	read getbomba_id       	write setbomba_id       ;

		
	END;

IMPLEMENTATION
{Tsurtidor_manguera}

CONSTRUCTOR Tsurtidor_manguera.Create;
BEGIN
	aid            := '';
	adescripcion   := '';
	amecanico      := 0;
	aalias_manguera:= 0;
	aproducto_id   := 0;
	abomba_id      := '';	
	autocommit := true;												
END;

CONSTRUCTOR Tsurtidor_manguera.Create(pid:String; pdescripcion:String; pmecanico:Currency; palias_manguera:Integer; pproducto_id:Integer; pbomba_id:String);
BEGIN
	aid            := pid            ;
	adescripcion   := pdescripcion   ;
	amecanico      := pmecanico      ;
	aalias_manguera:= palias_manguera;
	aproducto_id   := pproducto_id   ;
	abomba_id      := pbomba_id      ;
	autocommit := true;
END;

CONSTRUCTOR Tsurtidor_manguera.Create(const pObjeto:Tsurtidor_manguera);
BEGIN
	aid            := pObjeto.id            ;
	adescripcion   := pObjeto.descripcion   ;
	amecanico      := pObjeto.mecanico      ;
	aalias_manguera:= pObjeto.alias_manguera;
	aproducto_id   := pObjeto.producto_id   ;
	abomba_id      := pObjeto.bomba_id      ;
	autocommit := pObjeto.autocommit;
END;

DESTRUCTOR Tsurtidor_manguera.Destroy;
BEGIN
	
	inherited Destroy;
END;

PROCEDURE Tsurtidor_manguera.init;
BEGIN
	aid            := '';
	adescripcion   := '';
	amecanico      := 0;
	aalias_manguera:= 0;
	aproducto_id   := 0;
	abomba_id      := '';														
END;

PROCEDURE Tsurtidor_manguera.fromJsonString(s:string);
BEGIN
	self.fromJson(TlkJSON.ParseText(s) as TlkJSONobject);
END;

PROCEDURE Tsurtidor_manguera.fromJson(o:TlkJSONobject);
BEGIN
	id             := (o.Field['id'] as TlkJSONstring).Value;
	descripcion    := (o.Field['descripcion'] as TlkJSONstring).Value;
	mecanico       := (o.Field['mecanico'] as TlkJSONnumber).Value;
	alias_manguera := (o.Field['alias_manguera'] as TlkJSONnumber).Value;
	producto_id    := (o.Field['producto_id'] as TlkJSONnumber).Value;
	bomba_id       := (o.Field['bomba_id'] as TlkJSONstring).Value;
END;

FUNCTION Tsurtidor_manguera.toJsonString : string;
var  json : TlkJSONobject;
BEGIN
	json := TlkJSONobject.Create();
	TRY	
		json.Add('id',TlkJSONstring.Generate(id));
		json.Add('descripcion',TlkJSONstring.Generate(descripcion));
		json.Add('mecanico',TlkJSONNumber.Generate(mecanico));
		json.Add('alias_manguera',TlkJSONNumber.Generate(alias_manguera));
		json.Add('producto_id',TlkJSONNumber.Generate(producto_id));
		json.Add('bomba_id',TlkJSONstring.Generate(bomba_id));
	FINALLY
		RESULT := TlkJSON.GenerateText(json);
		FreeAndNIL(json);
	END;
END;


PROCEDURE Tsurtidor_manguera.setAtributos(pid:String; pdescripcion:String; pmecanico:Currency; palias_manguera:Integer; pproducto_id:Integer; pbomba_id:String);		
BEGIN
	aid            := pid            ;
	adescripcion   := pdescripcion   ;
	amecanico      := pmecanico      ;
	aalias_manguera:= palias_manguera;
	aproducto_id   := pproducto_id   ;
	abomba_id      := pbomba_id      ;	
END;

FUNCTION Tsurtidor_manguera.sqlGetField(field:string) : string;
BEGIN
	RESULT := 'select '+field+' from surtidor_manguera order by '+field;
END;

FUNCTION Tsurtidor_manguera.sqlGetKeyValue(key,value : string) : string;
BEGIN
	RESULT := 'select '+key+' as key,'+value+'as value from surtidor_manguera order by '+value;
END;

FUNCTION  Tsurtidor_manguera.sqlGetAll : string;
BEGIN
	RESULT := 'select * from surtidor_manguera';
END;

PROCEDURE Tsurtidor_manguera.filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
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

	IF SELF.mecanico<>0 THEN
	BEGIN
		cds.sql.add( y +'mecanico= :pmecanico');
		cds.ParamByName('pmecanico').asCurrency	:= SELF.mecanico;
		y := ' and ';
	END;

	IF SELF.alias_manguera<>0 THEN
	BEGIN
		cds.sql.add( y +'alias_manguera= :palias_manguera');
		cds.ParamByName('palias_manguera').asInteger	:= SELF.alias_manguera;
		y := ' and ';
	END;

	IF SELF.producto_id<>0 THEN
	BEGIN
		cds.sql.add( y +'producto_id= :pproducto_id');
		cds.ParamByName('pproducto_id').asInteger	:= SELF.producto_id;
		y := ' and ';
	END;

	IF SELF.bomba_id<>'' THEN
	BEGIN
		cds.sql.add( y +'bomba_id= :pbomba_id');
		cds.ParamByName('pbomba_id').asString	:= SELF.bomba_id;
		y := ' and ';
	END;


	if where <> '' then
	begin
	cds.sql.add(y+' '+where);
  if params <> NIL then
	   for i:=0 to params.count-1 do
		     cds.params.AddOneParamItem(params.items[i]);
	end;
END;


PROCEDURE Tsurtidor_manguera.QBE(ClientDS: TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add(sqlGetAll);
	filtrar(ClientDS,where,params);
	clientDS.prepare;
	clientDS.Open;
END;

PROCEDURE Tsurtidor_manguera.QBE(columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add('select '+columns+ ' from surtidor_manguera');
	ClientDS.SQL.Add('where '+where);

	if params <> NIL then
		ClientDS.Params := params;

	clientDS.prepare;
	clientDS.Open;
END;

function Tsurtidor_manguera.exist(ClientDS: TAstaClientDataSet): boolean;
begin
	initDataSet(ClientDS);
	ClientDS.SQL.Add('select id from surtidor_manguera where ID=:pID');
	ClientDS.ParamByName('pID').AsString := SELF.ID;
	ClientDS.Open;

	Result := not ClientDS.IsEmpty;
end;

procedure Tsurtidor_manguera.fromClientDataSet(ClientDS: TAstaClientDataSet);
begin
	inherited;
	IF NOT ClientDS.Active THEN EXIT;
	SELF.id             := clientDS.FieldByName('id').AsString;
	SELF.descripcion    := clientDS.FieldByName('descripcion').AsString;
	SELF.mecanico       := clientDS.FieldByName('mecanico').AsCurrency;
	SELF.alias_manguera := clientDS.FieldByName('alias_manguera').AsInteger;
	SELF.producto_id    := clientDS.FieldByName('producto_id').AsInteger;
	SELF.bomba_id       := clientDS.FieldByName('bomba_id').AsString;
end;


procedure Tsurtidor_manguera.fromGUI(form: TForm);
begin
	with form do
	begin
{		SELF.id            := utils.formObtenerPropiedad(FindComponent('cid'),'Text');
		SELF.descripcion   := utils.formObtenerPropiedad(FindComponent('cdescripcion'),'Text');
		SELF.mecanico      := utils.formObtenerPropiedad(FindComponent('cmecanico'),'Text');
		SELF.alias_manguera:= utils.formObtenerPropiedad(FindComponent('calias_manguera'),'Text');
		SELF.producto_id   := utils.formObtenerPropiedad(FindComponent('cproducto_id'),'Text');
		SELF.bomba_id      := utils.formObtenerPropiedad(FindComponent('cbomba_id'),'Text');
}
	end;
end;

procedure Tsurtidor_manguera.toGUI(form: TForm);
begin
	inherited;
	with form do
	begin
 {	utils.formAsignaPropiedad(FindComponent('cid'),'Text', (SELF.id));
	utils.formAsignaPropiedad(FindComponent('cdescripcion'),'Text', (SELF.descripcion));
	utils.formAsignaPropiedad(FindComponent('cmecanico'),'Text', IntTOStr(SELF.mecanico));
	utils.formAsignaPropiedad(FindComponent('calias_manguera'),'Text', IntTOStr(SELF.alias_manguera));
	utils.formAsignaPropiedad(FindComponent('cproducto_id'),'Text', IntTOStr(SELF.producto_id));
	utils.formAsignaPropiedad(FindComponent('cbomba_id'),'Text', (SELF.bomba_id));
  }
	end;
end;

function Tsurtidor_manguera.save(ClientDS: TAstaClientDataSet;transacction: byte): byte;
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
		ClientDS.SQL.Add('UPDATE surtidor_manguera SET '+
				' descripcion = :pdescripcion'+
				',alias_manguera = :palias_manguera'+
				',producto_id = :pproducto_id'+
				',bomba_id = :pbomba_id'+
				' WHERE id = :pid'
		);
		ClientDS.ParamByName('pid').asString                    := SELF.id;
		ClientDS.ParamByName('pdescripcion').asString           := SELF.descripcion;
		ClientDS.ParamByName('pmecanico').asCurrency            := SELF.mecanico;
		ClientDS.ParamByName('palias_manguera').asInteger       := SELF.alias_manguera;
		ClientDS.ParamByName('pproducto_id').asInteger          := SELF.producto_id;
		ClientDS.ParamByName('pbomba_id').asString              := SELF.bomba_id;
	end;

	0: begin	//insert
		SELF.nextID(clientDS);

		initDataSet(ClientDS);
		ClientDS.SQL.Add('INSERT INTO surtidor_manguera (id,descripcion,mecanico,alias_manguera,producto_id,bomba_id)');
		ClientDS.SQL.Add(' VALUES ');
		ClientDS.SQL.Add('(:pid,:pdescripcion,:pmecanico,:palias_manguera,:pproducto_id,:pbomba_id)');		
		ClientDS.ParamByName('pid').asString                    := SELF.id;
		ClientDS.ParamByName('pdescripcion').asString           := SELF.descripcion;
		ClientDS.ParamByName('pmecanico').asCurrency            := SELF.mecanico;
		ClientDS.ParamByName('palias_manguera').asInteger       := SELF.alias_manguera;
		ClientDS.ParamByName('pproducto_id').asInteger          := SELF.producto_id;
		ClientDS.ParamByName('pbomba_id').asString              := SELF.bomba_id;
	end;
	
	2: begin //delete
		ClientDS.SQL.Add('delete from surtidor_manguera where id =:pid');
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

procedure Tsurtidor_manguera.nextID(ClientDS: TAstaClientDataSet);
begin
end;


PROCEDURE Tsurtidor_manguera.setid(pid:String);
BEGIN
	aid:= pid;
END;

PROCEDURE Tsurtidor_manguera.setdescripcion(pdescripcion:String);
BEGIN
	adescripcion:= pdescripcion;
END;

PROCEDURE Tsurtidor_manguera.setmecanico(pmecanico:Currency);
BEGIN
	amecanico:= pmecanico;
END;

PROCEDURE Tsurtidor_manguera.setalias_manguera(palias_manguera:Integer);
BEGIN
	aalias_manguera:= palias_manguera;
END;

PROCEDURE Tsurtidor_manguera.setproducto_id(pproducto_id:Integer);
BEGIN
	aproducto_id:= pproducto_id;
END;

PROCEDURE Tsurtidor_manguera.setbomba_id(pbomba_id:String);
BEGIN
	abomba_id:= pbomba_id;
END;


FUNCTION Tsurtidor_manguera.getid	:String;
BEGIN
	RESULT := aid;
END;

FUNCTION Tsurtidor_manguera.getdescripcion	:String;
BEGIN
	RESULT := adescripcion;
END;

FUNCTION Tsurtidor_manguera.getmecanico	:Currency;
BEGIN
	RESULT := amecanico;
END;

FUNCTION Tsurtidor_manguera.getalias_manguera	:Integer;
BEGIN
	RESULT := aalias_manguera;
END;

FUNCTION Tsurtidor_manguera.getproducto_id	:Integer;
BEGIN
	RESULT := aproducto_id;
END;

FUNCTION Tsurtidor_manguera.getbomba_id	:String;
BEGIN
	RESULT := abomba_id;
END;


END.

