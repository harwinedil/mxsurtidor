UNIT Uclassurtidor_tipovehiculo;

{
GENERADO AUTOMATICAMENTE POR "Generador v.2012"
AUTOR              : HARWIN EDIL PEREZ SALINAS   [harwinedil@gmail.com]
DESCRIPCION        : Clase para interactuar con la Tabla : surtidor_tipovehiculo
FECHA CREACION     : 13/12/2012 Hora: 10:25:18
ULTIMA MODIFICACION: 13/12/2012 Hora: 10:25:18
MODIFICADO POR     : HARWIN EDIL PEREZ SALINAS
OBSERVACIONES      :

}

INTERFACE

USES
  sysUtils,uLkJSON,AstaDrv2,AstaClientDataset,AstaParamList,UBaseObject,Uconstantes,
  forms, classes,UGralUtilidades,UclasSYSUSER,DBCtrls,SUIDBCtrls;


TYPE
	Psurtidor_tipovehiculo = ^Tsurtidor_tipovehiculo;
	Tsurtidor_tipovehiculo = CLASS(TBaseObject)
	PRIVATE
		aid        	: Integer; 
		adescripcion	: String[3]; 
		aabrev     	: String[3];
	PUBLIC
		CONSTRUCTOR     Create;		OVERLOAD;
		CONSTRUCTOR     Create(pid:Integer; pdescripcion:String; pabrev:String); OVERLOAD;
		CONSTRUCTOR     Create(const pObjeto:Tsurtidor_tipovehiculo);OVERLOAD;
		DESTRUCTOR      Destroy;	OVERRIDE;
		PROCEDURE       init;		OVERRIDE;
		PROCEDURE       setAtributos(pid:Integer; pdescripcion:String; pabrev:String);		

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
		PROCEDURE   	setdescripcion(pdescripcion:String);
		PROCEDURE   	setabrev(pabrev:String);

		FUNCTION    	getid          	:Integer;
		FUNCTION    	getdescripcion 	:String;
		FUNCTION    	getabrev       	:String;

		PROPERTY    	id           : Integer   	read getid          	write setid          ;
		PROPERTY    	descripcion  : String    	read getdescripcion 	write setdescripcion ;
		PROPERTY    	abrev        : String    	read getabrev       	write setabrev       ;

		
	END;

IMPLEMENTATION
{Tsurtidor_tipovehiculo}

CONSTRUCTOR Tsurtidor_tipovehiculo.Create;
BEGIN
	aid         := 0;
	adescripcion:= '';
	aabrev      := '';	
	autocommit := true;												
END;

CONSTRUCTOR Tsurtidor_tipovehiculo.Create(pid:Integer; pdescripcion:String; pabrev:String);
BEGIN
	aid         := pid         ;
	adescripcion:= pdescripcion;
	aabrev      := pabrev      ;
	autocommit := true;
END;

CONSTRUCTOR Tsurtidor_tipovehiculo.Create(const pObjeto:Tsurtidor_tipovehiculo);
BEGIN
	aid         := pObjeto.id         ;
	adescripcion:= pObjeto.descripcion;
	aabrev      := pObjeto.abrev      ;
	autocommit := pObjeto.autocommit;
END;

DESTRUCTOR Tsurtidor_tipovehiculo.Destroy;
BEGIN
	
	inherited Destroy;
END;

PROCEDURE Tsurtidor_tipovehiculo.init;
BEGIN
	aid         := 0;
	adescripcion:= '';
	aabrev      := '';														
END;

PROCEDURE Tsurtidor_tipovehiculo.fromJsonString(s:string);
BEGIN
	self.fromJson(TlkJSON.ParseText(s) as TlkJSONobject);
END;

PROCEDURE Tsurtidor_tipovehiculo.fromJson(o:TlkJSONobject);
BEGIN
	id          := (o.Field['id'] as TlkJSONnumber).Value;
	descripcion := (o.Field['descripcion'] as TlkJSONstring).Value;
	abrev       := (o.Field['abrev'] as TlkJSONstring).Value;
END;

FUNCTION Tsurtidor_tipovehiculo.toJsonString : string;
var  json : TlkJSONobject;
BEGIN
	json := TlkJSONobject.Create();
	TRY	
		json.Add('id',TlkJSONNumber.Generate(id));
		json.Add('descripcion',TlkJSONstring.Generate(descripcion));
		json.Add('abrev',TlkJSONstring.Generate(abrev));
	FINALLY
		RESULT := TlkJSON.GenerateText(json);
		FreeAndNIL(json);
	END;
END;


PROCEDURE Tsurtidor_tipovehiculo.setAtributos(pid:Integer; pdescripcion:String; pabrev:String);		
BEGIN
	aid         := pid         ;
	adescripcion:= pdescripcion;
	aabrev      := pabrev      ;	
END;

FUNCTION Tsurtidor_tipovehiculo.sqlGetField(field:string) : string;
BEGIN
	RESULT := 'select '+field+' from surtidor_tipovehiculo order by '+field;
END;

FUNCTION Tsurtidor_tipovehiculo.sqlGetKeyValue(key,value : string) : string;
BEGIN
	RESULT := 'select '+key+' as key,'+value+'as value from surtidor_tipovehiculo order by '+value;
END;

FUNCTION  Tsurtidor_tipovehiculo.sqlGetAll : string;
BEGIN
	RESULT := 'select * from surtidor_tipovehiculo';
END;

PROCEDURE Tsurtidor_tipovehiculo.filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
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

	IF SELF.descripcion<>'' THEN
	BEGIN
		cds.sql.add( y +'descripcion= :pdescripcion');
		cds.ParamByName('pdescripcion').asString	:= SELF.descripcion;
		y := ' and ';
	END;

	IF SELF.abrev<>'' THEN
	BEGIN
		cds.sql.add( y +'abrev= :pabrev');
		cds.ParamByName('pabrev').asString	:= SELF.abrev;
		y := ' and ';
	END;


	if where <> '' then
	begin
	cds.sql.add(where);
	for i:=0 to params.count-1 do
		cds.params.AddOneParamItem(params.items[i]);
	end;
END;


PROCEDURE Tsurtidor_tipovehiculo.QBE(ClientDS: TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add(sqlGetAll);
	filtrar(ClientDS,where,params);
	clientDS.prepare;
	clientDS.Open;
END;

PROCEDURE Tsurtidor_tipovehiculo.QBE(columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add('select '+columns+ ' from surtidor_tipovehiculo');
	ClientDS.SQL.Add('where '+where);

	if params <> NIL then
		ClientDS.Params := params;

	clientDS.prepare;
	clientDS.Open;
END;

function Tsurtidor_tipovehiculo.exist(ClientDS: TAstaClientDataSet): boolean;
begin
	initDataSet(ClientDS);
	ClientDS.SQL.Add('select id from surtidor_tipovehiculo where ID=:pID');
	ClientDS.ParamByName('pID').AsInteger := SELF.ID;
	ClientDS.Open;

	Result := not ClientDS.IsEmpty;
end;

procedure Tsurtidor_tipovehiculo.fromClientDataSet(ClientDS: TAstaClientDataSet);
begin
	inherited;
	IF NOT ClientDS.Active THEN EXIT;
	SELF.id          := clientDS.FieldByName('id').AsInteger;
	SELF.descripcion := clientDS.FieldByName('descripcion').AsString;
	SELF.abrev       := clientDS.FieldByName('abrev').AsString;
end;


procedure Tsurtidor_tipovehiculo.fromGUI(form: TForm);
begin
	with form do
	begin
		SELF.id         := utils.formObtenerPropiedad(FindComponent('cid'),'Text');
		SELF.descripcion:= utils.formObtenerPropiedad(FindComponent('cdescripcion'),'Text');
		SELF.abrev      := utils.formObtenerPropiedad(FindComponent('cabrev'),'Text');
	end;
end;

procedure Tsurtidor_tipovehiculo.toGUI(form: TForm);
begin
	inherited;
	with form do
	begin
	utils.formAsignaPropiedad(FindComponent('cid'),'Text', IntTOStr(SELF.id));
	utils.formAsignaPropiedad(FindComponent('cdescripcion'),'Text', (SELF.descripcion));
	utils.formAsignaPropiedad(FindComponent('cabrev'),'Text', (SELF.abrev));
	end;
end;

function Tsurtidor_tipovehiculo.save(ClientDS: TAstaClientDataSet;transacction: byte): byte;
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
		ClientDS.SQL.Add('UPDATE surtidor_tipovehiculo SET '+
				' id = :pid'+
				',descripcion = :pdescripcion'+
				',abrev = :pabrev'+
				' WHERE id = :pid'
		);		
		ClientDS.ParamByName('pid').asInteger                := SELF.id;
		ClientDS.ParamByName('pdescripcion').asString        := SELF.descripcion;
		ClientDS.ParamByName('pabrev').asString              := SELF.abrev;
	end;

	0: begin	//insert
		SELF.nextID(clientDS);

		initDataSet(ClientDS);
		ClientDS.SQL.Add('INSERT INTO surtidor_tipovehiculo (id,descripcion,abrev)');
		ClientDS.SQL.Add(' VALUES ');
		ClientDS.SQL.Add('(:pid,:pdescripcion,:pabrev)');		
		ClientDS.ParamByName('pid').asInteger                := SELF.id;
		ClientDS.ParamByName('pdescripcion').asString        := SELF.descripcion;
		ClientDS.ParamByName('pabrev').asString              := SELF.abrev;
	end;
	
	2: begin //delete
		ClientDS.SQL.Add('delete from surtidor_tipovehiculo where id =:pid');
		ClientDS.ParamByName('pID').asInteger := SELF.ID;
	end;

	4: begin //enable
		ClientDS.SQL.Add('update surtidor_tipovehiculo set status=:pstatus where id =:pid');
		ClientDS.ParamByName('pID').asInteger    := SELF.ID;
		ClientDS.ParamByName('pstatus').asString := '1';
	end;

	5: begin //disable
		ClientDS.SQL.Add('update surtidor_tipovehiculo set status=:pstatus where id =:pid');
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

procedure Tsurtidor_tipovehiculo.nextID(ClientDS: TAstaClientDataSet);
begin
		 initDataSet(ClientDS);

		 ClientDS.SQL.Add('select max(sub) as sub from surtidor_tipovehiculo where companyid = :pcompanyID');
		 ClientDS.ParamByName('pcompanyID').AsInteger := self.COMPANYID;
		 ClientDS.Open;

		 self.SUB := ClientDS.fieldbyName('sub').AsInteger + 1;
		 self.ID  := (SELF.companyID * //1000000)+ SELF.SUB;
end;


PROCEDURE Tsurtidor_tipovehiculo.setid(pid:Integer);
BEGIN
	aid:= pid;
END;

PROCEDURE Tsurtidor_tipovehiculo.setdescripcion(pdescripcion:String);
BEGIN
	adescripcion:= pdescripcion;
END;

PROCEDURE Tsurtidor_tipovehiculo.setabrev(pabrev:String);
BEGIN
	aabrev:= pabrev;
END;


FUNCTION Tsurtidor_tipovehiculo.getid	:Integer;
BEGIN
	RESULT := aid;
END;

FUNCTION Tsurtidor_tipovehiculo.getdescripcion	:String;
BEGIN
	RESULT := adescripcion;
END;

FUNCTION Tsurtidor_tipovehiculo.getabrev	:String;
BEGIN
	RESULT := aabrev;
END;


END.

