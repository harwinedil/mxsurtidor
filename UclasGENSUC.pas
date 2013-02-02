UNIT UclasGENSUC;

{
GENERADO AUTOMATICAMENTE POR "Generador v.2012"
AUTOR              : HARWIN EDIL PEREZ SALINAS   [harwinedil@gmail.com]
DESCRIPCION        : Clase para interactuar con la Tabla : GENSUC
FECHA CREACION     : 07/12/2012 Hora: 01:36:57
ULTIMA MODIFICACION: 07/12/2012 Hora: 01:36:57
MODIFICADO POR     : HARWIN EDIL PEREZ SALINAS
OBSERVACIONES      :

}

INTERFACE

USES
  sysUtils,uLkJSON,AstaDrv2,AstaClientDataset,AstaParamList,UBaseObject,Uconstantes,
  forms, classes,UGralUtilidades,DBCtrls,SUIDBCtrls,Uclassecurity_mxuser;


TYPE
	PGENSUC = ^TGENSUC;
	TGENSUC = CLASS(TBaseObject)
	PRIVATE
		aID          	: Integer; 
		aSUB         	: Integer; 
		aCOMPANYID   	: Integer; 
		aDESCRIPTION 	: String[64]; 
		aADDRESS     	: String[128]; 
		aPHONE       	: String[64]; 
		aEMAIL       	: String[64]; 
		aRESPONSABLEID	: String[16]; 
		aOBS         	: String[128]; 
		aDATA0       	: String[22]; 
		aDATA1       	: String[12]; 
		aCREATED     	: TDateTime; 
		aUCREATED    	: Integer; 
		aUPDATED     	: TDateTime; 
		aUUPDATED    	: Integer; 
		aSTATUS      	: String[1];
	PUBLIC
		CONSTRUCTOR     Create;		OVERLOAD;
		CONSTRUCTOR     Create(pID:Integer; pSUB:Integer; pCOMPANYID:Integer; pDESCRIPTION:String; pADDRESS:String; pPHONE:String; pEMAIL:String; pRESPONSABLEID:String; pOBS:String; pDATA0:String; pDATA1:String; pCREATED:TDateTime; pUCREATED:Integer; pUPDATED:TDateTime; pUUPDATED:Integer; pSTATUS:String); OVERLOAD;
		CONSTRUCTOR     Create(const pObjeto:TGENSUC);OVERLOAD;
		DESTRUCTOR      Destroy;	OVERRIDE;
		PROCEDURE       init;		OVERRIDE;
		PROCEDURE       setAtributos(pID:Integer; pSUB:Integer; pCOMPANYID:Integer; pDESCRIPTION:String; pADDRESS:String; pPHONE:String; pEMAIL:String; pRESPONSABLEID:String; pOBS:String; pDATA0:String; pDATA1:String; pCREATED:TDateTime; pUCREATED:Integer; pUPDATED:TDateTime; pUUPDATED:Integer; pSTATUS:String);		

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

		PROCEDURE   	setID(pID:Integer);
		PROCEDURE   	setSUB(pSUB:Integer);
		PROCEDURE   	setCOMPANYID(pCOMPANYID:Integer);
		PROCEDURE   	setDESCRIPTION(pDESCRIPTION:String);
		PROCEDURE   	setADDRESS(pADDRESS:String);
		PROCEDURE   	setPHONE(pPHONE:String);
		PROCEDURE   	setEMAIL(pEMAIL:String);
		PROCEDURE   	setRESPONSABLEID(pRESPONSABLEID:String);
		PROCEDURE   	setOBS(pOBS:String);
		PROCEDURE   	setDATA0(pDATA0:String);
		PROCEDURE   	setDATA1(pDATA1:String);
		PROCEDURE   	setCREATED(pCREATED:TDateTime);
		PROCEDURE   	setUCREATED(pUCREATED:Integer);
		PROCEDURE   	setUPDATED(pUPDATED:TDateTime);
		PROCEDURE   	setUUPDATED(pUUPDATED:Integer);
		PROCEDURE   	setSTATUS(pSTATUS:String);

		FUNCTION    	getID            	:Integer;
		FUNCTION    	getSUB           	:Integer;
		FUNCTION    	getCOMPANYID     	:Integer;
		FUNCTION    	getDESCRIPTION   	:String;
		FUNCTION    	getADDRESS       	:String;
		FUNCTION    	getPHONE         	:String;
		FUNCTION    	getEMAIL         	:String;
		FUNCTION    	getRESPONSABLEID 	:String;
		FUNCTION    	getOBS           	:String;
		FUNCTION    	getDATA0         	:String;
		FUNCTION    	getDATA1         	:String;
		FUNCTION    	getCREATED       	:TDateTime;
		FUNCTION    	getUCREATED      	:Integer;
		FUNCTION    	getUPDATED       	:TDateTime;
		FUNCTION    	getUUPDATED      	:Integer;
		FUNCTION    	getSTATUS        	:String;

		PROPERTY    	ID             : Integer   	read getID            	write setID            ;
		PROPERTY    	SUB            : Integer   	read getSUB           	write setSUB           ;
		PROPERTY    	COMPANYID      : Integer   	read getCOMPANYID     	write setCOMPANYID     ;
		PROPERTY    	DESCRIPTION    : String    	read getDESCRIPTION   	write setDESCRIPTION   ;
		PROPERTY    	ADDRESS        : String    	read getADDRESS       	write setADDRESS       ;
		PROPERTY    	PHONE          : String    	read getPHONE         	write setPHONE         ;
		PROPERTY    	EMAIL          : String    	read getEMAIL         	write setEMAIL         ;
		PROPERTY    	RESPONSABLEID  : String    	read getRESPONSABLEID 	write setRESPONSABLEID ;
		PROPERTY    	OBS            : String    	read getOBS           	write setOBS           ;
		PROPERTY    	DATA0          : String    	read getDATA0         	write setDATA0         ;
		PROPERTY    	DATA1          : String    	read getDATA1         	write setDATA1         ;
		PROPERTY    	CREATED        : TDateTime 	read getCREATED       	write setCREATED       ;
		PROPERTY    	UCREATED       : Integer   	read getUCREATED      	write setUCREATED      ;
		PROPERTY    	UPDATED        : TDateTime 	read getUPDATED       	write setUPDATED       ;
		PROPERTY    	UUPDATED       : Integer   	read getUUPDATED      	write setUUPDATED      ;
		PROPERTY    	STATUS         : String    	read getSTATUS        	write setSTATUS        ;

		
	END;

IMPLEMENTATION
{TGENSUC}

CONSTRUCTOR TGENSUC.Create;
BEGIN
	aID           := 0;
	aSUB          := 0;
	aCOMPANYID    := 0;
	aDESCRIPTION  := '';
	aADDRESS      := '';
	aPHONE        := '';
	aEMAIL        := '';
	aRESPONSABLEID:= '';
	aOBS          := '';
	aDATA0        := '';
	aDATA1        := '';
	aCREATED      := 0;
	aUCREATED     := 0;
	aUPDATED      := 0;
	aUUPDATED     := 0;
	aSTATUS       := '';	
	autocommit := true;												
END;

CONSTRUCTOR TGENSUC.Create(pID:Integer; pSUB:Integer; pCOMPANYID:Integer; pDESCRIPTION:String; pADDRESS:String; pPHONE:String; pEMAIL:String; pRESPONSABLEID:String; pOBS:String; pDATA0:String; pDATA1:String; pCREATED:TDateTime; pUCREATED:Integer; pUPDATED:TDateTime; pUUPDATED:Integer; pSTATUS:String);
BEGIN
	aID           := pID           ;
	aSUB          := pSUB          ;
	aCOMPANYID    := pCOMPANYID    ;
	aDESCRIPTION  := pDESCRIPTION  ;
	aADDRESS      := pADDRESS      ;
	aPHONE        := pPHONE        ;
	aEMAIL        := pEMAIL        ;
	aRESPONSABLEID:= pRESPONSABLEID;
	aOBS          := pOBS          ;
	aDATA0        := pDATA0        ;
	aDATA1        := pDATA1        ;
	aCREATED      := pCREATED      ;
	aUCREATED     := pUCREATED     ;
	aUPDATED      := pUPDATED      ;
	aUUPDATED     := pUUPDATED     ;
	aSTATUS       := pSTATUS       ;
	autocommit := true;
END;

CONSTRUCTOR TGENSUC.Create(const pObjeto:TGENSUC);
BEGIN
	aID           := pObjeto.ID           ;
	aSUB          := pObjeto.SUB          ;
	aCOMPANYID    := pObjeto.COMPANYID    ;
	aDESCRIPTION  := pObjeto.DESCRIPTION  ;
	aADDRESS      := pObjeto.ADDRESS      ;
	aPHONE        := pObjeto.PHONE        ;
	aEMAIL        := pObjeto.EMAIL        ;
	aRESPONSABLEID:= pObjeto.RESPONSABLEID;
	aOBS          := pObjeto.OBS          ;
	aDATA0        := pObjeto.DATA0        ;
	aDATA1        := pObjeto.DATA1        ;
	aCREATED      := pObjeto.CREATED      ;
	aUCREATED     := pObjeto.UCREATED     ;
	aUPDATED      := pObjeto.UPDATED      ;
	aUUPDATED     := pObjeto.UUPDATED     ;
	aSTATUS       := pObjeto.STATUS       ;
	autocommit := pObjeto.autocommit;
END;

DESTRUCTOR TGENSUC.Destroy;
BEGIN
	
	inherited Destroy;
END;

PROCEDURE TGENSUC.init;
BEGIN
	aID           := 0;
	aSUB          := 0;
	aCOMPANYID    := 0;
	aDESCRIPTION  := '';
	aADDRESS      := '';
	aPHONE        := '';
	aEMAIL        := '';
	aRESPONSABLEID:= '';
	aOBS          := '';
	aDATA0        := '';
	aDATA1        := '';
	aCREATED      := 0;
	aUCREATED     := 0;
	aUPDATED      := 0;
	aUUPDATED     := 0;
	aSTATUS       := '';														
END;

PROCEDURE TGENSUC.fromJsonString(s:string);
BEGIN
	self.fromJson(TlkJSON.ParseText(s) as TlkJSONobject);
END;

PROCEDURE TGENSUC.fromJson(o:TlkJSONobject);
BEGIN
	ID            := (o.Field['ID'] as TlkJSONnumber).Value;
	SUB           := (o.Field['SUB'] as TlkJSONnumber).Value;
	COMPANYID     := (o.Field['COMPANYID'] as TlkJSONnumber).Value;
	DESCRIPTION   := (o.Field['DESCRIPTION'] as TlkJSONstring).Value;
	ADDRESS       := (o.Field['ADDRESS'] as TlkJSONstring).Value;
	PHONE         := (o.Field['PHONE'] as TlkJSONstring).Value;
	EMAIL         := (o.Field['EMAIL'] as TlkJSONstring).Value;
	RESPONSABLEID := (o.Field['RESPONSABLEID'] as TlkJSONstring).Value;
	OBS           := (o.Field['OBS'] as TlkJSONstring).Value;
	DATA0         := (o.Field['DATA0'] as TlkJSONstring).Value;
	DATA1         := (o.Field['DATA1'] as TlkJSONstring).Value;
	CREATED       := (o.Field['CREATED'] as TlkJSONnumber).Value;
	UCREATED      := (o.Field['UCREATED'] as TlkJSONnumber).Value;
	UPDATED       := (o.Field['UPDATED'] as TlkJSONnumber).Value;
	UUPDATED      := (o.Field['UUPDATED'] as TlkJSONnumber).Value;
	STATUS        := (o.Field['STATUS'] as TlkJSONstring).Value;
END;

FUNCTION TGENSUC.toJsonString : string;
var  json : TlkJSONobject;
BEGIN
	json := TlkJSONobject.Create();
	TRY	
		json.Add('ID',TlkJSONNumber.Generate(ID));
		json.Add('SUB',TlkJSONNumber.Generate(SUB));
		json.Add('COMPANYID',TlkJSONNumber.Generate(COMPANYID));
		json.Add('DESCRIPTION',TlkJSONstring.Generate(DESCRIPTION));
		json.Add('ADDRESS',TlkJSONstring.Generate(ADDRESS));
		json.Add('PHONE',TlkJSONstring.Generate(PHONE));
		json.Add('EMAIL',TlkJSONstring.Generate(EMAIL));
		json.Add('RESPONSABLEID',TlkJSONstring.Generate(RESPONSABLEID));
		json.Add('OBS',TlkJSONstring.Generate(OBS));
		json.Add('DATA0',TlkJSONstring.Generate(DATA0));
		json.Add('DATA1',TlkJSONstring.Generate(DATA1));
		json.Add('CREATED',TlkJSONNumber.Generate(CREATED));
		json.Add('UCREATED',TlkJSONNumber.Generate(UCREATED));
		json.Add('UPDATED',TlkJSONNumber.Generate(UPDATED));
		json.Add('UUPDATED',TlkJSONNumber.Generate(UUPDATED));
		json.Add('STATUS',TlkJSONstring.Generate(STATUS));
	FINALLY
		RESULT := TlkJSON.GenerateText(json);
		FreeAndNIL(json);
	END;
END;


PROCEDURE TGENSUC.setAtributos(pID:Integer; pSUB:Integer; pCOMPANYID:Integer; pDESCRIPTION:String; pADDRESS:String; pPHONE:String; pEMAIL:String; pRESPONSABLEID:String; pOBS:String; pDATA0:String; pDATA1:String; pCREATED:TDateTime; pUCREATED:Integer; pUPDATED:TDateTime; pUUPDATED:Integer; pSTATUS:String);		
BEGIN
	aID           := pID           ;
	aSUB          := pSUB          ;
	aCOMPANYID    := pCOMPANYID    ;
	aDESCRIPTION  := pDESCRIPTION  ;
	aADDRESS      := pADDRESS      ;
	aPHONE        := pPHONE        ;
	aEMAIL        := pEMAIL        ;
	aRESPONSABLEID:= pRESPONSABLEID;
	aOBS          := pOBS          ;
	aDATA0        := pDATA0        ;
	aDATA1        := pDATA1        ;
	aCREATED      := pCREATED      ;
	aUCREATED     := pUCREATED     ;
	aUPDATED      := pUPDATED      ;
	aUUPDATED     := pUUPDATED     ;
	aSTATUS       := pSTATUS       ;	
END;

FUNCTION TGENSUC.sqlGetField(field:string) : string;
BEGIN
	RESULT := 'select '+field+' from GENERAL_SUC order by '+field;
END;

FUNCTION TGENSUC.sqlGetKeyValue(key,value : string) : string;
BEGIN
	RESULT := 'select '+key+' as key,'+value+'as value from GENERAL_SUC order by '+value;
END;

FUNCTION  TGENSUC.sqlGetAll : string;
BEGIN
	RESULT := 'select * from GENERAL_SUC';
END;

PROCEDURE TGENSUC.filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
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

	IF SELF.COMPANYID<>0 THEN
	BEGIN
		cds.sql.add( y +'COMPANY_ID= :pCOMPANYID');
		cds.ParamByName('pCOMPANYID').asInteger	:= SELF.COMPANYID;
		y := ' and ';
	END;

	IF SELF.DESCRIPTION<>'' THEN
	BEGIN
		cds.sql.add( y +'DESCRIPTION= :pDESCRIPTION');
		cds.ParamByName('pDESCRIPTION').asString	:= SELF.DESCRIPTION;
		y := ' and ';
	END;

	IF SELF.ADDRESS<>'' THEN
	BEGIN
		cds.sql.add( y +'ADDRESS= :pADDRESS');
		cds.ParamByName('pADDRESS').asString	:= SELF.ADDRESS;
		y := ' and ';
	END;

	IF SELF.PHONE<>'' THEN
	BEGIN
		cds.sql.add( y +'PHONE= :pPHONE');
		cds.ParamByName('pPHONE').asString	:= SELF.PHONE;
		y := ' and ';
	END;

	IF SELF.EMAIL<>'' THEN
	BEGIN
		cds.sql.add( y +'EMAIL= :pEMAIL');
		cds.ParamByName('pEMAIL').asString	:= SELF.EMAIL;
		y := ' and ';
	END;

	IF SELF.RESPONSABLEID<>'' THEN
	BEGIN
		cds.sql.add( y +'RESPONSABLE_ID= :pRESPONSABLEID');
		cds.ParamByName('pRESPONSABLEID').asString	:= SELF.RESPONSABLEID;
		y := ' and ';
	END;

	IF SELF.OBS<>'' THEN
	BEGIN
		cds.sql.add( y +'OBS= :pOBS');
		cds.ParamByName('pOBS').asString	:= SELF.OBS;
		y := ' and ';
	END;

	IF SELF.DATA0<>'' THEN
	BEGIN
		cds.sql.add( y +'DATA0= :pDATA0');
		cds.ParamByName('pDATA0').asString	:= SELF.DATA0;
		y := ' and ';
	END;

	IF SELF.DATA1<>'' THEN
	BEGIN
		cds.sql.add( y +'DATA1= :pDATA1');
		cds.ParamByName('pDATA1').asString	:= SELF.DATA1;
		y := ' and ';
	END;
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

	IF SELF.STATUS<>'' THEN
	BEGIN
		cds.sql.add( y +'STATUS= :pSTATUS');
		cds.ParamByName('pSTATUS').asString	:= SELF.STATUS;
		y := ' and ';
	END;
 }

	if where <> '' then
	begin
	cds.sql.add(where);
	for i:=0 to params.count-1 do
		cds.params.AddOneParamItem(params.items[i]);
	end;
END;


PROCEDURE TGENSUC.QBE(ClientDS: TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add(sqlGetAll);
	filtrar(ClientDS,where,params);
	clientDS.prepare;
	clientDS.Open;
END;

PROCEDURE TGENSUC.QBE(columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add('select '+columns+ ' from GENERAL_SUC');
	ClientDS.SQL.Add('where '+where);

	if params <> NIL then
		ClientDS.Params := params;

	clientDS.prepare;
	clientDS.Open;
END;

function TGENSUC.exist(ClientDS: TAstaClientDataSet): boolean;
begin
	initDataSet(ClientDS);
	ClientDS.SQL.Add('select id from GENERAL_SUC where description=:pdes and company_ID=:company');
	ClientDS.ParamByName('pdes').AsString := SELF.DESCRIPTION;
	ClientDS.ParamByName('company').AsInteger := SELF.COMPANYID;
	ClientDS.Open;

	Result := not ClientDS.IsEmpty;
end;

procedure TGENSUC.fromClientDataSet(ClientDS: TAstaClientDataSet);
begin
	inherited;
	IF NOT ClientDS.Active THEN EXIT;
	SELF.ID            := clientDS.FieldByName('ID').AsInteger;
	SELF.SUB           := clientDS.FieldByName('SUB').AsInteger;
	SELF.COMPANYID     := clientDS.FieldByName('COMPANY_ID').AsInteger;
	SELF.DESCRIPTION   := clientDS.FieldByName('DESCRIPTION').AsString;
	SELF.ADDRESS       := clientDS.FieldByName('ADDRESS').AsString;
	SELF.PHONE         := clientDS.FieldByName('PHONE').AsString;
	SELF.EMAIL         := clientDS.FieldByName('EMAIL').AsString;
	SELF.RESPONSABLEID := clientDS.FieldByName('RESPONSABLE_ID').AsString;
	SELF.OBS           := clientDS.FieldByName('OBS').AsString;
	SELF.DATA0         := clientDS.FieldByName('DATA0').AsString;
	SELF.DATA1         := clientDS.FieldByName('DATA1').AsString;
	SELF.CREATED       := clientDS.FieldByName('CREATED').AsDateTime;
	SELF.UCREATED      := clientDS.FieldByName('UCREATED_ID').AsInteger;
	SELF.UPDATED       := clientDS.FieldByName('UPDATED').AsDateTime;
	SELF.UUPDATED      := clientDS.FieldByName('UUPDATED_ID').AsInteger;
	SELF.STATUS        := clientDS.FieldByName('STATUS').AsString;
end;


procedure TGENSUC.fromGUI(form: TForm);
begin
	with form do
	begin
//		SELF.ID           := utils.formObtenerPropiedad(FindComponent('cID'),'Text');
		SELF.SUB          := StrToInt(utils.formObtenerPropiedad(FindComponent('cSUB'),'Text'));
		SELF.COMPANYID    := GUser.company_ID;
		SELF.DESCRIPTION  := utils.formObtenerPropiedad(FindComponent('cDESCRIPTION'),'Text');
		SELF.ADDRESS      := utils.formObtenerPropiedad(FindComponent('cADDRESS'),'Text');
		SELF.PHONE        := utils.formObtenerPropiedad(FindComponent('cPHONE'),'Text');
		SELF.EMAIL        := utils.formObtenerPropiedad(FindComponent('cEMAIL'),'Text');
		SELF.RESPONSABLEID:= utils.formObtenerPropiedad(FindComponent('cRESPONSABLEID'),'Text');
		SELF.OBS          := utils.formObtenerPropiedad(FindComponent('cOBS'),'Text');
		SELF.DATA0        := utils.formObtenerPropiedad(FindComponent('cDATA0'),'Text');
		SELF.DATA1        := utils.formObtenerPropiedad(FindComponent('cDATA1'),'Text');
		SELF.CREATED      := now;
		SELF.UCREATED     := Guser.ID;
		SELF.UPDATED      := now;
		SELF.UUPDATED     := Guser.ID;
		SELF.STATUS       := '1';
	end;
end;

procedure TGENSUC.toGUI(form: TForm);
begin
	inherited;
	with form do
	begin
//	utils.formAsignaPropiedad(FindComponent('cID'),'Text', IntTOStr(SELF.ID));
	utils.formAsignaPropiedad(FindComponent('cSUB'),'Text', IntTOStr(SELF.SUB));
//	utils.formAsignaPropiedad(FindComponent('cCOMPANYID'),'Text', IntTOStr(SELF.COMPANYID));
	utils.formAsignaPropiedad(FindComponent('cDESCRIPTION'),'Text', (SELF.DESCRIPTION));
	utils.formAsignaPropiedad(FindComponent('cADDRESS'),'Text', (SELF.ADDRESS));
	utils.formAsignaPropiedad(FindComponent('cPHONE'),'Text', (SELF.PHONE));
	utils.formAsignaPropiedad(FindComponent('cEMAIL'),'Text', (SELF.EMAIL));
	utils.formAsignaPropiedad(FindComponent('cRESPONSABLEID'),'Text', (SELF.RESPONSABLEID));
	utils.formAsignaPropiedad(FindComponent('cOBS'),'Text', (SELF.OBS));
	utils.formAsignaPropiedad(FindComponent('cDATA0'),'Text', (SELF.DATA0));
	utils.formAsignaPropiedad(FindComponent('cDATA1'),'Text', (SELF.DATA1));
//	utils.formAsignaPropiedad(FindComponent('cCREATED'),'Text', IntTOStr(SELF.CREATED));
//	utils.formAsignaPropiedad(FindComponent('cUCREATED'),'Text', IntTOStr(SELF.UCREATED));
//	utils.formAsignaPropiedad(FindComponent('cUPDATED'),'Text', IntTOStr(SELF.UPDATED));
//	utils.formAsignaPropiedad(FindComponent('cUUPDATED'),'Text', IntTOStr(SELF.UUPDATED));
//	utils.formAsignaPropiedad(FindComponent('cSTATUS'),'Text', (SELF.STATUS));
	end;
end;

function TGENSUC.save(ClientDS: TAstaClientDataSet;transacction: byte): byte;
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
		ClientDS.SQL.Add('UPDATE GENERAL_SUC SET '+
				' SUB = :pSUB'+
				',COMPANY_ID = :pCOMPANYID'+
				',DESCRIPTION = :pDESCRIPTION'+
				',ADDRESS = :pADDRESS'+
				',PHONE = :pPHONE'+
				',EMAIL = :pEMAIL'+
				',RESPONSABLE_ID = :pRESPONSABLEID'+
				',OBS = :pOBS'+
				',DATA0 = :pDATA0'+
				',DATA1 = :pDATA1'+
				',UPDATED = :pUPDATED'+
				',UUPDATED_ID = :pUUPDATED'+
				',STATUS = :pSTATUS'+
				' WHERE ID = :pID'
		);
		ClientDS.ParamByName('pID').asInteger                  := SELF.ID;
		ClientDS.ParamByName('pSUB').asInteger                 := SELF.SUB;
		ClientDS.ParamByName('pCOMPANYID').asInteger           := SELF.COMPANYID;
		ClientDS.ParamByName('pDESCRIPTION').asString          := SELF.DESCRIPTION;
		ClientDS.ParamByName('pADDRESS').asString              := SELF.ADDRESS;
		ClientDS.ParamByName('pPHONE').asString                := SELF.PHONE;
		ClientDS.ParamByName('pEMAIL').asString                := SELF.EMAIL;
		ClientDS.ParamByName('pRESPONSABLEID').asString        := SELF.RESPONSABLEID;
		ClientDS.ParamByName('pOBS').asString                  := SELF.OBS;
		ClientDS.ParamByName('pDATA0').asString                := SELF.DATA0;
		ClientDS.ParamByName('pDATA1').asString                := SELF.DATA1;
		ClientDS.ParamByName('pUPDATED').asDatetime            := SELF.UPDATED;
		ClientDS.ParamByName('pUUPDATED').asInteger            := SELF.UUPDATED;
		ClientDS.ParamByName('pSTATUS').asString               := SELF.STATUS;
	end;

	0: begin	//insert
		SELF.nextID(clientDS);

		initDataSet(ClientDS);
		ClientDS.SQL.Add('INSERT INTO GENERAL_SUC (ID,SUB,COMPANY_ID,DESCRIPTION,ADDRESS,PHONE,EMAIL,RESPONSABLE_ID,OBS,DATA0,DATA1,CREATED,UCREATED_ID,UPDATED,UUPDATED_ID,STATUS,concurrency)');
		ClientDS.SQL.Add(' VALUES ');
		ClientDS.SQL.Add('(:pID,:pSUB,:pCOMPANYID,:pDESCRIPTION,:pADDRESS,:pPHONE,:pEMAIL,:pRESPONSABLEID,:pOBS,:pDATA0,:pDATA1,:pCREATED,:pUCREATED,:pUPDATED,:pUUPDATED,:pSTATUS,:con)');
		ClientDS.ParamByName('pID').asInteger                  := SELF.ID;
		ClientDS.ParamByName('pSUB').asInteger                 := SELF.SUB;
		ClientDS.ParamByName('pCOMPANYID').asInteger           := SELF.COMPANYID;
		ClientDS.ParamByName('pDESCRIPTION').asString          := SELF.DESCRIPTION;
		ClientDS.ParamByName('pADDRESS').asString              := SELF.ADDRESS;
		ClientDS.ParamByName('pPHONE').asString                := SELF.PHONE;
		ClientDS.ParamByName('pEMAIL').asString                := SELF.EMAIL;
		ClientDS.ParamByName('pRESPONSABLEID').asString        := SELF.RESPONSABLEID;
		ClientDS.ParamByName('pOBS').asString                  := SELF.OBS;
		ClientDS.ParamByName('pDATA0').asString                := SELF.DATA0;
		ClientDS.ParamByName('pDATA1').asString                := SELF.DATA1;
		ClientDS.ParamByName('pCREATED').asDatetime            := SELF.CREATED;
		ClientDS.ParamByName('pUCREATED').asInteger            := SELF.UCREATED;
		ClientDS.ParamByName('pUPDATED').asDatetime            := SELF.UPDATED;
		ClientDS.ParamByName('pUUPDATED').asInteger            := SELF.UUPDATED;
		ClientDS.ParamByName('pSTATUS').asString               := SELF.STATUS;
    ClientDS.ParamByName('con').asInteger            := 0;
	end;

	2: begin //delete
		ClientDS.SQL.Add('delete from GENSUC where id =:pid');
		ClientDS.ParamByName('pID').asInteger := SELF.ID;
	end;

	end;
//	if autocommit then
//		ClientDS.AstaClientSocket.StartTransaction;

	Result := cTrue;

	 FINALLY
  	ClientDS.ExecSQLTransaction;
//	if autocommit then
//			ClientDS.AstaClientSocket.EndTransaction(true);
	 END;
end;

procedure TGENSUC.nextID(ClientDS: TAstaClientDataSet);
begin
		 self.ID  := (SELF.companyID * 100)+ SELF.SUB;
end;


PROCEDURE TGENSUC.setID(pID:Integer);
BEGIN
	aID:= pID;
END;

PROCEDURE TGENSUC.setSUB(pSUB:Integer);
BEGIN
	aSUB:= pSUB;
END;

PROCEDURE TGENSUC.setCOMPANYID(pCOMPANYID:Integer);
BEGIN
	aCOMPANYID:= pCOMPANYID;
END;

PROCEDURE TGENSUC.setDESCRIPTION(pDESCRIPTION:String);
BEGIN
	aDESCRIPTION:= pDESCRIPTION;
END;

PROCEDURE TGENSUC.setADDRESS(pADDRESS:String);
BEGIN
	aADDRESS:= pADDRESS;
END;

PROCEDURE TGENSUC.setPHONE(pPHONE:String);
BEGIN
	aPHONE:= pPHONE;
END;

PROCEDURE TGENSUC.setEMAIL(pEMAIL:String);
BEGIN
	aEMAIL:= pEMAIL;
END;

PROCEDURE TGENSUC.setRESPONSABLEID(pRESPONSABLEID:String);
BEGIN
	aRESPONSABLEID:= pRESPONSABLEID;
END;

PROCEDURE TGENSUC.setOBS(pOBS:String);
BEGIN
	aOBS:= pOBS;
END;

PROCEDURE TGENSUC.setDATA0(pDATA0:String);
BEGIN
	aDATA0:= pDATA0;
END;

PROCEDURE TGENSUC.setDATA1(pDATA1:String);
BEGIN
	aDATA1:= pDATA1;
END;

PROCEDURE TGENSUC.setCREATED(pCREATED:TDateTime);
BEGIN
	aCREATED:= pCREATED;
END;

PROCEDURE TGENSUC.setUCREATED(pUCREATED:Integer);
BEGIN
	aUCREATED:= pUCREATED;
END;

PROCEDURE TGENSUC.setUPDATED(pUPDATED:TDateTime);
BEGIN
	aUPDATED:= pUPDATED;
END;

PROCEDURE TGENSUC.setUUPDATED(pUUPDATED:Integer);
BEGIN
	aUUPDATED:= pUUPDATED;
END;

PROCEDURE TGENSUC.setSTATUS(pSTATUS:String);
BEGIN
	aSTATUS:= pSTATUS;
END;


FUNCTION TGENSUC.getID	:Integer;
BEGIN
	RESULT := aID;
END;

FUNCTION TGENSUC.getSUB	:Integer;
BEGIN
	RESULT := aSUB;
END;

FUNCTION TGENSUC.getCOMPANYID	:Integer;
BEGIN
	RESULT := aCOMPANYID;
END;

FUNCTION TGENSUC.getDESCRIPTION	:String;
BEGIN
	RESULT := aDESCRIPTION;
END;

FUNCTION TGENSUC.getADDRESS	:String;
BEGIN
	RESULT := aADDRESS;
END;

FUNCTION TGENSUC.getPHONE	:String;
BEGIN
	RESULT := aPHONE;
END;

FUNCTION TGENSUC.getEMAIL	:String;
BEGIN
	RESULT := aEMAIL;
END;

FUNCTION TGENSUC.getRESPONSABLEID	:String;
BEGIN
	RESULT := aRESPONSABLEID;
END;

FUNCTION TGENSUC.getOBS	:String;
BEGIN
	RESULT := aOBS;
END;

FUNCTION TGENSUC.getDATA0	:String;
BEGIN
	RESULT := aDATA0;
END;

FUNCTION TGENSUC.getDATA1	:String;
BEGIN
	RESULT := aDATA1;
END;

FUNCTION TGENSUC.getCREATED	:TDateTime;
BEGIN
	RESULT := aCREATED;
END;

FUNCTION TGENSUC.getUCREATED	:Integer;
BEGIN
	RESULT := aUCREATED;
END;

FUNCTION TGENSUC.getUPDATED	:TDateTime;
BEGIN
	RESULT := aUPDATED;
END;

FUNCTION TGENSUC.getUUPDATED	:Integer;
BEGIN
	RESULT := aUUPDATED;
END;

FUNCTION TGENSUC.getSTATUS	:String;
BEGIN
	RESULT := aSTATUS;
END;


END.

