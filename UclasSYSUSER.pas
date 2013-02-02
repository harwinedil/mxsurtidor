UNIT UclasSYSUSER;

{
GENERADO AUTOMATICAMENTE POR "Generador v.2012"
AUTOR              : HARWIN EDIL PEREZ SALINAS   [harwinedil@gmail.com]
DESCRIPCION        : Clase para interactuar con la Tabla : SYSUSER
FECHA CREACION     : 15/11/2012 Hora: 19:58:27
ULTIMA MODIFICACION: 15/11/2012 Hora: 19:58:27
MODIFICADO POR     : HARWIN EDIL PEREZ SALINAS
OBSERVACIONES      :

}

INTERFACE

USES
	sysUtils,uLkJSON,AstaDrv2,AstaClientDataset,AstaParamList,UBaseObject,Uconstantes,
	forms, classes,UGralUtilidades,DBCtrls,SUIDBCtrls,Controls,StdCtrls;

TYPE
	PSYSUSER = ^TSYSUSER;
	TSYSUSER = CLASS(TBaseObject)
	PRIVATE
		aID        	: Integer;
		aSUB       	: Integer;
		aLOGIN     	: String[32];
		aPASS      	: Integer;
		aCOMPANYID 	: Integer;
		aCONTACTID 	: String[16];
		aDATA0     	: String[16];
		aLOG       	: String[1];
		aCREATED   	: TDateTime;
		aUCREATED  	: Integer;
		aUPDATED   	: TDateTime;
		aUUPDATED  	: Integer;
		aCONCURRENCY	: Integer;
		aSTATUS    	: String[1];
	PUBLIC
		Rols	: TStringList;
		CONSTRUCTOR     Create;		OVERLOAD;
		CONSTRUCTOR     Create(pID:Integer; pSUB:Integer; pLOGIN:String; pPASS:Integer; pCOMPANYID:Integer; pCONTACTID:String; pDATA0:String; pLOG:String; pCREATED:TDateTime; pUCREATED:Integer; pUPDATED:TDateTime; pUUPDATED:Integer; pCONCURRENCY:Integer; pSTATUS:String); OVERLOAD;
		CONSTRUCTOR     Create(const pObjeto:TSYSUSER);OVERLOAD;
		DESTRUCTOR      Destroy;	OVERRIDE;
		PROCEDURE       init;		OVERRIDE;
		PROCEDURE       setAtributos(pID:Integer; pSUB:Integer; pLOGIN:String; pPASS:Integer; pCOMPANYID:Integer; pCONTACTID:String; pDATA0:String; pLOG:String; pCREATED:TDateTime; pUCREATED:Integer; pUPDATED:TDateTime; pUUPDATED:Integer; pCONCURRENCY:Integer; pSTATUS:String);

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
		procedure 			nextID(ClientDS: TAstaClientDataSet); OVERRIDE;

		PROCEDURE   	setID(pID:Integer);
		PROCEDURE   	setSUB(pSUB:Integer);
		PROCEDURE   	setLOGIN(pLOGIN:String);
		PROCEDURE   	setPASS(pPASS:Integer);
		PROCEDURE   	setCOMPANYID(pCOMPANYID:Integer);
		PROCEDURE   	setCONTACTID(pCONTACTID:String);
		PROCEDURE   	setDATA0(pDATA0:String);
		PROCEDURE   	setLOG(pLOG:String);
		PROCEDURE   	setCREATED(pCREATED:TDateTime);
		PROCEDURE   	setUCREATED(pUCREATED:Integer);
		PROCEDURE   	setUPDATED(pUPDATED:TDateTime);
		PROCEDURE   	setUUPDATED(pUUPDATED:Integer);
		PROCEDURE   	setCONCURRENCY(pCONCURRENCY:Integer);
		PROCEDURE   	setSTATUS(pSTATUS:String);

		FUNCTION    	getID          	:Integer;
		FUNCTION    	getSUB         	:Integer;
		FUNCTION    	getLOGIN       	:String;
		FUNCTION    	getPASS        	:Integer;
		FUNCTION    	getCOMPANYID   	:Integer;
		FUNCTION    	getCONTACTID   	:String;
		FUNCTION    	getDATA0       	:String;
		FUNCTION    	getLOG         	:String;
		FUNCTION    	getCREATED     	:TDateTime;
		FUNCTION    	getUCREATED    	:Integer;
		FUNCTION    	getUPDATED     	:TDateTime;
		FUNCTION    	getUUPDATED    	:Integer;
		FUNCTION    	getCONCURRENCY 	:Integer;
		FUNCTION    	getSTATUS      	:String;

		PROPERTY    	ID           : Integer   	read getID          	write setID          ;
		PROPERTY    	SUB          : Integer   	read getSUB         	write setSUB         ;
		PROPERTY    	LOGIN        : String    	read getLOGIN       	write setLOGIN       ;
		PROPERTY    	PASS         : Integer   	read getPASS        	write setPASS        ;
		PROPERTY    	COMPANYID    : Integer   	read getCOMPANYID   	write setCOMPANYID   ;
		PROPERTY    	CONTACTID    : String    	read getCONTACTID   	write setCONTACTID   ;
		PROPERTY    	DATA0        : String    	read getDATA0       	write setDATA0       ;
		PROPERTY    	LOG          : String    	read getLOG         	write setLOG         ;
		PROPERTY    	CREATED      : TDateTime 	read getCREATED     	write setCREATED     ;
		PROPERTY    	UCREATED     : Integer   	read getUCREATED    	write setUCREATED    ;
		PROPERTY    	UPDATED      : TDateTime 	read getUPDATED     	write setUPDATED     ;
		PROPERTY    	UUPDATED     : Integer   	read getUUPDATED    	write setUUPDATED    ;
		PROPERTY    	CONCURRENCY  : Integer   	read getCONCURRENCY 	write setCONCURRENCY ;
		PROPERTY    	STATUS       : String    	read getSTATUS      	write setSTATUS      ;


	END;
var   GUser : TSYSUSER;

IMPLEMENTATION
{TSYSUSER}

CONSTRUCTOR TSYSUSER.Create;
BEGIN
	aID         := 0;
	aSUB        := 0;
	aLOGIN      := '';
	aPASS       := 0;
	aCOMPANYID  := 0;
	aCONTACTID  := '';
	aDATA0      := '';
	aLOG        := '';
	aCREATED    := 0;
	aUCREATED   := 0;
	aUPDATED    := 0;
	aUUPDATED   := 0;
	aCONCURRENCY:= 0;
	aSTATUS     := '';
	rols := TStringList.Create;

	autoCommit := true;

END;

CONSTRUCTOR TSYSUSER.Create(pID:Integer; pSUB:Integer; pLOGIN:String; pPASS:Integer; pCOMPANYID:Integer; pCONTACTID:String; pDATA0:String; pLOG:String; pCREATED:TDateTime; pUCREATED:Integer; pUPDATED:TDateTime; pUUPDATED:Integer; pCONCURRENCY:Integer; pSTATUS:String);
BEGIN
	aID         := pID         ;
	aSUB        := pSUB        ;
	aLOGIN      := pLOGIN      ;
	aPASS       := pPASS       ;
	aCOMPANYID  := pCOMPANYID  ;
	aCONTACTID  := pCONTACTID  ;
	aDATA0      := pDATA0      ;
	aLOG        := pLOG        ;
	aCREATED    := pCREATED    ;
	aUCREATED   := pUCREATED   ;
	aUPDATED    := pUPDATED    ;
	aUUPDATED   := pUUPDATED   ;
	aCONCURRENCY:= pCONCURRENCY;
	aSTATUS     := pSTATUS     ;
	autoCommit := true;
	rols := TStringList.Create;
END;

CONSTRUCTOR TSYSUSER.Create(const pObjeto:TSYSUSER);
BEGIN
	aID         := pObjeto.ID         ;
	aSUB        := pObjeto.SUB        ;
	aLOGIN      := pObjeto.LOGIN      ;
	aPASS       := pObjeto.PASS       ;
	aCOMPANYID  := pObjeto.COMPANYID  ;
	aCONTACTID  := pObjeto.CONTACTID  ;
	aDATA0      := pObjeto.DATA0      ;
	aLOG        := pObjeto.LOG        ;
	aCREATED    := pObjeto.CREATED    ;
	aUCREATED   := pObjeto.UCREATED   ;
	aUPDATED    := pObjeto.UPDATED    ;
	aUUPDATED   := pObjeto.UUPDATED   ;
	aCONCURRENCY:= pObjeto.CONCURRENCY;
	aSTATUS     := pObjeto.STATUS     ;
	autoCommit := pObjeto.autoCommit;
	rols := TStringList.Create;
END;

DESTRUCTOR TSYSUSER.Destroy;
BEGIN
  FreeAndNil(rols);
	inherited Destroy;
END;

PROCEDURE TSYSUSER.init;
BEGIN
	aID         := 0;
	aSUB        := 0;
	aLOGIN      := '';
	aPASS       := 0;
	aCOMPANYID  := 0;
	aCONTACTID  := '';
	aDATA0      := '';
	aLOG        := '';
	aCREATED    := 0;
	aUCREATED   := 0;
	aUPDATED    := 0;
	aUUPDATED   := 0;
	aCONCURRENCY:= 0;
	aSTATUS     := '1';
	rols.Clear;
END;

PROCEDURE TSYSUSER.fromJsonString(s:string);
BEGIN
	self.fromJson(TlkJSON.ParseText(s) as TlkJSONobject);
END;

PROCEDURE TSYSUSER.fromJson(o:TlkJSONobject);
BEGIN
	ID          := (o.Field['ID'] as TlkJSONnumber).Value;
	SUB         := (o.Field['SUB'] as TlkJSONnumber).Value;
	LOGIN       := (o.Field['LOGIN'] as TlkJSONstring).Value;
	PASS        := (o.Field['PASS'] as TlkJSONnumber).Value;
	COMPANYID   := (o.Field['COMPANYID'] as TlkJSONnumber).Value;
	CONTACTID   := (o.Field['CONTACTID'] as TlkJSONstring).Value;
	DATA0       := (o.Field['DATA0'] as TlkJSONstring).Value;
	LOG         := (o.Field['LOG'] as TlkJSONstring).Value;
	CREATED     := (o.Field['CREATED'] as TlkJSONnumber).Value;
	UCREATED    := (o.Field['UCREATED'] as TlkJSONnumber).Value;
	UPDATED     := (o.Field['UPDATED'] as TlkJSONnumber).Value;
	UUPDATED    := (o.Field['UUPDATED'] as TlkJSONnumber).Value;
	CONCURRENCY := (o.Field['CONCURRENCY'] as TlkJSONnumber).Value;
	STATUS      := (o.Field['STATUS'] as TlkJSONstring).Value;
END;

FUNCTION TSYSUSER.toJsonString : string;
var  json : TlkJSONobject;
BEGIN
	json := TlkJSONobject.Create();
	TRY
		json.Add('ID',TlkJSONNumber.Generate(ID));
		json.Add('SUB',TlkJSONNumber.Generate(SUB));
		json.Add('LOGIN',TlkJSONstring.Generate(LOGIN));
		json.Add('PASS',TlkJSONNumber.Generate(PASS));
		json.Add('COMPANYID',TlkJSONNumber.Generate(COMPANYID));
		json.Add('CONTACTID',TlkJSONstring.Generate(CONTACTID));
		json.Add('DATA0',TlkJSONstring.Generate(DATA0));
		json.Add('LOG',TlkJSONstring.Generate(LOG));
		json.Add('CREATED',TlkJSONNumber.Generate(CREATED));
		json.Add('UCREATED',TlkJSONNumber.Generate(UCREATED));
		json.Add('UPDATED',TlkJSONNumber.Generate(UPDATED));
		json.Add('UUPDATED',TlkJSONNumber.Generate(UUPDATED));
		json.Add('CONCURRENCY',TlkJSONNumber.Generate(CONCURRENCY));
		json.Add('STATUS',TlkJSONstring.Generate(STATUS));
	FINALLY
		RESULT := TlkJSON.GenerateText(json);
		FreeAndNIL(json);
	END;
END;


PROCEDURE TSYSUSER.setAtributos(pID:Integer; pSUB:Integer; pLOGIN:String; pPASS:Integer; pCOMPANYID:Integer; pCONTACTID:String; pDATA0:String; pLOG:String; pCREATED:TDateTime; pUCREATED:Integer; pUPDATED:TDateTime; pUUPDATED:Integer; pCONCURRENCY:Integer; pSTATUS:String);
BEGIN
	aID         := pID         ;
	aSUB        := pSUB        ;
	aLOGIN      := pLOGIN      ;
	aPASS       := pPASS       ;
	aCOMPANYID  := pCOMPANYID  ;
	aCONTACTID  := pCONTACTID  ;
	aDATA0      := pDATA0      ;
	aLOG        := pLOG        ;
	aCREATED    := pCREATED    ;
	aUCREATED   := pUCREATED   ;
	aUPDATED    := pUPDATED    ;
	aUUPDATED   := pUUPDATED   ;
	aCONCURRENCY:= pCONCURRENCY;
	aSTATUS     := pSTATUS     ;
END;

FUNCTION TSYSUSER.sqlGetField(field:string) : string;
BEGIN
	RESULT := 'select '+field+' from SECURITY_MXUSER order by '+field;
END;

FUNCTION TSYSUSER.sqlGetKeyValue(key,value : string) : string;
BEGIN
	RESULT := 'select '+key+' as key,'+value+'as value from SECURITY_MXUSER order by '+value;
END;

FUNCTION  TSYSUSER.sqlGetAll : string;
BEGIN
	RESULT := 'select * from SECURITY_MXUSER';
END;

PROCEDURE TSYSUSER.filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
var  	y : string;
	i : word;
BEGIN
	y := ' where ';
	IF SELF.ID<>0 THEN
	BEGIN
		cds.sql.add( y +'ID= :pID');
		cds.ParamByName('pID').asInteger	:= SELF.ID;
		y := ' and ';
	END;

	IF SELF.SUB<>0 THEN
	BEGIN
		cds.sql.add( y +'SUB= :pSUB');
		cds.ParamByName('pSUB').asInteger	:= SELF.SUB;
		y := ' and ';
	END;

	IF SELF.LOGIN<>'' THEN
	BEGIN
		cds.sql.add( y +'LOGIN like :pLOGIN');
		cds.ParamByName('pLOGIN').asString	:= '%'+SELF.LOGIN+'%';
		y := ' and ';
	END;
{
	IF SELF.PASS<>0 THEN
	BEGIN
		cds.sql.add( y +'PASS= :pPASS');
		cds.ParamByName('pPASS').asInteger	:= SELF.PASS;
		y := ' and ';
	END;
}
	IF SELF.COMPANYID<>0 THEN
	BEGIN
		cds.sql.add( y +'COMPANY_ID= :pCOMPANYID');
		cds.ParamByName('pCOMPANYID').asInteger	:= SELF.COMPANYID;
		y := ' and ';
	END;

	IF SELF.CONTACTID<>'' THEN
	BEGIN
		cds.sql.add( y +'CONTACT_ID= :pCONTACTID');
		cds.ParamByName('pCONTACTID').asString	:= SELF.CONTACTID;
		y := ' and ';
	END;

	IF SELF.DATA0<>'' THEN
	BEGIN
		cds.sql.add( y +'DATA0= :pDATA0');
		cds.ParamByName('pDATA0').asString	:= SELF.DATA0;
		y := ' and ';
	END;

//	IF SELF.LOG<>'' THEN
//	BEGIN
//		cds.sql.add( y +'LOG= :pLOG');
//		cds.ParamByName('pLOG').asString	:= SELF.LOG;
//		y := ' and ';
//	END;
{
	IF SELF.CREATED<>0 THEN
	BEGIN
		cds.sql.add( y +'CREATED= :pCREATED');
		cds.ParamByName('pCREATED').asTDateTime	:= SELF.CREATED;
		y := ' and ';
	END;

	IF SELF.UCREATED<>0 THEN
	BEGIN
		cds.sql.add( y +'UCREATED= :pUCREATED');
		cds.ParamByName('pUCREATED').asInteger	:= SELF.UCREATED;
		y := ' and ';
	END;

	IF SELF.UPDATED<>0 THEN
	BEGIN
		cds.sql.add( y +'UPDATED= :pUPDATED');
		cds.ParamByName('pUPDATED').asTDateTime	:= SELF.UPDATED;
		y := ' and ';
	END;

	IF SELF.UUPDATED<>0 THEN
	BEGIN
		cds.sql.add( y +'UUPDATED= :pUUPDATED');
		cds.ParamByName('pUUPDATED').asInteger	:= SELF.UUPDATED;
		y := ' and ';
	END;

	IF SELF.CONCURRENCY<>0 THEN
	BEGIN
		cds.sql.add( y +'CONCURRENCY= :pCONCURRENCY');
		cds.ParamByName('pCONCURRENCY').asInteger	:= SELF.CONCURRENCY;
		y := ' and ';
	END;
 }
//	IF SELF.STATUS<>'' THEN
//	BEGIN
//		cds.sql.add( y +'STATUS= :pSTATUS');
//		cds.ParamByName('pSTATUS').asString	:= SELF.STATUS;
//		y := ' and ';
//	END;


	if where <> '' then
	begin
	cds.sql.add(where);
	for i:=0 to params.count-1 do
		cds.params.AddOneParamItem(params.items[i]);
	end;
END;


PROCEDURE TSYSUSER.QBE(ClientDS: TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add(sqlGetAll);
	filtrar(ClientDS,where,params);
	clientDS.prepare;
	clientDS.Open;
END;

PROCEDURE TSYSUSER.QBE(columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add('select '+columns+ ' from SECURITY_MXUSER');
	ClientDS.SQL.Add('where '+where);

	if params <> NIL then
		ClientDS.Params := params;

	clientDS.prepare;
	clientDS.Open;
END;

function TSYSUSER.exist(ClientDS: TAstaClientDataSet): boolean;
begin
	initDataSet(ClientDS);
	ClientDS.SQL.Add('select id from SECURITY_MXUSER where Login=:plogin and company_ID=:pCompanyID');
	ClientDS.ParamByName('plogin').AsString := SELF.LOGIN;
	ClientDS.ParamByName('pcompanyID').AsInteger := SELF.COMPANYID;

	ClientDS.Open;

	Result := not ClientDS.IsEmpty;
end;

procedure TSYSUSER.fromClientDataSet(ClientDS: TAstaClientDataSet);
begin
	inherited;
	IF NOT ClientDS.Active THEN EXIT;
	SELF.ID          := clientDS.FieldByName('ID').AsInteger;
	SELF.SUB         := clientDS.FieldByName('SUB').AsInteger;
	SELF.LOGIN       := clientDS.FieldByName('LOGIN').AsString;
	SELF.PASS        := clientDS.FieldByName('PASSW').AsInteger;
	SELF.COMPANYID   := clientDS.FieldByName('COMPANY_ID').AsInteger;
	SELF.CONTACTID   := clientDS.FieldByName('CONTACT_ID').AsString;
	SELF.DATA0       := clientDS.FieldByName('DATA0').AsString;
	SELF.LOG         := clientDS.FieldByName('LOG').AsString;
	SELF.CREATED     := clientDS.FieldByName('CREATED').AsDateTime;
	SELF.UCREATED    := clientDS.FieldByName('UCREATED').AsInteger;
	SELF.UPDATED     := clientDS.FieldByName('UPDATED').AsDateTime;
	SELF.UUPDATED    := clientDS.FieldByName('UUPDATED').AsInteger;
	SELF.CONCURRENCY := clientDS.FieldByName('CONCURRENCY').AsInteger;
	SELF.STATUS      := clientDS.FieldByName('STATUS').AsString;
end;


procedure TSYSUSER.fromGUI(form: TForm);
begin
	with form do
	begin
//		SELF.ID         := utils.formObtenerPropiedad(FindComponent('cID'),'Text');
//		SELF.SUB        := utils.formObtenerPropiedad(FindComponent('cSUB'),'Text');
		SELF.LOGIN      := utils.formObtenerPropiedad(FindComponent('cLOGIN'),'Text');
//		SELF.PASS       := StrToINt((utils.formObtenerPropiedad(FindComponent('cPASS'),'Text')));
		SELF.COMPANYID  := Guser.COMPANYID;
		SELF.CONTACTID  := utils.formObtenerPropiedad(FindComponent('cCONTACTID'),'Text');
		SELF.DATA0      := '0';//utils.formObtenerPropiedad(FindComponent('cDATA0'),'Text');
//		SELF.LOG        := utils.formObtenerPropiedad(FindComponent('cLOG'),'Text');
		SELF.CREATED    := now;
		SELF.UCREATED   := GUser.ID;
		SELF.UPDATED    := now;
		SELF.UUPDATED   := GUser.ID;
//		SELF.STATUS     := utils.formObtenerPropiedad(FindComponent('cSTATUS'),'Text');
	end;
end;

procedure TSYSUSER.toGUI(form: TForm);
begin
	inherited;
	with form do
	begin
//	utils.formAsignaPropiedad(FindComponent('cID'),'Text', IntTOStr(SELF.ID));
//	utils.formAsignaPropiedad(FindComponent('cSUB'),'Text', IntTOStr(SELF.SUB));
	utils.formAsignaPropiedad(FindComponent('cLOGIN'),'Text', (SELF.LOGIN));
	utils.formAsignaPropiedad(FindComponent('cPASS'),'Text', IntTOStr(SELF.PASS));
//	utils.formAsignaPropiedad(FindComponent('cCOMPANYID'),'Text', IntTOStr(SELF.COMPANYID));
	utils.formAsignaPropiedad(FindComponent('cCONTACTID'),'Text', (SELF.CONTACTID));
//	utils.formAsignaPropiedad(FindComponent('cDATA0'),'Text', (SELF.DATA0));
//	utils.formAsignaPropiedad(FindComponent('cLOG'),'Text', (SELF.LOG));
//	utils.formAsignaPropiedad(FindComponent('cCREATED'),'Text', IntTOStr(SELF.CREATED));
//	utils.formAsignaPropiedad(FindComponent('cUCREATED'),'Text', IntTOStr(SELF.UCREATED));
//	utils.formAsignaPropiedad(FindComponent('cUPDATED'),'Text', IntTOStr(SELF.UPDATED));
//	utils.formAsignaPropiedad(FindComponent('cUUPDATED'),'Text', IntTOStr(SELF.UUPDATED));
//	utils.formAsignaPropiedad(FindComponent('cCONCURRENCY'),'Text', IntTOStr(SELF.CONCURRENCY));
//	utils.formAsignaPropiedad(FindComponent('cSTATUS'),'Text', (SELF.STATUS));
	end;
end;

function TSYSUSER.save(ClientDS: TAstaClientDataSet;transacction: byte): byte;
var  date: TDateTime;
begin
	RESULT := cFalse;

	date := self.getFechaHoraServer(ClientDS);

	initDataSet(ClientDS);
	if autocommit then
//		ClientDS.AstaClientSocket.StartTransaction;

	TRY
	case transacction of

	1 : begin         //update
		ClientDS.SQL.Add('UPDATE SECURITY_MXUSER SET '+
				'LOGIN = :pLOGIN'+
				',PASSW = :pPASS'+
				',CONTACT_ID = :pCONTACTID'+
				',DATA0 = :pDATA0'+
				',LOG = :pLOG'+
				',UPDATED = :pUPDATED'+
				',UUPDATED = :pUUPDATED'+
				',CONCURRENCY = :pCONCURRENCY'+
				',STATUS = :pSTATUS'+
				' WHERE ID = :pID'
		);
		ClientDS.ParamByName('pID').asInteger                := SELF.ID;
		ClientDS.ParamByName('pLOGIN').asString              := SELF.LOGIN;
		ClientDS.ParamByName('pPASS').asInteger              := SELF.PASS;
		ClientDS.ParamByName('pCONTACTID').asString          := SELF.CONTACTID;
		ClientDS.ParamByName('pDATA0').asString              := SELF.DATA0;
		ClientDS.ParamByName('pLOG').asString                := SELF.LOG;
		ClientDS.ParamByName('pUPDATED').asDatetime          := date;
		ClientDS.ParamByName('pUUPDATED').asInteger          := GUser.ID;
		ClientDS.ParamByName('pCONCURRENCY').asInteger       := SELF.CONCURRENCY + 1;
		ClientDS.ParamByName('pSTATUS').asString             := SELF.STATUS;
		ClientDS.Prepare;
		ClientDS.ExecSQL;

		//actualizamos los roles
		initDataSet(ClientDS);
		ClientDS.SQL.Add('delete from SECURITY_MXUSER_ROLES where mxuser_id =:pid');
		ClientDS.ParamByName('pID').asInteger := SELF.ID;
		ClientDS.Prepare;

		if self.Rols.Count > 0 then
		begin
			ClientDS.ExecSQL;
			//insertamos todos los roles de nuevo
			initDataSet(ClientDS);
			ClientDS.SQL.Add('insert into SECURITY_MXUSER_Roles(mxuser_id,rol_id)');
			ClientDS.SQL.Add('select  '+IntToStr(SELF.ID)+',ID from security_rol' );
			ClientDS.SQL.Add('where company_ID = :companyID');
			ClientDS.SQL.Add('and description in  '+utils.StringListTOParamList(self.Rols));
			ClientDS.ParamByName('companyID').asInteger := SELF.COMPANYID;
			ClientDS.Prepare;
		end;

	end;

	0: begin	//insert
		SELF.nextID(ClientDS);

		initDataSet(ClientDS);
		ClientDS.SQL.Add('INSERT INTO SECURITY_MXUSER (ID,SUB,LOGIN,PASSW,COMPANY_ID,CONTACT_ID,DATA0,LOG,CREATED,UCREATED,UPDATED,UUPDATED,CONCURRENCY,STATUS)');
		ClientDS.SQL.Add(' VALUES ');
		ClientDS.SQL.Add('(:pID,:pSUB,:pLOGIN,:pPASS,:pCOMPANYID,:pCONTACTID,:pDATA0,:pLOG,:pCREATED,:pUCREATED,:pUPDATED,:pUUPDATED,:pCONCURRENCY,:pSTATUS)');

		ClientDS.ParamByName('pID').asInteger                := SELF.ID;
		ClientDS.ParamByName('pSUB').asInteger               := SELF.SUB;
		ClientDS.ParamByName('pLOGIN').asString              := SELF.LOGIN;
		ClientDS.ParamByName('pPASS').asInteger              := SELF.PASS;
		ClientDS.ParamByName('pCOMPANYID').asInteger         := SELF.COMPANYID;
		ClientDS.ParamByName('pCONTACTID').asString          := SELF.CONTACTID;
		ClientDS.ParamByName('pDATA0').asString              := SELF.DATA0;
		ClientDS.ParamByName('pLOG').asString                := SELF.LOG;
		ClientDS.ParamByName('pCREATED').asDatetime          := date;
		ClientDS.ParamByName('pUCREATED').asInteger          := GUser.ID;
		ClientDS.ParamByName('pUPDATED').asDatetime          := date;
		ClientDS.ParamByName('pUUPDATED').asInteger          := GUser.ID;
		ClientDS.ParamByName('pCONCURRENCY').asInteger       := 0;
		ClientDS.ParamByName('pSTATUS').asString             := SELF.STATUS;
		ClientDS.Prepare;

		if self.Rols.Count > 0 then
		begin
			ClientDS.ExecSQL;
			initDataSet(ClientDS);
			ClientDS.SQL.Add('insert into SECURITY_MXUSER_ROLES(mxuser_id,rol_id) ');
			ClientDS.SQL.Add('select  '+IntToStr(self.ID)+',ID from security_ROL' );
			ClientDS.SQL.Add('where company_ID = :companyID');
			ClientDS.SQL.Add('and description in  '+utils.StringListTOParamList(self.Rols));
			ClientDS.ParamByName('companyID').asInteger := SELF.COMPANYID;
			ClientDS.Prepare;
		end;

	end;

	2: begin //delete

		 //primero eliminamos sus roles
		ClientDS.SQL.Add('delete from SECURITY_MXUSER where userid =:pid');
		ClientDS.ParamByName('pID').asInteger := SELF.ID;
		ClientDS.Prepare;
		ClientDS.ExecSQL;

		initDataSet(ClientDS);
		ClientDS.SQL.Add('delete from SECURITY_MXUSER where id =:pid');
		ClientDS.ParamByName('pID').asInteger := SELF.ID;
		ClientDS.Prepare;

	end;

	end;

	result := cTrue;

	FINALLY
	if autocommit then
 	   ClientDS.ExecSQLTransaction
  else
     ClientDS.ExecSQL;
	//		ClientDS.AstaClientSocket.EndTransaction(true);
	END;

end;


PROCEDURE TSYSUSER.setID(pID:Integer);
BEGIN
	aID:= pID;
END;

PROCEDURE TSYSUSER.setSUB(pSUB:Integer);
BEGIN
	aSUB:= pSUB;
END;

PROCEDURE TSYSUSER.setLOGIN(pLOGIN:String);
BEGIN
	aLOGIN:= pLOGIN;
END;

PROCEDURE TSYSUSER.setPASS(pPASS:Integer);
BEGIN
	aPASS:= pPASS;
END;

PROCEDURE TSYSUSER.setCOMPANYID(pCOMPANYID:Integer);
BEGIN
	aCOMPANYID:= pCOMPANYID;
END;

PROCEDURE TSYSUSER.setCONTACTID(pCONTACTID:String);
BEGIN
	aCONTACTID:= pCONTACTID;
END;

PROCEDURE TSYSUSER.setDATA0(pDATA0:String);
BEGIN
	aDATA0:= pDATA0;
END;

PROCEDURE TSYSUSER.setLOG(pLOG:String);
BEGIN
	aLOG:= pLOG;
END;

PROCEDURE TSYSUSER.setCREATED(pCREATED:TDateTime);
BEGIN
	aCREATED:= pCREATED;
END;

PROCEDURE TSYSUSER.setUCREATED(pUCREATED:Integer);
BEGIN
	aUCREATED:= pUCREATED;
END;

PROCEDURE TSYSUSER.setUPDATED(pUPDATED:TDateTime);
BEGIN
	aUPDATED:= pUPDATED;
END;

PROCEDURE TSYSUSER.setUUPDATED(pUUPDATED:Integer);
BEGIN
	aUUPDATED:= pUUPDATED;
END;

PROCEDURE TSYSUSER.setCONCURRENCY(pCONCURRENCY:Integer);
BEGIN
	aCONCURRENCY:= pCONCURRENCY;
END;

PROCEDURE TSYSUSER.setSTATUS(pSTATUS:String);
BEGIN
	aSTATUS:= pSTATUS;
END;


FUNCTION TSYSUSER.getID	:Integer;
BEGIN
	RESULT := aID;
END;

FUNCTION TSYSUSER.getSUB	:Integer;
BEGIN
	RESULT := aSUB;
END;

FUNCTION TSYSUSER.getLOGIN	:String;
BEGIN
	RESULT := aLOGIN;
END;

FUNCTION TSYSUSER.getPASS	:Integer;
BEGIN
	RESULT := aPASS;
END;

FUNCTION TSYSUSER.getCOMPANYID	:Integer;
BEGIN
	RESULT := aCOMPANYID;
END;

FUNCTION TSYSUSER.getCONTACTID	:String;
BEGIN
	RESULT := aCONTACTID;
END;

FUNCTION TSYSUSER.getDATA0	:String;
BEGIN
	RESULT := aDATA0;
END;

FUNCTION TSYSUSER.getLOG	:String;
BEGIN
	RESULT := aLOG;
END;

FUNCTION TSYSUSER.getCREATED	:TDateTime;
BEGIN
	RESULT := aCREATED;
END;

FUNCTION TSYSUSER.getUCREATED	:Integer;
BEGIN
	RESULT := aUCREATED;
END;

FUNCTION TSYSUSER.getUPDATED	:TDateTime;
BEGIN
	RESULT := aUPDATED;
END;

FUNCTION TSYSUSER.getUUPDATED	:Integer;
BEGIN
	RESULT := aUUPDATED;
END;

FUNCTION TSYSUSER.getCONCURRENCY	:Integer;
BEGIN
	RESULT := aCONCURRENCY;
END;

FUNCTION TSYSUSER.getSTATUS	:String;
BEGIN
	RESULT := aSTATUS;
END;

procedure TSYSUSER.nextID(ClientDS: TAstaClientDataSet);
begin
		 initDataSet(ClientDS);

		 ClientDS.SQL.Add('select max(sub) as sub from SECURITY_MXUSER where company_id = :pcompanyID');
		 ClientDS.ParamByName('pcompanyID').AsInteger := self.COMPANYID;
		 ClientDS.Open;

		 self.SUB := ClientDS.fieldbyName('sub').AsInteger + 1;
		 self.ID  := (SELF.companyID * 1000000)+ SELF.SUB;
end;

INITIALIZATION
	Guser := TSYSUSER.Create;

FINALIZATION
	 FreeAndNil(Guser);


END.

