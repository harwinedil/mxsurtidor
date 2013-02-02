UNIT Uclassurtidor_factura;

{
GENERADO AUTOMATICAMENTE POR "Generador v.2012"
AUTOR              : HARWIN EDIL PEREZ SALINAS   [harwinedil@gmail.com]
DESCRIPCION        : Clase para interactuar con la Tabla : surtidor_factura
FECHA CREACION     : 20/12/2012 Hora: 05:52:06
ULTIMA MODIFICACION: 20/12/2012 Hora: 05:52:06
MODIFICADO POR     : HARWIN EDIL PEREZ SALINAS
OBSERVACIONES      :

}

INTERFACE

USES
  sysUtils,uLkJSON,AstaDrv2,AstaClientDataset,AstaParamList,UBaseObject,Uconstantes,
  forms, classes,UGralUtilidades,UclasSYSUSER,DBCtrls,SUIDBCtrls;


TYPE
	Psurtidor_factura = ^Tsurtidor_factura;
	Tsurtidor_factura = CLASS(TBaseObject)
	PRIVATE
		aid                	: String; 
		adespacho_id       	: String; 
		aturno_id          	: String; 
		adiahora           	: TDateTime; 
		avolumen           	: Currency; 
		atotal_venta       	: Currency; 
		aprecio            	: Currency; 
		amanguera_id       	: String; 
		aproducto_id       	: Integer; 
		acodigo_tarjeta    	: String; 
		apatente           	: String; 
		aveh_id            	: Integer; 
		apais              	: String; 
		avale_document     	: String; 
		acliente_id        	: String; 
		anit               	: String; 
		anombre            	: String; 
		atipopago_id       	: Integer; 
		aoperacion_id      	: Integer; 
		afactura_nro       	: Integer; 
		adosificacion_id   	: String; 
		aestado            	: String; 
		acodigo_control    	: String; 
		aautorizacion_sus  	: String; 
		aprecio_terceros   	: Currency; 
		anrofactura_terceros	: String; 
		aobs               	: String; 
		aupdated           	: TDateTime; 
		auupdated_id       	: Integer; 
		asyncro            	: String; 
		asyncromsg         	: String; 
		asyncdate          	: TDateTime; 
		aautomatica        	: String;
	PUBLIC
		CONSTRUCTOR     Create;		OVERLOAD;
		CONSTRUCTOR     Create(pid:String; pdespacho_id:String; pturno_id:String; pdiahora:TDateTime; pvolumen:Currency; ptotal_venta:Currency; pprecio:Currency; pmanguera_id:String; pproducto_id:Integer; pcodigo_tarjeta:String; ppatente:String; pveh_id:Integer; ppais:String; pvale_document:String; pcliente_id:String; pnit:String; pnombre:String; ptipopago_id:Integer; poperacion_id:Integer; pfactura_nro:Integer; pdosificacion_id:String; pestado:String; pcodigo_control:String; pautorizacion_sus:String; pprecio_terceros:Currency; pnrofactura_terceros:String; pobs:String; pupdated:TDateTime; puupdated_id:Integer; psyncro:String; psyncromsg:String; psyncdate:TDateTime; pautomatica:String); OVERLOAD;
		CONSTRUCTOR     Create(const pObjeto:Tsurtidor_factura);OVERLOAD;
		DESTRUCTOR      Destroy;	OVERRIDE;
		PROCEDURE       init;		OVERRIDE;
		PROCEDURE       setAtributos(pid:String; pdespacho_id:String; pturno_id:String; pdiahora:TDateTime; pvolumen:Currency; ptotal_venta:Currency; pprecio:Currency; pmanguera_id:String; pproducto_id:Integer; pcodigo_tarjeta:String; ppatente:String; pveh_id:Integer; ppais:String; pvale_document:String; pcliente_id:String; pnit:String; pnombre:String; ptipopago_id:Integer; poperacion_id:Integer; pfactura_nro:Integer; pdosificacion_id:String; pestado:String; pcodigo_control:String; pautorizacion_sus:String; pprecio_terceros:Currency; pnrofactura_terceros:String; pobs:String; pupdated:TDateTime; puupdated_id:Integer; psyncro:String; psyncromsg:String; psyncdate:TDateTime; pautomatica:String);		

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
    FUNCTION        toList(ClientDS: TAstaClientDataSet; turno:string) : TList;

		PROCEDURE   	setid(pid:String);
		PROCEDURE   	setdespacho_id(pdespacho_id:String);
		PROCEDURE   	setturno_id(pturno_id:String);
		PROCEDURE   	setdiahora(pdiahora:TDateTime);
		PROCEDURE   	setvolumen(pvolumen:Currency);
		PROCEDURE   	settotal_venta(ptotal_venta:Currency);
		PROCEDURE   	setprecio(pprecio:Currency);
		PROCEDURE   	setmanguera_id(pmanguera_id:String);
		PROCEDURE   	setproducto_id(pproducto_id:Integer);
		PROCEDURE   	setcodigo_tarjeta(pcodigo_tarjeta:String);
		PROCEDURE   	setpatente(ppatente:String);
		PROCEDURE   	setveh_id(pveh_id:Integer);
		PROCEDURE   	setpais(ppais:String);
		PROCEDURE   	setvale_document(pvale_document:String);
		PROCEDURE   	setcliente_id(pcliente_id:String);
		PROCEDURE   	setnit(pnit:String);
		PROCEDURE   	setnombre(pnombre:String);
		PROCEDURE   	settipopago_id(ptipopago_id:Integer);
		PROCEDURE   	setoperacion_id(poperacion_id:Integer);
		PROCEDURE   	setfactura_nro(pfactura_nro:Integer);
		PROCEDURE   	setdosificacion_id(pdosificacion_id:String);
		PROCEDURE   	setestado(pestado:String);
		PROCEDURE   	setcodigo_control(pcodigo_control:String);
		PROCEDURE   	setautorizacion_sus(pautorizacion_sus:String);
		PROCEDURE   	setprecio_terceros(pprecio_terceros:Currency);
		PROCEDURE   	setnrofactura_terceros(pnrofactura_terceros:String);
		PROCEDURE   	setobs(pobs:String);
		PROCEDURE   	setupdated(pupdated:TDateTime);
		PROCEDURE   	setuupdated_id(puupdated_id:Integer);
		PROCEDURE   	setsyncro(psyncro:String);
		PROCEDURE   	setsyncromsg(psyncromsg:String);
		PROCEDURE   	setsyncdate(psyncdate:TDateTime);
		PROCEDURE   	setautomatica(pautomatica:String);

		FUNCTION    	getid                  	:String;
		FUNCTION    	getdespacho_id         	:String;
		FUNCTION    	getturno_id            	:String;
		FUNCTION    	getdiahora             	:TDateTime;
		FUNCTION    	getvolumen             	:Currency;
		FUNCTION    	gettotal_venta         	:Currency;
		FUNCTION    	getprecio              	:Currency;
		FUNCTION    	getmanguera_id         	:String;
		FUNCTION    	getproducto_id         	:Integer;
		FUNCTION    	getcodigo_tarjeta      	:String;
		FUNCTION    	getpatente             	:String;
		FUNCTION    	getveh_id              	:Integer;
		FUNCTION    	getpais                	:String;
		FUNCTION    	getvale_document       	:String;
		FUNCTION    	getcliente_id          	:String;
		FUNCTION    	getnit                 	:String;
		FUNCTION    	getnombre              	:String;
		FUNCTION    	gettipopago_id         	:Integer;
		FUNCTION    	getoperacion_id        	:Integer;
		FUNCTION    	getfactura_nro         	:Integer;
		FUNCTION    	getdosificacion_id     	:String;
		FUNCTION    	getestado              	:String;
		FUNCTION    	getcodigo_control      	:String;
		FUNCTION    	getautorizacion_sus    	:String;
		FUNCTION    	getprecio_terceros     	:Currency;
		FUNCTION    	getnrofactura_terceros 	:String;
		FUNCTION    	getobs                 	:String;
		FUNCTION    	getupdated             	:TDateTime;
		FUNCTION    	getuupdated_id         	:Integer;
		FUNCTION    	getsyncro              	:String;
		FUNCTION    	getsyncromsg           	:String;
		FUNCTION    	getsyncdate            	:TDateTime;
		FUNCTION    	getautomatica          	:String;

		PROPERTY    	id                   : String    	read getid                  	write setid                  ;
		PROPERTY    	despacho_id          : String    	read getdespacho_id         	write setdespacho_id         ;
		PROPERTY    	turno_id             : String    	read getturno_id            	write setturno_id            ;
		PROPERTY    	diahora              : TDateTime 	read getdiahora             	write setdiahora             ;
		PROPERTY    	volumen              : Currency  	read getvolumen             	write setvolumen             ;
		PROPERTY    	total_venta          : Currency  	read gettotal_venta         	write settotal_venta         ;
		PROPERTY    	precio               : Currency  	read getprecio              	write setprecio              ;
		PROPERTY    	manguera_id          : String    	read getmanguera_id         	write setmanguera_id         ;
		PROPERTY    	producto_id          : Integer   	read getproducto_id         	write setproducto_id         ;
		PROPERTY    	codigo_tarjeta       : String    	read getcodigo_tarjeta      	write setcodigo_tarjeta      ;
		PROPERTY    	patente              : String    	read getpatente             	write setpatente             ;
		PROPERTY    	veh_id               : Integer   	read getveh_id              	write setveh_id              ;
		PROPERTY    	pais                 : String    	read getpais                	write setpais                ;
		PROPERTY    	vale_document        : String    	read getvale_document       	write setvale_document       ;
		PROPERTY    	cliente_id           : String    	read getcliente_id          	write setcliente_id          ;
		PROPERTY    	nit                  : String    	read getnit                 	write setnit                 ;
		PROPERTY    	nombre               : String    	read getnombre              	write setnombre              ;
		PROPERTY    	tipopago_id          : Integer   	read gettipopago_id         	write settipopago_id         ;
		PROPERTY    	operacion_id         : Integer   	read getoperacion_id        	write setoperacion_id        ;
		PROPERTY    	factura_nro          : Integer   	read getfactura_nro         	write setfactura_nro         ;
		PROPERTY    	dosificacion_id      : String    	read getdosificacion_id     	write setdosificacion_id     ;
		PROPERTY    	estado               : String    	read getestado              	write setestado              ;
		PROPERTY    	codigo_control       : String    	read getcodigo_control      	write setcodigo_control      ;
		PROPERTY    	autorizacion_sus     : String    	read getautorizacion_sus    	write setautorizacion_sus    ;
		PROPERTY    	precio_terceros      : Currency  	read getprecio_terceros     	write setprecio_terceros     ;
		PROPERTY    	nrofactura_terceros  : String    	read getnrofactura_terceros 	write setnrofactura_terceros ;
		PROPERTY    	obs                  : String    	read getobs                 	write setobs                 ;
		PROPERTY    	updated              : TDateTime 	read getupdated             	write setupdated             ;
		PROPERTY    	uupdated_id          : Integer   	read getuupdated_id         	write setuupdated_id         ;
		PROPERTY    	syncro               : String    	read getsyncro              	write setsyncro              ;
		PROPERTY    	syncromsg            : String    	read getsyncromsg           	write setsyncromsg           ;
		PROPERTY    	syncdate             : TDateTime 	read getsyncdate            	write setsyncdate            ;
		PROPERTY    	automatica           : String    	read getautomatica          	write setautomatica          ;

		
	END;

IMPLEMENTATION
{Tsurtidor_factura}

CONSTRUCTOR Tsurtidor_factura.Create;
BEGIN
	aid                 := '';
	adespacho_id        := '';
	aturno_id           := '';
	adiahora            := 0;
	avolumen            := 0;
	atotal_venta        := 0;
	aprecio             := 0;
	amanguera_id        := '';
	aproducto_id        := 0;
	acodigo_tarjeta     := '';
	apatente            := '';
	aveh_id             := 0;
	apais               := '';
	avale_document      := '';
	acliente_id         := '';
	anit                := '';
	anombre             := '';
	atipopago_id        := 0;
	aoperacion_id       := 0;
	afactura_nro        := 0;
	adosificacion_id    := '';
	aestado             := '';
	acodigo_control     := '';
	aautorizacion_sus   := '';
	aprecio_terceros    := 0;
	anrofactura_terceros:= '';
	aobs                := '';
	aupdated            := 0;
	auupdated_id        := 0;
	asyncro             := '';
	asyncromsg          := '';
	asyncdate           := 0;
	aautomatica         := '';	
	autocommit := true;												
END;

CONSTRUCTOR Tsurtidor_factura.Create(pid:String; pdespacho_id:String; pturno_id:String; pdiahora:TDateTime; pvolumen:Currency; ptotal_venta:Currency; pprecio:Currency; pmanguera_id:String; pproducto_id:Integer; pcodigo_tarjeta:String; ppatente:String; pveh_id:Integer; ppais:String; pvale_document:String; pcliente_id:String; pnit:String; pnombre:String; ptipopago_id:Integer; poperacion_id:Integer; pfactura_nro:Integer; pdosificacion_id:String; pestado:String; pcodigo_control:String; pautorizacion_sus:String; pprecio_terceros:Currency; pnrofactura_terceros:String; pobs:String; pupdated:TDateTime; puupdated_id:Integer; psyncro:String; psyncromsg:String; psyncdate:TDateTime; pautomatica:String);
BEGIN
	aid                 := pid                 ;
	adespacho_id        := pdespacho_id        ;
	aturno_id           := pturno_id           ;
	adiahora            := pdiahora            ;
	avolumen            := pvolumen            ;
	atotal_venta        := ptotal_venta        ;
	aprecio             := pprecio             ;
	amanguera_id        := pmanguera_id        ;
	aproducto_id        := pproducto_id        ;
	acodigo_tarjeta     := pcodigo_tarjeta     ;
	apatente            := ppatente            ;
	aveh_id             := pveh_id             ;
	apais               := ppais               ;
	avale_document      := pvale_document      ;
	acliente_id         := pcliente_id         ;
	anit                := pnit                ;
	anombre             := pnombre             ;
	atipopago_id        := ptipopago_id        ;
	aoperacion_id       := poperacion_id       ;
	afactura_nro        := pfactura_nro        ;
	adosificacion_id    := pdosificacion_id    ;
	aestado             := pestado             ;
	acodigo_control     := pcodigo_control     ;
	aautorizacion_sus   := pautorizacion_sus   ;
	aprecio_terceros    := pprecio_terceros    ;
	anrofactura_terceros:= pnrofactura_terceros;
	aobs                := pobs                ;
	aupdated            := pupdated            ;
	auupdated_id        := puupdated_id        ;
	asyncro             := psyncro             ;
	asyncromsg          := psyncromsg          ;
	asyncdate           := psyncdate           ;
	aautomatica         := pautomatica         ;
	autocommit := true;
END;

CONSTRUCTOR Tsurtidor_factura.Create(const pObjeto:Tsurtidor_factura);
BEGIN
	aid                 := pObjeto.id                 ;
	adespacho_id        := pObjeto.despacho_id        ;
	aturno_id           := pObjeto.turno_id           ;
	adiahora            := pObjeto.diahora            ;
	avolumen            := pObjeto.volumen            ;
	atotal_venta        := pObjeto.total_venta        ;
	aprecio             := pObjeto.precio             ;
	amanguera_id        := pObjeto.manguera_id        ;
	aproducto_id        := pObjeto.producto_id        ;
	acodigo_tarjeta     := pObjeto.codigo_tarjeta     ;
	apatente            := pObjeto.patente            ;
	aveh_id             := pObjeto.veh_id             ;
	apais               := pObjeto.pais               ;
	avale_document      := pObjeto.vale_document      ;
	acliente_id         := pObjeto.cliente_id         ;
	anit                := pObjeto.nit                ;
	anombre             := pObjeto.nombre             ;
	atipopago_id        := pObjeto.tipopago_id        ;
	aoperacion_id       := pObjeto.operacion_id       ;
	afactura_nro        := pObjeto.factura_nro        ;
	adosificacion_id    := pObjeto.dosificacion_id    ;
	aestado             := pObjeto.estado             ;
	acodigo_control     := pObjeto.codigo_control     ;
	aautorizacion_sus   := pObjeto.autorizacion_sus   ;
	aprecio_terceros    := pObjeto.precio_terceros    ;
	anrofactura_terceros:= pObjeto.nrofactura_terceros;
	aobs                := pObjeto.obs                ;
	aupdated            := pObjeto.updated            ;
	auupdated_id        := pObjeto.uupdated_id        ;
	asyncro             := pObjeto.syncro             ;
	asyncromsg          := pObjeto.syncromsg          ;
	asyncdate           := pObjeto.syncdate           ;
	aautomatica         := pObjeto.automatica         ;
	autocommit := pObjeto.autocommit;
END;

DESTRUCTOR Tsurtidor_factura.Destroy;
BEGIN
	
	inherited Destroy;
END;

PROCEDURE Tsurtidor_factura.init;
BEGIN
	aid                 := '';
	adespacho_id        := '';
	aturno_id           := '';
	adiahora            := 0;
	avolumen            := 0;
	atotal_venta        := 0;
	aprecio             := 0;
	amanguera_id        := '';
	aproducto_id        := 0;
	acodigo_tarjeta     := '';
	apatente            := '';
	aveh_id             := 0;
	apais               := '';
	avale_document      := '';
	acliente_id         := '';
	anit                := '';
	anombre             := '';
	atipopago_id        := 0;
	aoperacion_id       := 0;
	afactura_nro        := 0;
	adosificacion_id    := '';
	aestado             := '';
	acodigo_control     := '';
	aautorizacion_sus   := '';
	aprecio_terceros    := 0;
	anrofactura_terceros:= '';
	aobs                := '';
	aupdated            := 0;
	auupdated_id        := 0;
	asyncro             := '';
	asyncromsg          := '';
	asyncdate           := 0;
	aautomatica         := '';														
END;

PROCEDURE Tsurtidor_factura.fromJsonString(s:string);
BEGIN
	self.fromJson(TlkJSON.ParseText(s) as TlkJSONobject);
END;

PROCEDURE Tsurtidor_factura.fromJson(o:TlkJSONobject);
BEGIN
	id                  := (o.Field['id'] as TlkJSONstring).Value;
	despacho_id         := (o.Field['despacho_id'] as TlkJSONstring).Value;
	turno_id            := (o.Field['turno_id'] as TlkJSONstring).Value;
	diahora             := (o.Field['diahora'] as TlkJSONnumber).Value;
	volumen             := (o.Field['volumen'] as TlkJSONnumber).Value;
	total_venta         := (o.Field['total_venta'] as TlkJSONnumber).Value;
	precio              := (o.Field['precio'] as TlkJSONnumber).Value;
	manguera_id         := (o.Field['manguera_id'] as TlkJSONstring).Value;
	producto_id         := (o.Field['producto_id'] as TlkJSONnumber).Value;
	codigo_tarjeta      := (o.Field['codigo_tarjeta'] as TlkJSONstring).Value;
	patente             := (o.Field['patente'] as TlkJSONstring).Value;
	veh_id              := (o.Field['veh_id'] as TlkJSONnumber).Value;
	pais                := (o.Field['pais'] as TlkJSONstring).Value;
	vale_document       := (o.Field['vale_document'] as TlkJSONstring).Value;
	cliente_id          := (o.Field['cliente_id'] as TlkJSONstring).Value;
	nit                 := (o.Field['nit'] as TlkJSONstring).Value;
	nombre              := (o.Field['nombre'] as TlkJSONstring).Value;
	tipopago_id         := (o.Field['tipopago_id'] as TlkJSONnumber).Value;
	operacion_id        := (o.Field['operacion_id'] as TlkJSONnumber).Value;
	factura_nro         := (o.Field['factura_nro'] as TlkJSONnumber).Value;
	dosificacion_id     := (o.Field['dosificacion_id'] as TlkJSONstring).Value;
	estado              := (o.Field['estado'] as TlkJSONstring).Value;
	codigo_control      := (o.Field['codigo_control'] as TlkJSONstring).Value;
	autorizacion_sus    := (o.Field['autorizacion_sus'] as TlkJSONstring).Value;
	precio_terceros     := (o.Field['precio_terceros'] as TlkJSONnumber).Value;
	nrofactura_terceros := (o.Field['nrofactura_terceros'] as TlkJSONstring).Value;
	obs                 := (o.Field['obs'] as TlkJSONstring).Value;
	updated             := (o.Field['updated'] as TlkJSONnumber).Value;
	uupdated_id         := (o.Field['uupdated_id'] as TlkJSONnumber).Value;
	syncro              := (o.Field['syncro'] as TlkJSONstring).Value;
	syncromsg           := (o.Field['syncromsg'] as TlkJSONstring).Value;
	syncdate            := (o.Field['syncdate'] as TlkJSONnumber).Value;
	automatica          := (o.Field['automatica'] as TlkJSONstring).Value;
END;

FUNCTION Tsurtidor_factura.toJsonString : string;
var  json : TlkJSONobject;
BEGIN
	json := TlkJSONobject.Create();
	TRY	
		json.Add('id',TlkJSONstring.Generate(id));
		json.Add('despacho_id',TlkJSONstring.Generate(despacho_id));
		json.Add('turno_id',TlkJSONstring.Generate(turno_id));
		json.Add('diahora',TlkJSONNumber.Generate(diahora));
		json.Add('volumen',TlkJSONNumber.Generate(volumen));
		json.Add('total_venta',TlkJSONNumber.Generate(total_venta));
		json.Add('precio',TlkJSONNumber.Generate(precio));
		json.Add('manguera_id',TlkJSONstring.Generate(manguera_id));
		json.Add('producto_id',TlkJSONNumber.Generate(producto_id));
		json.Add('codigo_tarjeta',TlkJSONstring.Generate(codigo_tarjeta));
		json.Add('patente',TlkJSONstring.Generate(patente));
		json.Add('veh_id',TlkJSONNumber.Generate(veh_id));
		json.Add('pais',TlkJSONstring.Generate(pais));
		json.Add('vale_document',TlkJSONstring.Generate(vale_document));
		json.Add('cliente_id',TlkJSONstring.Generate(cliente_id));
		json.Add('nit',TlkJSONstring.Generate(nit));
		json.Add('nombre',TlkJSONstring.Generate(nombre));
		json.Add('tipopago_id',TlkJSONNumber.Generate(tipopago_id));
		json.Add('operacion_id',TlkJSONNumber.Generate(operacion_id));
		json.Add('factura_nro',TlkJSONNumber.Generate(factura_nro));
		json.Add('dosificacion_id',TlkJSONstring.Generate(dosificacion_id));
		json.Add('estado',TlkJSONstring.Generate(estado));
		json.Add('codigo_control',TlkJSONstring.Generate(codigo_control));
		json.Add('autorizacion_sus',TlkJSONstring.Generate(autorizacion_sus));
		json.Add('precio_terceros',TlkJSONNumber.Generate(precio_terceros));
		json.Add('nrofactura_terceros',TlkJSONstring.Generate(nrofactura_terceros));
		json.Add('obs',TlkJSONstring.Generate(obs));
		json.Add('updated',TlkJSONNumber.Generate(updated));
		json.Add('uupdated_id',TlkJSONNumber.Generate(uupdated_id));
		json.Add('syncro',TlkJSONstring.Generate(syncro));
		json.Add('syncromsg',TlkJSONstring.Generate(syncromsg));
		json.Add('syncdate',TlkJSONNumber.Generate(syncdate));
		json.Add('automatica',TlkJSONstring.Generate(automatica));
	FINALLY
		RESULT := TlkJSON.GenerateText(json);
		FreeAndNIL(json);
	END;
END;


PROCEDURE Tsurtidor_factura.setAtributos(pid:String; pdespacho_id:String; pturno_id:String; pdiahora:TDateTime; pvolumen:Currency; ptotal_venta:Currency; pprecio:Currency; pmanguera_id:String; pproducto_id:Integer; pcodigo_tarjeta:String; ppatente:String; pveh_id:Integer; ppais:String; pvale_document:String; pcliente_id:String; pnit:String; pnombre:String; ptipopago_id:Integer; poperacion_id:Integer; pfactura_nro:Integer; pdosificacion_id:String; pestado:String; pcodigo_control:String; pautorizacion_sus:String; pprecio_terceros:Currency; pnrofactura_terceros:String; pobs:String; pupdated:TDateTime; puupdated_id:Integer; psyncro:String; psyncromsg:String; psyncdate:TDateTime; pautomatica:String);		
BEGIN
	aid                 := pid                 ;
	adespacho_id        := pdespacho_id        ;
	aturno_id           := pturno_id           ;
	adiahora            := pdiahora            ;
	avolumen            := pvolumen            ;
	atotal_venta        := ptotal_venta        ;
	aprecio             := pprecio             ;
	amanguera_id        := pmanguera_id        ;
	aproducto_id        := pproducto_id        ;
	acodigo_tarjeta     := pcodigo_tarjeta     ;
	apatente            := ppatente            ;
	aveh_id             := pveh_id             ;
	apais               := ppais               ;
	avale_document      := pvale_document      ;
	acliente_id         := pcliente_id         ;
	anit                := pnit                ;
	anombre             := pnombre             ;
	atipopago_id        := ptipopago_id        ;
	aoperacion_id       := poperacion_id       ;
	afactura_nro        := pfactura_nro        ;
	adosificacion_id    := pdosificacion_id    ;
	aestado             := pestado             ;
	acodigo_control     := pcodigo_control     ;
	aautorizacion_sus   := pautorizacion_sus   ;
	aprecio_terceros    := pprecio_terceros    ;
	anrofactura_terceros:= pnrofactura_terceros;
	aobs                := pobs                ;
	aupdated            := pupdated            ;
	auupdated_id        := puupdated_id        ;
	asyncro             := psyncro             ;
	asyncromsg          := psyncromsg          ;
	asyncdate           := psyncdate           ;
	aautomatica         := pautomatica         ;	
END;

FUNCTION Tsurtidor_factura.sqlGetField(field:string) : string;
BEGIN
	RESULT := 'select '+field+' from surtidor_factura order by '+field;
END;

FUNCTION Tsurtidor_factura.sqlGetKeyValue(key,value : string) : string;
BEGIN
	RESULT := 'select '+key+' as key,'+value+'as value from surtidor_factura order by '+value;
END;

FUNCTION  Tsurtidor_factura.sqlGetAll : string;
BEGIN
	RESULT := 'select * from surtidor_factura';
END;

PROCEDURE Tsurtidor_factura.filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
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

	IF SELF.despacho_id<>'' THEN
	BEGIN
		cds.sql.add( y +'despacho_id= :pdespacho_id');
		cds.ParamByName('pdespacho_id').asString	:= SELF.despacho_id;
		y := ' and ';
	END;

	IF SELF.turno_id<>'' THEN
	BEGIN
		cds.sql.add( y +'turno_id= :pturno_id');
		cds.ParamByName('pturno_id').asString	:= SELF.turno_id;
		y := ' and ';
	END;

	IF SELF.diahora<>0 THEN
	BEGIN
		cds.sql.add( y +'diahora= :pdiahora');
		cds.ParamByName('pdiahora').asDateTime	:= SELF.diahora;
		y := ' and ';
	END;
{
	IF SELF.volumen<>0 THEN
	BEGIN
		cds.sql.add( y +'volumen= :pvolumen');
		cds.ParamByName('pvolumen').asCurrency	:= SELF.volumen;
		y := ' and ';
	END;

	IF SELF.total_venta<>0 THEN
	BEGIN
		cds.sql.add( y +'total_venta= :ptotal_venta');
		cds.ParamByName('ptotal_venta').asCurrency	:= SELF.total_venta;
		y := ' and ';
	END;

	IF SELF.precio<>0 THEN
	BEGIN
		cds.sql.add( y +'precio= :pprecio');
		cds.ParamByName('pprecio').asCurrency	:= SELF.precio;
		y := ' and ';
	END;
 }
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

	IF SELF.codigo_tarjeta<>'' THEN
	BEGIN
		cds.sql.add( y +'codigo_tarjeta= :pcodigo_tarjeta');
		cds.ParamByName('pcodigo_tarjeta').asString	:= SELF.codigo_tarjeta;
		y := ' and ';
	END;

	IF SELF.patente<>'' THEN
	BEGIN
		cds.sql.add( y +'patente= :ppatente');
		cds.ParamByName('ppatente').asString	:= SELF.patente;
		y := ' and ';
	END;

	IF SELF.veh_id<>0 THEN
	BEGIN
		cds.sql.add( y +'veh_id= :pveh_id');
		cds.ParamByName('pveh_id').asInteger	:= SELF.veh_id;
		y := ' and ';
	END;

	IF SELF.pais<>'' THEN
	BEGIN
		cds.sql.add( y +'pais= :ppais');
		cds.ParamByName('ppais').asString	:= SELF.pais;
		y := ' and ';
	END;

	IF SELF.vale_document<>'' THEN
	BEGIN
		cds.sql.add( y +'vale_document= :pvale_document');
		cds.ParamByName('pvale_document').asString	:= SELF.vale_document;
		y := ' and ';
	END;

	IF SELF.cliente_id<>'' THEN
	BEGIN
		cds.sql.add( y +'cliente_id= :pcliente_id');
		cds.ParamByName('pcliente_id').asString	:= SELF.cliente_id;
		y := ' and ';
	END;

	IF SELF.nit<>'' THEN
	BEGIN
		cds.sql.add( y +'nit= :pnit');
		cds.ParamByName('pnit').asString	:= SELF.nit;
		y := ' and ';
	END;

	IF SELF.nombre<>'' THEN
	BEGIN
		cds.sql.add( y +'nombre= :pnombre');
		cds.ParamByName('pnombre').asString	:= SELF.nombre;
		y := ' and ';
	END;

	IF SELF.tipopago_id<>0 THEN
	BEGIN
		cds.sql.add( y +'tipopago_id= :ptipopago_id');
		cds.ParamByName('ptipopago_id').asInteger	:= SELF.tipopago_id;
		y := ' and ';
	END;

	IF SELF.operacion_id<>0 THEN
	BEGIN
		cds.sql.add( y +'operacion_id= :poperacion_id');
		cds.ParamByName('poperacion_id').asInteger	:= SELF.operacion_id;
		y := ' and ';
	END;

	IF SELF.factura_nro<>0 THEN
	BEGIN
		cds.sql.add( y +'factura_nro= :pfactura_nro');
		cds.ParamByName('pfactura_nro').asInteger	:= SELF.factura_nro;
		y := ' and ';
	END;

	IF SELF.dosificacion_id<>'' THEN
	BEGIN
		cds.sql.add( y +'dosificacion_id= :pdosificacion_id');
		cds.ParamByName('pdosificacion_id').asString	:= SELF.dosificacion_id;
		y := ' and ';
	END;

	IF SELF.estado<>'' THEN
	BEGIN
		cds.sql.add( y +'estado= :pestado');
		cds.ParamByName('pestado').asString	:= SELF.estado;
		y := ' and ';
	END;

	IF SELF.codigo_control<>'' THEN
	BEGIN
		cds.sql.add( y +'codigo_control= :pcodigo_control');
		cds.ParamByName('pcodigo_control').asString	:= SELF.codigo_control;
		y := ' and ';
	END;

	IF SELF.autorizacion_sus<>'' THEN
	BEGIN
		cds.sql.add( y +'autorizacion_sus= :pautorizacion_sus');
		cds.ParamByName('pautorizacion_sus').asString	:= SELF.autorizacion_sus;
		y := ' and ';
	END;

	IF SELF.precio_terceros<>0 THEN
	BEGIN
		cds.sql.add( y +'precio_terceros= :pprecio_terceros');
		cds.ParamByName('pprecio_terceros').asCurrency	:= SELF.precio_terceros;
		y := ' and ';
	END;

	IF SELF.nrofactura_terceros<>'' THEN
	BEGIN
		cds.sql.add( y +'nrofactura_terceros= :pnrofactura_terceros');
		cds.ParamByName('pnrofactura_terceros').asString	:= SELF.nrofactura_terceros;
		y := ' and ';
	END;

	IF SELF.obs<>'' THEN
	BEGIN
		cds.sql.add( y +'obs= :pobs');
		cds.ParamByName('pobs').asString	:= SELF.obs;
		y := ' and ';
	END;
  {
	IF SELF.updated<>0 THEN
	BEGIN
		cds.sql.add( y +'updated= :pupdated');
		cds.ParamByName('pupdated').asTDateTime	:= SELF.updated;
		y := ' and ';
	END;

	IF SELF.uupdated_id<>0 THEN
	BEGIN
		cds.sql.add( y +'uupdated_id= :puupdated_id');
		cds.ParamByName('puupdated_id').asInteger	:= SELF.uupdated_id;
		y := ' and ';
	END;
   }
	IF SELF.syncro<>'' THEN
	BEGIN
		cds.sql.add( y +'syncro= :psyncro');
		cds.ParamByName('psyncro').asString	:= SELF.syncro;
		y := ' and ';
	END;
  {
	IF SELF.syncromsg<>'' THEN
	BEGIN
		cds.sql.add( y +'syncromsg= :psyncromsg');
		cds.ParamByName('psyncromsg').asString	:= SELF.syncromsg;
		y := ' and ';
	END;
   }
	IF SELF.syncdate<>0 THEN
	BEGIN
		cds.sql.add( y +'syncdate= :psyncdate');
		cds.ParamByName('psyncdate').asDateTime	:= SELF.syncdate;
		y := ' and ';
	END;

	IF SELF.automatica<>'' THEN
	BEGIN
		cds.sql.add( y +'automatica= :pautomatica');
		cds.ParamByName('pautomatica').asString	:= SELF.automatica;
		y := ' and ';
	END;


	if where <> '' then
	begin
	cds.sql.add(where);
	for i:=0 to params.count-1 do
		cds.params.AddOneParamItem(params.items[i]);
	end;
END;


PROCEDURE Tsurtidor_factura.QBE(ClientDS: TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add(sqlGetAll);
	filtrar(ClientDS,where,params);
	clientDS.prepare;
	clientDS.Open;
END;

PROCEDURE Tsurtidor_factura.QBE(columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add('select '+columns+ ' from surtidor_factura');
	ClientDS.SQL.Add('where '+where);

	if params <> NIL then
		ClientDS.Params := params;

	clientDS.prepare;
	clientDS.Open;
END;

function Tsurtidor_factura.exist(ClientDS: TAstaClientDataSet): boolean;
begin
	initDataSet(ClientDS);
	ClientDS.SQL.Add('select id from surtidor_factura where ID=:pID');
	ClientDS.ParamByName('pID').AsString := SELF.ID;
	ClientDS.Open;

	Result := not ClientDS.IsEmpty;
end;

procedure Tsurtidor_factura.fromClientDataSet(ClientDS: TAstaClientDataSet);
begin
	inherited;
	IF NOT ClientDS.Active THEN EXIT;
	SELF.id                  := clientDS.FieldByName('id').AsString;
	SELF.despacho_id         := clientDS.FieldByName('despacho_id').AsString;
	SELF.turno_id            := clientDS.FieldByName('turno_id').AsString;
	SELF.diahora             := clientDS.FieldByName('diahora').AsDateTime;
	SELF.volumen             := clientDS.FieldByName('volumen').AsCurrency;
	SELF.total_venta         := clientDS.FieldByName('total_venta').AsCurrency;
	SELF.precio              := clientDS.FieldByName('precio').AsCurrency;
	SELF.manguera_id         := clientDS.FieldByName('manguera_id').AsString;
	SELF.producto_id         := clientDS.FieldByName('producto_id').AsInteger;
	SELF.codigo_tarjeta      := clientDS.FieldByName('codigo_tarjeta').AsString;
	SELF.patente             := clientDS.FieldByName('patente').AsString;
	SELF.veh_id              := clientDS.FieldByName('veh_id').AsInteger;
	SELF.pais                := clientDS.FieldByName('pais').AsString;
	SELF.vale_document       := clientDS.FieldByName('vale_document').AsString;
	SELF.cliente_id          := clientDS.FieldByName('cliente_id').AsString;
	SELF.nit                 := clientDS.FieldByName('nit').AsString;
	SELF.nombre              := clientDS.FieldByName('nombre').AsString;
	SELF.tipopago_id         := clientDS.FieldByName('tipopago_id').AsInteger;
	SELF.operacion_id        := clientDS.FieldByName('operacion_id').AsInteger;
	SELF.factura_nro         := clientDS.FieldByName('factura_nro').AsInteger;
	SELF.dosificacion_id     := clientDS.FieldByName('dosificacion_id').AsString;
	SELF.estado              := clientDS.FieldByName('estado').AsString;
	SELF.codigo_control      := clientDS.FieldByName('codigo_control').AsString;
	SELF.autorizacion_sus    := clientDS.FieldByName('autorizacion_sus').AsString;
	SELF.precio_terceros     := clientDS.FieldByName('precio_terceros').AsCurrency;
	SELF.nrofactura_terceros := clientDS.FieldByName('nrofactura_terceros').AsString;
	SELF.obs                 := clientDS.FieldByName('obs').AsString;
	SELF.updated             := clientDS.FieldByName('updated').AsDateTime;
	SELF.uupdated_id         := clientDS.FieldByName('uupdated_id').AsInteger;
	SELF.syncro              := clientDS.FieldByName('syncro').AsString;
	SELF.syncromsg           := clientDS.FieldByName('syncromsg').AsString;
	SELF.syncdate            := clientDS.FieldByName('syncdate').AsDateTime;
	SELF.automatica          := clientDS.FieldByName('automatica').AsString;
end;


procedure Tsurtidor_factura.fromGUI(form: TForm);
begin
	with form do
	begin
{		SELF.id                 := utils.formObtenerPropiedad(FindComponent('cid'),'Text');
		SELF.despacho_id        := utils.formObtenerPropiedad(FindComponent('cdespacho_id'),'Text');
		SELF.turno_id           := utils.formObtenerPropiedad(FindComponent('cturno_id'),'Text');
		SELF.diahora            := utils.formObtenerPropiedad(FindComponent('cdiahora'),'Text');
		SELF.volumen            := utils.formObtenerPropiedad(FindComponent('cvolumen'),'Text');
		SELF.total_venta        := utils.formObtenerPropiedad(FindComponent('ctotal_venta'),'Text');
		SELF.precio             := utils.formObtenerPropiedad(FindComponent('cprecio'),'Text');
		SELF.manguera_id        := utils.formObtenerPropiedad(FindComponent('cmanguera_id'),'Text');
		SELF.producto_id        := utils.formObtenerPropiedad(FindComponent('cproducto_id'),'Text');
		SELF.codigo_tarjeta     := utils.formObtenerPropiedad(FindComponent('ccodigo_tarjeta'),'Text');
		SELF.patente            := utils.formObtenerPropiedad(FindComponent('cpatente'),'Text');
		SELF.veh_id             := utils.formObtenerPropiedad(FindComponent('cveh_id'),'Text');
		SELF.pais               := utils.formObtenerPropiedad(FindComponent('cpais'),'Text');
		SELF.vale_document      := utils.formObtenerPropiedad(FindComponent('cvale_document'),'Text');
		SELF.cliente_id         := utils.formObtenerPropiedad(FindComponent('ccliente_id'),'Text');
		SELF.nit                := utils.formObtenerPropiedad(FindComponent('cnit'),'Text');
		SELF.nombre             := utils.formObtenerPropiedad(FindComponent('cnombre'),'Text');
		SELF.tipopago_id        := utils.formObtenerPropiedad(FindComponent('ctipopago_id'),'Text');
		SELF.operacion_id       := utils.formObtenerPropiedad(FindComponent('coperacion_id'),'Text');
		SELF.factura_nro        := utils.formObtenerPropiedad(FindComponent('cfactura_nro'),'Text');
		SELF.dosificacion_id    := utils.formObtenerPropiedad(FindComponent('cdosificacion_id'),'Text');
		SELF.estado             := utils.formObtenerPropiedad(FindComponent('cestado'),'Text');
		SELF.codigo_control     := utils.formObtenerPropiedad(FindComponent('ccodigo_control'),'Text');
		SELF.autorizacion_sus   := utils.formObtenerPropiedad(FindComponent('cautorizacion_sus'),'Text');
		SELF.precio_terceros    := utils.formObtenerPropiedad(FindComponent('cprecio_terceros'),'Text');
		SELF.nrofactura_terceros:= utils.formObtenerPropiedad(FindComponent('cnrofactura_terceros'),'Text');
		SELF.obs                := utils.formObtenerPropiedad(FindComponent('cobs'),'Text');
		SELF.updated            := utils.formObtenerPropiedad(FindComponent('cupdated'),'Text');
		SELF.uupdated_id        := utils.formObtenerPropiedad(FindComponent('cuupdated_id'),'Text');
		SELF.syncro             := utils.formObtenerPropiedad(FindComponent('csyncro'),'Text');
		SELF.syncromsg          := utils.formObtenerPropiedad(FindComponent('csyncromsg'),'Text');
		SELF.syncdate           := utils.formObtenerPropiedad(FindComponent('csyncdate'),'Text');
		SELF.automatica         := utils.formObtenerPropiedad(FindComponent('cautomatica'),'Text');
    }
	end;
end;

procedure Tsurtidor_factura.toGUI(form: TForm);
begin
	inherited;
	with form do
	begin
{	utils.formAsignaPropiedad(FindComponent('cid'),'Text', (SELF.id));
	utils.formAsignaPropiedad(FindComponent('cdespacho_id'),'Text', (SELF.despacho_id));
	utils.formAsignaPropiedad(FindComponent('cturno_id'),'Text', (SELF.turno_id));
	utils.formAsignaPropiedad(FindComponent('cdiahora'),'Text', IntTOStr(SELF.diahora));
	utils.formAsignaPropiedad(FindComponent('cvolumen'),'Text', IntTOStr(SELF.volumen));
	utils.formAsignaPropiedad(FindComponent('ctotal_venta'),'Text', IntTOStr(SELF.total_venta));
	utils.formAsignaPropiedad(FindComponent('cprecio'),'Text', IntTOStr(SELF.precio));
	utils.formAsignaPropiedad(FindComponent('cmanguera_id'),'Text', (SELF.manguera_id));
	utils.formAsignaPropiedad(FindComponent('cproducto_id'),'Text', IntTOStr(SELF.producto_id));
	utils.formAsignaPropiedad(FindComponent('ccodigo_tarjeta'),'Text', (SELF.codigo_tarjeta));
	utils.formAsignaPropiedad(FindComponent('cpatente'),'Text', (SELF.patente));
	utils.formAsignaPropiedad(FindComponent('cveh_id'),'Text', IntTOStr(SELF.veh_id));
	utils.formAsignaPropiedad(FindComponent('cpais'),'Text', (SELF.pais));
	utils.formAsignaPropiedad(FindComponent('cvale_document'),'Text', (SELF.vale_document));
	utils.formAsignaPropiedad(FindComponent('ccliente_id'),'Text', (SELF.cliente_id));
	utils.formAsignaPropiedad(FindComponent('cnit'),'Text', (SELF.nit));
	utils.formAsignaPropiedad(FindComponent('cnombre'),'Text', (SELF.nombre));
	utils.formAsignaPropiedad(FindComponent('ctipopago_id'),'Text', IntTOStr(SELF.tipopago_id));
	utils.formAsignaPropiedad(FindComponent('coperacion_id'),'Text', IntTOStr(SELF.operacion_id));
	utils.formAsignaPropiedad(FindComponent('cfactura_nro'),'Text', IntTOStr(SELF.factura_nro));
	utils.formAsignaPropiedad(FindComponent('cdosificacion_id'),'Text', (SELF.dosificacion_id));
	utils.formAsignaPropiedad(FindComponent('cestado'),'Text', (SELF.estado));
	utils.formAsignaPropiedad(FindComponent('ccodigo_control'),'Text', (SELF.codigo_control));
	utils.formAsignaPropiedad(FindComponent('cautorizacion_sus'),'Text', (SELF.autorizacion_sus));
	utils.formAsignaPropiedad(FindComponent('cprecio_terceros'),'Text', IntTOStr(SELF.precio_terceros));
	utils.formAsignaPropiedad(FindComponent('cnrofactura_terceros'),'Text', (SELF.nrofactura_terceros));
	utils.formAsignaPropiedad(FindComponent('cobs'),'Text', (SELF.obs));
	utils.formAsignaPropiedad(FindComponent('cupdated'),'Text', IntTOStr(SELF.updated));
	utils.formAsignaPropiedad(FindComponent('cuupdated_id'),'Text', IntTOStr(SELF.uupdated_id));
	utils.formAsignaPropiedad(FindComponent('csyncro'),'Text', (SELF.syncro));
	utils.formAsignaPropiedad(FindComponent('csyncromsg'),'Text', (SELF.syncromsg));
	utils.formAsignaPropiedad(FindComponent('csyncdate'),'Text', IntTOStr(SELF.syncdate));
	utils.formAsignaPropiedad(FindComponent('cautomatica'),'Text', (SELF.automatica));
  }
	end;
end;

function Tsurtidor_factura.save(ClientDS: TAstaClientDataSet;transacction: byte): byte;
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
		ClientDS.SQL.Add('UPDATE surtidor_factura SET '+
				'diahora = :pdiahora'+
				',volumen = :pvolumen'+
				',total_venta = :ptotal_venta'+
				',precio = :pprecio'+
				',manguera_id = :pmanguera_id'+
				',producto_id = :pproducto_id'+
				',codigo_tarjeta = :pcodigo_tarjeta'+
				',patente = :ppatente'+
				',veh_id = :pveh_id'+
				',pais = :ppais'+
				',vale_document = :pvale_document'+
				',cliente_id = :pcliente_id'+
				',nit = :pnit'+
				',nombre = :pnombre'+
				',tipopago_id = :ptipopago_id'+
				',operacion_id = :poperacion_id');
		 ClientDS.SQL.Add(',factura_nro = :pfactura_nro'+
				',dosificacion_id = :pdosificacion_id'+
				',estado = :pestado'+
				',codigo_control = :pcodigo_control'+
				',autorizacion_sus = :pautorizacion_sus'+
				',precio_terceros = :pprecio_terceros'+
				',nrofactura_terceros = :pnrofactura_terceros'+
				',obs = :pobs'+
				',updated = :pupdated'+
				',uupdated_id = :puupdated_id'+
				',syncro = :psyncro'+
				',syncromsg = :psyncromsg'+
				',syncdate = :psyncdate'+
				',automatica = :pautomatica'+
				' WHERE id = :pid'
		);
		ClientDS.ParamByName('pid').asString                         := SELF.id;
		ClientDS.ParamByName('pdiahora').asDatetime                  := SELF.diahora;
		ClientDS.ParamByName('pvolumen').asCurrency                  := SELF.volumen;
		ClientDS.ParamByName('ptotal_venta').asCurrency              := SELF.total_venta;
		ClientDS.ParamByName('pprecio').asCurrency                   := SELF.precio;
		ClientDS.ParamByName('pmanguera_id').asString                := SELF.manguera_id;
		ClientDS.ParamByName('pproducto_id').asInteger               := SELF.producto_id;
		ClientDS.ParamByName('pcodigo_tarjeta').asString             := SELF.codigo_tarjeta;
		ClientDS.ParamByName('ppatente').asString                    := SELF.patente;
		ClientDS.ParamByName('pveh_id').asInteger                    := SELF.veh_id;
		ClientDS.ParamByName('ppais').asString                       := SELF.pais;
		ClientDS.ParamByName('pvale_document').asString              := SELF.vale_document;
		ClientDS.ParamByName('pcliente_id').asString                 := SELF.cliente_id;
		ClientDS.ParamByName('pnit').asString                        := SELF.nit;
		ClientDS.ParamByName('pnombre').asString                     := SELF.nombre;
		ClientDS.ParamByName('ptipopago_id').asInteger               := SELF.tipopago_id;
		ClientDS.ParamByName('poperacion_id').asInteger              := SELF.operacion_id;
		ClientDS.ParamByName('pfactura_nro').asInteger               := SELF.factura_nro;
		ClientDS.ParamByName('pdosificacion_id').asString            := SELF.dosificacion_id;
		ClientDS.ParamByName('pestado').asString                     := SELF.estado;
		ClientDS.ParamByName('pcodigo_control').asString             := SELF.codigo_control;
		ClientDS.ParamByName('pautorizacion_sus').asString           := SELF.autorizacion_sus;
		ClientDS.ParamByName('pprecio_terceros').asCurrency          := SELF.precio_terceros;
		ClientDS.ParamByName('pnrofactura_terceros').asString        := SELF.nrofactura_terceros;
		ClientDS.ParamByName('pobs').asString                        := SELF.obs;
		ClientDS.ParamByName('pupdated').asDatetime                  := date;
		ClientDS.ParamByName('puupdated_id').asInteger               := SELF.uupdated_id;
		ClientDS.ParamByName('psyncro').asString                     := SELF.syncro;
		ClientDS.ParamByName('psyncromsg').asString                  := SELF.syncromsg;
		ClientDS.ParamByName('psyncdate').asDatetime                 := date;
		ClientDS.ParamByName('pautomatica').asString                 := SELF.automatica;
	end;

	0: begin	//insert
		SELF.nextID(clientDS);

		initDataSet(ClientDS);
		ClientDS.SQL.Add('INSERT INTO surtidor_factura (id,despacho_id,turno_id,diahora,volumen,total_venta,precio,manguera_id,producto_id,codigo_tarjeta');
    ClientDS.SQL.Add(',patente,veh_id,pais,vale_document,cliente_id,nit,nombre,tipopago_id,operacion_id,factura_nro,dosificacion_id,estado,codigo_control');
    ClientDS.SQL.Add(',autorizacion_sus,precio_terceros,nrofactura_terceros,obs,updated,uupdated_id,syncro,syncromsg,syncdate,automatica)');
		ClientDS.SQL.Add(' VALUES ');
		ClientDS.SQL.Add('(:pid,:pdespacho_id,:pturno_id,:pdiahora,:pvolumen,:ptotal_venta,:pprecio,:pmanguera_id,:pproducto_id,:pcodigo_tarjeta');
    ClientDS.SQL.Add(',:ppatente,:pveh_id,:ppais,:pvale_document,:pcliente_id,:pnit,:pnombre,:ptipopago_id,:poperacion_id,:pfactura_nro,:pdosificacion_id,:pestado,:pcodigo_control');
    ClientDS.SQL.Add(',:pautorizacion_sus,:pprecio_terceros,:pnrofactura_terceros,:pobs,:pupdated,:puupdated_id,:psyncro,:psyncromsg,:psyncdate,:pautomatica)');
		ClientDS.ParamByName('pid').asString                         := SELF.id;
		ClientDS.ParamByName('pdespacho_id').asString                := SELF.despacho_id;
		ClientDS.ParamByName('pturno_id').asString                   := SELF.turno_id;
		ClientDS.ParamByName('pdiahora').asDatetime                  := SELF.diahora;
		ClientDS.ParamByName('pvolumen').asCurrency                  := SELF.volumen;
		ClientDS.ParamByName('ptotal_venta').asCurrency              := SELF.total_venta;
		ClientDS.ParamByName('pprecio').asCurrency                   := SELF.precio;
		ClientDS.ParamByName('pmanguera_id').asString                := SELF.manguera_id;
		ClientDS.ParamByName('pproducto_id').asInteger               := SELF.producto_id;
		ClientDS.ParamByName('pcodigo_tarjeta').asString             := SELF.codigo_tarjeta;
		ClientDS.ParamByName('ppatente').asString                    := SELF.patente;
		ClientDS.ParamByName('pveh_id').asInteger                    := SELF.veh_id;
		ClientDS.ParamByName('ppais').asString                       := SELF.pais;
		ClientDS.ParamByName('pvale_document').asString              := SELF.vale_document;
		ClientDS.ParamByName('pcliente_id').asString                 := SELF.cliente_id;
		ClientDS.ParamByName('pnit').asString                        := SELF.nit;
		ClientDS.ParamByName('pnombre').asString                     := SELF.nombre;
		ClientDS.ParamByName('ptipopago_id').asInteger               := SELF.tipopago_id;
		ClientDS.ParamByName('poperacion_id').asInteger              := SELF.operacion_id;
		ClientDS.ParamByName('pfactura_nro').asInteger               := SELF.factura_nro;
		ClientDS.ParamByName('pdosificacion_id').asString            := SELF.dosificacion_id;
		ClientDS.ParamByName('pestado').asString                     := SELF.estado;
		ClientDS.ParamByName('pcodigo_control').asString             := SELF.codigo_control;
		ClientDS.ParamByName('pautorizacion_sus').asString           := SELF.autorizacion_sus;
		ClientDS.ParamByName('pprecio_terceros').asCurrency          := SELF.precio_terceros;
		ClientDS.ParamByName('pnrofactura_terceros').asString        := SELF.nrofactura_terceros;
		ClientDS.ParamByName('pobs').asString                        := SELF.obs;
		ClientDS.ParamByName('pupdated').asDatetime                  := date;
		ClientDS.ParamByName('puupdated_id').asInteger               := SELF.uupdated_id;
		ClientDS.ParamByName('psyncro').asString                     := SELF.syncro;
		ClientDS.ParamByName('psyncromsg').asString                  := SELF.syncromsg;
		ClientDS.ParamByName('psyncdate').asDatetime                 := date;
		ClientDS.ParamByName('pautomatica').asString                 := SELF.automatica;
	end;
	
	2: begin //delete
		ClientDS.SQL.Add('delete from surtidor_factura where id =:pid');
		ClientDS.ParamByName('pID').asString := SELF.ID;
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

procedure Tsurtidor_factura.nextID(ClientDS: TAstaClientDataSet);
begin
    if self.factura_nro <> 0 then
		   self.ID  := self.dosificacion_id + IntToStr(self.factura_nro)
    else
       self.id  := self.despacho_id;
end;


PROCEDURE Tsurtidor_factura.setid(pid:String);
BEGIN
	aid:= pid;
END;

PROCEDURE Tsurtidor_factura.setdespacho_id(pdespacho_id:String);
BEGIN
	adespacho_id:= pdespacho_id;
END;

PROCEDURE Tsurtidor_factura.setturno_id(pturno_id:String);
BEGIN
	aturno_id:= pturno_id;
END;

PROCEDURE Tsurtidor_factura.setdiahora(pdiahora:TDateTime);
BEGIN
	adiahora:= pdiahora;
END;

PROCEDURE Tsurtidor_factura.setvolumen(pvolumen:Currency);
BEGIN
	avolumen:= pvolumen;
END;

PROCEDURE Tsurtidor_factura.settotal_venta(ptotal_venta:Currency);
BEGIN
	atotal_venta:= ptotal_venta;
END;

PROCEDURE Tsurtidor_factura.setprecio(pprecio:Currency);
BEGIN
	aprecio:= pprecio;
END;

PROCEDURE Tsurtidor_factura.setmanguera_id(pmanguera_id:String);
BEGIN
	amanguera_id:= pmanguera_id;
END;

PROCEDURE Tsurtidor_factura.setproducto_id(pproducto_id:Integer);
BEGIN
	aproducto_id:= pproducto_id;
END;

PROCEDURE Tsurtidor_factura.setcodigo_tarjeta(pcodigo_tarjeta:String);
BEGIN
	acodigo_tarjeta:= pcodigo_tarjeta;
END;

PROCEDURE Tsurtidor_factura.setpatente(ppatente:String);
BEGIN
	apatente:= ppatente;
END;

PROCEDURE Tsurtidor_factura.setveh_id(pveh_id:Integer);
BEGIN
	aveh_id:= pveh_id;
END;

PROCEDURE Tsurtidor_factura.setpais(ppais:String);
BEGIN
	apais:= ppais;
END;

PROCEDURE Tsurtidor_factura.setvale_document(pvale_document:String);
BEGIN
	avale_document:= pvale_document;
END;

PROCEDURE Tsurtidor_factura.setcliente_id(pcliente_id:String);
BEGIN
	acliente_id:= pcliente_id;
END;

PROCEDURE Tsurtidor_factura.setnit(pnit:String);
BEGIN
	anit:= pnit;
END;

PROCEDURE Tsurtidor_factura.setnombre(pnombre:String);
BEGIN
	anombre:= pnombre;
END;

PROCEDURE Tsurtidor_factura.settipopago_id(ptipopago_id:Integer);
BEGIN
	atipopago_id:= ptipopago_id;
END;

PROCEDURE Tsurtidor_factura.setoperacion_id(poperacion_id:Integer);
BEGIN
	aoperacion_id:= poperacion_id;
END;

PROCEDURE Tsurtidor_factura.setfactura_nro(pfactura_nro:Integer);
BEGIN
	afactura_nro:= pfactura_nro;
END;

PROCEDURE Tsurtidor_factura.setdosificacion_id(pdosificacion_id:String);
BEGIN
	adosificacion_id:= pdosificacion_id;
END;

PROCEDURE Tsurtidor_factura.setestado(pestado:String);
BEGIN
	aestado:= pestado;
END;

PROCEDURE Tsurtidor_factura.setcodigo_control(pcodigo_control:String);
BEGIN
	acodigo_control:= pcodigo_control;
END;

PROCEDURE Tsurtidor_factura.setautorizacion_sus(pautorizacion_sus:String);
BEGIN
	aautorizacion_sus:= pautorizacion_sus;
END;

PROCEDURE Tsurtidor_factura.setprecio_terceros(pprecio_terceros:Currency);
BEGIN
	aprecio_terceros:= pprecio_terceros;
END;

PROCEDURE Tsurtidor_factura.setnrofactura_terceros(pnrofactura_terceros:String);
BEGIN
	anrofactura_terceros:= pnrofactura_terceros;
END;

PROCEDURE Tsurtidor_factura.setobs(pobs:String);
BEGIN
	aobs:= pobs;
END;

PROCEDURE Tsurtidor_factura.setupdated(pupdated:TDateTime);
BEGIN
	aupdated:= pupdated;
END;

PROCEDURE Tsurtidor_factura.setuupdated_id(puupdated_id:Integer);
BEGIN
	auupdated_id:= puupdated_id;
END;

PROCEDURE Tsurtidor_factura.setsyncro(psyncro:String);
BEGIN
	asyncro:= psyncro;
END;

PROCEDURE Tsurtidor_factura.setsyncromsg(psyncromsg:String);
BEGIN
	asyncromsg:= psyncromsg;
END;

PROCEDURE Tsurtidor_factura.setsyncdate(psyncdate:TDateTime);
BEGIN
	asyncdate:= psyncdate;
END;

PROCEDURE Tsurtidor_factura.setautomatica(pautomatica:String);
BEGIN
	aautomatica:= pautomatica;
END;


FUNCTION Tsurtidor_factura.getid	:String;
BEGIN
	RESULT := aid;
END;

FUNCTION Tsurtidor_factura.getdespacho_id	:String;
BEGIN
	RESULT := adespacho_id;
END;

FUNCTION Tsurtidor_factura.getturno_id	:String;
BEGIN
	RESULT := aturno_id;
END;

FUNCTION Tsurtidor_factura.getdiahora	:TDateTime;
BEGIN
	RESULT := adiahora;
END;

FUNCTION Tsurtidor_factura.getvolumen	:Currency;
BEGIN
	RESULT := avolumen;
END;

FUNCTION Tsurtidor_factura.gettotal_venta	:Currency;
BEGIN
	RESULT := atotal_venta;
END;

FUNCTION Tsurtidor_factura.getprecio	:Currency;
BEGIN
	RESULT := aprecio;
END;

FUNCTION Tsurtidor_factura.getmanguera_id	:String;
BEGIN
	RESULT := amanguera_id;
END;

FUNCTION Tsurtidor_factura.getproducto_id	:Integer;
BEGIN
	RESULT := aproducto_id;
END;

FUNCTION Tsurtidor_factura.getcodigo_tarjeta	:String;
BEGIN
	RESULT := acodigo_tarjeta;
END;

FUNCTION Tsurtidor_factura.getpatente	:String;
BEGIN
	RESULT := apatente;
END;

FUNCTION Tsurtidor_factura.getveh_id	:Integer;
BEGIN
	RESULT := aveh_id;
END;

FUNCTION Tsurtidor_factura.getpais	:String;
BEGIN
	RESULT := apais;
END;

FUNCTION Tsurtidor_factura.getvale_document	:String;
BEGIN
	RESULT := avale_document;
END;

FUNCTION Tsurtidor_factura.getcliente_id	:String;
BEGIN
	RESULT := acliente_id;
END;

FUNCTION Tsurtidor_factura.getnit	:String;
BEGIN
	RESULT := anit;
END;

FUNCTION Tsurtidor_factura.getnombre	:String;
BEGIN
	RESULT := anombre;
END;

FUNCTION Tsurtidor_factura.gettipopago_id	:Integer;
BEGIN
	RESULT := atipopago_id;
END;

FUNCTION Tsurtidor_factura.getoperacion_id	:Integer;
BEGIN
	RESULT := aoperacion_id;
END;

FUNCTION Tsurtidor_factura.getfactura_nro	:Integer;
BEGIN
	RESULT := afactura_nro;
END;

FUNCTION Tsurtidor_factura.getdosificacion_id	:String;
BEGIN
	RESULT := adosificacion_id;
END;

FUNCTION Tsurtidor_factura.getestado	:String;
BEGIN
	RESULT := aestado;
END;

FUNCTION Tsurtidor_factura.getcodigo_control	:String;
BEGIN
	RESULT := acodigo_control;
END;

FUNCTION Tsurtidor_factura.getautorizacion_sus	:String;
BEGIN
	RESULT := aautorizacion_sus;
END;

FUNCTION Tsurtidor_factura.getprecio_terceros	:Currency;
BEGIN
	RESULT := aprecio_terceros;
END;

FUNCTION Tsurtidor_factura.getnrofactura_terceros	:String;
BEGIN
	RESULT := anrofactura_terceros;
END;

FUNCTION Tsurtidor_factura.getobs	:String;
BEGIN
	RESULT := aobs;
END;

FUNCTION Tsurtidor_factura.getupdated	:TDateTime;
BEGIN
	RESULT := aupdated;
END;

FUNCTION Tsurtidor_factura.getuupdated_id	:Integer;
BEGIN
	RESULT := auupdated_id;
END;

FUNCTION Tsurtidor_factura.getsyncro	:String;
BEGIN
	RESULT := asyncro;
END;

FUNCTION Tsurtidor_factura.getsyncromsg	:String;
BEGIN
	RESULT := asyncromsg;
END;

FUNCTION Tsurtidor_factura.getsyncdate	:TDateTime;
BEGIN
	RESULT := asyncdate;
END;

FUNCTION Tsurtidor_factura.getautomatica	:String;
BEGIN
	RESULT := aautomatica;
END;


function Tsurtidor_factura.toList(ClientDS: TAstaClientDataSet;
  turno: string): TList;
var  F : Psurtidor_factura;
begin
     result := TList.Create;
     self.turno_id := turno;
     self.QBE(ClientDS);
     ClientDS.First;

     while not ClientDS.Eof do
     begin
         new(F);
         F^ := Tsurtidor_factura.Create;

        F.id                  := clientDS.FieldByName('id').AsString;
        F.despacho_id         := clientDS.FieldByName('despacho_id').AsString;
        F.turno_id            := clientDS.FieldByName('turno_id').AsString;
        F.diahora             := clientDS.FieldByName('diahora').AsDateTime;
        F.volumen             := clientDS.FieldByName('volumen').AsCurrency;
        F.total_venta         := clientDS.FieldByName('total_venta').AsCurrency;
        F.precio              := clientDS.FieldByName('precio').AsCurrency;
        F.manguera_id         := clientDS.FieldByName('manguera_id').AsString;
        F.producto_id         := clientDS.FieldByName('producto_id').AsInteger;
        F.codigo_tarjeta      := clientDS.FieldByName('codigo_tarjeta').AsString;
        F.patente             := clientDS.FieldByName('patente').AsString;
        F.veh_id              := clientDS.FieldByName('veh_id').AsInteger;
        F.pais                := clientDS.FieldByName('pais').AsString;
        F.vale_document       := clientDS.FieldByName('vale_document').AsString;
        F.cliente_id          := clientDS.FieldByName('cliente_id').AsString;
        F.nit                 := clientDS.FieldByName('nit').AsString;
        F.nombre              := clientDS.FieldByName('nombre').AsString;
        F.tipopago_id         := clientDS.FieldByName('tipopago_id').AsInteger;
        F.operacion_id        := clientDS.FieldByName('operacion_id').AsInteger;
        F.factura_nro         := clientDS.FieldByName('factura_nro').AsInteger;
        F.dosificacion_id     := clientDS.FieldByName('dosificacion_id').AsString;
        F.estado              := clientDS.FieldByName('estado').AsString;
        F.codigo_control      := clientDS.FieldByName('codigo_control').AsString;
        F.autorizacion_sus    := clientDS.FieldByName('autorizacion_sus').AsString;
        F.precio_terceros     := clientDS.FieldByName('precio_terceros').AsCurrency;
        F.nrofactura_terceros := clientDS.FieldByName('nrofactura_terceros').AsString;
        F.obs                 := clientDS.FieldByName('obs').AsString;
        F.updated             := clientDS.FieldByName('updated').AsDateTime;
        F.uupdated_id         := clientDS.FieldByName('uupdated_id').AsInteger;
        F.syncro              := clientDS.FieldByName('syncro').AsString;
        F.syncromsg           := clientDS.FieldByName('syncromsg').AsString;
        F.syncdate            := clientDS.FieldByName('syncdate').AsDateTime;
        F.automatica          := clientDS.FieldByName('automatica').AsString;

         result.add(F);
         ClientDS.Next;
     end;
end;

END.

