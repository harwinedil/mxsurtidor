UNIT UdataSYSUSER;

{
GENERADO AUTOMATICAMENTE POR "Generador v.1.1"
AUTOR              : HARWIN EDIL PEREZ SALINAS   [harwinedil@gmail.com]
DESCRIPCION        : Clase para Acceder a los Datos de la Tabla : SYSUSER
FECHA CREACION     : 18/10/2012 Hora: 09:45:35
ULTIMA MODIFICACION: 18/10/2012 Hora: 09:45:35
MODIFICADO POR     : HARWIN EDIL PEREZ SALINAS
OBSERVACIONES      :

}

INTERFACE

USES
	SysUtils,Db,DBXpress,SqlExpr,UdataClass,UConstantes,UClasSYSUSER;

TYPE
    TDataSYSUSER = CLASS(TdataClass)
    private

    protected
        FUNCTION     Insertar(var SYSUSER : TSYSUSER; autocommit:boolean=true ) : byte;
        FUNCTION     Modificar(var SYSUSER : TSYSUSER; autocommit:boolean=true ): byte;
        FUNCTION     Eliminar(var SYSUSER : TSYSUSER; autocommit:boolean=true ):  byte;
        FUNCTION     Existe(var SYSUSER : TSYSUSER) : boolean;
        FUNCTION     Obtener(var SYSUSER : TSYSUSER) : byte;
        FUNCTION     esEliminable(var SYSUSER : TSYSUSER) : boolean;
        PROCEDURE    filtrar(var SYSUSER : TSYSUSER; var  query:TSQLQuery);
    public
        FUNCTION     getField(field:string; var count:integer) : string;
        FUNCTION     getListSelection(key,value : string) : string;
        FUNCTION     ABM(var SYSUSER : TSYSUSER; transaction:byte; autocommit:boolean=true ):boolean;
        FUNCTION     getQBE(SYSUSER : TSYSUSER): string;
        FUNCTION     getQBEQWhere(pSYSUSER : TSYSUSER; where:string):  string;
    end;

IMPLEMENTATION
{TDataSYSUSER}

FUNCTION TDataSYSUSER.ABM(var SYSUSER : TSYSUSER; transaction:byte; autocommit:boolean=true ):TPacket;
BEGIN
	if transaction = tAdd then
		RESULT := insertar(SYSUSER ,autocommit)
	else if transaction = tUpdate then
		RESULT := modificar(SYSUSER,autocommit)
	else if transaction = tDelete then
		RESULT := eliminar(SYSUSER,autocommit)
	else if transaction = tGet then
		RESULT := Obtener(SYSUSER)
	else
		RESULT := TPacket.Create(cError,mNOSupportTransaction);
END;

FUNCTION TDataSYSUSER.esEliminable(var SYSUSER : TSYSUSER) : boolean;
BEGIN
	RESULT := false;
END;

FUNCTION TDataSYSUSER.getField(field:string;var count:integer): TDBXReader;
BEGIN
	RESULT := dataModule.getReader('SELECT '+field+' FROM SYSUSER order by '+field,count);
END;

function TDataSYSUSER.getListSelection(key, value: string;var count:integer): TDBXReader;
BEGIN
	RESULT := dataModule.getReader('SELECT '+key+' as key,'+value+' as description FROM SYSUSER order by '+key,count);
END;

function TDataSYSUSER.getFieldList(field: string): TJSONArray;
begin
  RESULT := datamodule.getStringList('SYSUSER',field);
end;

function TDataSYSUSER.getKeyValueList(key, value: string): TJSONArray;
begin
  RESULT := dataModule.getKeyValueList('SYSUSER',key,value);
end;

FUNCTION TDataSYSUSER.Insertar(VAR SYSUSER : TSYSUSER; autocommit:boolean=true ): TPacket;
VAR	cnx: TDBXConnection;
	cmd: TDBXCommand;
	trn: TDBXTransaction;
BEGIN
	RESULT := Existe(SYSUSER);

	if RESULT.Bool then Exit;

	TRY
		cnx := dataModule.getConnection;

		TRY

			if autoCommit then
				trn := cnx.BeginTransaction(TDBXIsolations.ReadCommitted);

  		cmd := cnx.CreateCommand;
			cmd.Text:='INSERT INTO SYSUSER ('+
									'ID'+
								',PASS'+
								',LOGIN'+
								',CONTACTID'+
								',VALUE0'+
								',CREATED'+
								',UCREATED'+
								',UPDATED'+
								',UUPPDATED'+
								',CONCURRENCY'+
								',STATUS'+') ' +
								' VALUES('+' ?,?,?,?,?,?,?,?,?,?,?)'
			;	
			cmd.prepare;	
			Cmd.Parameters.Parameter[0].Value.SetAnsiString(SYSUSER.ID);
			Cmd.Parameters.Parameter[1].Value.SetAnsiString(SYSUSER.PASS);
			Cmd.Parameters.Parameter[2].Value.SetAnsiString(SYSUSER.LOGIN);
			Cmd.Parameters.Parameter[3].Value.SetAnsiString(SYSUSER.CONTACTID);
			Cmd.Parameters.Parameter[4].Value.SetAnsiString(SYSUSER.VALUE0);
			Cmd.Parameters.Parameter[5].Value.SetTimeStamp(DateTimeToSQLTimeStamp(NOW));
			Cmd.Parameters.Parameter[6].Value.SetAnsiString(SYSUSER.UCREATED);
			Cmd.Parameters.Parameter[7].Value.SetTimeStamp(DateTimeToSQLTimeStamp(NOW));
			Cmd.Parameters.Parameter[8].Value.SetAnsiString(SYSUSER.UUPPDATED);
			Cmd.Parameters.Parameter[9].Value.SetInt32(0);
			Cmd.Parameters.Parameter[10].Value.SetAnsiString(SYSUSER.STATUS);

			cmd.executeUpdate;
			RESULT.setAtributos(cOK,mRecordInsert);
		
			if autoCommit then
				cnx.CommitFreeAndNil(trn);

		EXCEPT on E:EXCEPTION do
			BEGIN
				if autoCommit then
					cnx.RollbackFreeAndNil(trn);
				raise Exception.Create(e.Message);
			END;
		END;
	FINALLY
		cmd.free;
	END;

END;


FUNCTION TDataSYSUSER.Modificar(var SYSUSER : TSYSUSER; autocommit:boolean=true ): TPacket;
VAR	cnx: TDBXConnection;
	cmd: TDBXCommand;
	trn: TDBXTransaction;
BEGIN
	RESULT := TPacket.Create(cNone,'');
	TRY
		TRY
			cnx := dataModule.getConnection;
			cmd := cnx.CreateCommand;

			if autoCommit then
				trn := cnx.BeginTransaction(TDBXIsolations.ReadCommitted);

			cmd.Text:='UPDATE SYSUSER SET '+
			' PASS = ?'+
				',LOGIN = ?'+
				',CONTACTID = ?'+
				',VALUE0 = ?'+
				',UPDATED = ?'+
				',UUPPDATED = ?'+
				',CONCURRENCY = ?'+
				',STATUS = ?'+
				' WHERE ID = ?';
			cmd.prepare;

			Cmd.Parameters.Parameter[0].Value.SetAnsiString(SYSUSER.PASS);
			Cmd.Parameters.Parameter[1].Value.SetAnsiString(SYSUSER.LOGIN);
			Cmd.Parameters.Parameter[2].Value.SetAnsiString(SYSUSER.CONTACTID);
			Cmd.Parameters.Parameter[3].Value.SetAnsiString(SYSUSER.VALUE0);
			Cmd.Parameters.Parameter[4].Value.SetTimeStamp(DateTimeToSQLTimeStamp(NOW));
			Cmd.Parameters.Parameter[5].Value.SetAnsiString(SYSUSER.UUPPDATED);
			Cmd.Parameters.Parameter[6].Value.SetInt32(SYSUSER.CONCURRENCY+1);
			Cmd.Parameters.Parameter[7].Value.SetAnsiString(SYSUSER.STATUS);
			Cmd.Parameters.Parameter[8].Value.SetAnsiString(SYSUSER.ID);

			cmd.executeUpdate;
			RESULT.setAtributos(cOK,mRecordUpdate);

			if autoCommit then
				cnx.CommitFreeAndNil(trn);

		EXCEPT on E:EXCEPTION do
			BEGIN
				if autoCommit then
					cnx.RollbackFreeAndNil(trn);
				raise Exception.Create(e.Message);
			END;
		END;
	FINALLY
		cmd.free;
	END;
END;


FUNCTION TDataSYSUSER.Existe(VAR SYSUSER : TSYSUSER): TPacket;
var	cmd : TDBXCommand;
	reader: TDBXReader;
	cnx: TDBXConnection;
BEGIN
	cnx := dataModule.getConnection;
	RESULT := TPacket.Create(cNone,'');
	TRY
		cmd := cnx.CreateCommand;
		cmd.text := 'SELECT ID FROM SYSUSER WHERE ID = ? OR LOGIN= ?';
		cmd.prepare;
		cmd.Parameters.Parameter[0].Value.SetAnsiString(SYSUSER.ID);
    cmd.Parameters.Parameter[1].Value.SetAnsiString(SYSUSER.LOGIN);

		reader := cmd.executeQuery;

		if reader.next then
     			result.setAtributos(cWarning,mRecordExist)
		else
       			result.setKey(cFalse);
	FINALLY
		reader.free;
		cmd.free;
	END;
END;



FUNCTION TDataSYSUSER.Eliminar(var SYSUSER : TSYSUSER; autocommit:boolean=true ): TPacket;
VAR  	cnx: TDBXConnection;
	cmd: TDBXCommand;
	trn: TDBXTransaction;
BEGIN
	cnx := dataModule.getConnection;
	RESULT := TPacket.Create(cNone,'');

	if not esEliminable(SYSUSER) then
	begin
		result.setAtributos(cWarning,mRecordinUse);
		Exit;
	end;

	TRY
		TRY
			cmd := cnx.CreateCommand;
			cmd.Text:='DELETE FROM SYSUSER WHERE ID = ?';
			cmd.prepare;
			cmd.Parameters.Parameter[0].Value.SetAnsiString(SYSUSER.ID);

			if autoCommit then
				trn := cnx.BeginTransaction(TDBXIsolations.ReadCommitted);

			cmd.executeUpdate;

			RESULT.setAtributos(cOK,mRecordDelete);

			if autoCommit then
				cnx.CommitFreeAndNil(trn);

		EXCEPT ON E:Exception do
			begin
				if autoCommit then
					cnx.RollbackFreeAndNil(trn);

				raise Exception.Create(e.Message);
			end;
		END;
	FINALLY
		cmd.free;
	END;
END;


FUNCTION TDataSYSUSER.Obtener(var SYSUSER : TSYSUSER) : TPacket;
var	cnx : TDBXConnection;
	cmd : 	TDBXCommand;
	reader: TDBXReader;
BEGIN
	cnx := dataModule.getConnection;
	RESULT := TPacket.Create(cNone,'');

	TRY
		cmd := cnx.CreateCommand;
		cmd.text := 'SELECT * FROM SYSUSER';

		filtrar(SYSUSER,cmd);
		cmd.Prepare;
		reader := cmd.executeQuery;
		RESULT.Bool := reader.next;

		if RESULT.Bool then
		begin
			SYSUSER.ID           	:= reader.value['ID'].AsString;
			SYSUSER.PASS         	:= reader.value['PASS'].AsString;
			SYSUSER.LOGIN        	:= reader.value['LOGIN'].AsString;
			SYSUSER.CONTACTID    	:= reader.value['CONTACTID'].AsString;
			SYSUSER.VALUE0       	:= reader.value['VALUE0'].AsString;
			SYSUSER.CREATED      	:= SQLTimeStampToDateTime(reader.value['CREATED'].AsTimeStamp);
			SYSUSER.UCREATED     	:= reader.value['UCREATED'].AsString;
			SYSUSER.UPDATED      	:= SQLTimeStampToDateTime(reader.value['UPDATED'].AsTimeStamp);
			SYSUSER.UUPPDATED    	:= reader.value['UUPPDATED'].AsString;
			SYSUSER.CONCURRENCY  	:= reader.value['CONCURRENCY'].AsInt32;
			SYSUSER.STATUS       	:= reader.value['STATUS'].AsString;
			RESULT.Value := mRecordFound;
		end
		else
      			RESULT.Value := mRecordNOFound;


	FINALLY
		reader.Free;
		cmd.free;
	END;
END;


FUNCTION TDataSYSUSER.getQBE(SYSUSER: TSYSUSER) : TDBXReader;
var	cmd : 	TDBXCommand;
BEGIN
	cmd := dataModule.getCommand;
	cmd.text := 'SELECT * FROM SYSUSER';
	filtrar(SYSUSER,cmd);
	RESULT := cmd.executeQuery;
END;

FUNCTION TDataSYSUSER.getQBEList(pSYSUSER: TSYSUSER) :TJSONArray;
var	cmd : 	TDBXCommand;
	reader: TDBXReader;
	SYSUSER: ^TSYSUSER;
BEGIN
	RESULT := TJSONArray.Create;
	cmd := dataModule.getCommand;

	TRY
		cmd.text := 'SELECT * FROM SYSUSER';
		filtrar(pSYSUSER,cmd);
		reader := cmd.executeQuery;

		while reader.next do
		begin
			new(SYSUSER);
			SYSUSER^ := TSYSUSER.Create;
			SYSUSER.ID           	:= reader.value['ID'].AsString;
			SYSUSER.PASS         	:= reader.value['PASS'].AsString;
			SYSUSER.LOGIN        	:= reader.value['LOGIN'].AsString;
			SYSUSER.CONTACTID    	:= reader.value['CONTACTID'].AsString;
			SYSUSER.VALUE0       	:= reader.value['VALUE0'].AsString;
			SYSUSER.CREATED      	:= SQLTimeStampToDateTime(reader.value['CREATED'].AsTimeStamp);
			SYSUSER.UCREATED     	:= reader.value['UCREATED'].AsString;
			SYSUSER.UPDATED      	:= SQLTimeStampToDateTime(reader.value['UPDATED'].AsTimeStamp);
			SYSUSER.UUPPDATED    	:= reader.value['UUPPDATED'].AsString;
			SYSUSER.CONCURRENCY  	:= reader.value['CONCURRENCY'].AsInt32;
			SYSUSER.STATUS       	:= reader.value['STATUS'].AsString;
			result.AddElement(TSYSUSER.ObjectToJSON(sysUSER^));
		end;

	FINALLY
		FreeAndNil(reader);
		FreeAndNil(cmd);
	END;
END;

PROCEDURE TdataSYSUSER.filtrar(var SYSUSER : TSYSUSER; var  cmd: TDBXCommand);
var  	y 	: string;
  	param	: byte;
	parameter:TDBXParameter;
BEGIN
	y := ' where ';
	param:= 0;

		IF SYSUSER.ID<>'' THEN
		BEGIN
			cmd.Text:= cmd.Text+ y +'ID= ? ';
			parameter := cmd.CreateParameter;
			parameter.Ordinal:= param;
			parameter.DataType := TDBXDataTypes.AnsiStringType;
			parameter.Value.SetAnsiString(SYSUSER.ID);
			cmd.Parameters.AddParameter(parameter);
			inc(param);
			y := ' and ';
		END;

		IF SYSUSER.PASS<>'' THEN
		BEGIN
			cmd.Text:= cmd.Text+ y +'PASS= ? ';
			parameter := cmd.CreateParameter;
			parameter.Ordinal:= param;
			parameter.DataType := TDBXDataTypes.AnsiStringType;
			parameter.Value.SetAnsiString(SYSUSER.PASS);
			cmd.Parameters.AddParameter(parameter);
			inc(param);
			y := ' and ';
		END;

		IF SYSUSER.LOGIN<>'' THEN
		BEGIN
			cmd.Text:= cmd.Text+ y +'LOGIN= ? ';
			parameter := cmd.CreateParameter;
			parameter.Ordinal:= param;
			parameter.DataType := TDBXDataTypes.AnsiStringType;
			parameter.Value.SetAnsiString(SYSUSER.LOGIN);
			cmd.Parameters.AddParameter(parameter);
			inc(param);
			y := ' and ';
		END;

		IF SYSUSER.CONTACTID<>'' THEN
		BEGIN
			cmd.Text:= cmd.Text+ y +'CONTACTID= ? ';
			parameter := cmd.CreateParameter;
			parameter.Ordinal:= param;
			parameter.DataType := TDBXDataTypes.AnsiStringType;
			parameter.Value.SetAnsiString(SYSUSER.CONTACTID);
			cmd.Parameters.AddParameter(parameter);
			inc(param);
			y := ' and ';
		END;

		IF SYSUSER.VALUE0<>'' THEN
		BEGIN
			cmd.Text:= cmd.Text+ y +'VALUE0= ? ';
			parameter := cmd.CreateParameter;
			parameter.Ordinal:= param;
			parameter.DataType := TDBXDataTypes.AnsiStringType;
			parameter.Value.SetAnsiString(SYSUSER.VALUE0);
			cmd.Parameters.AddParameter(parameter);
			inc(param);
			y := ' and ';
		END;

		IF SYSUSER.CREATED<>0 THEN
		BEGIN
			cmd.Text:= cmd.Text+ y +'CREATED= ? ';
			parameter := cmd.CreateParameter;
			parameter.Ordinal:= param;
			parameter.DataType := TDBXDataTypes.TimeStampType;
			parameter.Value.SetTimeStamp(DateTimeToSQLTimeStamp(SYSUSER.CREATED));
			cmd.Parameters.AddParameter(parameter);
			inc(param);
			y := ' and ';
		END;

		IF SYSUSER.UCREATED<>'' THEN
		BEGIN
			cmd.Text:= cmd.Text+ y +'UCREATED= ? ';
			parameter := cmd.CreateParameter;
			parameter.Ordinal:= param;
			parameter.DataType := TDBXDataTypes.AnsiStringType;
			parameter.Value.SetAnsiString(SYSUSER.UCREATED);
			cmd.Parameters.AddParameter(parameter);
			inc(param);
			y := ' and ';
		END;

		IF SYSUSER.UPDATED<>0 THEN
		BEGIN
			cmd.Text:= cmd.Text+ y +'UPDATED= ? ';
			parameter := cmd.CreateParameter;
			parameter.Ordinal:= param;
			parameter.DataType := TDBXDataTypes.TimeStampType;
			parameter.Value.SetTimeStamp(DateTimeToSQLTimeStamp(SYSUSER.UPDATED));
			cmd.Parameters.AddParameter(parameter);
			inc(param);
			y := ' and ';
		END;

		IF SYSUSER.UUPPDATED<>'' THEN
		BEGIN
			cmd.Text:= cmd.Text+ y +'UUPPDATED= ? ';
			parameter := cmd.CreateParameter;
			parameter.Ordinal:= param;
			parameter.DataType := TDBXDataTypes.AnsiStringType;
			parameter.Value.SetAnsiString(SYSUSER.UUPPDATED);
			cmd.Parameters.AddParameter(parameter);
			inc(param);
			y := ' and ';
		END;

		IF SYSUSER.CONCURRENCY<>0 THEN
		BEGIN
			cmd.Text:= cmd.Text+ y +'CONCURRENCY= ? ';
			parameter := cmd.CreateParameter;
			parameter.Ordinal:= param;
			parameter.DataType := TDBXDataTypes.Int32Type;
			parameter.Value.SetInt32(SYSUSER.CONCURRENCY);
			cmd.Parameters.AddParameter(parameter);
			inc(param);
			y := ' and ';
		END;

		IF SYSUSER.STATUS<>'' THEN
		BEGIN
			cmd.Text:= cmd.Text+ y +'STATUS= ? ';
			parameter := cmd.CreateParameter;
			parameter.Ordinal:= param;
			parameter.DataType := TDBXDataTypes.AnsiStringType;
			parameter.Value.SetAnsiString(SYSUSER.STATUS);
			cmd.Parameters.AddParameter(parameter);
			inc(param);
			y := ' and ';
		END;
END;

END.
