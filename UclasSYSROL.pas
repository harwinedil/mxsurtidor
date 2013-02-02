UNIT UclasSYSROL;

{
GENERADO AUTOMATICAMENTE POR "Generador v.2012"
AUTOR              : HARWIN EDIL PEREZ SALINAS   [harwinedil@gmail.com]
DESCRIPCION        : Clase para interactuar con la Tabla : SYSROL
FECHA CREACION     : 16/11/2012 Hora: 11:17:19
ULTIMA MODIFICACION: 16/11/2012 Hora: 11:17:19
MODIFICADO POR     : HARWIN EDIL PEREZ SALINAS
OBSERVACIONES      :

}

INTERFACE

USES
  sysUtils,uLkJSON,AstaDrv2,AstaClientDataset,AstaParamList,UBaseObject,Uconstantes,
  forms, classes,UGralUtilidades,Uclassecurity_mxuser, DBCtrls,SUIDBCtrls;


TYPE
	PSYSROL = ^TSYSROL;
	TSYSROL = CLASS(TBaseObject)
	PRIVATE
		aID        	: Integer; 
		aSUB       	: Integer; 
		aDESCRIPTION	: String[32]; 
		aCOMPANYID 	: Integer; 
		aCREATED   	: TDateTime; 
		aUCREATED  	: Integer; 
		aUPDATED   	: TDateTime; 
		aUUPDATED  	: Integer; 
		aCONCURRENCY	: Integer; 
		aSTATUS    	: String[1];
	PUBLIC
		CONSTRUCTOR     Create;		OVERLOAD;
		CONSTRUCTOR     Create(pID:Integer; pSUB:Integer; pDESCRIPTION:String; pCOMPANYID:Integer; pCREATED:TDateTime; pUCREATED:Integer; pUPDATED:TDateTime; pUUPDATED:Integer; pCONCURRENCY:Integer; pSTATUS:String); OVERLOAD;
		CONSTRUCTOR     Create(const pObjeto:TSYSROL);OVERLOAD;
		DESTRUCTOR      Destroy;	OVERRIDE;
		PROCEDURE       init;		OVERRIDE;
		PROCEDURE       setAtributos(pID:Integer; pSUB:Integer; pDESCRIPTION:String; pCOMPANYID:Integer; pCREATED:TDateTime; pUCREATED:Integer; pUPDATED:TDateTime; pUUPDATED:Integer; pCONCURRENCY:Integer; pSTATUS:String);		

		PROCEDURE       fromJson(o:TlkJSONobject); OVERRIDE;
		PROCEDURE       fromJsonString(s:string);  OVERRIDE;
		FUNCTION        toJsonString : string; OVERRIDE;
		FUNCTION        sqlGetField(field:string) : string; OVERRIDE;
		FUNCTION        sqlGetKeyValue(key,value : string) : string; OVERRIDE;
		FUNCTION        sqlGetAll : string; OVERRIDE;
		PROCEDURE       QBE( columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL); OVERLOAD;OVERRIDE;
		PROCEDURE       filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL); OVERRIDE;
		PROCEDURE       QBE(ClientDS: TAstaClientDataSet; where:string = '';params:TAstaParamList=NIL);  OVERLOAD;OVERRIDE;
		procedure 			nextID(ClientDS: TAstaClientDataSet); OVERRIDE;
		FUNCTION        save(ClientDS: TAstaClientDataSet; transacction: byte) : byte; OVERRIDE;
		FUNCTION        exist(ClientDS: TAstaClientDataSet) : boolean;OVERRIDE;
		PROCEDURE       fromClientDataSet(ClientDS: TAstaClientDataSet);OVERRIDE;
		PROCEDURE       fromGUI(form:TForm ); OVERRIDE;
		PROCEDURE       toGUI(form:TForm ); OVERRIDE;

		PROCEDURE   	setID(pID:Integer);
		PROCEDURE   	setSUB(pSUB:Integer);
		PROCEDURE   	setDESCRIPTION(pDESCRIPTION:String);
		PROCEDURE   	setCOMPANYID(pCOMPANYID:Integer);
		PROCEDURE   	setCREATED(pCREATED:TDateTime);
		PROCEDURE   	setUCREATED(pUCREATED:Integer);
		PROCEDURE   	setUPDATED(pUPDATED:TDateTime);
		PROCEDURE   	setUUPDATED(pUUPDATED:Integer);
		PROCEDURE   	setCONCURRENCY(pCONCURRENCY:Integer);
		PROCEDURE   	setSTATUS(pSTATUS:String);

		FUNCTION    	getID          	:Integer;
		FUNCTION    	getSUB         	:Integer;
		FUNCTION    	getDESCRIPTION 	:String;
		FUNCTION    	getCOMPANYID   	:Integer;
		FUNCTION    	getCREATED     	:TDateTime;
		FUNCTION    	getUCREATED    	:Integer;
		FUNCTION    	getUPDATED     	:TDateTime;
		FUNCTION    	getUUPDATED    	:Integer;
		FUNCTION    	getCONCURRENCY 	:Integer;
		FUNCTION    	getSTATUS      	:String;

		PROPERTY    	ID           : Integer   	read getID          	write setID          ;
		PROPERTY    	SUB          : Integer   	read getSUB         	write setSUB         ;
		PROPERTY    	DESCRIPTION  : String    	read getDESCRIPTION 	write setDESCRIPTION ;
		PROPERTY    	COMPANYID    : Integer   	read getCOMPANYID   	write setCOMPANYID   ;
		PROPERTY    	CREATED      : TDateTime 	read getCREATED     	write setCREATED     ;
		PROPERTY    	UCREATED     : Integer   	read getUCREATED    	write setUCREATED    ;
		PROPERTY    	UPDATED      : TDateTime 	read getUPDATED     	write setUPDATED     ;
		PROPERTY    	UUPDATED     : Integer   	read getUUPDATED    	write setUUPDATED    ;
		PROPERTY    	CONCURRENCY  : Integer   	read getCONCURRENCY 	write setCONCURRENCY ;
		PROPERTY    	STATUS       : String    	read getSTATUS      	write setSTATUS      ;

		
	END;

IMPLEMENTATION
{TSYSROL}

CONSTRUCTOR TSYSROL.Create;
BEGIN
	aID         := 0;
	aSUB        := 0;
	aDESCRIPTION:= '';
	aCOMPANYID  := 0;
	aCREATED    := 0;
	aUCREATED   := 0;
	aUPDATED    := 0;
	aUUPDATED   := 0;
	aCONCURRENCY:= 0;
	aSTATUS     := '';	
	autocommit := true;												
END;

CONSTRUCTOR TSYSROL.Create(pID:Integer; pSUB:Integer; pDESCRIPTION:String; pCOMPANYID:Integer; pCREATED:TDateTime; pUCREATED:Integer; pUPDATED:TDateTime; pUUPDATED:Integer; pCONCURRENCY:Integer; pSTATUS:String);
BEGIN
	aID         := pID         ;
	aSUB        := pSUB        ;
	aDESCRIPTION:= pDESCRIPTION;
	aCOMPANYID  := pCOMPANYID  ;
	aCREATED    := pCREATED    ;
	aUCREATED   := pUCREATED   ;
	aUPDATED    := pUPDATED    ;
	aUUPDATED   := pUUPDATED   ;
	aCONCURRENCY:= pCONCURRENCY;
	aSTATUS     := pSTATUS     ;
	autocommit := true;
END;

CONSTRUCTOR TSYSROL.Create(const pObjeto:TSYSROL);
BEGIN
	aID         := pObjeto.ID         ;
	aSUB        := pObjeto.SUB        ;
	aDESCRIPTION:= pObjeto.DESCRIPTION;
	aCOMPANYID  := pObjeto.COMPANYID  ;
	aCREATED    := pObjeto.CREATED    ;
	aUCREATED   := pObjeto.UCREATED   ;
	aUPDATED    := pObjeto.UPDATED    ;
	aUUPDATED   := pObjeto.UUPDATED   ;
	aCONCURRENCY:= pObjeto.CONCURRENCY;
	aSTATUS     := pObjeto.STATUS     ;
	autocommit := pObjeto.autocommit;
END;

DESTRUCTOR TSYSROL.Destroy;
BEGIN
	
	inherited Destroy;
END;

PROCEDURE TSYSROL.init;
BEGIN
	aID         := 0;
	aSUB        := 0;
	aDESCRIPTION:= '';
	aCOMPANYID  := 0;
	aCREATED    := 0;
	aUCREATED   := 0;
	aUPDATED    := 0;
	aUUPDATED   := 0;
	aCONCURRENCY:= 0;
	aSTATUS     := '';														
END;

PROCEDURE TSYSROL.fromJsonString(s:string);
BEGIN
	self.fromJson(TlkJSON.ParseText(s) as TlkJSONobject);
END;

PROCEDURE TSYSROL.fromJson(o:TlkJSONobject);
BEGIN
	ID          := (o.Field['ID'] as TlkJSONnumber).Value;
	SUB         := (o.Field['SUB'] as TlkJSONnumber).Value;
	DESCRIPTION := (o.Field['DESCRIPTION'] as TlkJSONstring).Value;
	COMPANYID   := (o.Field['COMPANYID'] as TlkJSONnumber).Value;
	CREATED     := (o.Field['CREATED'] as TlkJSONnumber).Value;
	UCREATED    := (o.Field['UCREATED'] as TlkJSONnumber).Value;
	UPDATED     := (o.Field['UPDATED'] as TlkJSONnumber).Value;
	UUPDATED    := (o.Field['UUPDATED'] as TlkJSONnumber).Value;
	CONCURRENCY := (o.Field['CONCURRENCY'] as TlkJSONnumber).Value;
	STATUS      := (o.Field['STATUS'] as TlkJSONstring).Value;
END;

FUNCTION TSYSROL.toJsonString : string;
var  json : TlkJSONobject;
BEGIN
	json := TlkJSONobject.Create();
	TRY	
		json.Add('ID',TlkJSONNumber.Generate(ID));
		json.Add('SUB',TlkJSONNumber.Generate(SUB));
		json.Add('DESCRIPTION',TlkJSONstring.Generate(DESCRIPTION));
		json.Add('COMPANYID',TlkJSONNumber.Generate(COMPANYID));
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


PROCEDURE TSYSROL.setAtributos(pID:Integer; pSUB:Integer; pDESCRIPTION:String; pCOMPANYID:Integer; pCREATED:TDateTime; pUCREATED:Integer; pUPDATED:TDateTime; pUUPDATED:Integer; pCONCURRENCY:Integer; pSTATUS:String);		
BEGIN
	aID         := pID         ;
	aSUB        := pSUB        ;
	aDESCRIPTION:= pDESCRIPTION;
	aCOMPANYID  := pCOMPANYID  ;
	aCREATED    := pCREATED    ;
	aUCREATED   := pUCREATED   ;
	aUPDATED    := pUPDATED    ;
	aUUPDATED   := pUUPDATED   ;
	aCONCURRENCY:= pCONCURRENCY;
	aSTATUS     := pSTATUS     ;	
END;

FUNCTION TSYSROL.sqlGetField(field:string) : string;
BEGIN
	RESULT := 'select '+field+' from security_ROL order by '+field;
END;

FUNCTION TSYSROL.sqlGetKeyValue(key,value : string) : string;
BEGIN
	RESULT := 'select '+key+' as key,'+value+'as value from security_ order by '+value;
END;

FUNCTION  TSYSROL.sqlGetAll : string;
BEGIN
	RESULT := 'select * from security_ROL';
END;

PROCEDURE TSYSROL.filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
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

	IF SELF.DESCRIPTION<>'' THEN
	BEGIN
		cds.sql.add( y +'DESCRIPTION= :pDESCRIPTION');
		cds.ParamByName('pDESCRIPTION').asString	:= SELF.DESCRIPTION;
		y := ' and ';
	END;

	IF SELF.COMPANYID<>0 THEN
	BEGIN
		cds.sql.add( y +'COMPANY_ID= :pCOMPANYID');
		cds.ParamByName('pCOMPANYID').asInteger	:= SELF.COMPANYID;
		y := ' and ';
	END;
{
	IF SELF.CREATED<>0 THEN
	BEGIN
		cds.sql.add( y +'CREATED= :pCREATED');
		cds.ParamByName('pCREATED').asDateTime	:= SELF.CREATED;
		y := ' and ';
	END;

	IF SELF.UCREATED<>0 THEN
	BEGIN
		cds.sql.add( y +'UCREATED_ID= :pUCREATED');
		cds.ParamByName('pUCREATED').asInteger	:= SELF.UCREATED;
		y := ' and ';
	END;

	IF SELF.UPDATED<>0 THEN
	BEGIN
		cds.sql.add( y +'UPDATED= :pUPDATED');
		cds.ParamByName('pUPDATED').asDateTime	:= SELF.UPDATED;
		y := ' and ';
	END;

	IF SELF.UUPDATED<>0 THEN
	BEGIN
		cds.sql.add( y +'UUPDATED_ID= :pUUPDATED');
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


PROCEDURE TSYSROL.QBE(ClientDS: TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add(sqlGetAll);
	filtrar(ClientDS,where,params);
	clientDS.prepare;
	clientDS.Open;
END;

PROCEDURE TSYSROL.QBE(columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL);
BEGIN
	initDataSet(ClientDS);
	clientDS.sql.add('select '+columns+ ' from security_ROL');
	ClientDS.SQL.Add('where '+where);

	if params <> NIL then
		ClientDS.Params := params;

	clientDS.prepare;
	clientDS.Open;
END;

function TSYSROL.exist(ClientDS: TAstaClientDataSet): boolean;
begin
	initDataSet(ClientDS);
	ClientDS.SQL.Add('select id from security_ where description=:pdescription and company_ID=:pcompanyID');
	ClientDS.ParamByName('pdescription').AsString := SELF.DESCRIPTION;
	ClientDS.ParamByName('pcompanyID').AsInteger := SELF.COMPANYID;
	ClientDS.Open;

	Result := not ClientDS.IsEmpty;
end;

procedure TSYSROL.fromClientDataSet(ClientDS: TAstaClientDataSet);
begin
	inherited;
	IF NOT ClientDS.Active THEN EXIT;
	SELF.ID          := clientDS.FieldByName('ID').AsInteger;
	SELF.SUB         := clientDS.FieldByName('SUB').AsInteger;
	SELF.DESCRIPTION := clientDS.FieldByName('DESCRIPTION').AsString;
	SELF.COMPANYID   := clientDS.FieldByName('COMPANY_ID').AsInteger;
	SELF.CREATED     := clientDS.FieldByName('CREATED').AsDateTime;
	SELF.UCREATED    := clientDS.FieldByName('UCREATED').AsInteger;
	SELF.UPDATED     := clientDS.FieldByName('UPDATED').AsDateTime;
	SELF.UUPDATED    := clientDS.FieldByName('UUPDATED').AsInteger;
	SELF.CONCURRENCY := clientDS.FieldByName('CONCURRENCY').AsInteger;
	SELF.STATUS      := clientDS.FieldByName('STATUS').AsString;
end;


procedure TSYSROL.fromGUI(form: TForm);
begin
	with form do
	begin
//		SELF.ID         := utils.formObtenerPropiedad(FindComponent('cID'),'Text');
//		SELF.SUB        := utils.formObtenerPropiedad(FindComponent('cSUB'),'Text');
		SELF.DESCRIPTION:= utils.formObtenerPropiedad(FindComponent('cDESCRIPTION'),'Text');
//		SELF.COMPANYID  := GUser.companyID;
		SELF.CREATED    := now;
		SELF.UCREATED   := Guser.ID;
		SELF.UPDATED    := now;
		SELF.UUPDATED   := Guser.ID;
//		SELF.CONCURRENCY:= 0;
		SELF.STATUS     := '1';
	end;
end;

procedure TSYSROL.toGUI(form: TForm);
begin
	inherited;
	with form do
	begin
//	utils.formAsignaPropiedad(FindComponent('cID'),'Text', IntTOStr(SELF.ID));
//	utils.formAsignaPropiedad(FindComponent('cSUB'),'Text', IntTOStr(SELF.SUB));
	utils.formAsignaPropiedad(FindComponent('cDESCRIPTION'),'Text', (SELF.DESCRIPTION));
//	utils.formAsignaPropiedad(FindComponent('cCOMPANYID'),'Text', IntTOStr(SELF.COMPANYID));
//	utils.formAsignaPropiedad(FindComponent('cCREATED'),'Text', IntTOStr(SELF.CREATED));
//	utils.formAsignaPropiedad(FindComponent('cUCREATED'),'Text', IntTOStr(SELF.UCREATED));
//	utils.formAsignaPropiedad(FindComponent('cUPDATED'),'Text', IntTOStr(SELF.UPDATED));
//	utils.formAsignaPropiedad(FindComponent('cUUPDATED'),'Text', IntTOStr(SELF.UUPDATED));
//	utils.formAsignaPropiedad(FindComponent('cCONCURRENCY'),'Text', IntTOStr(SELF.CONCURRENCY));
//	utils.formAsignaPropiedad(FindComponent('cSTATUS'),'Text', (SELF.STATUS));
	end;
end;

function TSYSROL.save(ClientDS: TAstaClientDataSet;transacction: byte): byte;
var  date: Tdatetime; 
begin
	RESULT := cFalse;
  date   := self.getFechaHoraServer(clientDS);

	initDataSet(ClientDS);

  if autocommit then
//		ClientDS.AstaClientSocket.StartTransaction;

	TRY
	case transacction of

	1 : begin         //update
		ClientDS.SQL.Add('UPDATE security_ROL SET '+
				' DESCRIPTION = :pDESCRIPTION'+
				',UPDATED = :pUPDATED'+
				',UUPDATED = :pUUPDATED'+
				',CONCURRENCY = :pCONCURRENCY'+
				',STATUS = :pSTATUS'+
				' WHERE ID = :pID'
		);
		ClientDS.ParamByName('pID').AsInteger								 := SELF.ID;
		ClientDS.ParamByName('pDESCRIPTION').asString        := SELF.DESCRIPTION;
		ClientDS.ParamByName('pUPDATED').asDatetime          := date;
		ClientDS.ParamByName('pUUPDATED').asInteger          := gUser.ID;
		ClientDS.ParamByName('pCONCURRENCY').asInteger       := SELF.CONCURRENCY+1;
		ClientDS.ParamByName('pSTATUS').asString             := SELF.STATUS;
	end;

	0: begin	//insert
		Self.nextID(ClientDS);

		initDataSet(ClientDS);
		ClientDS.SQL.Add('INSERT INTO SECURITY_ROL (ID,SUB,DESCRIPTION,COMPANY_ID,CREATED,UCREATED,UPDATED,UUPDATED,CONCURRENCY,STATUS)');
		ClientDS.SQL.Add(' VALUES ');
		ClientDS.SQL.Add('(:pID,:pSUB,:pDESCRIPTION,:pCOMPANYID,:pCREATED,:pUCREATED,:pUPDATED,:pUUPDATED,:pCONCURRENCY,:pSTATUS)');

		ClientDS.ParamByName('pID').asInteger         			 := SELF.ID;
		ClientDS.ParamByName('pSUB').asInteger         			 := SELF.SUB;
		ClientDS.ParamByName('pDESCRIPTION').asString        := SELF.DESCRIPTION;
		ClientDS.ParamByName('pCOMPANYID').asInteger         := SELF.COMPANYID;
		ClientDS.ParamByName('pCREATED').asDatetime          := date;
		ClientDS.ParamByName('pUCREATED').asInteger          := gUser.ID;
		ClientDS.ParamByName('pUPDATED').asDatetime          := date;
		ClientDS.ParamByName('pUUPDATED').asInteger          := gUser.ID;
		ClientDS.ParamByName('pCONCURRENCY').asInteger       := SELF.CONCURRENCY+1;
		ClientDS.ParamByName('pSTATUS').asString             := SELF.STATUS;
	end;

	2: begin //delete
     ClientDS.SQL.Add('delete from security_option_privilegies where rol_id=:rol');
     ClientDS.ParamByName('rol').AsInteger := SELF.ID;
     ClientDS.ExecSQL;

		ClientDS.SQL.Add('delete from security_ROL where id =:pid');
		ClientDS.ParamByName('pID').asInteger := SELF.ID;
	end;

	4: begin //enable
		ClientDS.SQL.Add('update SYSROL set status=:pstatus where id =:pid');
		ClientDS.ParamByName('pID').asInteger    := SELF.ID;
		ClientDS.ParamByName('pstatus').asString := '1';
	end;

	5: begin //disable
		ClientDS.SQL.Add('update SYSROL set status=:pstatus where id =:pid');
		ClientDS.ParamByName('pID').asInteger    := SELF.ID;
		ClientDS.ParamByName('pstatus').asString := '0';
	end;

	end;


	Result := cTrue;

	FINALLY
	ClientDS.ExecSQLTransaction;
		if autocommit then
//			ClientDS.AstaClientSocket.EndTransaction(true);
	END;

end;


PROCEDURE TSYSROL.setID(pID:Integer);
BEGIN
	aID:= pID;
END;

PROCEDURE TSYSROL.setSUB(pSUB:Integer);
BEGIN
	aSUB:= pSUB;
END;

PROCEDURE TSYSROL.setDESCRIPTION(pDESCRIPTION:String);
BEGIN
	aDESCRIPTION:= pDESCRIPTION;
END;

PROCEDURE TSYSROL.setCOMPANYID(pCOMPANYID:Integer);
BEGIN
	aCOMPANYID:= pCOMPANYID;
END;

PROCEDURE TSYSROL.setCREATED(pCREATED:TDateTime);
BEGIN
	aCREATED:= pCREATED;
END;

PROCEDURE TSYSROL.setUCREATED(pUCREATED:Integer);
BEGIN
	aUCREATED:= pUCREATED;
END;

PROCEDURE TSYSROL.setUPDATED(pUPDATED:TDateTime);
BEGIN
	aUPDATED:= pUPDATED;
END;

PROCEDURE TSYSROL.setUUPDATED(pUUPDATED:Integer);
BEGIN
	aUUPDATED:= pUUPDATED;
END;

PROCEDURE TSYSROL.setCONCURRENCY(pCONCURRENCY:Integer);
BEGIN
	aCONCURRENCY:= pCONCURRENCY;
END;

PROCEDURE TSYSROL.setSTATUS(pSTATUS:String);
BEGIN
	aSTATUS:= pSTATUS;
END;


FUNCTION TSYSROL.getID	:Integer;
BEGIN
	RESULT := aID;
END;

FUNCTION TSYSROL.getSUB	:Integer;
BEGIN
	RESULT := aSUB;
END;

FUNCTION TSYSROL.getDESCRIPTION	:String;
BEGIN
	RESULT := aDESCRIPTION;
END;

FUNCTION TSYSROL.getCOMPANYID	:Integer;
BEGIN
	RESULT := aCOMPANYID;
END;

FUNCTION TSYSROL.getCREATED	:TDateTime;
BEGIN
	RESULT := aCREATED;
END;

FUNCTION TSYSROL.getUCREATED	:Integer;
BEGIN
	RESULT := aUCREATED;
END;

FUNCTION TSYSROL.getUPDATED	:TDateTime;
BEGIN
	RESULT := aUPDATED;
END;

FUNCTION TSYSROL.getUUPDATED	:Integer;
BEGIN
	RESULT := aUUPDATED;
END;

FUNCTION TSYSROL.getCONCURRENCY	:Integer;
BEGIN
	RESULT := aCONCURRENCY;
END;

FUNCTION TSYSROL.getSTATUS	:String;
BEGIN
	RESULT := aSTATUS;
END;


procedure TSYSROL.nextID(ClientDS: TAstaClientDataSet);
begin
		 initDataSet(ClientDS);

		 ClientDS.SQL.Add('select max(sub) as sub from security_Rol where company_id = :pcompanyID');
		 ClientDS.ParamByName('pcompanyID').AsInteger := self.COMPANYID;
		 ClientDS.Open;

		 self.SUB := ClientDS.fieldbyName('sub').AsInteger + 1;
		 self.ID  := (SELF.companyID * 1000)+ SELF.SUB;
end;

END.

