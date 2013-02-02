UNIT Uclassurtidor_dosis;

{
GENERADO AUTOMATICAMENTE POR "Generador v.2012"
AUTOR              : HARWIN EDIL PEREZ SALINAS   [harwinedil@gmail.com]
DESCRIPCION        : Clase para interactuar con la Tabla : surtidor_dosis
FECHA CREACION     : 13/12/2012 Hora: 15:41:47
ULTIMA MODIFICACION: 13/12/2012 Hora: 15:41:47
MODIFICADO POR     : HARWIN EDIL PEREZ SALINAS
OBSERVACIONES      :

}

INTERFACE

USES
  sysUtils,uLkJSON,AstaDrv2,AstaClientDataset,AstaParamList,UBaseObject,Uconstantes,
  forms, classes,UGralUtilidades,UclasSYSUSER,DBCtrls,SUIDBCtrls;


TYPE
	Psurtidor_dosis = ^Tsurtidor_dosis;
	Tsurtidor_dosis = CLASS(TBaseObject)
	PRIVATE
		aid                    	: String; 
		adescripcion           	: String; 
		ainiciorango           	: Integer; 
		afinrango              	: Integer; 
		aultimonumero          	: Integer; 
		aidestacion            	: String; 
		afecha_autorizacion    	: TdateTime; 
		allaveautorizacionfiscal	: String; 
		avalido_desde          	: TdateTime; 
		atipo_id               	: Integer;
	PUBLIC
		CONSTRUCTOR     Create;		OVERLOAD;
		CONSTRUCTOR     Create(pid:String; pdescripcion:String; piniciorango:Integer; pfinrango:Integer; pultimonumero:Integer; pidestacion:String; pfecha_autorizacion:TdateTime; pllaveautorizacionfiscal:String; pvalido_desde:TdateTime; ptipo_id:Integer); OVERLOAD;
		CONSTRUCTOR     Create(const pObjeto:Tsurtidor_dosis);OVERLOAD;
		DESTRUCTOR      Destroy;	OVERRIDE;
		PROCEDURE       init;		OVERRIDE;
		PROCEDURE       setAtributos(pid:String; pdescripcion:String; piniciorango:Integer; pfinrango:Integer; pultimonumero:Integer; pidestacion:String; pfecha_autorizacion:TdateTime; pllaveautorizacionfiscal:String; pvalido_desde:TdateTime; ptipo_id:Integer);		

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
		PROCEDURE   	setiniciorango(piniciorango:Integer);
		PROCEDURE   	setfinrango(pfinrango:Integer);
		PROCEDURE   	setultimonumero(pultimonumero:Integer);
		PROCEDURE   	setidestacion(pidestacion:String);
		PROCEDURE   	setfecha_autorizacion(pfecha_autorizacion:TdateTime);
		PROCEDURE   	setllaveautorizacionfiscal(pllaveautorizacionfiscal:String);
		PROCEDURE   	setvalido_desde(pvalido_desde:TdateTime);
		PROCEDURE   	settipo_id(ptipo_id:Integer);

		FUNCTION    	getid                      	:String;
		FUNCTION    	getdescripcion             	:String;
		FUNCTION    	getiniciorango             	:Integer;
		FUNCTION    	getfinrango                	:Integer;
		FUNCTION    	getultimonumero            	:Integer;
		FUNCTION    	getidestacion              	:String;
		FUNCTION    	getfecha_autorizacion      	:TdateTime;
		FUNCTION    	getllaveautorizacionfiscal 	:String;
		FUNCTION    	getvalido_desde            	:TdateTime;
		FUNCTION    	gettipo_id                 	:Integer;

		PROPERTY    	id                       : String    	read getid                      	write setid                      ;
		PROPERTY    	descripcion              : String    	read getdescripcion             	write setdescripcion             ;
		PROPERTY    	iniciorango              : Integer   	read getiniciorango             	write setiniciorango             ;
		PROPERTY    	finrango                 : Integer   	read getfinrango                	write setfinrango                ;
		PROPERTY    	ultimonumero             : Integer   	read getultimonumero            	write setultimonumero            ;
		PROPERTY    	idestacion               : String    	read getidestacion              	write setidestacion              ;
		PROPERTY    	fecha_autorizacion       : TdateTime     	read getfecha_autorizacion      	write setfecha_autorizacion      ;
		PROPERTY    	llaveautorizacionfiscal  : String    	read getllaveautorizacionfiscal 	write setllaveautorizacionfiscal ;
		PROPERTY    	valido_desde             : TdateTime     	read getvalido_desde            	write setvalido_desde            ;
		PROPERTY    	tipo_id                  : Integer   	read gettipo_id                 	write settipo_id                 ;

		
	END;

IMPLEMENTATION
{Tsurtidor_dosis}

CONSTRUCTOR Tsurtidor_dosis.Create;
BEGIN
	aid                     := '';
	adescripcion            := '';
	ainiciorango            := 0;
	afinrango               := 0;
	aultimonumero           := 0;
	aidestacion             := '';
	afecha_autorizacion     := 0;
	allaveautorizacionfiscal:= '';
	avalido_desde           := 0;
	atipo_id                := 0;	
	autocommit := true;												
END;

CONSTRUCTOR Tsurtidor_dosis.Create(pid:String; pdescripcion:String; piniciorango:Integer; pfinrango:Integer; pultimonumero:Integer; pidestacion:String; pfecha_autorizacion:TdateTime; pllaveautorizacionfiscal:String; pvalido_desde:TdateTime; ptipo_id:Integer);
BEGIN
	aid                     := pid                     ;
	adescripcion            := pdescripcion            ;
	ainiciorango            := piniciorango            ;
	afinrango               := pfinrango               ;
	aultimonumero           := pultimonumero           ;
	aidestacion             := pidestacion             ;
	afecha_autorizacion     := pfecha_autorizacion     ;
	allaveautorizacionfiscal:= pllaveautorizacionfiscal;
	avalido_desde           := pvalido_desde           ;
	atipo_id                := ptipo_id                ;
	autocommit := true;
END;

CONSTRUCTOR Tsurtidor_dosis.Create(const pObjeto:Tsurtidor_dosis);
BEGIN
	aid                     := pObjeto.id                     ;
	adescripcion            := pObjeto.descripcion            ;
	ainiciorango            := pObjeto.iniciorango            ;
	afinrango               := pObjeto.finrango               ;
	aultimonumero           := pObjeto.ultimonumero           ;
	aidestacion             := pObjeto.idestacion             ;
	afecha_autorizacion     := pObjeto.fecha_autorizacion     ;
	allaveautorizacionfiscal:= pObjeto.llaveautorizacionfiscal;
	avalido_desde           := pObjeto.valido_desde           ;
	atipo_id                := pObjeto.tipo_id                ;
	autocommit := pObjeto.autocommit;
END;

DESTRUCTOR Tsurtidor_dosis.Destroy;
BEGIN
	
	inherited Destroy;
END;

PROCEDURE Tsurtidor_dosis.init;
BEGIN
	aid                     := '';
	adescripcion            := '';
	ainiciorango            := 0;
	afinrango               := 0;
	aultimonumero           := 0;
	aidestacion             := '';
	afecha_autorizacion     := 0;
	allaveautorizacionfiscal:= '';
	avalido_desde           := 0;
	atipo_id                := 0;														
END;

PROCEDURE Tsurtidor_dosis.fromJsonString(s:string);
BEGIN
	self.fromJson(TlkJSON.ParseText(s) as TlkJSONobject);
END;

PROCEDURE Tsurtidor_dosis.fromJson(o:TlkJSONobject);
BEGIN
	id                      := (o.Field['id'] as TlkJSONstring).Value;
	descripcion             := (o.Field['descripcion'] as TlkJSONstring).Value;
	iniciorango             := (o.Field['iniciorango'] as TlkJSONnumber).Value;
	finrango                := (o.Field['finrango'] as TlkJSONnumber).Value;
	ultimonumero            := (o.Field['ultimonumero'] as TlkJSONnumber).Value;
	idestacion              := (o.Field['idestacion'] as TlkJSONstring).Value;
	fecha_autorizacion      := (o.Field['fecha_autorizacion'] as TlkJSONnumber).Value;
	llaveautorizacionfiscal := (o.Field['llaveautorizacionfiscal'] as TlkJSONstring).Value;
	valido_desde            := (o.Field['valido_desde'] as TlkJSONnumber).Value;
	tipo_id                 := (o.Field['tipo_id'] as TlkJSONnumber).Value;
END;

FUNCTION Tsurtidor_dosis.toJsonString : string;
var  json : TlkJSONobject;
BEGIN
	json := TlkJSONobject.Create();
	TRY	
		json.Add('id',TlkJSONstring.Generate(id));
		json.Add('descripcion',TlkJSONstring.Generate(descripcion));
		json.Add('iniciorango',TlkJSONNumber.Generate(iniciorango));
		json.Add('finrango',TlkJSONNumber.Generate(finrango));
		json.Add('ultimonumero',TlkJSONNumber.Generate(ultimonumero));
		json.Add('idestacion',TlkJSONstring.Generate(idestacion));
		json.Add('fecha_autorizacion',TlkJSONNumber.Generate(fecha_autorizacion));
		json.Add('llaveautorizacionfiscal',TlkJSONstring.Generate(llaveautorizacionfiscal));
		json.Add('valido_desde',TlkJSONNumber.Generate(valido_desde));
		json.Add('tipo_id',TlkJSONNumber.Generate(tipo_id));
	FINALLY
		RESULT := TlkJSON.GenerateText(json);
		FreeAndNIL(json);
	END;
END;


PROCEDURE Tsurtidor_dosis.setAtributos(pid:String; pdescripcion:String; piniciorango:Integer; pfinrango:Integer; pultimonumero:Integer; pidestacion:String; pfecha_autorizacion:TdateTime; pllaveautorizacionfiscal:String; pvalido_desde:TdateTime; ptipo_id:Integer);		
BEGIN
	aid                     := pid                     ;
	adescripcion            := pdescripcion            ;
	ainiciorango            := piniciorango            ;
	afinrango               := pfinrango               ;
	aultimonumero           := pultimonumero           ;
	aidestacion             := pidestacion             ;
	afecha_autorizacion     := pfecha_autorizacion     ;
	allaveautorizacionfiscal:= pllaveautorizacionfiscal;
	avalido_desde           := pvalido_desde           ;
	atipo_id                := ptipo_id                ;	
END;

FUNCTION Tsurtidor_dosis.sqlGetField(field:string) : string;
BEGIN
	RESULT := 'select '+field+' from surtidor_dosis order by '+field;
END;

FUNCTION Tsurtidor_dosis.sqlGetKeyValue(key,value : string) : string;
BEGIN
	RESULT := 'select '+key+' as key,'+value+'as value from surtidor_dosis order by '+value;
END;

FUNCTION  Tsurtidor_dosis.sqlGetAll : string;
BEGIN
	RESULT := 'select * from surtidor_dosis';
END;

PROCEDURE Tsurtidor_dosis.filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
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

	IF SELF.iniciorango<>0 THEN
	BEGIN
		cds.sql.add( y +'iniciorango= :piniciorango');
		cds.ParamByName('piniciorango').asInteger	:= SELF.iniciorango;
		y := ' and ';
	END;

	IF SELF.finrango<>0 THEN
	BEGIN
		cds.sql.add( y +'finrango= :pfinrango');
		cds.ParamByName('pfinrango').asInteger	:= SELF.finrango;
		y := ' and ';
	END;

	IF SELF.ultimonumero<>0 THEN
	BEGIN
		cds.sql.add( y +'ultimonumero= :pultimonumero');
		cds.ParamByName('pultimonumero').asInteger	:= SELF.ultimonumero;
		y := ' and ';
	END;

	IF SELF.idestacion<>'' THEN
	BEGIN
		cds.sql.add( y +'idestacion= :pidestacion');
		cds.ParamByName('pidestacion').asString	:= SELF.idestacion;
		y := ' and ';
	END;

	IF SELF.fecha_autorizacion<>0 THEN
	BEGIN
		cds.sql.add( y +'fecha_autorizacion= :pfecha_autorizacion');
		cds.ParamByName('pfecha_autorizacion').asdateTime	:= SELF.fecha_autorizacion;
		y := ' and ';
	END;

	IF SELF.llaveautorizacionfiscal<>'' THEN
	BEGIN
		cds.sql.add( y +'llaveautorizacionfiscal= :pllaveautorizacionfiscal');
		cds.ParamByName('pllaveautorizacionfiscal').asString	:= SELF.llaveautorizacionfiscal;
		y := ' and ';
	END;

	IF SELF.valido_desde<>0 THEN
	BEGIN
		cds.sql.add( y +'valido_desde= :pvalido_desde');
		cds.ParamByName('pvalido_desde').asdateTime	:= SELF.valido_desde;
		y := ' and ';
	END;

	IF SELF.tipo_id<>0 THEN
	BEGIN
		cds.sql.add( y +'tipo_id= :ptipo_id');
		cds.ParamByName('ptipo_id').asInteger	:= SELF.tipo_id;
		y := ' and ';
	END;


	if where <> '' then
	begin
	cds.sql.add(where);
	for i:=0 to params.count-1 do
		cds.params.AddOneParamItem(params.items[i]);
	end;
END;


PROCEDURE Tsurtidor_dosis.QBE(ClientDS: TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add(sqlGetAll);
	filtrar(ClientDS,where,params);
	clientDS.prepare;
	clientDS.Open;
END;

PROCEDURE Tsurtidor_dosis.QBE(columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add('select '+columns+ ' from surtidor_dosis');
	ClientDS.SQL.Add('where '+where);

	if params <> NIL then
		ClientDS.Params := params;

	clientDS.prepare;
	clientDS.Open;
END;

function Tsurtidor_dosis.exist(ClientDS: TAstaClientDataSet): boolean;
begin
	initDataSet(ClientDS);
	ClientDS.SQL.Add('select id from surtidor_dosis where ID=:pID');
	ClientDS.ParamByName('pID').AsString := SELF.ID;
	ClientDS.Open;

	Result := not ClientDS.IsEmpty;
end;

procedure Tsurtidor_dosis.fromClientDataSet(ClientDS: TAstaClientDataSet);
begin
	inherited;
	IF NOT ClientDS.Active THEN EXIT;
	SELF.id                      := clientDS.FieldByName('id').AsString;
	SELF.descripcion             := clientDS.FieldByName('descripcion').AsString;
	SELF.iniciorango             := clientDS.FieldByName('iniciorango').AsInteger;
	SELF.finrango                := clientDS.FieldByName('finrango').AsInteger;
	SELF.ultimonumero            := clientDS.FieldByName('ultimonumero').AsInteger;
	SELF.idestacion              := clientDS.FieldByName('idestacion').AsString;
	SELF.fecha_autorizacion      := clientDS.FieldByName('fecha_autorizacion').AsdateTime;
	SELF.llaveautorizacionfiscal := clientDS.FieldByName('llaveautorizacionfiscal').AsString;
	SELF.valido_desde            := clientDS.FieldByName('valido_desde').AsdateTime;
	SELF.tipo_id                 := clientDS.FieldByName('tipo_id').AsInteger;
end;


procedure Tsurtidor_dosis.fromGUI(form: TForm);
begin
	with form do
	begin
{		SELF.id                     := utils.formObtenerPropiedad(FindComponent('cid'),'Text');
		SELF.descripcion            := utils.formObtenerPropiedad(FindComponent('cdescripcion'),'Text');
		SELF.iniciorango            := utils.formObtenerPropiedad(FindComponent('ciniciorango'),'Text');
		SELF.finrango               := utils.formObtenerPropiedad(FindComponent('cfinrango'),'Text');
		SELF.ultimonumero           := utils.formObtenerPropiedad(FindComponent('cultimonumero'),'Text');
		SELF.idestacion             := utils.formObtenerPropiedad(FindComponent('cidestacion'),'Text');
		SELF.fecha_autorizacion     := utils.formObtenerPropiedad(FindComponent('cfecha_autorizacion'),'Text');
		SELF.llaveautorizacionfiscal:= utils.formObtenerPropiedad(FindComponent('cllaveautorizacionfiscal'),'Text');
		SELF.valido_desde           := utils.formObtenerPropiedad(FindComponent('cvalido_desde'),'Text');
		SELF.tipo_id                := utils.formObtenerPropiedad(FindComponent('ctipo_id'),'Text');
    }
	end;
end;

procedure Tsurtidor_dosis.toGUI(form: TForm);
begin
	inherited;
	with form do
	begin
{	utils.formAsignaPropiedad(FindComponent('cid'),'Text', (SELF.id));
	utils.formAsignaPropiedad(FindComponent('cdescripcion'),'Text', (SELF.descripcion));
	utils.formAsignaPropiedad(FindComponent('ciniciorango'),'Text', IntTOStr(SELF.iniciorango));
	utils.formAsignaPropiedad(FindComponent('cfinrango'),'Text', IntTOStr(SELF.finrango));
	utils.formAsignaPropiedad(FindComponent('cultimonumero'),'Text', IntTOStr(SELF.ultimonumero));
	utils.formAsignaPropiedad(FindComponent('cidestacion'),'Text', (SELF.idestacion));
	utils.formAsignaPropiedad(FindComponent('cfecha_autorizacion'),'Text', IntTOStr(SELF.fecha_autorizacion));
	utils.formAsignaPropiedad(FindComponent('cllaveautorizacionfiscal'),'Text', (SELF.llaveautorizacionfiscal));
	utils.formAsignaPropiedad(FindComponent('cvalido_desde'),'Text', IntTOStr(SELF.valido_desde));
	utils.formAsignaPropiedad(FindComponent('ctipo_id'),'Text', IntTOStr(SELF.tipo_id));
 }end;
end;

function Tsurtidor_dosis.save(ClientDS: TAstaClientDataSet;transacction: byte): byte;
//var   date : TdateTimeTime;
begin
	RESULT := cFalse;
//	date := self.getFechaHoraServer(ClientDS);
	initDataSet(ClientDS);

//	if autocommit then
//		ClientDS.AstaClientSocket.StartTransaction;

   TRY

	case transacction of

	1 : begin         //update
		ClientDS.SQL.Add('UPDATE surtidor_dosis SET '+
				' descripcion = :pdescripcion'+
				',iniciorango = :piniciorango'+
				',finrango = :pfinrango'+
				',ultimonumero = :pultimonumero'+
				',idestacion = :pidestacion'+
				',fecha_autorizacion = :pfecha_autorizacion'+
				',llaveautorizacionfiscal = :pllaveautorizacionfiscal'+
				',valido_desde = :pvalido_desde'+
				',tipo_id = :ptipo_id'+
				' WHERE id = :pid'
		);		
		ClientDS.ParamByName('pid').asString                             := SELF.id;
		ClientDS.ParamByName('pdescripcion').asString                    := SELF.descripcion;
		ClientDS.ParamByName('piniciorango').asInteger                   := SELF.iniciorango;
		ClientDS.ParamByName('pfinrango').asInteger                      := SELF.finrango;
		ClientDS.ParamByName('pultimonumero').asInteger                  := SELF.ultimonumero;
		ClientDS.ParamByName('pidestacion').asString                     := SELF.idestacion;
		ClientDS.ParamByName('pfecha_autorizacion').asdateTime              := SELF.fecha_autorizacion;
		ClientDS.ParamByName('pllaveautorizacionfiscal').asString        := SELF.llaveautorizacionfiscal;
		ClientDS.ParamByName('pvalido_desde').asdateTime                    := SELF.valido_desde;
		ClientDS.ParamByName('ptipo_id').asInteger                       := SELF.tipo_id;
	end;

	0: begin	//insert
		SELF.nextID(clientDS);

		initDataSet(ClientDS);
		ClientDS.SQL.Add('INSERT INTO surtidor_dosis (id,descripcion,iniciorango,finrango,ultimonumero,idestacion,fecha_autorizacion,llaveautorizacionfiscal,valido_desde,tipo_id)');
		ClientDS.SQL.Add(' VALUES ');
		ClientDS.SQL.Add('(:pid,:pdescripcion,:piniciorango,:pfinrango,:pultimonumero,:pidestacion,:pfecha_autorizacion,:pllaveautorizacionfiscal,:pvalido_desde,:ptipo_id)');
		ClientDS.ParamByName('pid').asString                             := SELF.id;
		ClientDS.ParamByName('pdescripcion').asString                    := SELF.descripcion;
		ClientDS.ParamByName('piniciorango').asInteger                   := SELF.iniciorango;
		ClientDS.ParamByName('pfinrango').asInteger                      := SELF.finrango;
		ClientDS.ParamByName('pultimonumero').asInteger                  := SELF.ultimonumero;
		ClientDS.ParamByName('pidestacion').asString                     := SELF.idestacion;
		ClientDS.ParamByName('pfecha_autorizacion').asdateTime              := SELF.fecha_autorizacion;
		ClientDS.ParamByName('pllaveautorizacionfiscal').asString        := SELF.llaveautorizacionfiscal;
		ClientDS.ParamByName('pvalido_desde').asdateTime                    := SELF.valido_desde;
		ClientDS.ParamByName('ptipo_id').asInteger                       := SELF.tipo_id;
	end;

	2: begin //delete
		ClientDS.SQL.Add('delete from surtidor_dosis where id =:pid');
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

procedure Tsurtidor_dosis.nextID(ClientDS: TAstaClientDataSet);
begin

end;


PROCEDURE Tsurtidor_dosis.setid(pid:String);
BEGIN
	aid:= pid;
END;

PROCEDURE Tsurtidor_dosis.setdescripcion(pdescripcion:String);
BEGIN
	adescripcion:= pdescripcion;
END;

PROCEDURE Tsurtidor_dosis.setiniciorango(piniciorango:Integer);
BEGIN
	ainiciorango:= piniciorango;
END;

PROCEDURE Tsurtidor_dosis.setfinrango(pfinrango:Integer);
BEGIN
	afinrango:= pfinrango;
END;

PROCEDURE Tsurtidor_dosis.setultimonumero(pultimonumero:Integer);
BEGIN
	aultimonumero:= pultimonumero;
END;

PROCEDURE Tsurtidor_dosis.setidestacion(pidestacion:String);
BEGIN
	aidestacion:= pidestacion;
END;

PROCEDURE Tsurtidor_dosis.setfecha_autorizacion(pfecha_autorizacion:TdateTime);
BEGIN
	afecha_autorizacion:= pfecha_autorizacion;
END;

PROCEDURE Tsurtidor_dosis.setllaveautorizacionfiscal(pllaveautorizacionfiscal:String);
BEGIN
	allaveautorizacionfiscal:= pllaveautorizacionfiscal;
END;

PROCEDURE Tsurtidor_dosis.setvalido_desde(pvalido_desde:TdateTime);
BEGIN
	avalido_desde:= pvalido_desde;
END;

PROCEDURE Tsurtidor_dosis.settipo_id(ptipo_id:Integer);
BEGIN
	atipo_id:= ptipo_id;
END;


FUNCTION Tsurtidor_dosis.getid	:String;
BEGIN
	RESULT := aid;
END;

FUNCTION Tsurtidor_dosis.getdescripcion	:String;
BEGIN
	RESULT := adescripcion;
END;

FUNCTION Tsurtidor_dosis.getiniciorango	:Integer;
BEGIN
	RESULT := ainiciorango;
END;

FUNCTION Tsurtidor_dosis.getfinrango	:Integer;
BEGIN
	RESULT := afinrango;
END;

FUNCTION Tsurtidor_dosis.getultimonumero	:Integer;
BEGIN
	RESULT := aultimonumero;
END;

FUNCTION Tsurtidor_dosis.getidestacion	:String;
BEGIN
	RESULT := aidestacion;
END;

FUNCTION Tsurtidor_dosis.getfecha_autorizacion	:TdateTime;
BEGIN
	RESULT := afecha_autorizacion;
END;

FUNCTION Tsurtidor_dosis.getllaveautorizacionfiscal	:String;
BEGIN
	RESULT := allaveautorizacionfiscal;
END;

FUNCTION Tsurtidor_dosis.getvalido_desde	:TdateTime;
BEGIN
	RESULT := avalido_desde;
END;

FUNCTION Tsurtidor_dosis.gettipo_id	:Integer;
BEGIN
	RESULT := atipo_id;
END;


END.

