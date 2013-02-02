UNIT UclasGENPERSON;

{
GENERADO AUTOMATICAMENTE POR "Generador v.2012"
AUTOR              : HARWIN EDIL PEREZ SALINAS   [harwinedil@gmail.com]
DESCRIPCION        : Clase para interactuar con la Tabla : GENPERSON
FECHA CREACION     : 27/11/2012 Hora: 15:55:57
ULTIMA MODIFICACION: 27/11/2012 Hora: 15:55:57
MODIFICADO POR     : HARWIN EDIL PEREZ SALINAS
OBSERVACIONES      :

}

INTERFACE

USES
	sysUtils,uLkJSON,AstaDrv2,AstaClientDataset,AstaParamList,UBaseObject,Uconstantes,
	forms, classes,UGralUtilidades,DBCtrls,SUIDBCtrls,jpeg,AstaDBtypes,
	AstaTypes,Uclassecurity_mxuser;


TYPE
	PGENPERSON = ^TGENPERSON;
	TGENPERSON = CLASS(TBaseObject)
	PRIVATE
		aID          	: String[16]; 
		aNAME        	: String[32]; 
		aLASTNAME1   	: String[32]; 
		aLASTNAME2   	: String[32]; 
		aSEX         	: String[1]; 
		aBIRTHDAY    	: TDateTime;
		aDOCID       	: Integer;
		aEXPID       	: Integer;
		aDOCUMENT    	: String[16];
		aNIT         	: String[16];
		aPHONE       	: String[64];
		aEMAIL       	: String[64];
		aPOSTCODE    	: String[16];
		aWEBSITE     	: String[64];
		aADDRESS     	: String[128];
		aPAISID      	: Integer;
		aOCUPATIONID 	: Integer;
		aMASTERCONTACT	: String[16];
		aPOINTS      	: Integer;
		aFATHER      	: String[16];
		aMOTHER      	: String[16];
		aDATA0       	: String[16];
		aDATA1       	: String[16];
		aCOMPANYID   	: Integer;
		aCREATED     	: TDateTime;
		aUCREATED    	: Integer;
		aUPDATED     	: TDateTime;
		aUUPDATED    	: Integer;
		aSTATUS      	: String[1];
		function exist(ClientDS: TAstaClientDataSet): boolean;
	PUBLIC
	  Foto	: string;
		CONSTRUCTOR     Create;		OVERLOAD;
		CONSTRUCTOR     Create(pID:String; pNAME:String; pLASTNAME1:String; pLASTNAME2:String; pSEX:String; pBIRTHDAY:TDateTime; pDOCID:Integer; pEXPID:Integer; pDOCUMENT:String; pNIT:String; pPHONE:String; pEMAIL:String; pPOSTCODE:String; pWEBSITE:String; pADDRESS:String; pPAISID:Integer; pOCUPATIONID:Integer; pMASTERCONTACT:String; pPOINTS:Integer; pFATHER:String; pMOTHER:String; pDATA0:String; pDATA1:String; pCOMPANYID:Integer; pCREATED:TDateTime; pUCREATED:Integer; pUPDATED:TDateTime; pUUPDATED:Integer; pSTATUS:String); OVERLOAD;
		CONSTRUCTOR     Create(const pObjeto:TGENPERSON);OVERLOAD;
		DESTRUCTOR      Destroy;	OVERRIDE;
		PROCEDURE       init;		OVERRIDE;
		PROCEDURE       setAtributos(pID:String; pNAME:String; pLASTNAME1:String; pLASTNAME2:String; pSEX:String; pBIRTHDAY:TDateTime; pDOCID:Integer; pEXPID:Integer; pDOCUMENT:String; pNIT:String; pPHONE:String; pEMAIL:String; pPOSTCODE:String; pWEBSITE:String; pADDRESS:String; pPAISID:Integer; pOCUPATIONID:Integer; pMASTERCONTACT:String; pPOINTS:Integer; pFATHER:String; pMOTHER:String; pDATA0:String; pDATA1:String; pCOMPANYID:Integer; pCREATED:TDateTime; pUCREATED:Integer; pUPDATED:TDateTime; pUUPDATED:Integer; pSTATUS:String);

		PROCEDURE       fromJson(o:TlkJSONobject); OVERRIDE;
		PROCEDURE       fromJsonString(s:string);  OVERRIDE;
		FUNCTION        toJsonString : string; OVERRIDE;
		FUNCTION        sqlGetField(field:string) : string; OVERRIDE;
		FUNCTION        sqlGetKeyValue(key,value : string) : string; OVERRIDE;
		FUNCTION        sqlGetAll : string; OVERRIDE;
    function        sqlFind : string;
		PROCEDURE       QBE( columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL); OVERLOAD;OVERRIDE;
		PROCEDURE       filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL); OVERRIDE;
		PROCEDURE       QBE(ClientDS: TAstaClientDataSet; where:string = '';params:TAstaParamList=NIL);  OVERLOAD;OVERRIDE;

		FUNCTION        save(ClientDS: TAstaClientDataSet; transacction: byte) : byte;
		FUNCTION        existID(ClientDS: TAstaClientDataSet) : boolean;
		FUNCTION        existName(ClientDS: TAstaClientDataSet) : boolean;
		PROCEDURE       fromClientDataSet(ClientDS: TAstaClientDataSet);OVERRIDE;
		PROCEDURE       fromGUI(form:TForm ); OVERRIDE;
		PROCEDURE       toGUI(form:TForm ); OVERRIDE;
		PROCEDURE       nextID(ClientDS: TAstaClientDataSet); OVERRIDE;

		PROCEDURE   	setID(pID:String);
		PROCEDURE   	setNAME(pNAME:String);
		PROCEDURE   	setLASTNAME1(pLASTNAME1:String);
		PROCEDURE   	setLASTNAME2(pLASTNAME2:String);
		PROCEDURE   	setSEX(pSEX:String);
		PROCEDURE   	setBIRTHDAY(pBIRTHDAY:TDateTime);
		PROCEDURE   	setDOCID(pDOCID:Integer);
		PROCEDURE   	setEXPID(pEXPID:Integer);
		PROCEDURE   	setDOCUMENT(pDOCUMENT:String);
		PROCEDURE   	setNIT(pNIT:String);
		PROCEDURE   	setPHONE(pPHONE:String);
		PROCEDURE   	setEMAIL(pEMAIL:String);
		PROCEDURE   	setPOSTCODE(pPOSTCODE:String);
		PROCEDURE   	setWEBSITE(pWEBSITE:String);
		PROCEDURE   	setADDRESS(pADDRESS:String);
		PROCEDURE   	setPAISID(pPAISID:Integer);
		PROCEDURE   	setOCUPATIONID(pOCUPATIONID:Integer);
		PROCEDURE   	setMASTERCONTACT(pMASTERCONTACT:String);
		PROCEDURE   	setPOINTS(pPOINTS:Integer);
		PROCEDURE   	setFATHER(pFATHER:String);
		PROCEDURE   	setMOTHER(pMOTHER:String);
		PROCEDURE   	setDATA0(pDATA0:String);
		PROCEDURE   	setDATA1(pDATA1:String);
		PROCEDURE   	setCOMPANYID(pCOMPANYID:Integer);
		PROCEDURE   	setCREATED(pCREATED:TDateTime);
		PROCEDURE   	setUCREATED(pUCREATED:Integer);
		PROCEDURE   	setUPDATED(pUPDATED:TDateTime);
		PROCEDURE   	setUUPDATED(pUUPDATED:Integer);
		PROCEDURE   	setSTATUS(pSTATUS:String);

		FUNCTION    	getID            	:String;
		FUNCTION    	getNAME          	:String;
		FUNCTION    	getLASTNAME1     	:String;
		FUNCTION    	getLASTNAME2     	:String;
		FUNCTION    	getSEX           	:String;
		FUNCTION    	getBIRTHDAY      	:TDateTime;
		FUNCTION    	getDOCID         	:Integer;
		FUNCTION    	getEXPID         	:Integer;
		FUNCTION    	getDOCUMENT      	:String;
		FUNCTION    	getNIT           	:String;
		FUNCTION    	getPHONE         	:String;
		FUNCTION    	getEMAIL         	:String;
		FUNCTION    	getPOSTCODE      	:String;
		FUNCTION    	getWEBSITE       	:String;
		FUNCTION    	getADDRESS       	:String;
		FUNCTION    	getPAISID        	:Integer;
		FUNCTION    	getOCUPATIONID   	:Integer;
		FUNCTION    	getMASTERCONTACT 	:String;
		FUNCTION    	getPOINTS        	:Integer;
		FUNCTION    	getFATHER        	:String;
		FUNCTION    	getMOTHER        	:String;
		FUNCTION    	getDATA0         	:String;
		FUNCTION    	getDATA1         	:String;
		FUNCTION    	getCOMPANYID     	:Integer;
		FUNCTION    	getCREATED       	:TDateTime;
		FUNCTION    	getUCREATED      	:Integer;
		FUNCTION    	getUPDATED       	:TDateTime;
		FUNCTION    	getUUPDATED      	:Integer;
		FUNCTION    	getSTATUS        	:String;
		FUNCTION			getNameLong:string;

		PROPERTY    	ID             : String    	read getID            	write setID            ;
		PROPERTY    	NAME           : String    	read getNAME          	write setNAME          ;
		PROPERTY    	LASTNAME1      : String    	read getLASTNAME1     	write setLASTNAME1     ;
		PROPERTY    	LASTNAME2      : String    	read getLASTNAME2     	write setLASTNAME2     ;
		PROPERTY    	SEX            : String    	read getSEX           	write setSEX           ;
		PROPERTY    	BIRTHDAY       : TDateTime 	read getBIRTHDAY      	write setBIRTHDAY      ;
		PROPERTY    	DOCID          : Integer   	read getDOCID         	write setDOCID         ;
		PROPERTY    	EXPID          : Integer   	read getEXPID         	write setEXPID         ;
		PROPERTY    	DOCUMENT       : String    	read getDOCUMENT      	write setDOCUMENT      ;
		PROPERTY    	NIT            : String    	read getNIT           	write setNIT           ;
		PROPERTY    	PHONE          : String    	read getPHONE         	write setPHONE         ;
		PROPERTY    	EMAIL          : String    	read getEMAIL         	write setEMAIL         ;
		PROPERTY    	POSTCODE       : String    	read getPOSTCODE      	write setPOSTCODE      ;
		PROPERTY    	WEBSITE        : String    	read getWEBSITE       	write setWEBSITE       ;
		PROPERTY    	ADDRESS        : String    	read getADDRESS       	write setADDRESS       ;
		PROPERTY    	PAISID         : Integer   	read getPAISID        	write setPAISID        ;
		PROPERTY    	OCUPATIONID    : Integer   	read getOCUPATIONID   	write setOCUPATIONID   ;
		PROPERTY    	MASTERCONTACT  : String    	read getMASTERCONTACT 	write setMASTERCONTACT ;
		PROPERTY    	POINTS         : Integer   	read getPOINTS        	write setPOINTS        ;
		PROPERTY    	FATHER         : String    	read getFATHER        	write setFATHER        ;
		PROPERTY    	MOTHER         : String    	read getMOTHER        	write setMOTHER        ;
		PROPERTY    	DATA0          : String    	read getDATA0         	write setDATA0         ;
		PROPERTY    	DATA1          : String    	read getDATA1         	write setDATA1         ;
		PROPERTY    	COMPANYID      : Integer   	read getCOMPANYID     	write setCOMPANYID     ;
		PROPERTY    	CREATED        : TDateTime 	read getCREATED       	write setCREATED       ;
		PROPERTY    	UCREATED       : Integer   	read getUCREATED      	write setUCREATED      ;
		PROPERTY    	UPDATED        : TDateTime 	read getUPDATED       	write setUPDATED       ;
		PROPERTY    	UUPDATED       : Integer   	read getUUPDATED      	write setUUPDATED      ;
		PROPERTY    	STATUS         : String    	read getSTATUS        	write setSTATUS        ;
	END;

IMPLEMENTATION

uses StrUtils;
{TGENPERSON}

CONSTRUCTOR TGENPERSON.Create;
BEGIN
	aID           := '';
	aNAME         := '';
	aLASTNAME1    := '';
	aLASTNAME2    := '';
	aSEX          := '';
	aBIRTHDAY     := 0;
	aDOCID        := 0;
	aEXPID        := 0;
	aDOCUMENT     := '';
	aNIT          := '';
	aPHONE        := '';
	aEMAIL        := '';
	aPOSTCODE     := '';
	aWEBSITE      := '';
	aADDRESS      := '';
	aPAISID       := 0;
	aOCUPATIONID  := 0;
	aMASTERCONTACT:= '';
	aPOINTS       := 0;
	aFATHER       := '';
	aMOTHER       := '';
	aDATA0        := '';
	aDATA1        := '';
	aCOMPANYID    := 0;
	aCREATED      := 0;
	aUCREATED     := 0;
	aUPDATED      := 0;
	aUUPDATED     := 0;
	aSTATUS       := '';
	autocommit := true;
END;

CONSTRUCTOR TGENPERSON.Create(pID:String; pNAME:String; pLASTNAME1:String; pLASTNAME2:String; pSEX:String; pBIRTHDAY:TDateTime; pDOCID:Integer; pEXPID:Integer; pDOCUMENT:String; pNIT:String; pPHONE:String; pEMAIL:String; pPOSTCODE:String; pWEBSITE:String; pADDRESS:String; pPAISID:Integer; pOCUPATIONID:Integer; pMASTERCONTACT:String; pPOINTS:Integer; pFATHER:String; pMOTHER:String; pDATA0:String; pDATA1:String; pCOMPANYID:Integer; pCREATED:TDateTime; pUCREATED:Integer; pUPDATED:TDateTime; pUUPDATED:Integer; pSTATUS:String);
BEGIN
	aID           := pID           ;
	aNAME         := pNAME         ;
	aLASTNAME1    := pLASTNAME1    ;
	aLASTNAME2    := pLASTNAME2    ;
	aSEX          := pSEX          ;
	aBIRTHDAY     := pBIRTHDAY     ;
	aDOCID        := pDOCID        ;
	aEXPID        := pEXPID        ;
	aDOCUMENT     := pDOCUMENT     ;
	aNIT          := pNIT          ;
	aPHONE        := pPHONE        ;
	aEMAIL        := pEMAIL        ;
	aPOSTCODE     := pPOSTCODE     ;
	aWEBSITE      := pWEBSITE      ;
	aADDRESS      := pADDRESS      ;
	aPAISID       := pPAISID       ;
	aOCUPATIONID  := pOCUPATIONID  ;
	aMASTERCONTACT:= pMASTERCONTACT;
	aPOINTS       := pPOINTS       ;
	aFATHER       := pFATHER       ;
	aMOTHER       := pMOTHER       ;
	aDATA0        := pDATA0        ;
	aDATA1        := pDATA1        ;
	aCOMPANYID    := pCOMPANYID    ;
	aCREATED      := pCREATED      ;
	aUCREATED     := pUCREATED     ;
	aUPDATED      := pUPDATED      ;
	aUUPDATED     := pUUPDATED     ;
	aSTATUS       := pSTATUS       ;
	autocommit := true;
END;

CONSTRUCTOR TGENPERSON.Create(const pObjeto:TGENPERSON);
BEGIN
	aID           := pObjeto.ID           ;
	aNAME         := pObjeto.NAME         ;
	aLASTNAME1    := pObjeto.LASTNAME1    ;
	aLASTNAME2    := pObjeto.LASTNAME2    ;
	aSEX          := pObjeto.SEX          ;
	aBIRTHDAY     := pObjeto.BIRTHDAY     ;
	aDOCID        := pObjeto.DOCID        ;
	aEXPID        := pObjeto.EXPID        ;
	aDOCUMENT     := pObjeto.DOCUMENT     ;
	aNIT          := pObjeto.NIT          ;
	aPHONE        := pObjeto.PHONE        ;
	aEMAIL        := pObjeto.EMAIL        ;
	aPOSTCODE     := pObjeto.POSTCODE     ;
	aWEBSITE      := pObjeto.WEBSITE      ;
	aADDRESS      := pObjeto.ADDRESS      ;
	aPAISID       := pObjeto.PAISID       ;
	aOCUPATIONID  := pObjeto.OCUPATIONID  ;
	aMASTERCONTACT:= pObjeto.MASTERCONTACT;
	aPOINTS       := pObjeto.POINTS       ;
	aFATHER       := pObjeto.FATHER       ;
	aMOTHER       := pObjeto.MOTHER       ;
	aDATA0        := pObjeto.DATA0        ;
	aDATA1        := pObjeto.DATA1        ;
	aCOMPANYID    := pObjeto.COMPANYID    ;
	aCREATED      := pObjeto.CREATED      ;
	aUCREATED     := pObjeto.UCREATED     ;
	aUPDATED      := pObjeto.UPDATED      ;
	aUUPDATED     := pObjeto.UUPDATED     ;
	aSTATUS       := pObjeto.STATUS       ;
	autocommit := pObjeto.autocommit;
END;

DESTRUCTOR TGENPERSON.Destroy;
BEGIN

	inherited Destroy;
END;

PROCEDURE TGENPERSON.init;
BEGIN
	aID           := '';
	aNAME         := '';
	aLASTNAME1    := '';
	aLASTNAME2    := '';
	aSEX          := '';
	aBIRTHDAY     := 0;
	aDOCID        := 0;
	aEXPID        := 0;
	aDOCUMENT     := '';
	aNIT          := '';
	aPHONE        := '';
	aEMAIL        := '';
	aPOSTCODE     := '';
	aWEBSITE      := '';
	aADDRESS      := '';
	aPAISID       := 0;
	aOCUPATIONID  := 0;
	aMASTERCONTACT:= '';
	aPOINTS       := 0;
	aFATHER       := '';
	aMOTHER       := '';
	aDATA0        := '';
	aDATA1        := '';
	aCOMPANYID    := 0;
	aCREATED      := 0;
	aUCREATED     := 0;
	aUPDATED      := 0;
	aUUPDATED     := 0;
	aSTATUS       := '';
END;

PROCEDURE TGENPERSON.fromJsonString(s:string);
BEGIN
	self.fromJson(TlkJSON.ParseText(s) as TlkJSONobject);
END;

PROCEDURE TGENPERSON.fromJson(o:TlkJSONobject);
BEGIN
	ID            := (o.Field['ID'] as TlkJSONstring).Value;
	NAME          := (o.Field['NAME'] as TlkJSONstring).Value;
	LASTNAME1     := (o.Field['LASTNAME1'] as TlkJSONstring).Value;
	LASTNAME2     := (o.Field['LASTNAME2'] as TlkJSONstring).Value;
	SEX           := (o.Field['SEX'] as TlkJSONstring).Value;
	BIRTHDAY      := (o.Field['BIRTHDAY'] as TlkJSONnumber).Value;
	DOCID         := (o.Field['DOCID'] as TlkJSONnumber).Value;
	EXPID         := (o.Field['EXPID'] as TlkJSONnumber).Value;
	DOCUMENT      := (o.Field['DOCUMENT'] as TlkJSONstring).Value;
	NIT           := (o.Field['NIT'] as TlkJSONstring).Value;
	PHONE         := (o.Field['PHONE'] as TlkJSONstring).Value;
	EMAIL         := (o.Field['EMAIL'] as TlkJSONstring).Value;
	POSTCODE      := (o.Field['POSTCODE'] as TlkJSONstring).Value;
	WEBSITE       := (o.Field['WEBSITE'] as TlkJSONstring).Value;
	ADDRESS       := (o.Field['ADDRESS'] as TlkJSONstring).Value;
	PAISID        := (o.Field['PAISID'] as TlkJSONnumber).Value;
	OCUPATIONID   := (o.Field['OCUPATIONID'] as TlkJSONnumber).Value;
	MASTERCONTACT := (o.Field['MASTERCONTACT'] as TlkJSONstring).Value;
	POINTS        := (o.Field['POINTS'] as TlkJSONnumber).Value;
	FATHER        := (o.Field['FATHER'] as TlkJSONstring).Value;
	MOTHER        := (o.Field['MOTHER'] as TlkJSONstring).Value;
	DATA0         := (o.Field['DATA0'] as TlkJSONstring).Value;
	DATA1         := (o.Field['DATA1'] as TlkJSONstring).Value;
	COMPANYID     := (o.Field['COMPANYID'] as TlkJSONnumber).Value;
	CREATED       := (o.Field['CREATED'] as TlkJSONnumber).Value;
	UCREATED      := (o.Field['UCREATED'] as TlkJSONnumber).Value;
	UPDATED       := (o.Field['UPDATED'] as TlkJSONnumber).Value;
	UUPDATED      := (o.Field['UUPDATED'] as TlkJSONnumber).Value;
	STATUS        := (o.Field['STATUS'] as TlkJSONstring).Value;
END;

FUNCTION TGENPERSON.toJsonString : string;
var  json : TlkJSONobject;
BEGIN
	json := TlkJSONobject.Create();
	TRY
		json.Add('ID',TlkJSONstring.Generate(ID));
		json.Add('NAME',TlkJSONstring.Generate(NAME));
		json.Add('LASTNAME1',TlkJSONstring.Generate(LASTNAME1));
		json.Add('LASTNAME2',TlkJSONstring.Generate(LASTNAME2));
		json.Add('SEX',TlkJSONstring.Generate(SEX));
		json.Add('BIRTHDAY',TlkJSONNumber.Generate(BIRTHDAY));
		json.Add('DOCID',TlkJSONNumber.Generate(DOCID));
		json.Add('EXPID',TlkJSONNumber.Generate(EXPID));
		json.Add('DOCUMENT',TlkJSONstring.Generate(DOCUMENT));
		json.Add('NIT',TlkJSONstring.Generate(NIT));
		json.Add('PHONE',TlkJSONstring.Generate(PHONE));
		json.Add('EMAIL',TlkJSONstring.Generate(EMAIL));
		json.Add('POSTCODE',TlkJSONstring.Generate(POSTCODE));
		json.Add('WEBSITE',TlkJSONstring.Generate(WEBSITE));
		json.Add('ADDRESS',TlkJSONstring.Generate(ADDRESS));
		json.Add('PAISID',TlkJSONNumber.Generate(PAISID));
		json.Add('OCUPATIONID',TlkJSONNumber.Generate(OCUPATIONID));
		json.Add('MASTERCONTACT',TlkJSONstring.Generate(MASTERCONTACT));
		json.Add('POINTS',TlkJSONNumber.Generate(POINTS));
		json.Add('FATHER',TlkJSONstring.Generate(FATHER));
		json.Add('MOTHER',TlkJSONstring.Generate(MOTHER));
		json.Add('DATA0',TlkJSONstring.Generate(DATA0));
		json.Add('DATA1',TlkJSONstring.Generate(DATA1));
		json.Add('COMPANYID',TlkJSONNumber.Generate(COMPANYID));
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


PROCEDURE TGENPERSON.setAtributos(pID:String; pNAME:String; pLASTNAME1:String; pLASTNAME2:String; pSEX:String; pBIRTHDAY:TDateTime; pDOCID:Integer; pEXPID:Integer; pDOCUMENT:String; pNIT:String; pPHONE:String; pEMAIL:String; pPOSTCODE:String; pWEBSITE:String; pADDRESS:String; pPAISID:Integer; pOCUPATIONID:Integer; pMASTERCONTACT:String; pPOINTS:Integer; pFATHER:String; pMOTHER:String; pDATA0:String; pDATA1:String; pCOMPANYID:Integer; pCREATED:TDateTime; pUCREATED:Integer; pUPDATED:TDateTime; pUUPDATED:Integer; pSTATUS:String);
BEGIN
	aID           := pID           ;
	aNAME         := pNAME         ;
	aLASTNAME1    := pLASTNAME1    ;
	aLASTNAME2    := pLASTNAME2    ;
	aSEX          := pSEX          ;
	aBIRTHDAY     := pBIRTHDAY     ;
	aDOCID        := pDOCID        ;
	aEXPID        := pEXPID        ;
	aDOCUMENT     := pDOCUMENT     ;
	aNIT          := pNIT          ;
	aPHONE        := pPHONE        ;
	aEMAIL        := pEMAIL        ;
	aPOSTCODE     := pPOSTCODE     ;
	aWEBSITE      := pWEBSITE      ;
	aADDRESS      := pADDRESS      ;
	aPAISID       := pPAISID       ;
	aOCUPATIONID  := pOCUPATIONID  ;
	aMASTERCONTACT:= pMASTERCONTACT;
	aPOINTS       := pPOINTS       ;
	aFATHER       := pFATHER       ;
	aMOTHER       := pMOTHER       ;
	aDATA0        := pDATA0        ;
	aDATA1        := pDATA1        ;
	aCOMPANYID    := pCOMPANYID    ;
	aCREATED      := pCREATED      ;
	aUCREATED     := pUCREATED     ;
	aUPDATED      := pUPDATED      ;
	aUUPDATED     := pUUPDATED     ;
	aSTATUS       := pSTATUS       ;
END;

FUNCTION TGENPERSON.sqlGetField(field:string) : string;
BEGIN
	RESULT := 'select '+field+' from GENERAL_PERSON order by '+field;
END;

FUNCTION TGENPERSON.sqlGetKeyValue(key,value : string) : string;
BEGIN
	RESULT := 'select '+key+' as key,'+value+'as value from GENERAL_PERSON order by '+value;
END;

FUNCTION  TGENPERSON.sqlGetAll : string;
BEGIN
	RESULT := 'select * from GENERAL_PERSON';
END;

PROCEDURE TGENPERSON.filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
var  	y : string;
	i : word;
BEGIN
	y := ' where ';
	IF SELF.ID<>'' THEN
	BEGIN
		cds.sql.add( y +'ID= :pID');
		cds.ParamByName('pID').asString	:= SELF.ID;
		y := ' and ';
	END;

	IF SELF.NAME<>'' THEN
	BEGIN
		cds.sql.add( y +'NAME like :pNAME');
		cds.ParamByName('pNAME').asString	:= '%'+SELF.NAME+'%';
		y := ' and ';
	END;

	IF SELF.LASTNAME1<>'' THEN
	BEGIN
		cds.sql.add( y +'LASTNAME1 like :pLASTNAME1');
		cds.ParamByName('pLASTNAME1').asString	:= '%'+SELF.LASTNAME1+'%';
		y := ' and ';
	END;

	IF SELF.LASTNAME2<>'' THEN
	BEGIN
		cds.sql.add( y +'LASTNAME2 like :pLASTNAME2');
		cds.ParamByName('pLASTNAME2').asString	:= '%'+SELF.LASTNAME2+'%';
		y := ' and ';
	END;

	IF SELF.SEX<>'' THEN
	BEGIN
		cds.sql.add( y +'SEX= :pSEX');
		cds.ParamByName('pSEX').asString	:= SELF.SEX;
		y := ' and ';
	END;

	IF SELF.BIRTHDAY<>0 THEN
	BEGIN
		cds.sql.add( y +'BIRTHDAY= :pBIRTHDAY');
		cds.ParamByName('pBIRTHDAY').asDateTime	:= SELF.BIRTHDAY;
		y := ' and ';
	END;
{
	IF SELF.DOCID<>0 THEN
	BEGIN
		cds.sql.add( y +'DOCID= :pDOCID');
		cds.ParamByName('pDOCID').asInteger	:= SELF.DOCID;
		y := ' and ';
	END;

	IF SELF.EXPID<>0 THEN
	BEGIN
		cds.sql.add( y +'EXPID= :pEXPID');
		cds.ParamByName('pEXPID').asInteger	:= SELF.EXPID;
		y := ' and ';
	END;
 }
	IF SELF.DOCUMENT<>'' THEN
	BEGIN
		cds.sql.add( y +'DOCUMENT like :pDOCUMENT');
		cds.ParamByName('pDOCUMENT').asString	:= '%'+SELF.DOCUMENT+'%';
		y := ' and ';
	END;

	IF SELF.NIT<>'' THEN
	BEGIN
		cds.sql.add( y +'NIT= :pNIT');
		cds.ParamByName('pNIT').asString	:= SELF.NIT;
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

	IF SELF.POSTCODE<>'' THEN
	BEGIN
		cds.sql.add( y +'POSTCODE= :pPOSTCODE');
		cds.ParamByName('pPOSTCODE').asString	:= SELF.POSTCODE;
		y := ' and ';
	END;

	IF SELF.WEBSITE<>'' THEN
	BEGIN
		cds.sql.add( y +'WEBSITE= :pWEBSITE');
		cds.ParamByName('pWEBSITE').asString	:= SELF.WEBSITE;
		y := ' and ';
	END;

	IF SELF.ADDRESS<>'' THEN
	BEGIN
		cds.sql.add( y +'ADDRESS= :pADDRESS');
		cds.ParamByName('pADDRESS').asString	:= SELF.ADDRESS;
		y := ' and ';
	END;

	IF SELF.PAISID<>0 THEN
	BEGIN
		cds.sql.add( y +'PAIS_ID= :pPAISID');
		cds.ParamByName('pPAISID').asInteger	:= SELF.PAISID;
		y := ' and ';
	END;

	IF SELF.OCUPATIONID<>0 THEN
	BEGIN
		cds.sql.add( y +'OCUPATION_ID= :pOCUPATIONID');
		cds.ParamByName('pOCUPATIONID').asInteger	:= SELF.OCUPATIONID;
		y := ' and ';
	END;

	IF SELF.MASTERCONTACT<>'' THEN
	BEGIN
		cds.sql.add( y +'MASTERCONTACT= :pMASTERCONTACT');
		cds.ParamByName('pMASTERCONTACT').asString	:= SELF.MASTERCONTACT;
		y := ' and ';
	END;

	IF SELF.POINTS<>0 THEN
	BEGIN
		cds.sql.add( y +'POINTS= :pPOINTS');
		cds.ParamByName('pPOINTS').asInteger	:= SELF.POINTS;
		y := ' and ';
	END;

	IF SELF.FATHER<>'' THEN
	BEGIN
		cds.sql.add( y +'FATHER= :pFATHER');
		cds.ParamByName('pFATHER').asString	:= SELF.FATHER;
		y := ' and ';
	END;

	IF SELF.MOTHER<>'' THEN
	BEGIN
		cds.sql.add( y +'MOTHER= :pMOTHER');
		cds.ParamByName('pMOTHER').asString	:= SELF.MOTHER;
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

	IF SELF.COMPANYID<>0 THEN
	BEGIN
		cds.sql.add( y +'COMPANY_ID in (0,:pCOMPANYID)');
		cds.ParamByName('pCOMPANYID').asInteger	:= SELF.COMPANYID;
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
 }
	IF SELF.STATUS<>'' THEN
	BEGIN
		cds.sql.add( y +'STATUS= :pSTATUS');
		cds.ParamByName('pSTATUS').asString	:= SELF.STATUS;
		y := ' and ';
	END;


	if where <> '' then
	begin
	cds.sql.add(where);
	for i:=0 to params.count-1 do
		cds.params.AddOneParamItem(params.items[i]);
	end;
	
END;


PROCEDURE TGENPERSON.QBE(ClientDS: TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add(sqlGetAll);
	filtrar(ClientDS,where,params);
	clientDS.prepare;
	clientDS.Open;
END;

PROCEDURE TGENPERSON.QBE(columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add('select '+columns+ ' from GENERAL_PERSON');
	ClientDS.SQL.Add('where '+where);

	if params <> NIL then
		ClientDS.Params := params;

	clientDS.prepare;
	clientDS.Open;
END;

function TGENPERSON.exist(ClientDS: TAstaClientDataSet): boolean;
begin
		RESULT := FALSE;
end;

procedure TGENPERSON.fromClientDataSet(ClientDS: TAstaClientDataSet);
begin
	inherited;
	IF NOT ClientDS.Active THEN EXIT;
	SELF.ID            := clientDS.FieldByName('ID').AsString;
	SELF.NAME          := clientDS.FieldByName('NAME').AsString;
	SELF.LASTNAME1     := clientDS.FieldByName('LASTNAME1').AsString;
	SELF.LASTNAME2     := clientDS.FieldByName('LASTNAME2').AsString;
	SELF.SEX           := clientDS.FieldByName('SEX').AsString;
	SELF.BIRTHDAY      := clientDS.FieldByName('BIRTHDAY').AsDateTime;
	SELF.DOCID         := clientDS.FieldByName('DOC_ID').AsInteger;
	SELF.EXPID         := clientDS.FieldByName('EXP_ID').AsInteger;
	SELF.DOCUMENT      := clientDS.FieldByName('DOCUMENT').AsString;
	SELF.NIT           := clientDS.FieldByName('NIT').AsString;
	SELF.PHONE         := clientDS.FieldByName('PHONE').AsString;
	SELF.EMAIL         := clientDS.FieldByName('EMAIL').AsString;
	SELF.POSTCODE      := clientDS.FieldByName('POSTCODE').AsString;
	SELF.WEBSITE       := clientDS.FieldByName('WEBSITE').AsString;
	SELF.ADDRESS       := clientDS.FieldByName('ADDRESS').AsString;
	SELF.PAISID        := clientDS.FieldByName('PAIS_ID').AsInteger;
	SELF.OCUPATIONID   := clientDS.FieldByName('OCUPATION_ID').AsInteger;
	SELF.MASTERCONTACT := clientDS.FieldByName('MASTERCONTACT').AsString;
	SELF.POINTS        := clientDS.FieldByName('POINTS').AsInteger;
	SELF.FATHER        := clientDS.FieldByName('FATHER').AsString;
	SELF.MOTHER        := clientDS.FieldByName('MOTHER').AsString;
	SELF.DATA0         := clientDS.FieldByName('DATA0').AsString;
	SELF.DATA1         := clientDS.FieldByName('DATA1').AsString;
	SELF.COMPANYID     := clientDS.FieldByName('COMPANY_ID').AsInteger;
	SELF.CREATED       := clientDS.FieldByName('CREATED').AsDateTime;
	SELF.UCREATED      := clientDS.FieldByName('UCREATED_ID').AsInteger;
	SELF.UPDATED       := clientDS.FieldByName('UPDATED').AsDateTime;
	SELF.UUPDATED      := clientDS.FieldByName('UUPDATED_ID').AsInteger;
	SELF.STATUS        := clientDS.FieldByName('STATUS').AsString;
end;

procedure TGENPERSON.fromGUI(form: TForm);
begin
	with form do
	begin
		SELF.ID           := utils.formObtenerPropiedad(FindComponent('cID'),'Text');
		SELF.NAME         := utils.formObtenerPropiedad(FindComponent('cNAME'),'Text');
		SELF.LASTNAME1    := utils.formObtenerPropiedad(FindComponent('cLASTNAME1'),'Text');
		SELF.LASTNAME2    := utils.formObtenerPropiedad(FindComponent('cLASTNAME2'),'Text');
		SELF.SEX          := utils.formObtenerPropiedad(FindComponent('cSEX'),'Text');
		SELF.BIRTHDAY     := StrToDate(utils.formObtenerPropiedad(FindComponent('cBIRTHDAY'),'Text'));
//		SELF.DOCID        := utils.formObtenerPropiedad(FindComponent('cDOCID'),'Text');
//		SELF.EXPID        := utils.formObtenerPropiedad(FindComponent('cEXPID'),'Text');
		SELF.DOCUMENT     := utils.formObtenerPropiedad(FindComponent('cDOCUMENT'),'Text');
		SELF.NIT          := utils.formObtenerPropiedad(FindComponent('cNIT'),'Text');
		SELF.PHONE        := utils.formObtenerPropiedad(FindComponent('cPHONE'),'Text');
		SELF.EMAIL        := utils.formObtenerPropiedad(FindComponent('cEMAIL'),'Text');
		SELF.POSTCODE     := utils.formObtenerPropiedad(FindComponent('cPOSTCODE'),'Text');
		SELF.WEBSITE      := utils.formObtenerPropiedad(FindComponent('cWEBSITE'),'Text');
		SELF.ADDRESS      := utils.formObtenerPropiedad(FindComponent('cADDRESS'),'Text');
//		SELF.PAISID       := utils.formObtenerPropiedad(FindComponent('cPAISID'),'Text');
//		SELF.OCUPATIONID  := utils.formObtenerPropiedad(FindComponent('cOCUPATIONID'),'Text');
		SELF.MASTERCONTACT:= utils.formObtenerPropiedad(FindComponent('cMASTERCONTACT'),'Text');
//		SELF.POINTS       := StrToInt(utils.formObtenerPropiedad(FindComponent('cPOINTS'),'Text'));
//		SELF.FATHER       := utils.formObtenerPropiedad(FindComponent('cFATHER'),'Text');
//		SELF.MOTHER       := utils.formObtenerPropiedad(FindComponent('cMOTHER'),'Text');
		SELF.DATA0        := utils.formObtenerPropiedad(FindComponent('cDATA0'),'Text');
//		SELF.DATA1        := utils.formObtenerPropiedad(FindComponent('cDATA1'),'Text');
		SELF.COMPANYID    := GUser.company_ID;
		SELF.CREATED      := now;
		SELF.UCREATED     := Guser.ID;
		SELF.UPDATED      := now;
		SELF.UUPDATED     := Guser.ID;
//		SELF.STATUS       := utils.formObtenerPropiedad(FindComponent('cSTATUS'),'Text');
	end;
end;

procedure TGENPERSON.toGUI(form: TForm);
begin
	inherited;
	with form do
	begin
	utils.formAsignaPropiedad(FindComponent('cID'),'Text', (SELF.ID));
	utils.formAsignaPropiedad(FindComponent('cNAME'),'Text', (SELF.NAME));
	utils.formAsignaPropiedad(FindComponent('cLASTNAME1'),'Text', (SELF.LASTNAME1));
	utils.formAsignaPropiedad(FindComponent('cLASTNAME2'),'Text', (SELF.LASTNAME2));
	utils.formAsignaPropiedad(FindComponent('cSEX'),'Text', (SELF.SEX));
	utils.formAsignaPropiedad(FindComponent('cBIRTHDAY'),'Text',  DateToStr(SELF.BIRTHDAY));
///	utils.formAsignaPropiedad(FindComponent('cDOCID'),'Text', IntTOStr(SELF.DOCID));
//	utils.formAsignaPropiedad(FindComponent('cEXPID'),'Text', IntTOStr(SELF.EXPID));
	utils.formAsignaPropiedad(FindComponent('cDOCUMENT'),'Text', (SELF.DOCUMENT));
	utils.formAsignaPropiedad(FindComponent('cNIT'),'Text', (SELF.NIT));
	utils.formAsignaPropiedad(FindComponent('cPHONE'),'Text', (SELF.PHONE));
	utils.formAsignaPropiedad(FindComponent('cEMAIL'),'Text', (SELF.EMAIL));
	utils.formAsignaPropiedad(FindComponent('cPOSTCODE'),'Text', (SELF.POSTCODE));
	utils.formAsignaPropiedad(FindComponent('cWEBSITE'),'Text', (SELF.WEBSITE));
	utils.formAsignaPropiedad(FindComponent('cADDRESS'),'Text', (SELF.ADDRESS));
//	utils.formAsignaPropiedad(FindComponent('cPAISID'),'Text', IntTOStr(SELF.PAISID));
//	utils.formAsignaPropiedad(FindComponent('cOCUPATIONID'),'Text', IntTOStr(SELF.OCUPATIONID));
	utils.formAsignaPropiedad(FindComponent('cMASTERCONTACT'),'Text', (SELF.MASTERCONTACT));
//	utils.formAsignaPropiedad(FindComponent('cPOINTS'),'Text', IntTOStr(SELF.POINTS));
//	utils.formAsignaPropiedad(FindComponent('cFATHER'),'Text', (SELF.FATHER));
//	utils.formAsignaPropiedad(FindComponent('cMOTHER'),'Text', (SELF.MOTHER));
//	utils.formAsignaPropiedad(FindComponent('cDATA0'),'Text', (SELF.DATA0));
//	utils.formAsignaPropiedad(FindComponent('cDATA1'),'Text', (SELF.DATA1));
//	utils.formAsignaPropiedad(FindComponent('cCOMPANYID'),'Text', IntTOStr(SELF.COMPANYID));
//	utils.formAsignaPropiedad(FindComponent('cCREATED'),'Text', IntTOStr(SELF.CREATED));
//	utils.formAsignaPropiedad(FindComponent('cUCREATED'),'Text', IntTOStr(SELF.UCREATED));
//	utils.formAsignaPropiedad(FindComponent('cUPDATED'),'Text', IntTOStr(SELF.UPDATED));
//	utils.formAsignaPropiedad(FindComponent('cUUPDATED'),'Text', IntTOStr(SELF.UUPDATED));
//	utils.formAsignaPropiedad(FindComponent('cSTATUS'),'Text', (SELF.STATUS));
	end;
end;

function TGENPERSON.save(ClientDS: TAstaClientDataSet;transacction: byte ): byte;
var  date: TDateTime;
begin
	RESULT := cFalse;
	date := self.getFechaHoraServer(ClientDS);
	initDataSet(ClientDS);

	TRY

	case transacction of

	1 : begin         //update
		ClientDS.SQL.Add('UPDATE GENERAL_PERSON SET '+
				' NAME = :pNAME'+
				',LASTNAME1 = :pLASTNAME1'+
				',LASTNAME2 = :pLASTNAME2'+
				',SEX = :pSEX'+
				',BIRTHDAY = :pBIRTHDAY'+
				',DOC_ID = :pDOCID'+
				',EXP_ID = :pEXPID'+
				',DOCUMENT = :pDOCUMENT'+
				',NIT = :pNIT'+
				',PHONE = :pPHONE'+
				',EMAIL = :pEMAIL'+
				',POSTCODE = :pPOSTCODE'+
				',WEBSITE = :pWEBSITE'+
				',ADDRESS = :pADDRESS'+
				',PAIS_ID = :pPAISID'+
				',OCUPATION_ID = :pOCUPATIONID'+
				',MASTERCONTACT = :pMASTERCONTACT'+
				',POINTS = :pPOINTS'+
				',FATHER = :pFATHER'+
				',MOTHER = :pMOTHER'+
				',DATA0 = :pDATA0'+
				',DATA1 = :pDATA1'+
				',COMPANY_ID = :pCOMPANYID'+
				',UPDATED = :pUPDATED'+
				',UUPDATED_ID = :pUUPDATED'+
				',STATUS = :pSTATUS'+
				' WHERE ID = :pID'
		);
		ClientDS.ParamByName('pID').asString                   := SELF.ID;
		ClientDS.ParamByName('pNAME').asString                 := SELF.NAME;
		ClientDS.ParamByName('pLASTNAME1').asString            := SELF.LASTNAME1;
		ClientDS.ParamByName('pLASTNAME2').asString            := SELF.LASTNAME2;
		ClientDS.ParamByName('pSEX').asString                  := SELF.SEX;
		ClientDS.ParamByName('pBIRTHDAY').asDatetime           := SELF.BIRTHDAY;
		ClientDS.ParamByName('pDOCID').asInteger               := SELF.DOCID;
		ClientDS.ParamByName('pEXPID').asInteger               := SELF.EXPID;
		ClientDS.ParamByName('pDOCUMENT').asString             := SELF.DOCUMENT;
		ClientDS.ParamByName('pNIT').asString                  := SELF.NIT;
		ClientDS.ParamByName('pPHONE').asString                := SELF.PHONE;
		ClientDS.ParamByName('pEMAIL').asString                := SELF.EMAIL;
		ClientDS.ParamByName('pPOSTCODE').asString             := SELF.POSTCODE;
		ClientDS.ParamByName('pWEBSITE').asString              := SELF.WEBSITE;
		ClientDS.ParamByName('pADDRESS').asString              := SELF.ADDRESS;
		ClientDS.ParamByName('pPAISID').asInteger              := SELF.PAISID;
		ClientDS.ParamByName('pOCUPATIONID').asInteger         := SELF.OCUPATIONID;
		ClientDS.ParamByName('pMASTERCONTACT').asString        := SELF.MASTERCONTACT;
		ClientDS.ParamByName('pPOINTS').asInteger              := SELF.POINTS;
		ClientDS.ParamByName('pFATHER').asString               := SELF.FATHER;
		ClientDS.ParamByName('pMOTHER').asString               := SELF.MOTHER;
		ClientDS.ParamByName('pDATA0').asString                := SELF.DATA0;
		ClientDS.ParamByName('pDATA1').asString                := SELF.DATA1;
		ClientDS.ParamByName('pCOMPANYID').asInteger           := SELF.COMPANYID;
		ClientDS.ParamByName('pUPDATED').asDatetime            := date;
		ClientDS.ParamByName('pUUPDATED').asInteger            := SELF.UUPDATED;
		ClientDS.ParamByName('pSTATUS').asString               := SELF.STATUS;
	end;

	0: begin	//insert
		initDataSet(ClientDS);

		if trim(self.ID) = '' then
				nextID(ClientDS);		//genera un guid elfico

		ClientDS.SQL.Add('INSERT INTO GENERAL_PERSON (ID,NAME,LASTNAME1,LASTNAME2,SEX,BIRTHDAY,DOC_ID,EXP_ID,DOCUMENT,NIT,PHONE,EMAIL,POSTCODE,WEBSITE,ADDRESS,PAIS_ID,OCUPATION_ID,MASTERCONTACT,POINTS,FATHER,MOTHER,DATA0,DATA1,');
    ClientDS.SQL.Add('COMPANY_ID,CREATED,UCREATED_ID,UPDATED,UUPDATED_ID,STATUS,CONCURRENCY)');
		ClientDS.SQL.Add(' VALUES ');
		ClientDS.SQL.Add('(:pID,:pNAME,:pLASTNAME1,:pLASTNAME2,:pSEX,:pBIRTHDAY,:pDOCID,:pEXPID,:pDOCUMENT,:pNIT,:pPHONE,:pEMAIL,:pPOSTCODE,:pWEBSITE,:pADDRESS,');
		ClientDS.SQL.Add(':pPAISID,:pOCUPATIONID,:pMASTERCONTACT,:pPOINTS,:pFATHER,:pMOTHER,:pDATA0,:pDATA1,:pCOMPANYID,:pCREATED,:pUCREATED,:pUPDATED,:pUUPDATED,:pSTATUS,:PCON)');
		ClientDS.ParamByName('pID').asString                   := SELF.ID;
		ClientDS.ParamByName('pNAME').asString                 := SELF.NAME;
		ClientDS.ParamByName('pLASTNAME1').asString            := SELF.LASTNAME1;
		ClientDS.ParamByName('pLASTNAME2').asString            := SELF.LASTNAME2;
		ClientDS.ParamByName('pSEX').asString                  := SELF.SEX;
		ClientDS.ParamByName('pBIRTHDAY').asDatetime           := SELF.BIRTHDAY;
		ClientDS.ParamByName('pDOCID').asInteger               := SELF.DOCID;
		ClientDS.ParamByName('pEXPID').asInteger               := SELF.EXPID;
		ClientDS.ParamByName('pDOCUMENT').asString             := SELF.DOCUMENT;
		ClientDS.ParamByName('pNIT').asString                  := SELF.NIT;
		ClientDS.ParamByName('pPHONE').asString                := SELF.PHONE;
		ClientDS.ParamByName('pEMAIL').asString                := SELF.EMAIL;
		ClientDS.ParamByName('pPOSTCODE').asString             := SELF.POSTCODE;
		ClientDS.ParamByName('pWEBSITE').asString              := SELF.WEBSITE;
		ClientDS.ParamByName('pADDRESS').asString              := SELF.ADDRESS;
		ClientDS.ParamByName('pPAISID').asInteger              := SELF.PAISID;
		ClientDS.ParamByName('pOCUPATIONID').asInteger         := SELF.OCUPATIONID;
		ClientDS.ParamByName('pMASTERCONTACT').asString        := SELF.MASTERCONTACT;
		ClientDS.ParamByName('pPOINTS').asInteger              := SELF.POINTS;
		ClientDS.ParamByName('pFATHER').asString               := SELF.FATHER;
		ClientDS.ParamByName('pMOTHER').asString               := SELF.MOTHER;
		ClientDS.ParamByName('pDATA0').asString                := SELF.DATA0;
		ClientDS.ParamByName('pDATA1').asString                := SELF.DATA1;
		ClientDS.ParamByName('pCOMPANYID').asInteger           := SELF.COMPANYID;
		ClientDS.ParamByName('pCREATED').asDatetime            := date;
		ClientDS.ParamByName('pUCREATED').asInteger            := SELF.UCREATED;
		ClientDS.ParamByName('pUPDATED').asDatetime            := date;
		ClientDS.ParamByName('pUUPDATED').asInteger            := SELF.UUPDATED;
		ClientDS.ParamByName('pSTATUS').asString               := SELF.STATUS;
    ClientDS.ParamByName('pCON').asInteger            := 0;

	end;

	2: begin //delete
		ClientDS.SQL.Add('delete from GENERAL_PERSON where id =:pid');
		ClientDS.ParamByName('pID').AsString := SELF.ID;
	end;


	end;
	if autocommit then
//		ClientDS.AstaClientSocket.StartTransaction;

	Result := cTrue;

	 FINALLY
   ClientDS.ExecSQLTransaction;
	if autocommit then
//			ClientDS.AstaClientSocket.EndTransaction(true);
	 END;
end;

procedure TGENPERSON.nextID(ClientDS: TAstaClientDataSet);
begin
	 SELF.ID := IntToStr(utils.GetHashElfico(self.LASTNAME1+Self.LASTNAME2+self.NAME+self.aSEX+Self.aPHONE+self.aEMAIL+self.MASTERCONTACT+DateToStr(self.aBIRTHDAY)));
end;


PROCEDURE TGENPERSON.setID(pID:String);
BEGIN
	aID:= pID;
END;

PROCEDURE TGENPERSON.setNAME(pNAME:String);
BEGIN
	aNAME:= pNAME;
END;

PROCEDURE TGENPERSON.setLASTNAME1(pLASTNAME1:String);
BEGIN
	aLASTNAME1:= pLASTNAME1;
END;

PROCEDURE TGENPERSON.setLASTNAME2(pLASTNAME2:String);
BEGIN
	aLASTNAME2:= pLASTNAME2;
END;

PROCEDURE TGENPERSON.setSEX(pSEX:String);
BEGIN
	aSEX:= pSEX;
END;

PROCEDURE TGENPERSON.setBIRTHDAY(pBIRTHDAY:TDateTime);
BEGIN
	aBIRTHDAY:= pBIRTHDAY;
END;

PROCEDURE TGENPERSON.setDOCID(pDOCID:Integer);
BEGIN
	aDOCID:= pDOCID;
END;

PROCEDURE TGENPERSON.setEXPID(pEXPID:Integer);
BEGIN
	aEXPID:= pEXPID;
END;

PROCEDURE TGENPERSON.setDOCUMENT(pDOCUMENT:String);
BEGIN
	aDOCUMENT:= pDOCUMENT;
END;

PROCEDURE TGENPERSON.setNIT(pNIT:String);
BEGIN
	aNIT:= pNIT;
END;

PROCEDURE TGENPERSON.setPHONE(pPHONE:String);
BEGIN
	aPHONE:= pPHONE;
END;

PROCEDURE TGENPERSON.setEMAIL(pEMAIL:String);
BEGIN
	aEMAIL:= pEMAIL;
END;

PROCEDURE TGENPERSON.setPOSTCODE(pPOSTCODE:String);
BEGIN
	aPOSTCODE:= pPOSTCODE;
END;

PROCEDURE TGENPERSON.setWEBSITE(pWEBSITE:String);
BEGIN
	aWEBSITE:= pWEBSITE;
END;

PROCEDURE TGENPERSON.setADDRESS(pADDRESS:String);
BEGIN
	aADDRESS:= pADDRESS;
END;

PROCEDURE TGENPERSON.setPAISID(pPAISID:Integer);
BEGIN
	aPAISID:= pPAISID;
END;

PROCEDURE TGENPERSON.setOCUPATIONID(pOCUPATIONID:Integer);
BEGIN
	aOCUPATIONID:= pOCUPATIONID;
END;

PROCEDURE TGENPERSON.setMASTERCONTACT(pMASTERCONTACT:String);
BEGIN
	aMASTERCONTACT:= pMASTERCONTACT;
END;

PROCEDURE TGENPERSON.setPOINTS(pPOINTS:Integer);
BEGIN
	aPOINTS:= pPOINTS;
END;

PROCEDURE TGENPERSON.setFATHER(pFATHER:String);
BEGIN
	aFATHER:= pFATHER;
END;

PROCEDURE TGENPERSON.setMOTHER(pMOTHER:String);
BEGIN
	aMOTHER:= pMOTHER;
END;

PROCEDURE TGENPERSON.setDATA0(pDATA0:String);
BEGIN
	aDATA0:= pDATA0;
END;

PROCEDURE TGENPERSON.setDATA1(pDATA1:String);
BEGIN
	aDATA1:= pDATA1;
END;

PROCEDURE TGENPERSON.setCOMPANYID(pCOMPANYID:Integer);
BEGIN
	aCOMPANYID:= pCOMPANYID;
END;

PROCEDURE TGENPERSON.setCREATED(pCREATED:TDateTime);
BEGIN
	aCREATED:= pCREATED;
END;

PROCEDURE TGENPERSON.setUCREATED(pUCREATED:Integer);
BEGIN
	aUCREATED:= pUCREATED;
END;

PROCEDURE TGENPERSON.setUPDATED(pUPDATED:TDateTime);
BEGIN
	aUPDATED:= pUPDATED;
END;

PROCEDURE TGENPERSON.setUUPDATED(pUUPDATED:Integer);
BEGIN
	aUUPDATED:= pUUPDATED;
END;

PROCEDURE TGENPERSON.setSTATUS(pSTATUS:String);
BEGIN
	aSTATUS:= pSTATUS;
END;


FUNCTION TGENPERSON.getID	:String;
BEGIN
	RESULT := aID;
END;

FUNCTION TGENPERSON.getNAME	:String;
BEGIN
	RESULT := aNAME;
END;

FUNCTION TGENPERSON.getLASTNAME1	:String;
BEGIN
	RESULT := aLASTNAME1;
END;

FUNCTION TGENPERSON.getLASTNAME2	:String;
BEGIN
	RESULT := aLASTNAME2;
END;

FUNCTION TGENPERSON.getSEX	:String;
BEGIN
	RESULT := aSEX;
END;

FUNCTION TGENPERSON.getBIRTHDAY	:TDateTime;
BEGIN
	RESULT := aBIRTHDAY;
END;

FUNCTION TGENPERSON.getDOCID	:Integer;
BEGIN
	RESULT := aDOCID;
END;

FUNCTION TGENPERSON.getEXPID	:Integer;
BEGIN
	RESULT := aEXPID;
END;

FUNCTION TGENPERSON.getDOCUMENT	:String;
BEGIN
	RESULT := aDOCUMENT;
END;

FUNCTION TGENPERSON.getNIT	:String;
BEGIN
	RESULT := aNIT;
END;

FUNCTION TGENPERSON.getPHONE	:String;
BEGIN
	RESULT := aPHONE;
END;

FUNCTION TGENPERSON.getEMAIL	:String;
BEGIN
	RESULT := aEMAIL;
END;

FUNCTION TGENPERSON.getPOSTCODE	:String;
BEGIN
	RESULT := aPOSTCODE;
END;

FUNCTION TGENPERSON.getWEBSITE	:String;
BEGIN
	RESULT := aWEBSITE;
END;

FUNCTION TGENPERSON.getADDRESS	:String;
BEGIN
	RESULT := aADDRESS;
END;

FUNCTION TGENPERSON.getPAISID	:Integer;
BEGIN
	RESULT := aPAISID;
END;

FUNCTION TGENPERSON.getOCUPATIONID	:Integer;
BEGIN
	RESULT := aOCUPATIONID;
END;

FUNCTION TGENPERSON.getMASTERCONTACT	:String;
BEGIN
	RESULT := aMASTERCONTACT;
END;

FUNCTION TGENPERSON.getPOINTS	:Integer;
BEGIN
	RESULT := aPOINTS;
END;

FUNCTION TGENPERSON.getFATHER	:String;
BEGIN
	RESULT := aFATHER;
END;

FUNCTION TGENPERSON.getMOTHER	:String;
BEGIN
	RESULT := aMOTHER;
END;

FUNCTION TGENPERSON.getDATA0	:String;
BEGIN
	RESULT := aDATA0;
END;

FUNCTION TGENPERSON.getDATA1	:String;
BEGIN
	RESULT := aDATA1;
END;

FUNCTION TGENPERSON.getCOMPANYID	:Integer;
BEGIN
	RESULT := aCOMPANYID;
END;

FUNCTION TGENPERSON.getCREATED	:TDateTime;
BEGIN
	RESULT := aCREATED;
END;

FUNCTION TGENPERSON.getUCREATED	:Integer;
BEGIN
	RESULT := aUCREATED;
END;

FUNCTION TGENPERSON.getUPDATED	:TDateTime;
BEGIN
	RESULT := aUPDATED;
END;

FUNCTION TGENPERSON.getUUPDATED	:Integer;
BEGIN
	RESULT := aUUPDATED;
END;

FUNCTION TGENPERSON.getSTATUS	:String;
BEGIN
	RESULT := aSTATUS;
END;


function TGENPERSON.existID(ClientDS: TAstaClientDataSet): boolean;
BEGIN
	initDataSet(ClientDS);
	ClientDS.SQL.Add('select id from GENERAL_PERSON where ID=:pID');
	ClientDS.ParamByName('pID').AsString := SELF.ID;
	ClientDS.Open;

	Result := not ClientDS.IsEmpty;
end;

function TGENPERSON.existName(ClientDS: TAstaClientDataSet): boolean;
begin
	initDataSet(ClientDS);
	ClientDS.SQL.Add('select id from GENERAL_PERSON where LASTNAME1=:PN1 AND LASTNAME2=:PN2 AND NAME=:PN');
	ClientDS.ParamByName('pN1').AsString := SELF.LASTNAME1;
	ClientDS.ParamByName('pN2').AsString := SELF.LASTNAME2;
	ClientDS.ParamByName('pN').AsString := SELF.NAME;
	ClientDS.Open;
	Result := not ClientDS.IsEmpty;
end;

function TGENPERSON.getNameLong: string;
begin
		RESULT := self.NAME + IfThen(self.LASTNAME1='','',' '+self.LASTNAME1) + IfThen(self.LASTNAME2='','',' '+self.LASTNAME2);
end;

function TGENPERSON.sqlFind: string;
begin
end;

END.

