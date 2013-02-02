UNIT Uclassurtidor_turnomanguera;

{
GENERADO AUTOMATICAMENTE POR "Generador v.2012"
AUTOR              : HARWIN EDIL PEREZ SALINAS   [harwinedil@gmail.com]
DESCRIPCION        : Clase para interactuar con la Tabla : surtidor_turnomanguera
FECHA CREACION     : 18/12/2012 Hora: 17:32:27
ULTIMA MODIFICACION: 18/12/2012 Hora: 17:32:27
MODIFICADO POR     : HARWIN EDIL PEREZ SALINAS
OBSERVACIONES      :

}

INTERFACE

USES
  sysUtils,uLkJSON,AstaDrv2,AstaClientDataset,AstaParamList,UBaseObject,Uconstantes,
  forms, classes,UGralUtilidades,UclasSYSUSER,DBCtrls,SUIDBCtrls;


TYPE
	Psurtidor_turnomanguera = ^Tsurtidor_turnomanguera;
	Tsurtidor_turnomanguera = CLASS(TBaseObject)
	PRIVATE
		aid            	: Integer; 
		aitem          	: Integer; 
		aturno_id      	: String; 
		amanguera_id   	: String; 
		aproducto_id   	: Integer; 
		apu            	: Currency; 
		aelectronico_ini	: Currency;
		aelectronico_fin	: Currency; 
		amecanico_ini  	: Currency; 
		amecanico_fin  	: Currency; 
		amecanico_vol  	: Currency; 
		amecanico_imp  	: Currency;
	PUBLIC
		CONSTRUCTOR     Create;		OVERLOAD;
		CONSTRUCTOR     Create(pid:Integer; pitem:Integer; pturno_id:String; pmanguera_id:String; pproducto_id:Integer; ppu:Currency; pelectronico_ini:Currency; pelectronico_fin:Currency; pmecanico_ini:Currency; pmecanico_fin:Currency; pmecanico_vol:Currency; pmecanico_imp:Currency); OVERLOAD;
		CONSTRUCTOR     Create(const pObjeto:Tsurtidor_turnomanguera);OVERLOAD;
		DESTRUCTOR      Destroy;	OVERRIDE;
		PROCEDURE       init;		OVERRIDE;
		PROCEDURE       setAtributos(pid:Integer; pitem:Integer; pturno_id:String; pmanguera_id:String; pproducto_id:Integer; ppu:Currency; pelectronico_ini:Currency; pelectronico_fin:Currency; pmecanico_ini:Currency; pmecanico_fin:Currency; pmecanico_vol:Currency; pmecanico_imp:Currency);		

		PROCEDURE       fromJson(o:TlkJSONobject); OVERRIDE;
		PROCEDURE       fromJsonString(s:string);  OVERRIDE;
		FUNCTION        toJsonString : string; OVERRIDE;
		FUNCTION        sqlGetField(field:string) : string; OVERRIDE;
		FUNCTION        sqlGetKeyValue(key,value : string) : string; OVERRIDE;
		FUNCTION        sqlGetAll : string; OVERRIDE;
		PROCEDURE       QBE( columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL); OVERLOAD;OVERRIDE;
		PROCEDURE       filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL); OVERRIDE;
		PROCEDURE       QBE(ClientDS: TAstaClientDataSet; where:string = '';params:TAstaParamList=NIL);  OVERLOAD;OVERRIDE;
    FUNCTION        toList(ClientDS: TAstaClientDataSet; turnoID:string) : TList;

		FUNCTION        save(ClientDS: TAstaClientDataSet; transacction: byte) : byte; OVERRIDE;
		FUNCTION        exist(ClientDS: TAstaClientDataSet) : boolean;OVERRIDE;
		PROCEDURE       fromClientDataSet(ClientDS: TAstaClientDataSet);OVERRIDE;
		PROCEDURE       fromGUI(form:TForm ); OVERRIDE;
		PROCEDURE       toGUI(form:TForm ); OVERRIDE;
		PROCEDURE       nextID(ClientDS: TAstaClientDataSet); OVERRIDE;

		PROCEDURE   	setid(pid:Integer);
		PROCEDURE   	setitem(pitem:Integer);
		PROCEDURE   	setturno_id(pturno_id:String);
		PROCEDURE   	setmanguera_id(pmanguera_id:String);
		PROCEDURE   	setproducto_id(pproducto_id:Integer);
		PROCEDURE   	setpu(ppu:Currency);
		PROCEDURE   	setelectronico_ini(pelectronico_ini:Currency);
		PROCEDURE   	setelectronico_fin(pelectronico_fin:Currency);
		PROCEDURE   	setmecanico_ini(pmecanico_ini:Currency);
		PROCEDURE   	setmecanico_fin(pmecanico_fin:Currency);
		PROCEDURE   	setmecanico_vol(pmecanico_vol:Currency);
		PROCEDURE   	setmecanico_imp(pmecanico_imp:Currency);

		FUNCTION    	getid              	:Integer;
		FUNCTION    	getitem            	:Integer;
		FUNCTION    	getturno_id        	:String;
		FUNCTION    	getmanguera_id     	:String;
		FUNCTION    	getproducto_id     	:Integer;
		FUNCTION    	getpu              	:Currency;
		FUNCTION    	getelectronico_ini 	:Currency;
		FUNCTION    	getelectronico_fin 	:Currency;
		FUNCTION    	getmecanico_ini    	:Currency;
		FUNCTION    	getmecanico_fin    	:Currency;
		FUNCTION    	getmecanico_vol    	:Currency;
		FUNCTION    	getmecanico_imp    	:Currency;

		PROPERTY    	id               : Integer   	read getid              	write setid              ;
		PROPERTY    	item             : Integer   	read getitem            	write setitem            ;
		PROPERTY    	turno_id         : String    	read getturno_id        	write setturno_id        ;
		PROPERTY    	manguera_id      : String    	read getmanguera_id     	write setmanguera_id     ;
		PROPERTY    	producto_id      : Integer   	read getproducto_id     	write setproducto_id     ;
		PROPERTY    	pu               : Currency  	read getpu              	write setpu              ;
		PROPERTY    	electronico_ini  : Currency  	read getelectronico_ini 	write setelectronico_ini ;
		PROPERTY    	electronico_fin  : Currency  	read getelectronico_fin 	write setelectronico_fin ;
		PROPERTY    	mecanico_ini     : Currency  	read getmecanico_ini    	write setmecanico_ini    ;
		PROPERTY    	mecanico_fin     : Currency  	read getmecanico_fin    	write setmecanico_fin    ;
		PROPERTY    	mecanico_vol     : Currency  	read getmecanico_vol    	write setmecanico_vol    ;
		PROPERTY    	mecanico_imp     : Currency  	read getmecanico_imp    	write setmecanico_imp    ;


	END;

IMPLEMENTATION
{Tsurtidor_turnomanguera}

CONSTRUCTOR Tsurtidor_turnomanguera.Create;
BEGIN
	aid             := 0;
	aitem           := 0;
	aturno_id       := '';
	amanguera_id    := '';
	aproducto_id    := 0;
	apu             := 0;
	aelectronico_ini:= 0;
	aelectronico_fin:= 0;
	amecanico_ini   := 0;
	amecanico_fin   := 0;
	amecanico_vol   := 0;
	amecanico_imp   := 0;
	autocommit := true;
END;

CONSTRUCTOR Tsurtidor_turnomanguera.Create(pid:Integer; pitem:Integer; pturno_id:String; pmanguera_id:String; pproducto_id:Integer; ppu:Currency; pelectronico_ini:Currency; pelectronico_fin:Currency; pmecanico_ini:Currency; pmecanico_fin:Currency; pmecanico_vol:Currency; pmecanico_imp:Currency);
BEGIN
	aid             := pid             ;
	aitem           := pitem           ;
	aturno_id       := pturno_id       ;
	amanguera_id    := pmanguera_id    ;
	aproducto_id    := pproducto_id    ;
	apu             := ppu             ;
	aelectronico_ini:= pelectronico_ini;
	aelectronico_fin:= pelectronico_fin;
	amecanico_ini   := pmecanico_ini   ;
	amecanico_fin   := pmecanico_fin   ;
	amecanico_vol   := pmecanico_vol   ;
	amecanico_imp   := pmecanico_imp   ;
	autocommit := true;
END;

CONSTRUCTOR Tsurtidor_turnomanguera.Create(const pObjeto:Tsurtidor_turnomanguera);
BEGIN
	aid             := pObjeto.id             ;
	aitem           := pObjeto.item           ;
	aturno_id       := pObjeto.turno_id       ;
	amanguera_id    := pObjeto.manguera_id    ;
	aproducto_id    := pObjeto.producto_id    ;
	apu             := pObjeto.pu             ;
	aelectronico_ini:= pObjeto.electronico_ini;
	aelectronico_fin:= pObjeto.electronico_fin;
	amecanico_ini   := pObjeto.mecanico_ini   ;
	amecanico_fin   := pObjeto.mecanico_fin   ;
	amecanico_vol   := pObjeto.mecanico_vol   ;
	amecanico_imp   := pObjeto.mecanico_imp   ;
	autocommit := pObjeto.autocommit;
END;

DESTRUCTOR Tsurtidor_turnomanguera.Destroy;
BEGIN

	inherited Destroy;
END;

PROCEDURE Tsurtidor_turnomanguera.init;
BEGIN
	aid             := 0;
	aitem           := 0;
	aturno_id       := '';
	amanguera_id    := '';
	aproducto_id    := 0;
	apu             := 0;
	aelectronico_ini:= 0;
	aelectronico_fin:= 0;
	amecanico_ini   := 0;
	amecanico_fin   := 0;
	amecanico_vol   := 0;
	amecanico_imp   := 0;
END;

PROCEDURE Tsurtidor_turnomanguera.fromJsonString(s:string);
BEGIN
	self.fromJson(TlkJSON.ParseText(s) as TlkJSONobject);
END;

PROCEDURE Tsurtidor_turnomanguera.fromJson(o:TlkJSONobject);
BEGIN
	id              := (o.Field['id'] as TlkJSONnumber).Value;
	item            := (o.Field['item'] as TlkJSONnumber).Value;
	turno_id        := (o.Field['turno_id'] as TlkJSONstring).Value;
	manguera_id     := (o.Field['manguera_id'] as TlkJSONstring).Value;
	producto_id     := (o.Field['producto_id'] as TlkJSONnumber).Value;
	pu              := (o.Field['pu'] as TlkJSONnumber).Value;
	electronico_ini := (o.Field['electronico_ini'] as TlkJSONnumber).Value;
	electronico_fin := (o.Field['electronico_fin'] as TlkJSONnumber).Value;
	mecanico_ini    := (o.Field['mecanico_ini'] as TlkJSONnumber).Value;
	mecanico_fin    := (o.Field['mecanico_fin'] as TlkJSONnumber).Value;
	mecanico_vol    := (o.Field['mecanico_vol'] as TlkJSONnumber).Value;
	mecanico_imp    := (o.Field['mecanico_imp'] as TlkJSONnumber).Value;
END;

FUNCTION Tsurtidor_turnomanguera.toJsonString : string;
var  json : TlkJSONobject;
BEGIN
	json := TlkJSONobject.Create();
	TRY
		json.Add('id',TlkJSONNumber.Generate(id));
		json.Add('item',TlkJSONNumber.Generate(item));
		json.Add('turno_id',TlkJSONstring.Generate(turno_id));
		json.Add('manguera_id',TlkJSONstring.Generate(manguera_id));
		json.Add('producto_id',TlkJSONNumber.Generate(producto_id));
		json.Add('pu',TlkJSONNumber.Generate(pu));
		json.Add('electronico_ini',TlkJSONNumber.Generate(electronico_ini));
		json.Add('electronico_fin',TlkJSONNumber.Generate(electronico_fin));
		json.Add('mecanico_ini',TlkJSONNumber.Generate(mecanico_ini));
		json.Add('mecanico_fin',TlkJSONNumber.Generate(mecanico_fin));
		json.Add('mecanico_vol',TlkJSONNumber.Generate(mecanico_vol));
		json.Add('mecanico_imp',TlkJSONNumber.Generate(mecanico_imp));
	FINALLY
		RESULT := TlkJSON.GenerateText(json);
		FreeAndNIL(json);
	END;
END;


PROCEDURE Tsurtidor_turnomanguera.setAtributos(pid:Integer; pitem:Integer; pturno_id:String; pmanguera_id:String; pproducto_id:Integer; ppu:Currency; pelectronico_ini:Currency; pelectronico_fin:Currency; pmecanico_ini:Currency; pmecanico_fin:Currency; pmecanico_vol:Currency; pmecanico_imp:Currency);
BEGIN
	aid             := pid             ;
	aitem           := pitem           ;
	aturno_id       := pturno_id       ;
	amanguera_id    := pmanguera_id    ;
	aproducto_id    := pproducto_id    ;
	apu             := ppu             ;
	aelectronico_ini:= pelectronico_ini;
	aelectronico_fin:= pelectronico_fin;
	amecanico_ini   := pmecanico_ini   ;
	amecanico_fin   := pmecanico_fin   ;
	amecanico_vol   := pmecanico_vol   ;
	amecanico_imp   := pmecanico_imp   ;
END;

FUNCTION Tsurtidor_turnomanguera.sqlGetField(field:string) : string;
BEGIN
	RESULT := 'select '+field+' from surtidor_turnomanguera order by '+field;
END;

FUNCTION Tsurtidor_turnomanguera.sqlGetKeyValue(key,value : string) : string;
BEGIN
	RESULT := 'select '+key+' as key,'+value+'as value from surtidor_turnomanguera order by '+value;
END;

FUNCTION  Tsurtidor_turnomanguera.sqlGetAll : string;
BEGIN
	RESULT := 'select * from surtidor_turnomanguera';
END;

PROCEDURE Tsurtidor_turnomanguera.filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
var  	y : string;
	i : word;
BEGIN
	y := ' where ';
{	IF SELF.id<>0 THEN
	BEGIN
		cds.sql.add( y +'id= :pid');
		cds.ParamByName('pid').asInteger	:= SELF.id;
		y := ' and ';
	END;

	IF SELF.item<>0 THEN
	BEGIN
		cds.sql.add( y +'item= :pitem');
		cds.ParamByName('pitem').asInteger	:= SELF.item;
		y := ' and ';
	END;
 }
	IF SELF.turno_id<>'' THEN
	BEGIN
		cds.sql.add( y +'turno_id= :pturno_id');
		cds.ParamByName('pturno_id').asString	:= SELF.turno_id;
		y := ' and ';
	END;

	IF SELF.manguera_id<>'' THEN
	BEGIN
		cds.sql.add( y +'manguera_id= :pmanguera_id');
		cds.ParamByName('pmanguera_id').asString	:= SELF.manguera_id;
		y := ' and ';
	END;

	IF SELF.producto_id<>0 THEN
	BEGIN
		cds.sql.add( y +'producto_id= :pproducto_id');
		cds.ParamByName('pproducto_id').asInteger	:= SELF.producto_id;
		y := ' and ';
	END;
 {
	IF SELF.pu<>0 THEN
	BEGIN
		cds.sql.add( y +'pu= :ppu');
		cds.ParamByName('ppu').asCurrency	:= SELF.pu;
		y := ' and ';
	END;

	IF SELF.electronico_ini<>0 THEN
	BEGIN
		cds.sql.add( y +'electronico_ini= :pelectronico_ini');
		cds.ParamByName('pelectronico_ini').asCurrency	:= SELF.electronico_ini;
		y := ' and ';
	END;

	IF SELF.electronico_fin<>0 THEN
	BEGIN
		cds.sql.add( y +'electronico_fin= :pelectronico_fin');
		cds.ParamByName('pelectronico_fin').asCurrency	:= SELF.electronico_fin;
		y := ' and ';
	END;
  }
	IF SELF.mecanico_ini<>0 THEN
	BEGIN
		cds.sql.add( y +'mecanico_ini= :pmecanico_ini');
		cds.ParamByName('pmecanico_ini').asCurrency	:= SELF.mecanico_ini;
		y := ' and ';
	END;

	IF SELF.mecanico_fin<>0 THEN
	BEGIN
		cds.sql.add( y +'mecanico_fin= :pmecanico_fin');
		cds.ParamByName('pmecanico_fin').asCurrency	:= SELF.mecanico_fin;
		y := ' and ';
	END;

	IF SELF.mecanico_vol<>0 THEN
	BEGIN
		cds.sql.add( y +'mecanico_vol= :pmecanico_vol');
		cds.ParamByName('pmecanico_vol').asCurrency	:= SELF.mecanico_vol;
		y := ' and ';
	END;

	IF SELF.mecanico_imp<>0 THEN
	BEGIN
		cds.sql.add( y +'mecanico_imp= :pmecanico_imp');
		cds.ParamByName('pmecanico_imp').asCurrency	:= SELF.mecanico_imp;
		y := ' and ';
	END;


	if where <> '' then
	begin
	cds.sql.add(where);
	for i:=0 to params.count-1 do
		cds.params.AddOneParamItem(params.items[i]);
	end;
END;


PROCEDURE Tsurtidor_turnomanguera.QBE(ClientDS: TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add(sqlGetAll);
	filtrar(ClientDS,where,params);
	clientDS.prepare;
	clientDS.Open;
END;

PROCEDURE Tsurtidor_turnomanguera.QBE(columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add('select '+columns+ ' from surtidor_turnomanguera');
	ClientDS.SQL.Add('where '+where);

	if params <> NIL then
		ClientDS.Params := params;

	clientDS.prepare;
	clientDS.Open;
END;

function Tsurtidor_turnomanguera.exist(ClientDS: TAstaClientDataSet): boolean;
begin
	initDataSet(ClientDS);
	ClientDS.SQL.Add('select id from surtidor_turnomanguera where turno_id=:pturno_ID and manguera_id=:pmanguera_id');
	ClientDS.ParamByName('pturno_ID').AsString := self.turno_id;
  ClientDS.ParamByName('pmanguera_id').AsString := self.manguera_id;
	ClientDS.Open;

	Result := not ClientDS.IsEmpty;

end;

procedure Tsurtidor_turnomanguera.fromClientDataSet(ClientDS: TAstaClientDataSet);
begin
	inherited;
	IF NOT ClientDS.Active THEN EXIT;
	SELF.id              := clientDS.FieldByName('id').AsInteger;
	SELF.item            := clientDS.FieldByName('item').AsInteger;
	SELF.turno_id        := clientDS.FieldByName('turno_id').AsString;
	SELF.manguera_id     := clientDS.FieldByName('manguera_id').AsString;
	SELF.producto_id     := clientDS.FieldByName('producto_id').AsInteger;
	SELF.pu              := clientDS.FieldByName('pu').AsCurrency;
	SELF.electronico_ini := clientDS.FieldByName('electronico_ini').AsCurrency;
	SELF.electronico_fin := clientDS.FieldByName('electronico_fin').AsCurrency;
	SELF.mecanico_ini    := clientDS.FieldByName('mecanico_ini').AsCurrency;
	SELF.mecanico_fin    := clientDS.FieldByName('mecanico_fin').AsCurrency;
	SELF.mecanico_vol    := clientDS.FieldByName('mecanico_vol').AsCurrency;
	SELF.mecanico_imp    := clientDS.FieldByName('mecanico_imp').AsCurrency;
end;


procedure Tsurtidor_turnomanguera.fromGUI(form: TForm);
begin
	with form do
	begin
{		SELF.id             := utils.formObtenerPropiedad(FindComponent('cid'),'Text');
		SELF.item           := utils.formObtenerPropiedad(FindComponent('citem'),'Text');
		SELF.turno_id       := utils.formObtenerPropiedad(FindComponent('cturno_id'),'Text');
		SELF.manguera_id    := utils.formObtenerPropiedad(FindComponent('cmanguera_id'),'Text');
		SELF.producto_id    := utils.formObtenerPropiedad(FindComponent('cproducto_id'),'Text');
		SELF.pu             := utils.formObtenerPropiedad(FindComponent('cpu'),'Text');
		SELF.electronico_ini:= utils.formObtenerPropiedad(FindComponent('celectronico_ini'),'Text');
		SELF.electronico_fin:= utils.formObtenerPropiedad(FindComponent('celectronico_fin'),'Text');
		SELF.mecanico_ini   := utils.formObtenerPropiedad(FindComponent('cmecanico_ini'),'Text');
		SELF.mecanico_fin   := utils.formObtenerPropiedad(FindComponent('cmecanico_fin'),'Text');
		SELF.mecanico_vol   := utils.formObtenerPropiedad(FindComponent('cmecanico_vol'),'Text');
		SELF.mecanico_imp   := utils.formObtenerPropiedad(FindComponent('cmecanico_imp'),'Text');
}
	end;
end;

procedure Tsurtidor_turnomanguera.toGUI(form: TForm);
begin
	inherited;
	with form do
	begin
{	utils.formAsignaPropiedad(FindComponent('cid'),'Text', IntTOStr(SELF.id));
	utils.formAsignaPropiedad(FindComponent('citem'),'Text', IntTOStr(SELF.item));
	utils.formAsignaPropiedad(FindComponent('cturno_id'),'Text', (SELF.turno_id));
	utils.formAsignaPropiedad(FindComponent('cmanguera_id'),'Text', (SELF.manguera_id));
	utils.formAsignaPropiedad(FindComponent('cproducto_id'),'Text', IntTOStr(SELF.producto_id));
	utils.formAsignaPropiedad(FindComponent('cpu'),'Text', IntTOStr(SELF.pu));
	utils.formAsignaPropiedad(FindComponent('celectronico_ini'),'Text', IntTOStr(SELF.electronico_ini));
	utils.formAsignaPropiedad(FindComponent('celectronico_fin'),'Text', IntTOStr(SELF.electronico_fin));
	utils.formAsignaPropiedad(FindComponent('cmecanico_ini'),'Text', IntTOStr(SELF.mecanico_ini));
	utils.formAsignaPropiedad(FindComponent('cmecanico_fin'),'Text', IntTOStr(SELF.mecanico_fin));
	utils.formAsignaPropiedad(FindComponent('cmecanico_vol'),'Text', IntTOStr(SELF.mecanico_vol));
	utils.formAsignaPropiedad(FindComponent('cmecanico_imp'),'Text', IntTOStr(SELF.mecanico_imp));
}
	end;
end;

function Tsurtidor_turnomanguera.save(ClientDS: TAstaClientDataSet;transacction: byte): byte;
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
		ClientDS.SQL.Add('UPDATE surtidor_turnomanguera SET '+
				' item = :pitem'+
				',turno_id = :pturno_id'+
				',manguera_id = :pmanguera_id'+
				',producto_id = :pproducto_id'+
				',pu = :ppu'+
				',electronico_ini = :pelectronico_ini'+
				',electronico_fin = :pelectronico_fin'+
				',mecanico_ini = :pmecanico_ini'+
				',mecanico_fin = :pmecanico_fin'+
				',mecanico_vol = :pmecanico_vol'+
				',mecanico_imp = :pmecanico_imp'+
				' WHERE id = :pid'
		);
		ClientDS.ParamByName('pid').asInteger                    := SELF.id;
		ClientDS.ParamByName('pitem').asInteger                  := SELF.item;
		ClientDS.ParamByName('pturno_id').asString               := SELF.turno_id;
		ClientDS.ParamByName('pmanguera_id').asString            := SELF.manguera_id;
		ClientDS.ParamByName('pproducto_id').asInteger           := SELF.producto_id;
		ClientDS.ParamByName('ppu').asCurrency                   := SELF.pu;
		ClientDS.ParamByName('pelectronico_ini').asCurrency      := SELF.electronico_ini;
		ClientDS.ParamByName('pelectronico_fin').asCurrency      := SELF.electronico_fin;
		ClientDS.ParamByName('pmecanico_ini').asCurrency         := SELF.mecanico_ini;
		ClientDS.ParamByName('pmecanico_fin').asCurrency         := SELF.mecanico_fin;
		ClientDS.ParamByName('pmecanico_vol').asCurrency         := SELF.mecanico_vol;
		ClientDS.ParamByName('pmecanico_imp').asCurrency         := SELF.mecanico_imp;
	end;

	0: begin	//insert
 //		SELF.nextID(clientDS);

//		initDataSet(ClientDS);
		ClientDS.SQL.Add('INSERT INTO surtidor_turnomanguera (item,turno_id,manguera_id,producto_id,pu,electronico_ini,electronico_fin,mecanico_ini,mecanico_fin,mecanico_vol,mecanico_imp)');
		ClientDS.SQL.Add(' VALUES ');
		ClientDS.SQL.Add('(:pitem,:pturno_id,:pmanguera_id,:pproducto_id,:ppu,:pelectronico_ini,:pelectronico_fin,:pmecanico_ini,:pmecanico_fin,:pmecanico_vol,:pmecanico_imp)');
//		ClientDS.ParamByName('pid').asInteger                    := SELF.id;
		ClientDS.ParamByName('pitem').asInteger                  := SELF.item;
		ClientDS.ParamByName('pturno_id').asString               := SELF.turno_id;
		ClientDS.ParamByName('pmanguera_id').asString            := SELF.manguera_id;
		ClientDS.ParamByName('pproducto_id').asInteger           := SELF.producto_id;
		ClientDS.ParamByName('ppu').asCurrency                   := SELF.pu;
		ClientDS.ParamByName('pelectronico_ini').asCurrency      := SELF.electronico_ini;
		ClientDS.ParamByName('pelectronico_fin').asCurrency      := SELF.electronico_fin;
		ClientDS.ParamByName('pmecanico_ini').asCurrency         := SELF.mecanico_ini;
		ClientDS.ParamByName('pmecanico_fin').asCurrency         := SELF.mecanico_fin;
		ClientDS.ParamByName('pmecanico_vol').asCurrency         := SELF.mecanico_vol;
		ClientDS.ParamByName('pmecanico_imp').asCurrency         := SELF.mecanico_imp;
	end;

	2: begin //delete
		ClientDS.SQL.Add('delete from surtidor_turnomanguera where turno_id =:pid');
		ClientDS.ParamByName('pID').AsString := SELF.turno_id;
	end;

  end;
//	if autocommit then
//		ClientDS.AstaClientSocket.StartTransaction;
	Result := cTrue;

   FINALLY
{	if autocommit then
		ClientDS.ExecSQLTransaction
	else
		ClientDS.ExecSQL;
  }
   END;

end;

procedure Tsurtidor_turnomanguera.nextID(ClientDS: TAstaClientDataSet);
begin
{		 initDataSet(ClientDS);

		 ClientDS.SQL.Add('select max(sub) as sub from surtidor_turnomanguera where companyid = :pcompanyID');
		 ClientDS.ParamByName('pcompanyID').AsInteger := self.COMPANYID;
		 ClientDS.Open;

		 self.SUB := ClientDS.fieldbyName('sub').AsInteger + 1;
		 self.ID  := (SELF.companyID * //1000000)+ SELF.SUB;
}
end;


PROCEDURE Tsurtidor_turnomanguera.setid(pid:Integer);
BEGIN
	aid:= pid;
END;

PROCEDURE Tsurtidor_turnomanguera.setitem(pitem:Integer);
BEGIN
	aitem:= pitem;
END;

PROCEDURE Tsurtidor_turnomanguera.setturno_id(pturno_id:String);
BEGIN
	aturno_id:= pturno_id;
END;

PROCEDURE Tsurtidor_turnomanguera.setmanguera_id(pmanguera_id:String);
BEGIN
	amanguera_id:= pmanguera_id;
END;

PROCEDURE Tsurtidor_turnomanguera.setproducto_id(pproducto_id:Integer);
BEGIN
	aproducto_id:= pproducto_id;
END;

PROCEDURE Tsurtidor_turnomanguera.setpu(ppu:Currency);
BEGIN
	apu:= ppu;
END;

PROCEDURE Tsurtidor_turnomanguera.setelectronico_ini(pelectronico_ini:Currency);
BEGIN
	aelectronico_ini:= pelectronico_ini;
END;

PROCEDURE Tsurtidor_turnomanguera.setelectronico_fin(pelectronico_fin:Currency);
BEGIN
	aelectronico_fin:= pelectronico_fin;
END;

PROCEDURE Tsurtidor_turnomanguera.setmecanico_ini(pmecanico_ini:Currency);
BEGIN
	amecanico_ini:= pmecanico_ini;
END;

PROCEDURE Tsurtidor_turnomanguera.setmecanico_fin(pmecanico_fin:Currency);
BEGIN
	amecanico_fin:= pmecanico_fin;
END;

PROCEDURE Tsurtidor_turnomanguera.setmecanico_vol(pmecanico_vol:Currency);
BEGIN
	amecanico_vol:= pmecanico_vol;
END;

PROCEDURE Tsurtidor_turnomanguera.setmecanico_imp(pmecanico_imp:Currency);
BEGIN
	amecanico_imp:= pmecanico_imp;
END;


FUNCTION Tsurtidor_turnomanguera.getid	:Integer;
BEGIN
	RESULT := aid;
END;

FUNCTION Tsurtidor_turnomanguera.getitem	:Integer;
BEGIN
	RESULT := aitem;
END;

FUNCTION Tsurtidor_turnomanguera.getturno_id	:String;
BEGIN
	RESULT := aturno_id;
END;

FUNCTION Tsurtidor_turnomanguera.getmanguera_id	:String;
BEGIN
	RESULT := amanguera_id;
END;

FUNCTION Tsurtidor_turnomanguera.getproducto_id	:Integer;
BEGIN
	RESULT := aproducto_id;
END;

FUNCTION Tsurtidor_turnomanguera.getpu	:Currency;
BEGIN
	RESULT := apu;
END;

FUNCTION Tsurtidor_turnomanguera.getelectronico_ini	:Currency;
BEGIN
	RESULT := aelectronico_ini;
END;

FUNCTION Tsurtidor_turnomanguera.getelectronico_fin	:Currency;
BEGIN
	RESULT := aelectronico_fin;
END;

FUNCTION Tsurtidor_turnomanguera.getmecanico_ini	:Currency;
BEGIN
	RESULT := amecanico_ini;
END;

FUNCTION Tsurtidor_turnomanguera.getmecanico_fin	:Currency;
BEGIN
	RESULT := amecanico_fin;
END;

FUNCTION Tsurtidor_turnomanguera.getmecanico_vol	:Currency;
BEGIN
	RESULT := amecanico_vol;
END;

FUNCTION Tsurtidor_turnomanguera.getmecanico_imp	:Currency;
BEGIN
	RESULT := amecanico_imp;
END;


function Tsurtidor_turnomanguera.toList(ClientDS: TAstaClientDataSet;
  turnoID: string): TList;
var  P : Psurtidor_turnomanguera;
begin
     result := TList.Create;

     self.turno_id := turnoID;
     QBE(ClientDS);

     ClientDS.First;
     while not ClientDS.Eof do
     begin
          new(P);
          P^ := Tsurtidor_turnomanguera.Create;
          P.id              := clientDS.FieldByName('id').AsInteger;
          P.item            := clientDS.FieldByName('item').AsInteger;
          P.turno_id        := clientDS.FieldByName('turno_id').AsString;
          P.manguera_id     := clientDS.FieldByName('manguera_id').AsString;
          P.producto_id     := clientDS.FieldByName('producto_id').AsInteger;
          P.pu              := clientDS.FieldByName('pu').AsCurrency;
          P.electronico_ini := clientDS.FieldByName('electronico_ini').AsCurrency;
          P.electronico_fin := clientDS.FieldByName('electronico_fin').AsCurrency;
          P.mecanico_ini    := clientDS.FieldByName('mecanico_ini').AsCurrency;
          P.mecanico_fin    := clientDS.FieldByName('mecanico_fin').AsCurrency;
          P.mecanico_vol    := clientDS.FieldByName('mecanico_vol').AsCurrency;
          P.mecanico_imp    := clientDS.FieldByName('mecanico_imp').AsCurrency;
          result.Add(P);
          ClientDS.Next;
     end;
end;

END.

