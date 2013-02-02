UNIT Uclassurtidor_turno;

{
GENERADO AUTOMATICAMENTE POR "Generador v.2012"
AUTOR              : HARWIN EDIL PEREZ SALINAS   [harwinedil@gmail.com]
DESCRIPCION        : Clase para interactuar con la Tabla : surtidor_turno
FECHA CREACION     : 18/12/2012 Hora: 17:32:11
ULTIMA MODIFICACION: 18/12/2012 Hora: 17:32:11
MODIFICADO POR     : HARWIN EDIL PEREZ SALINAS
OBSERVACIONES      :

}

INTERFACE

USES
  sysUtils,uLkJSON,AstaDrv2,AstaClientDataset,AstaParamList,UBaseObject,Uconstantes,
  forms, classes,UGralUtilidades,DBCtrls,SUIDBCtrls,Uclassurtidor_turnomanguera,
  UGralEstructuras;


TYPE
	Psurtidor_turno = ^Tsurtidor_turno;
	Tsurtidor_turno = CLASS(TBaseObject)
	PRIVATE
		aid           	: String;
		acode         	: String;
		adaytime      	: TDateTime;
		ashedule_id   	: Integer;
		atimeini      	: TDateTime;
		atimeend      	: TDateTime;
		atc           	: Currency;
		atotal_sold   	: Currency;
		atotal_bs     	: Currency;
		atotal_usd    	: Currency;
		atotal_cash   	: Currency;
		atotal_vale   	: Currency;
		atotal_card   	: Currency;
		atotal_check  	: Currency;
		atotal_proceeds	: Currency;
		atotal_calib  	: Currency;
		adifference   	: Currency;
		atotal_invoice	: Currency;
		aseller_id    	: String;
		aestacionid   	: String;
		asuc_id       	: Integer;
		acompany_id   	: Integer;
		adata0        	: String;
		adata1        	: String;
		acreated      	: TDateTime;
		aucreated_id  	: Integer;
		aupdated      	: TDateTime;
		auupdated_id  	: Integer;
		aconcurrency  	: Integer;
		astatus_id    	: Integer;
		amanual       	: String;
    date : TDateTime;
	PUBLIC
    conSyncro        : boolean;
    mangueras : TList;
		CONSTRUCTOR     Create;		OVERLOAD;
		CONSTRUCTOR     Create(pid:String; pcode:String; pdaytime:TDateTime; pshedule_id:Integer; ptimeini:TDateTime; ptimeend:TDateTime; ptc:Currency; ptotal_sold:Currency; ptotal_bs:Currency; ptotal_usd:Currency; ptotal_cash:Currency; ptotal_vale:Currency; ptotal_card:Currency; ptotal_check:Currency; ptotal_proceeds:Currency; ptotal_calib:Currency; pdifference:Currency; ptotal_invoice:Currency; pseller_id:String; pestacionid:String; psuc_id:Integer; pcompany_id:Integer; pdata0:String; pdata1:String; pcreated:TDateTime; pucreated_id:Integer; pupdated:TDateTime; puupdated_id:Integer; pconcurrency:Integer; pstatus_id:Integer; pmanual:String); OVERLOAD;
		CONSTRUCTOR     Create(const pObjeto:Tsurtidor_turno);OVERLOAD;
		DESTRUCTOR      Destroy;	OVERRIDE;
		PROCEDURE       init;		OVERRIDE;
		PROCEDURE       setAtributos(pid:String; pcode:String; pdaytime:TDateTime; pshedule_id:Integer; ptimeini:TDateTime; ptimeend:TDateTime; ptc:Currency; ptotal_sold:Currency; ptotal_bs:Currency; ptotal_usd:Currency; ptotal_cash:Currency; ptotal_vale:Currency; ptotal_card:Currency; ptotal_check:Currency; ptotal_proceeds:Currency; ptotal_calib:Currency; pdifference:Currency; ptotal_invoice:Currency; pseller_id:String; pestacionid:String; psuc_id:Integer; pcompany_id:Integer; pdata0:String; pdata1:String; pcreated:TDateTime; pucreated_id:Integer; pupdated:TDateTime; puupdated_id:Integer; pconcurrency:Integer; pstatus_id:Integer; pmanual:String);

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
    FUNCTION        sincronizando(ClientDS: TAstaClientDataSet) : boolean;
    FUNCTION        terminado(ClientDS: TAstaClientDataSet) : boolean;

		PROCEDURE   	setid(pid:String);
		PROCEDURE   	setcode(pcode:String);
		PROCEDURE   	setdaytime(pdaytime:TDateTime);
		PROCEDURE   	setshedule_id(pshedule_id:Integer);
		PROCEDURE   	settimeini(ptimeini:TDateTime);
		PROCEDURE   	settimeend(ptimeend:TDateTime);
		PROCEDURE   	settc(ptc:Currency);
		PROCEDURE   	settotal_sold(ptotal_sold:Currency);
		PROCEDURE   	settotal_bs(ptotal_bs:Currency);
		PROCEDURE   	settotal_usd(ptotal_usd:Currency);
		PROCEDURE   	settotal_cash(ptotal_cash:Currency);
		PROCEDURE   	settotal_vale(ptotal_vale:Currency);
		PROCEDURE   	settotal_card(ptotal_card:Currency);
		PROCEDURE   	settotal_check(ptotal_check:Currency);
		PROCEDURE   	settotal_proceeds(ptotal_proceeds:Currency);
		PROCEDURE   	settotal_calib(ptotal_calib:Currency);
		PROCEDURE   	setdifference(pdifference:Currency);
		PROCEDURE   	settotal_invoice(ptotal_invoice:Currency);
		PROCEDURE   	setseller_id(pseller_id:String);
		PROCEDURE   	setestacionid(pestacionid:String);
		PROCEDURE   	setsuc_id(psuc_id:Integer);
		PROCEDURE   	setcompany_id(pcompany_id:Integer);
		PROCEDURE   	setdata0(pdata0:String);
		PROCEDURE   	setdata1(pdata1:String);
		PROCEDURE   	setcreated(pcreated:TDateTime);
		PROCEDURE   	setucreated_id(pucreated_id:Integer);
		PROCEDURE   	setupdated(pupdated:TDateTime);
		PROCEDURE   	setuupdated_id(puupdated_id:Integer);
		PROCEDURE   	setconcurrency(pconcurrency:Integer);
		PROCEDURE   	setstatus_id(pstatus_id:Integer);
		PROCEDURE   	setmanual(pmanual:String);

		FUNCTION    	getid             	:String;
		FUNCTION    	getcode           	:String;
		FUNCTION    	getdaytime        	:TDateTime;
		FUNCTION    	getshedule_id     	:Integer;
		FUNCTION    	gettimeini        	:TDateTime;
		FUNCTION    	gettimeend        	:TDateTime;
		FUNCTION    	gettc             	:Currency;
		FUNCTION    	gettotal_sold     	:Currency;
		FUNCTION    	gettotal_bs       	:Currency;
		FUNCTION    	gettotal_usd      	:Currency;
		FUNCTION    	gettotal_cash     	:Currency;
		FUNCTION    	gettotal_vale     	:Currency;
		FUNCTION    	gettotal_card     	:Currency;
		FUNCTION    	gettotal_check    	:Currency;
		FUNCTION    	gettotal_proceeds 	:Currency;
		FUNCTION    	gettotal_calib    	:Currency;
		FUNCTION    	getdifference     	:Currency;
		FUNCTION    	gettotal_invoice  	:Currency;
		FUNCTION    	getseller_id      	:String;
		FUNCTION    	getestacionid     	:String;
		FUNCTION    	getsuc_id         	:Integer;
		FUNCTION    	getcompany_id     	:Integer;
		FUNCTION    	getdata0          	:String;
		FUNCTION    	getdata1          	:String;
		FUNCTION    	getcreated        	:TDateTime;
		FUNCTION    	getucreated_id    	:Integer;
		FUNCTION    	getupdated        	:TDateTime;
		FUNCTION    	getuupdated_id    	:Integer;
		FUNCTION    	getconcurrency    	:Integer;
		FUNCTION    	getstatus_id      	:Integer;
		FUNCTION    	getmanual         	:String;

		PROPERTY    	id              : String    	read getid             	write setid             ;
		PROPERTY    	code            : String    	read getcode           	write setcode           ;
		PROPERTY    	daytime         : TDateTime 	read getdaytime        	write setdaytime        ;
		PROPERTY    	shedule_id      : Integer   	read getshedule_id     	write setshedule_id     ;
		PROPERTY    	timeini         : TDateTime 	read gettimeini        	write settimeini        ;
		PROPERTY    	timeend         : TDateTime 	read gettimeend        	write settimeend        ;
		PROPERTY    	tc              : Currency  	read gettc             	write settc             ;
		PROPERTY    	total_sold      : Currency  	read gettotal_sold     	write settotal_sold     ;
		PROPERTY    	total_bs        : Currency  	read gettotal_bs       	write settotal_bs       ;
		PROPERTY    	total_usd       : Currency  	read gettotal_usd      	write settotal_usd      ;
		PROPERTY    	total_cash      : Currency  	read gettotal_cash     	write settotal_cash     ;
		PROPERTY    	total_vale      : Currency  	read gettotal_vale     	write settotal_vale     ;
		PROPERTY    	total_card      : Currency  	read gettotal_card     	write settotal_card     ;
		PROPERTY    	total_check     : Currency  	read gettotal_check    	write settotal_check    ;
		PROPERTY    	total_proceeds  : Currency  	read gettotal_proceeds 	write settotal_proceeds ;
		PROPERTY    	total_calib     : Currency  	read gettotal_calib    	write settotal_calib    ;
		PROPERTY    	difference      : Currency  	read getdifference     	write setdifference     ;
		PROPERTY    	total_invoice   : Currency  	read gettotal_invoice  	write settotal_invoice  ;
		PROPERTY    	seller_id       : String    	read getseller_id      	write setseller_id      ;
		PROPERTY    	estacionid      : String    	read getestacionid     	write setestacionid     ;
		PROPERTY    	suc_id          : Integer   	read getsuc_id         	write setsuc_id         ;
		PROPERTY    	company_id      : Integer   	read getcompany_id     	write setcompany_id     ;
		PROPERTY    	data0           : String    	read getdata0          	write setdata0          ;
		PROPERTY    	data1           : String    	read getdata1          	write setdata1          ;
		PROPERTY    	created         : TDateTime 	read getcreated        	write setcreated        ;
		PROPERTY    	ucreated_id     : Integer   	read getucreated_id    	write setucreated_id    ;
		PROPERTY    	updated         : TDateTime 	read getupdated        	write setupdated        ;
		PROPERTY    	uupdated_id     : Integer   	read getuupdated_id    	write setuupdated_id    ;
		PROPERTY    	concurrency     : Integer   	read getconcurrency    	write setconcurrency    ;
		PROPERTY    	status_id       : Integer   	read getstatus_id      	write setstatus_id      ;
		PROPERTY    	manual          : String    	read getmanual         	write setmanual         ;

		
	END;

IMPLEMENTATION

uses DateUtils;
{Tsurtidor_turno}

CONSTRUCTOR Tsurtidor_turno.Create;
BEGIN
	aid            := '';
	acode          := '';
	adaytime       := 0;
	ashedule_id    := 0;
	atimeini       := 0;
	atimeend       := 0;
	atc            := 0;
	atotal_sold    := 0;
	atotal_bs      := 0;
	atotal_usd     := 0;
	atotal_cash    := 0;
	atotal_vale    := 0;
	atotal_card    := 0;
	atotal_check   := 0;
	atotal_proceeds:= 0;
	atotal_calib   := 0;
	adifference    := 0;
	atotal_invoice := 0;
	aseller_id     := '';
	aestacionid    := '';
	asuc_id        := 0;
	acompany_id    := 0;
	adata0         := '';
	adata1         := '';
	acreated       := 0;
	aucreated_id   := 0;
	aupdated       := 0;
	auupdated_id   := 0;
	aconcurrency   := 0;
	astatus_id     := 0;
	amanual        := '';	
	autocommit := true;
  mangueras  := TList.Create;
  conSyncro  := true;
END;

CONSTRUCTOR Tsurtidor_turno.Create(pid:String; pcode:String; pdaytime:TDateTime; pshedule_id:Integer; ptimeini:TDateTime; ptimeend:TDateTime; ptc:Currency; ptotal_sold:Currency; ptotal_bs:Currency; ptotal_usd:Currency; ptotal_cash:Currency; ptotal_vale:Currency; ptotal_card:Currency; ptotal_check:Currency; ptotal_proceeds:Currency; ptotal_calib:Currency; pdifference:Currency; ptotal_invoice:Currency; pseller_id:String; pestacionid:String; psuc_id:Integer; pcompany_id:Integer; pdata0:String; pdata1:String; pcreated:TDateTime; pucreated_id:Integer; pupdated:TDateTime; puupdated_id:Integer; pconcurrency:Integer; pstatus_id:Integer; pmanual:String);
BEGIN
	aid            := pid            ;
	acode          := pcode          ;
	adaytime       := pdaytime       ;
	ashedule_id    := pshedule_id    ;
	atimeini       := ptimeini       ;
	atimeend       := ptimeend       ;
	atc            := ptc            ;
	atotal_sold    := ptotal_sold    ;
	atotal_bs      := ptotal_bs      ;
	atotal_usd     := ptotal_usd     ;
	atotal_cash    := ptotal_cash    ;
	atotal_vale    := ptotal_vale    ;
	atotal_card    := ptotal_card    ;
	atotal_check   := ptotal_check   ;
	atotal_proceeds:= ptotal_proceeds;
	atotal_calib   := ptotal_calib   ;
	adifference    := pdifference    ;
	atotal_invoice := ptotal_invoice ;
	aseller_id     := pseller_id     ;
	aestacionid    := pestacionid    ;
	asuc_id        := psuc_id        ;
	acompany_id    := pcompany_id    ;
	adata0         := pdata0         ;
	adata1         := pdata1         ;
	acreated       := pcreated       ;
	aucreated_id   := pucreated_id   ;
	aupdated       := pupdated       ;
	auupdated_id   := puupdated_id   ;
	aconcurrency   := pconcurrency   ;
	astatus_id     := pstatus_id     ;
	amanual        := pmanual        ;
	autocommit := true;
  mangueras  := TList.Create;
  conSyncro  := true;
END;

CONSTRUCTOR Tsurtidor_turno.Create(const pObjeto:Tsurtidor_turno);
BEGIN
	aid            := pObjeto.id            ;
	acode          := pObjeto.code          ;
	adaytime       := pObjeto.daytime       ;
	ashedule_id    := pObjeto.shedule_id    ;
	atimeini       := pObjeto.timeini       ;
	atimeend       := pObjeto.timeend       ;
	atc            := pObjeto.tc            ;
	atotal_sold    := pObjeto.total_sold    ;
	atotal_bs      := pObjeto.total_bs      ;
	atotal_usd     := pObjeto.total_usd     ;
	atotal_cash    := pObjeto.total_cash    ;
	atotal_vale    := pObjeto.total_vale    ;
	atotal_card    := pObjeto.total_card    ;
	atotal_check   := pObjeto.total_check   ;
	atotal_proceeds:= pObjeto.total_proceeds;
	atotal_calib   := pObjeto.total_calib   ;
	adifference    := pObjeto.difference    ;
	atotal_invoice := pObjeto.total_invoice ;
	aseller_id     := pObjeto.seller_id     ;
	aestacionid    := pObjeto.estacionid    ;
	asuc_id        := pObjeto.suc_id        ;
	acompany_id    := pObjeto.company_id    ;
	adata0         := pObjeto.data0         ;
	adata1         := pObjeto.data1         ;
	acreated       := pObjeto.created       ;
	aucreated_id   := pObjeto.ucreated_id   ;
	aupdated       := pObjeto.updated       ;
	auupdated_id   := pObjeto.uupdated_id   ;
	aconcurrency   := pObjeto.concurrency   ;
	astatus_id     := pObjeto.status_id     ;
	amanual        := pObjeto.manual        ;
	autocommit := pObjeto.autocommit;
  mangueras  := TList.Create;
  conSyncro  := true;
END;

DESTRUCTOR Tsurtidor_turno.Destroy;
BEGIN
  utils.LiberarLista(mangueras);
	inherited Destroy;
END;

PROCEDURE Tsurtidor_turno.init;
BEGIN
	aid            := '';
	acode          := '';
	adaytime       := 0;
	ashedule_id    := 0;
	atimeini       := 0;
	atimeend       := 0;
	atc            := 0;
	atotal_sold    := 0;
	atotal_bs      := 0;
	atotal_usd     := 0;
	atotal_cash    := 0;
	atotal_vale    := 0;
	atotal_card    := 0;
	atotal_check   := 0;
	atotal_proceeds:= 0;
	atotal_calib   := 0;
	adifference    := 0;
	atotal_invoice := 0;
	aseller_id     := '';
	aestacionid    := '';
	asuc_id        := 0;
	acompany_id    := 0;
	adata0         := '';
	adata1         := '';
	acreated       := 0;
	aucreated_id   := 0;
	aupdated       := 0;
	auupdated_id   := 0;
	aconcurrency   := 0;
	astatus_id     := 0;
	amanual        := '';
  utils.LiberarLista(mangueras);
  mangueras  := TList.Create;
END;

PROCEDURE Tsurtidor_turno.fromJsonString(s:string);
BEGIN
	self.fromJson(TlkJSON.ParseText(s) as TlkJSONobject);
END;

PROCEDURE Tsurtidor_turno.fromJson(o:TlkJSONobject);
BEGIN
	id             := (o.Field['id'] as TlkJSONstring).Value;
	code           := (o.Field['code'] as TlkJSONstring).Value;
	daytime        := (o.Field['daytime'] as TlkJSONnumber).Value;
	shedule_id     := (o.Field['shedule_id'] as TlkJSONnumber).Value;
	timeini        := (o.Field['timeini'] as TlkJSONnumber).Value;
	timeend        := (o.Field['timeend'] as TlkJSONnumber).Value;
	tc             := (o.Field['tc'] as TlkJSONnumber).Value;
	total_sold     := (o.Field['total_sold'] as TlkJSONnumber).Value;
	total_bs       := (o.Field['total_bs'] as TlkJSONnumber).Value;
	total_usd      := (o.Field['total_usd'] as TlkJSONnumber).Value;
	total_cash     := (o.Field['total_cash'] as TlkJSONnumber).Value;
	total_vale     := (o.Field['total_vale'] as TlkJSONnumber).Value;
	total_card     := (o.Field['total_card'] as TlkJSONnumber).Value;
	total_check    := (o.Field['total_check'] as TlkJSONnumber).Value;
	total_proceeds := (o.Field['total_proceeds'] as TlkJSONnumber).Value;
	total_calib    := (o.Field['total_calib'] as TlkJSONnumber).Value;
	difference     := (o.Field['difference'] as TlkJSONnumber).Value;
	total_invoice  := (o.Field['total_invoice'] as TlkJSONnumber).Value;
	seller_id      := (o.Field['seller_id'] as TlkJSONstring).Value;
	estacionid     := (o.Field['estacionid'] as TlkJSONstring).Value;
	suc_id         := (o.Field['suc_id'] as TlkJSONnumber).Value;
	company_id     := (o.Field['company_id'] as TlkJSONnumber).Value;
	data0          := (o.Field['data0'] as TlkJSONstring).Value;
	data1          := (o.Field['data1'] as TlkJSONstring).Value;
	created        := (o.Field['created'] as TlkJSONnumber).Value;
	ucreated_id    := (o.Field['ucreated_id'] as TlkJSONnumber).Value;
	updated        := (o.Field['updated'] as TlkJSONnumber).Value;
	uupdated_id    := (o.Field['uupdated_id'] as TlkJSONnumber).Value;
	concurrency    := (o.Field['concurrency'] as TlkJSONnumber).Value;
	status_id      := (o.Field['status_id'] as TlkJSONnumber).Value;
	manual         := (o.Field['manual'] as TlkJSONstring).Value;
END;

FUNCTION Tsurtidor_turno.toJsonString : string;
var  json : TlkJSONobject;
BEGIN
	json := TlkJSONobject.Create();
	TRY
		json.Add('id',TlkJSONstring.Generate(id));
		json.Add('code',TlkJSONstring.Generate(code));
		json.Add('daytime',TlkJSONNumber.Generate(daytime));
		json.Add('shedule_id',TlkJSONNumber.Generate(shedule_id));
		json.Add('timeini',TlkJSONNumber.Generate(timeini));
		json.Add('timeend',TlkJSONNumber.Generate(timeend));
		json.Add('tc',TlkJSONNumber.Generate(tc));
		json.Add('total_sold',TlkJSONNumber.Generate(total_sold));
		json.Add('total_bs',TlkJSONNumber.Generate(total_bs));
		json.Add('total_usd',TlkJSONNumber.Generate(total_usd));
		json.Add('total_cash',TlkJSONNumber.Generate(total_cash));
		json.Add('total_vale',TlkJSONNumber.Generate(total_vale));
		json.Add('total_card',TlkJSONNumber.Generate(total_card));
		json.Add('total_check',TlkJSONNumber.Generate(total_check));
		json.Add('total_proceeds',TlkJSONNumber.Generate(total_proceeds));
		json.Add('total_calib',TlkJSONNumber.Generate(total_calib));
		json.Add('difference',TlkJSONNumber.Generate(difference));
		json.Add('total_invoice',TlkJSONNumber.Generate(total_invoice));
		json.Add('seller_id',TlkJSONstring.Generate(seller_id));
		json.Add('estacionid',TlkJSONstring.Generate(estacionid));
		json.Add('suc_id',TlkJSONNumber.Generate(suc_id));
		json.Add('company_id',TlkJSONNumber.Generate(company_id));
		json.Add('data0',TlkJSONstring.Generate(data0));
		json.Add('data1',TlkJSONstring.Generate(data1));
		json.Add('created',TlkJSONNumber.Generate(created));
		json.Add('ucreated_id',TlkJSONNumber.Generate(ucreated_id));
		json.Add('updated',TlkJSONNumber.Generate(updated));
		json.Add('uupdated_id',TlkJSONNumber.Generate(uupdated_id));
		json.Add('concurrency',TlkJSONNumber.Generate(concurrency));
		json.Add('status_id',TlkJSONNumber.Generate(status_id));
		json.Add('manual',TlkJSONstring.Generate(manual));
	FINALLY
		RESULT := TlkJSON.GenerateText(json);
		FreeAndNIL(json);
	END;
END;


PROCEDURE Tsurtidor_turno.setAtributos(pid:String; pcode:String; pdaytime:TDateTime; pshedule_id:Integer; ptimeini:TDateTime; ptimeend:TDateTime; ptc:Currency; ptotal_sold:Currency; ptotal_bs:Currency; ptotal_usd:Currency; ptotal_cash:Currency; ptotal_vale:Currency; ptotal_card:Currency; ptotal_check:Currency; ptotal_proceeds:Currency; ptotal_calib:Currency; pdifference:Currency; ptotal_invoice:Currency; pseller_id:String; pestacionid:String; psuc_id:Integer; pcompany_id:Integer; pdata0:String; pdata1:String; pcreated:TDateTime; pucreated_id:Integer; pupdated:TDateTime; puupdated_id:Integer; pconcurrency:Integer; pstatus_id:Integer; pmanual:String);
BEGIN
	aid            := pid            ;
	acode          := pcode          ;
	adaytime       := pdaytime       ;
	ashedule_id    := pshedule_id    ;
	atimeini       := ptimeini       ;
	atimeend       := ptimeend       ;
	atc            := ptc            ;
	atotal_sold    := ptotal_sold    ;
	atotal_bs      := ptotal_bs      ;
	atotal_usd     := ptotal_usd     ;
	atotal_cash    := ptotal_cash    ;
	atotal_vale    := ptotal_vale    ;
	atotal_card    := ptotal_card    ;
	atotal_check   := ptotal_check   ;
	atotal_proceeds:= ptotal_proceeds;
	atotal_calib   := ptotal_calib   ;
	adifference    := pdifference    ;
	atotal_invoice := ptotal_invoice ;
	aseller_id     := pseller_id     ;
	aestacionid    := pestacionid    ;
	asuc_id        := psuc_id        ;
	acompany_id    := pcompany_id    ;
	adata0         := pdata0         ;
	adata1         := pdata1         ;
	acreated       := pcreated       ;
	aucreated_id   := pucreated_id   ;
	aupdated       := pupdated       ;
	auupdated_id   := puupdated_id   ;
	aconcurrency   := pconcurrency   ;
	astatus_id     := pstatus_id     ;
	amanual        := pmanual        ;
END;

FUNCTION Tsurtidor_turno.sqlGetField(field:string) : string;
BEGIN
	RESULT := 'select '+field+' from surtidor_turno order by '+field;
END;

FUNCTION Tsurtidor_turno.sqlGetKeyValue(key,value : string) : string;
BEGIN
	RESULT := 'select '+key+' as key,'+value+'as value from surtidor_turno order by '+value;
END;

FUNCTION  Tsurtidor_turno.sqlGetAll : string;
BEGIN
	RESULT := 'select * from surtidor_turno';
END;

PROCEDURE Tsurtidor_turno.filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
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

	IF SELF.code<>'' THEN
	BEGIN
		cds.sql.add( y +'code= :pcode');
		cds.ParamByName('pcode').asString	:= SELF.code;
		y := ' and ';
	END;

	IF SELF.daytime<>0 THEN
	BEGIN
		cds.sql.add( y +'daytime= :pdaytime');
		cds.ParamByName('pdaytime').asDateTime	:= SELF.daytime;
		y := ' and ';
	END;

	IF SELF.shedule_id<>0 THEN
	BEGIN
		cds.sql.add( y +'shedule_id= :pshedule_id');
		cds.ParamByName('pshedule_id').asInteger	:= SELF.shedule_id;
		y := ' and ';
	END;

	IF SELF.timeini<>0 THEN
	BEGIN
		cds.sql.add( y +'timeini= :ptimeini');
		cds.ParamByName('ptimeini').asDateTime	:= SELF.timeini;
		y := ' and ';
	END;

	IF SELF.timeend<>0 THEN
	BEGIN
		cds.sql.add( y +'timeend= :ptimeend');
		cds.ParamByName('ptimeend').asDateTime	:= SELF.timeend;
		y := ' and ';
	END;

	IF SELF.tc<>0 THEN
	BEGIN
		cds.sql.add( y +'tc= :ptc');
		cds.ParamByName('ptc').asCurrency	:= SELF.tc;
		y := ' and ';
	END;

	IF SELF.total_sold<>0 THEN
	BEGIN
		cds.sql.add( y +'total_sold= :ptotal_sold');
		cds.ParamByName('ptotal_sold').asCurrency	:= SELF.total_sold;
		y := ' and ';
	END;

	IF SELF.total_bs<>0 THEN
	BEGIN
		cds.sql.add( y +'total_bs= :ptotal_bs');
		cds.ParamByName('ptotal_bs').asCurrency	:= SELF.total_bs;
		y := ' and ';
	END;

	IF SELF.total_usd<>0 THEN
	BEGIN
		cds.sql.add( y +'total_usd= :ptotal_usd');
		cds.ParamByName('ptotal_usd').asCurrency	:= SELF.total_usd;
		y := ' and ';
	END;

	IF SELF.total_cash<>0 THEN
	BEGIN
		cds.sql.add( y +'total_cash= :ptotal_cash');
		cds.ParamByName('ptotal_cash').asCurrency	:= SELF.total_cash;
		y := ' and ';
	END;

	IF SELF.total_vale<>0 THEN
	BEGIN
		cds.sql.add( y +'total_vale= :ptotal_vale');
		cds.ParamByName('ptotal_vale').asCurrency	:= SELF.total_vale;
		y := ' and ';
	END;

	IF SELF.total_card<>0 THEN
	BEGIN
		cds.sql.add( y +'total_card= :ptotal_card');
		cds.ParamByName('ptotal_card').asCurrency	:= SELF.total_card;
		y := ' and ';
	END;

	IF SELF.total_check<>0 THEN
	BEGIN
		cds.sql.add( y +'total_check= :ptotal_check');
		cds.ParamByName('ptotal_check').asCurrency	:= SELF.total_check;
		y := ' and ';
	END;

	IF SELF.total_proceeds<>0 THEN
	BEGIN
		cds.sql.add( y +'total_proceeds= :ptotal_proceeds');
		cds.ParamByName('ptotal_proceeds').asCurrency	:= SELF.total_proceeds;
		y := ' and ';
	END;

	IF SELF.total_calib<>0 THEN
	BEGIN
		cds.sql.add( y +'total_calib= :ptotal_calib');
		cds.ParamByName('ptotal_calib').asCurrency	:= SELF.total_calib;
		y := ' and ';
	END;

	IF SELF.difference<>0 THEN
	BEGIN
		cds.sql.add( y +'difference= :pdifference');
		cds.ParamByName('pdifference').asCurrency	:= SELF.difference;
		y := ' and ';
	END;

	IF SELF.total_invoice<>0 THEN
	BEGIN
		cds.sql.add( y +'total_invoice= :ptotal_invoice');
		cds.ParamByName('ptotal_invoice').asCurrency	:= SELF.total_invoice;
		y := ' and ';
	END;

	IF SELF.seller_id<>'' THEN
	BEGIN
		cds.sql.add( y +'seller_id= :pseller_id');
		cds.ParamByName('pseller_id').asString	:= SELF.seller_id;
		y := ' and ';
	END;

	IF SELF.estacionid<>'' THEN
	BEGIN
		cds.sql.add( y +'estacionid= :pestacionid');
		cds.ParamByName('pestacionid').asString	:= SELF.estacionid;
		y := ' and ';
	END;

	IF SELF.suc_id<>0 THEN
	BEGIN
		cds.sql.add( y +'suc_id= :psuc_id');
		cds.ParamByName('psuc_id').asInteger	:= SELF.suc_id;
		y := ' and ';
	END;

	IF SELF.company_id<>0 THEN
	BEGIN
		cds.sql.add( y +'company_id= :pcompany_id');
		cds.ParamByName('pcompany_id').asInteger	:= SELF.company_id;
		y := ' and ';
	END;

	IF SELF.data0<>'' THEN
	BEGIN
		cds.sql.add( y +'data0= :pdata0');
		cds.ParamByName('pdata0').asString	:= SELF.data0;
		y := ' and ';
	END;

	IF SELF.data1<>'' THEN
	BEGIN
		cds.sql.add( y +'data1= :pdata1');
		cds.ParamByName('pdata1').asString	:= SELF.data1;
		y := ' and ';
	END;
{
	IF SELF.created<>0 THEN
	BEGIN
		cds.sql.add( y +'created= :pcreated');
		cds.ParamByName('pcreated').asTDateTime	:= SELF.created;
		y := ' and ';
	END;

	IF SELF.ucreated_id<>0 THEN
	BEGIN
		cds.sql.add( y +'ucreated_id= :pucreated_id');
		cds.ParamByName('pucreated_id').asInteger	:= SELF.ucreated_id;
		y := ' and ';
	END;

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

	IF SELF.concurrency<>0 THEN
	BEGIN
		cds.sql.add( y +'concurrency= :pconcurrency');
		cds.ParamByName('pconcurrency').asInteger	:= SELF.concurrency;
		y := ' and ';
	END;
 }
	IF SELF.status_id<>0 THEN
	BEGIN
		cds.sql.add( y +'status_id= :pstatus_id');
		cds.ParamByName('pstatus_id').asInteger	:= SELF.status_id;
		y := ' and ';
	END;

	IF SELF.manual<>'' THEN
	BEGIN
		cds.sql.add( y +'manual= :pmanual');
		cds.ParamByName('pmanual').asString	:= SELF.manual;
		y := ' and ';
	END;


	if where <> '' then
	begin
	cds.sql.add(where);
	for i:=0 to params.count-1 do
		cds.params.AddOneParamItem(params.items[i]);
	end;
END;


PROCEDURE Tsurtidor_turno.QBE(ClientDS: TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add(sqlGetAll);
	filtrar(ClientDS,where,params);
	clientDS.prepare;
	clientDS.Open;
END;

PROCEDURE Tsurtidor_turno.QBE(columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add('select '+columns+ ' from surtidor_turno');
	ClientDS.SQL.Add('where '+where);

	if params <> NIL then
		ClientDS.Params := params;

	clientDS.prepare;
	clientDS.Open;
END;

function Tsurtidor_turno.exist(ClientDS: TAstaClientDataSet): boolean;
begin
	initDataSet(ClientDS);
	ClientDS.SQL.Add('select id from surtidor_turno where ID=:pID');
	ClientDS.ParamByName('pID').AsString := SELF.ID;
	ClientDS.Open;

	Result := not ClientDS.IsEmpty;
end;

procedure Tsurtidor_turno.fromClientDataSet(ClientDS: TAstaClientDataSet);
var  man: Tsurtidor_turnomanguera;
     cds: TAstaClientDataSet;
begin
	inherited;
	IF NOT ClientDS.Active THEN EXIT;
	SELF.id             := clientDS.FieldByName('id').AsString;
	SELF.code           := clientDS.FieldByName('code').AsString;
	SELF.daytime        := clientDS.FieldByName('daytime').AsDateTime;
	SELF.shedule_id     := clientDS.FieldByName('shedule_id').AsInteger;
	SELF.timeini        := clientDS.FieldByName('timeini').AsDateTime;
	SELF.timeend        := clientDS.FieldByName('timeend').AsDateTime;
	SELF.tc             := clientDS.FieldByName('tc').AsCurrency;
	SELF.total_sold     := clientDS.FieldByName('total_sold').AsCurrency;
	SELF.total_bs       := clientDS.FieldByName('total_bs').AsCurrency;
	SELF.total_usd      := clientDS.FieldByName('total_usd').AsCurrency;
	SELF.total_cash     := clientDS.FieldByName('total_cash').AsCurrency;
	SELF.total_vale     := clientDS.FieldByName('total_vale').AsCurrency;
	SELF.total_card     := clientDS.FieldByName('total_card').AsCurrency;
	SELF.total_check    := clientDS.FieldByName('total_check').AsCurrency;
	SELF.total_proceeds := clientDS.FieldByName('total_proceeds').AsCurrency;
	SELF.total_calib    := clientDS.FieldByName('total_calib').AsCurrency;
	SELF.difference     := clientDS.FieldByName('difference').AsCurrency;
	SELF.total_invoice  := clientDS.FieldByName('total_invoice').AsCurrency;
	SELF.seller_id      := clientDS.FieldByName('seller_id').AsString;
	SELF.estacionid     := clientDS.FieldByName('estacionid').AsString;
	SELF.suc_id         := clientDS.FieldByName('suc_id').AsInteger;
	SELF.company_id     := clientDS.FieldByName('company_id').AsInteger;
	SELF.data0          := clientDS.FieldByName('data0').AsString;
	SELF.data1          := clientDS.FieldByName('data1').AsString;
	SELF.created        := clientDS.FieldByName('created').AsDateTime;
	SELF.ucreated_id    := clientDS.FieldByName('ucreated_id').AsInteger;
	SELF.updated        := clientDS.FieldByName('updated').AsDateTime;
	SELF.uupdated_id    := clientDS.FieldByName('uupdated_id').AsInteger;
	SELF.concurrency    := clientDS.FieldByName('concurrency').AsInteger;
	SELF.status_id      := clientDS.FieldByName('status_id').AsInteger;
	SELF.manual         := clientDS.FieldByName('manual').AsString;

  utils.LiberarLista(mangueras);
  man := Tsurtidor_turnomanguera.Create;
  cds := TAstaClientDataSet.Create(Application);
  cds.AstaClientSocket := ClientDS.AstaClientSocket;
  try
  mangueras := man.toList(cds,self.id);
  finally
      FreeAndNil(man);
      FreeAndNil(cds);
  end;
end;

procedure Tsurtidor_turno.fromGUI(form: TForm);
begin
	with form do
	begin
{//		SELF.id            := utils.formObtenerPropiedad(FindComponent('cid'),'Text');
		SELF.code          := utils.formObtenerPropiedad(FindComponent('ccode'),'Text');
		SELF.daytime       := StrToDateTime(utils.formObtenerPropiedad(FindComponent('cdaytime'),'Text'));
//		SELF.shedule_id    := utils.formObtenerPropiedad(FindComponent('cshedule_id'),'Text');
//		SELF.timeini       := utils.formObtenerPropiedad(FindComponent('ctimeini'),'Text');
//		SELF.timeend       := utils.formObtenerPropiedad(FindComponent('ctimeend'),'Text');
		SELF.tc            := StrToCurr(utils.formObtenerPropiedad(FindComponent('ctc'),'Text'));
		SELF.total_sold    := StrToCurr(utils.formObtenerPropiedad(FindComponent('ctotal_sold'),'Text'));
		SELF.total_bs      := StrToCurr(utils.formObtenerPropiedad(FindComponent('ctotal_bs'),'Text'));
		SELF.total_usd     := StrToCurr(utils.formObtenerPropiedad(FindComponent('ctotal_usd'),'Text'));
		SELF.total_cash    := StrToCurr(utils.formObtenerPropiedad(FindComponent('ctotal_cash'),'Text'));
		SELF.total_vale    := StrToCurr(utils.formObtenerPropiedad(FindComponent('ctotal_vale'),'Text'));
		SELF.total_card    := StrToCurr(utils.formObtenerPropiedad(FindComponent('ctotal_card'),'Text'));
		SELF.total_check   := StrToCurr(utils.formObtenerPropiedad(FindComponent('ctotal_check'),'Text'));
		SELF.total_proceeds:= StrToCurr(utils.formObtenerPropiedad(FindComponent('ctotal_proceeds'),'Text'));
		SELF.total_calib   := StrToCurr(utils.formObtenerPropiedad(FindComponent('ctotal_calib'),'Text'));
		SELF.difference    := StrToCurr(utils.formObtenerPropiedad(FindComponent('cdifference'),'Text'));
		SELF.total_invoice := StrToCurr(utils.formObtenerPropiedad(FindComponent('ctotal_invoice'),'Text'));
//		SELF.seller_id     := utils.formObtenerPropiedad(FindComponent('cseller_id'),'Text');
//		SELF.estacionid    := utils.formObtenerPropiedad(FindComponent('cestacionid'),'Text');
//		SELF.suc_id        := utils.formObtenerPropiedad(FindComponent('csuc_id'),'Text');
//		SELF.company_id    := utils.formObtenerPropiedad(FindComponent('ccompany_id'),'Text');
		SELF.data0         := utils.formObtenerPropiedad(FindComponent('cdata0'),'Text');
		SELF.data1         := utils.formObtenerPropiedad(FindComponent('cdata1'),'Text');
		SELF.created       := utils.formObtenerPropiedad(FindComponent('ccreated'),'Text');
		SELF.ucreated_id   := utils.formObtenerPropiedad(FindComponent('cucreated_id'),'Text');
		SELF.updated       := utils.formObtenerPropiedad(FindComponent('cupdated'),'Text');
		SELF.uupdated_id   := utils.formObtenerPropiedad(FindComponent('cuupdated_id'),'Text');
		SELF.concurrency   := utils.formObtenerPropiedad(FindComponent('cconcurrency'),'Text');
		SELF.status_id     := utils.formObtenerPropiedad(FindComponent('cstatus_id'),'Text');
		SELF.manual        := utils.formObtenerPropiedad(FindComponent('cmanual'),'Text');
}
	end;
end;

procedure Tsurtidor_turno.toGUI(form: TForm);
begin
	inherited;
	with form do
	begin
{//	utils.formAsignaPropiedad(FindComponent('cid'),'Text', (SELF.id));
	utils.formAsignaPropiedad(FindComponent('ccode'),'Text', (SELF.code));
	utils.formAsignaPropiedad(FindComponent('cdaytime'),'Text', DateTimeToStr(SELF.daytime));
//	utils.formAsignaPropiedad(FindComponent('cshedule_id'),'Text', IntTOStr(SELF.shedule_id));
//	utils.formAsignaPropiedad(FindComponent('ctimeini'),'Text', IntTOStr(SELF.timeini));
//	utils.formAsignaPropiedad(FindComponent('ctimeend'),'Text', IntTOStr(SELF.timeend));
	utils.formAsignaPropiedad(FindComponent('ctc'),'Text', CurrTOStr(SELF.tc));
	utils.formAsignaPropiedad(FindComponent('ctotal_sold'),'Text', CurrTOStr(SELF.total_sold));
	utils.formAsignaPropiedad(FindComponent('ctotal_bs'),'Text', CurrTOStr(SELF.total_bs));
	utils.formAsignaPropiedad(FindComponent('ctotal_usd'),'Text', CurrTOStr(SELF.total_usd));
	utils.formAsignaPropiedad(FindComponent('ctotal_cash'),'Text', CurrTOStr(SELF.total_cash));
	utils.formAsignaPropiedad(FindComponent('ctotal_vale'),'Text', CurrTOStr(SELF.total_vale));
	utils.formAsignaPropiedad(FindComponent('ctotal_card'),'Text', CurrTOStr(SELF.total_card));
	utils.formAsignaPropiedad(FindComponent('ctotal_check'),'Text', CurrTOStr(SELF.total_check));
	utils.formAsignaPropiedad(FindComponent('ctotal_proceeds'),'Text', CurrTOStr(SELF.total_proceeds));
	utils.formAsignaPropiedad(FindComponent('ctotal_calib'),'Text', CurrTOStr(SELF.total_calib));
	utils.formAsignaPropiedad(FindComponent('cdifference'),'Text', CurrTOStr(SELF.difference));
	utils.formAsignaPropiedad(FindComponent('ctotal_invoice'),'Text', CurrTOStr(SELF.total_invoice));
//	utils.formAsignaPropiedad(FindComponent('cseller_id'),'Text', (SELF.seller_id));
//	utils.formAsignaPropiedad(FindComponent('cestacionid'),'Text', (SELF.estacionid));
//	utils.formAsignaPropiedad(FindComponent('csuc_id'),'Text', IntTOStr(SELF.suc_id));
	utils.formAsignaPropiedad(FindComponent('ccompany_id'),'Text', IntTOStr(SELF.company_id));
	utils.formAsignaPropiedad(FindComponent('cdata0'),'Text', (SELF.data0));
	utils.formAsignaPropiedad(FindComponent('cdata1'),'Text', (SELF.data1));
	utils.formAsignaPropiedad(FindComponent('ccreated'),'Text', IntTOStr(SELF.created));
	utils.formAsignaPropiedad(FindComponent('cucreated_id'),'Text', IntTOStr(SELF.ucreated_id));
	utils.formAsignaPropiedad(FindComponent('cupdated'),'Text', IntTOStr(SELF.updated));
	utils.formAsignaPropiedad(FindComponent('cuupdated_id'),'Text', IntTOStr(SELF.uupdated_id));
	utils.formAsignaPropiedad(FindComponent('cconcurrency'),'Text', IntTOStr(SELF.concurrency));
	utils.formAsignaPropiedad(FindComponent('cstatus_id'),'Text', IntTOStr(SELF.status_id));
	utils.formAsignaPropiedad(FindComponent('cmanual'),'Text', (SELF.manual));
}
	end;
end;

function Tsurtidor_turno.save(ClientDS: TAstaClientDataSet;transacction: byte): byte;
var  P : Psurtidor_turnomanguera;
     i : byte;
begin
	RESULT := cFalse;
	date := self.getFechaHoraServer(ClientDS);
	initDataSet(ClientDS);

//	if autocommit then
//		ClientDS.AstaClientSocket.StartTransaction;

   TRY

	case transacction of

	1 : begin         //update
		ClientDS.SQL.Add('UPDATE surtidor_turno SET '+
				' code = :pcode'+
				',daytime = :pdaytime'+
				',shedule_id = :pshedule_id'+
				',timeini = :ptimeini'+
				',timeend = :ptimeend'+
				',tc = :ptc'+
				',total_sold = :ptotal_sold'+
				',total_bs = :ptotal_bs'+
				',total_usd = :ptotal_usd'+
				',total_cash = :ptotal_cash'+
				',total_vale = :ptotal_vale'+
				',total_card = :ptotal_card'+
				',total_check = :ptotal_check'+
				',total_proceeds = :ptotal_proceeds'+
				',total_calib = :ptotal_calib'+
				',difference = :pdifference'+
				',total_invoice = :ptotal_invoice'+
				',seller_id = :pseller_id'+
				',estacionid = :pestacionid'+
				',suc_id = :psuc_id'+
				',company_id = :pcompany_id'+
				',data0 = :pdata0'+
				',data1 = :pdata1'+
				',updated = :pupdated'+
				',uupdated_id = :puupdated_id'+
				',concurrency = :pconcurrency'+
				',status_id = :pstatus_id'+
				',manual = :pmanual'+
				' WHERE id = :pid'
		);
		ClientDS.ParamByName('pid').asString                    := SELF.id;
		ClientDS.ParamByName('pcode').asString                  := SELF.code;
		ClientDS.ParamByName('pdaytime').asDatetime             := SELF.daytime;
		ClientDS.ParamByName('pshedule_id').asInteger           := SELF.shedule_id;
		ClientDS.ParamByName('ptimeini').asDatetime             := SELF.timeini;
		ClientDS.ParamByName('ptimeend').asDatetime             := SELF.timeend;
		ClientDS.ParamByName('ptc').asCurrency                  := SELF.tc;
		ClientDS.ParamByName('ptotal_sold').asCurrency          := SELF.total_sold;
		ClientDS.ParamByName('ptotal_bs').asCurrency            := SELF.total_bs;
		ClientDS.ParamByName('ptotal_usd').asCurrency           := SELF.total_usd;
		ClientDS.ParamByName('ptotal_cash').asCurrency          := SELF.total_cash;
		ClientDS.ParamByName('ptotal_vale').asCurrency          := SELF.total_vale;
		ClientDS.ParamByName('ptotal_card').asCurrency          := SELF.total_card;
		ClientDS.ParamByName('ptotal_check').asCurrency         := SELF.total_check;
		ClientDS.ParamByName('ptotal_proceeds').asCurrency      := SELF.total_proceeds;
		ClientDS.ParamByName('ptotal_calib').asCurrency         := SELF.total_calib;
		ClientDS.ParamByName('pdifference').asCurrency          := SELF.difference;
		ClientDS.ParamByName('ptotal_invoice').asCurrency       := SELF.total_invoice;
		ClientDS.ParamByName('pseller_id').asString             := SELF.seller_id;
		ClientDS.ParamByName('pestacionid').asString            := SELF.estacionid;
		ClientDS.ParamByName('psuc_id').asInteger               := SELF.suc_id;
		ClientDS.ParamByName('pcompany_id').asInteger           := SELF.company_id;
		ClientDS.ParamByName('pdata0').asString                 := SELF.data0;
		ClientDS.ParamByName('pdata1').asString                 := SELF.data1;
		ClientDS.ParamByName('pupdated').asDatetime             := SELF.updated;
		ClientDS.ParamByName('puupdated_id').asInteger          := SELF.uupdated_id;
		ClientDS.ParamByName('pconcurrency').asInteger          := SELF.concurrency+1;

    //buscando el estado del turno
    if mangueras.Count <= 0 then   //si no puso ninguna manguera
       self.status_id         := eabierto
    else if self.total_invoice < self.total_sold then  //si lo facturado < que lo vendido
       self.status_id         := ePorFacturar
    else if self.total_invoice> self.total_sold then
         self.status_id       := eSobreFacturado
    else if self.total_invoice = self.total_sold then
         self.status_id        := eCerrado
    else if conSyncro then
    begin
         if sincronizando(ClientDS) then
            self.status_id         := eSyncronizando
         else
             self.status_id        := eTermimado;
    end;

		ClientDS.ParamByName('pstatus_id').asInteger            := SELF.status_id;
		ClientDS.ParamByName('pmanual').asString                := SELF.manual;

    {
    if mangueras.Count > 0 then
    begin
         ClientDS.ExecSQL;
         for i:=0 to mangueras.Count-1 do
         begin
              P := mangueras.Items[i];
              P.turno_id := self.id;
              if not P.exist(ClientDS) then
                 P.save(ClientDS,tAdd);

              if i <> mangueras.Count-1 then
                 ClientDS.ExecSQL;
         end;
    end;
    }

	end;

	0: begin	//insert
		SELF.nextID(clientDS);

		initDataSet(ClientDS);
		ClientDS.SQL.Add('INSERT INTO surtidor_turno (id,code,daytime,shedule_id,timeini,timeend,tc,total_sold,total_bs');
    ClientDS.SQL.Add(',total_usd,total_cash,total_vale,total_card,total_check,total_proceeds,total_calib,difference');
    ClientDS.SQL.Add(',total_invoice,seller_id,estacionid,suc_id,company_id,data0,data1,created,ucreated_id,updated,uupdated_id,concurrency,status_id,manual)');
		ClientDS.SQL.Add(' VALUES ');
		ClientDS.SQL.Add('(:pid,:pcode,:pdaytime,:pshedule_id,:ptimeini,:ptimeend,:ptc,:ptotal_sold,:ptotal_bs');
    ClientDS.SQL.Add(',:ptotal_usd,:ptotal_cash,:ptotal_vale,:ptotal_card,:ptotal_check,:ptotal_proceeds,:ptotal_calib,:pdifference');
    ClientDS.SQL.Add(',:ptotal_invoice,:pseller_id,:pestacionid,:psuc_id,:pcompany_id,:pdata0,:pdata1,:pcreated,:pucreated_id,:pupdated,:puupdated_id,:pconcurrency,:pstatus_id,:pmanual)');

		ClientDS.ParamByName('pid').asString                    := SELF.id;
		ClientDS.ParamByName('pcode').asString                  := SELF.code;
		ClientDS.ParamByName('pdaytime').asDatetime             := SELF.daytime;
		ClientDS.ParamByName('pshedule_id').asInteger           := SELF.shedule_id;
		ClientDS.ParamByName('ptimeini').asDatetime             := SELF.timeini;
		ClientDS.ParamByName('ptimeend').asDatetime             := SELF.timeend;
		ClientDS.ParamByName('ptc').asCurrency                  := SELF.tc;
		ClientDS.ParamByName('ptotal_sold').asCurrency          := SELF.total_sold;
		ClientDS.ParamByName('ptotal_bs').asCurrency            := SELF.total_bs;
		ClientDS.ParamByName('ptotal_usd').asCurrency           := SELF.total_usd;
		ClientDS.ParamByName('ptotal_cash').asCurrency          := SELF.total_cash;
		ClientDS.ParamByName('ptotal_vale').asCurrency          := SELF.total_vale;
		ClientDS.ParamByName('ptotal_card').asCurrency          := SELF.total_card;
		ClientDS.ParamByName('ptotal_check').asCurrency         := SELF.total_check;
		ClientDS.ParamByName('ptotal_proceeds').asCurrency      := SELF.total_proceeds;
		ClientDS.ParamByName('ptotal_calib').asCurrency         := SELF.total_calib;
		ClientDS.ParamByName('pdifference').asCurrency          := SELF.difference;
		ClientDS.ParamByName('ptotal_invoice').asCurrency       := SELF.total_invoice;
		ClientDS.ParamByName('pseller_id').asString             := SELF.seller_id;
		ClientDS.ParamByName('pestacionid').asString            := SELF.estacionid;
		ClientDS.ParamByName('psuc_id').asInteger               := SELF.suc_id;
		ClientDS.ParamByName('pcompany_id').asInteger           := SELF.company_id;
		ClientDS.ParamByName('pdata0').asString                 := SELF.data0;
		ClientDS.ParamByName('pdata1').asString                 := SELF.data1;
		ClientDS.ParamByName('pcreated').asDatetime             := date;
		ClientDS.ParamByName('pucreated_id').asInteger          := SELF.ucreated_id;
		ClientDS.ParamByName('pupdated').asDatetime             := date;
		ClientDS.ParamByName('puupdated_id').asInteger          := SELF.uupdated_id;
		ClientDS.ParamByName('pconcurrency').asInteger          := SELF.concurrency;

    //buscando el estado del turno
    if mangueras.Count <= 0 then   //si no puso ninguna manguera
       self.status_id         := eabierto
    else if self.total_invoice < self.total_sold then  //si lo facturado < que lo vendido
       self.status_id         := ePorFacturar
    else if self.total_invoice> self.total_sold then
         self.status_id       := eSobreFacturado
    else if self.total_invoice = self.total_sold then
         self.status_id        := eCerrado;

		ClientDS.ParamByName('pstatus_id').asInteger            := SELF.status_id;
		ClientDS.ParamByName('pmanual').asString                := SELF.manual;

    if mangueras.Count > 0 then
    begin
         ClientDS.ExecSQL;
         for i:=0 to mangueras.Count-1 do
         begin
              P := mangueras.Items[i];
              P.turno_id := self.id;
              P.item     := i+1;
              P.save(ClientDS,tAdd);

              if i <> mangueras.Count-1 then
                 ClientDS.ExecSQL;
         end;
    end;
	end;

	2: begin //delete
		ClientDS.SQL.Add('delete from surtidor_turno where id =:pid');
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

procedure Tsurtidor_turno.nextID(ClientDS: TAstaClientDataSet);
var  y,m,d,h,n,s,l : Word;
     sy,sm,sd,sh,sn,ss : String;
begin
     DecodeDateTime(date,y,m,d,h,n,s,l); // 01/02/2012 20.03.36 = 1120201200326

     sy := copy(IntToStr(y),3,2);
     sm := IntToStr(m);      utils.CompletarConCeros(sm,2,DirIzquierda);
     sd := IntToStr(d);      utils.CompletarConCeros(sd,2,DirIzquierda);
     sh := IntToStr(h);      utils.CompletarConCeros(sh,2,DirIzquierda);
     sn := IntToStr(n);      utils.CompletarConCeros(sn,2,DirIzquierda);
     ss := IntToStr(s);      utils.CompletarConCeros(ss,2,DirIzquierda);

		 self.ID  := IntToStr(self.suc_id)+sy+sm+sd+sh+sn+ss;
end;


PROCEDURE Tsurtidor_turno.setid(pid:String);
BEGIN
	aid:= pid;
END;

PROCEDURE Tsurtidor_turno.setcode(pcode:String);
BEGIN
	acode:= pcode;
END;

PROCEDURE Tsurtidor_turno.setdaytime(pdaytime:TDateTime);
BEGIN
	adaytime:= pdaytime;
END;

PROCEDURE Tsurtidor_turno.setshedule_id(pshedule_id:Integer);
BEGIN
	ashedule_id:= pshedule_id;
END;

PROCEDURE Tsurtidor_turno.settimeini(ptimeini:TDateTime);
BEGIN
	atimeini:= ptimeini;
END;

PROCEDURE Tsurtidor_turno.settimeend(ptimeend:TDateTime);
BEGIN
	atimeend:= ptimeend;
END;

PROCEDURE Tsurtidor_turno.settc(ptc:Currency);
BEGIN
	atc:= ptc;
END;

PROCEDURE Tsurtidor_turno.settotal_sold(ptotal_sold:Currency);
BEGIN
	atotal_sold:= ptotal_sold;
END;

PROCEDURE Tsurtidor_turno.settotal_bs(ptotal_bs:Currency);
BEGIN
	atotal_bs:= ptotal_bs;
END;

PROCEDURE Tsurtidor_turno.settotal_usd(ptotal_usd:Currency);
BEGIN
	atotal_usd:= ptotal_usd;
END;

PROCEDURE Tsurtidor_turno.settotal_cash(ptotal_cash:Currency);
BEGIN
	atotal_cash:= ptotal_cash;
END;

PROCEDURE Tsurtidor_turno.settotal_vale(ptotal_vale:Currency);
BEGIN
	atotal_vale:= ptotal_vale;
END;

PROCEDURE Tsurtidor_turno.settotal_card(ptotal_card:Currency);
BEGIN
	atotal_card:= ptotal_card;
END;

PROCEDURE Tsurtidor_turno.settotal_check(ptotal_check:Currency);
BEGIN
	atotal_check:= ptotal_check;
END;

PROCEDURE Tsurtidor_turno.settotal_proceeds(ptotal_proceeds:Currency);
BEGIN
	atotal_proceeds:= ptotal_proceeds;
END;

PROCEDURE Tsurtidor_turno.settotal_calib(ptotal_calib:Currency);
BEGIN
	atotal_calib:= ptotal_calib;
END;

PROCEDURE Tsurtidor_turno.setdifference(pdifference:Currency);
BEGIN
	adifference:= pdifference;
END;

PROCEDURE Tsurtidor_turno.settotal_invoice(ptotal_invoice:Currency);
BEGIN
	atotal_invoice:= ptotal_invoice;
END;

PROCEDURE Tsurtidor_turno.setseller_id(pseller_id:String);
BEGIN
	aseller_id:= pseller_id;
END;

PROCEDURE Tsurtidor_turno.setestacionid(pestacionid:String);
BEGIN
	aestacionid:= pestacionid;
END;

PROCEDURE Tsurtidor_turno.setsuc_id(psuc_id:Integer);
BEGIN
	asuc_id:= psuc_id;
END;

PROCEDURE Tsurtidor_turno.setcompany_id(pcompany_id:Integer);
BEGIN
	acompany_id:= pcompany_id;
END;

PROCEDURE Tsurtidor_turno.setdata0(pdata0:String);
BEGIN
	adata0:= pdata0;
END;

PROCEDURE Tsurtidor_turno.setdata1(pdata1:String);
BEGIN
	adata1:= pdata1;
END;

PROCEDURE Tsurtidor_turno.setcreated(pcreated:TDateTime);
BEGIN
	acreated:= pcreated;
END;

PROCEDURE Tsurtidor_turno.setucreated_id(pucreated_id:Integer);
BEGIN
	aucreated_id:= pucreated_id;
END;

PROCEDURE Tsurtidor_turno.setupdated(pupdated:TDateTime);
BEGIN
	aupdated:= pupdated;
END;

PROCEDURE Tsurtidor_turno.setuupdated_id(puupdated_id:Integer);
BEGIN
	auupdated_id:= puupdated_id;
END;

PROCEDURE Tsurtidor_turno.setconcurrency(pconcurrency:Integer);
BEGIN
	aconcurrency:= pconcurrency;
END;

PROCEDURE Tsurtidor_turno.setstatus_id(pstatus_id:Integer);
BEGIN
	astatus_id:= pstatus_id;
END;

PROCEDURE Tsurtidor_turno.setmanual(pmanual:String);
BEGIN
	amanual:= pmanual;
END;


FUNCTION Tsurtidor_turno.getid	:String;
BEGIN
	RESULT := aid;
END;

FUNCTION Tsurtidor_turno.getcode	:String;
BEGIN
	RESULT := acode;
END;

FUNCTION Tsurtidor_turno.getdaytime	:TDateTime;
BEGIN
	RESULT := adaytime;
END;

FUNCTION Tsurtidor_turno.getshedule_id	:Integer;
BEGIN
	RESULT := ashedule_id;
END;

FUNCTION Tsurtidor_turno.gettimeini	:TDateTime;
BEGIN
	RESULT := atimeini;
END;

FUNCTION Tsurtidor_turno.gettimeend	:TDateTime;
BEGIN
	RESULT := atimeend;
END;

FUNCTION Tsurtidor_turno.gettc	:Currency;
BEGIN
	RESULT := atc;
END;

FUNCTION Tsurtidor_turno.gettotal_sold	:Currency;
BEGIN
	RESULT := atotal_sold;
END;

FUNCTION Tsurtidor_turno.gettotal_bs	:Currency;
BEGIN
	RESULT := atotal_bs;
END;

FUNCTION Tsurtidor_turno.gettotal_usd	:Currency;
BEGIN
	RESULT := atotal_usd;
END;

FUNCTION Tsurtidor_turno.gettotal_cash	:Currency;
BEGIN
	RESULT := atotal_cash;
END;

FUNCTION Tsurtidor_turno.gettotal_vale	:Currency;
BEGIN
	RESULT := atotal_vale;
END;

FUNCTION Tsurtidor_turno.gettotal_card	:Currency;
BEGIN
	RESULT := atotal_card;
END;

FUNCTION Tsurtidor_turno.gettotal_check	:Currency;
BEGIN
	RESULT := atotal_check;
END;

FUNCTION Tsurtidor_turno.gettotal_proceeds	:Currency;
BEGIN
	RESULT := atotal_proceeds;
END;

FUNCTION Tsurtidor_turno.gettotal_calib	:Currency;
BEGIN
	RESULT := atotal_calib;
END;

FUNCTION Tsurtidor_turno.getdifference	:Currency;
BEGIN
	RESULT := adifference;
END;

FUNCTION Tsurtidor_turno.gettotal_invoice	:Currency;
BEGIN
	RESULT := atotal_invoice;
END;

FUNCTION Tsurtidor_turno.getseller_id	:String;
BEGIN
	RESULT := aseller_id;
END;

FUNCTION Tsurtidor_turno.getestacionid	:String;
BEGIN
	RESULT := aestacionid;
END;

FUNCTION Tsurtidor_turno.getsuc_id	:Integer;
BEGIN
	RESULT := asuc_id;
END;

FUNCTION Tsurtidor_turno.getcompany_id	:Integer;
BEGIN
	RESULT := acompany_id;
END;

FUNCTION Tsurtidor_turno.getdata0	:String;
BEGIN
	RESULT := adata0;
END;

FUNCTION Tsurtidor_turno.getdata1	:String;
BEGIN
	RESULT := adata1;
END;

FUNCTION Tsurtidor_turno.getcreated	:TDateTime;
BEGIN
	RESULT := acreated;
END;

FUNCTION Tsurtidor_turno.getucreated_id	:Integer;
BEGIN
	RESULT := aucreated_id;
END;

FUNCTION Tsurtidor_turno.getupdated	:TDateTime;
BEGIN
	RESULT := aupdated;
END;

FUNCTION Tsurtidor_turno.getuupdated_id	:Integer;
BEGIN
	RESULT := auupdated_id;
END;

FUNCTION Tsurtidor_turno.getconcurrency	:Integer;
BEGIN
	RESULT := aconcurrency;
END;

FUNCTION Tsurtidor_turno.getstatus_id	:Integer;
BEGIN
	RESULT := astatus_id;
END;

FUNCTION Tsurtidor_turno.getmanual	:String;
BEGIN
	RESULT := amanual;
END;



function Tsurtidor_turno.sincronizando(
  ClientDS: TAstaClientDataSet): boolean;
begin
     initDataSet(ClientDS);
     ClientDS.SQL.Add('select count(*) as cuenta from surtidor_factura ');
     ClientDS.SQL.Add('where turno_id= :turno_id and syncro <> :uno)');
     ClientDS.ParamByName('turno_id').AsString := self.id;
     ClientDS.ParamByName('uno').AsString      := '1';
     ClientDS.Prepare;
     ClientDS.Open;

     result := ClientDS.FieldByName('cuenta').AsInteger <> 0;
end;

function Tsurtidor_turno.terminado(ClientDS: TAstaClientDataSet): boolean;
begin

end;

END.

