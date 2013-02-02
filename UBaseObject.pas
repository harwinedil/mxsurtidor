unit UBaseObject;

interface
USES
	sysUtils,uLkJSON,AstaDrv2,AstaClientDataset,AstaParamList,Uconstantes,Forms,
	UgralUtilidades;

TYPE
		TBaseObject = CLASS(TObject)
		private

		protected
					 autoCommit : boolean;
		public
		PROCEDURE   init; VIRTUAL;
		PROCEDURE   initDataSet(ClientDS: TAstaClientDataSet);
		FUNCTION		getFechaHoraServer(ClientDS: TAstaClientDataSet) : TDateTime;
		PROCEDURE   reOpenDataSet(ClientDS: TAstaClientDataSet);
		FUNCTION 		getGUID : String;
		PROCEDURE   setAutoCommit(pAutoCommit:boolean);
		PROCEDURE		fromJson(o:TlkJSONobject);VIRTUAL;
		PROCEDURE		fromJsonString(s:string); VIRTUAL;
		FUNCTION		toJsonString : string;VIRTUAL;
		FUNCTION		sqlGetField(field:string) : string;VIRTUAL;
		FUNCTION		sqlGetKeyValue(key,value : string) : string;VIRTUAL;
		FUNCTION 		sqlGetAll : string;VIRTUAL;
		PROCEDURE		QBE( columns,where :string ; ClientDS: TAstaClientDataSet; params:TAstaParamList=NIL);OVERLOAD;VIRTUAL;
		PROCEDURE   filtrar(cds:TAstaClientDataSet; where:string = ''; params:TAstaParamList=NIL);VIRTUAL;
		PROCEDURE		QBE(ClientDS: TAstaClientDataSet; where:string = '';params:TAstaParamList=NIL);OVERLOAD;VIRTUAL;
		FUNCTION		save(ClientDS: TAstaClientDataSet; transaction:byte) : byte;VIRTUAL;
		FUNCTION		exist(ClientDS: TAstaClientDataSet) : boolean;VIRTUAL;
		PROCEDURE   fromClientDataSet(ClientDS: TAstaClientDataSet);VIRTUAL;
		PROCEDURE 	nextID(ClientDS: TAstaClientDataSet); VIRTUAL;
		PROCEDURE   fromGUI(form:TForm ); VIRTUAL;
    PROCEDURE   toGUI(form:TForm ); VIRTUAL;

	end;

implementation
{ TBaseObject }

function TBaseObject.exist(ClientDS: TAstaClientDataSet): boolean;
begin
		RESULT := FALSE;
end;

procedure TBaseObject.filtrar(cds: TAstaClientDataSet; where: string;
	params: TAstaParamList);
begin

end;

procedure TBaseObject.fromClientDataSet(ClientDS: TAstaClientDataSet);
begin
     init;
end;

procedure TBaseObject.fromGUI(form: TForm);
begin

end;

procedure TBaseObject.fromJson(o: TlkJSONobject);
begin

end;

procedure TBaseObject.fromJsonString(s: string);
begin

end;

procedure TBaseObject.init;
begin

end;

procedure TBaseObject.initDataSet(ClientDS: TAstaClientDataSet);
begin
		//verificar el socket
		if  not ClientDS.AstaClientSocket.Active then
          ClientDS.AstaClientSocket.Open;

		//verificar si el clientdataset esta activo
			if ClientDS.Active then
					ClientDS.Close;

		//inicializar clientdataset
			ClientDS.SQL.Clear;
			ClientDS.Params.Clear;
end;

procedure TBaseObject.QBE(ClientDS: TAstaClientDataSet; where: string;
	params: TAstaParamList);
begin

end;

procedure TBaseObject.reOpenDataSet(ClientDS: TAstaClientDataSet);
begin
     if ClientDS.Active then ClientDS.Close;
     ClientDS.Open;
end;

function TBaseObject.save(ClientDS: TAstaClientDataSet;
	transaction:byte): byte;
begin
			RESULT :=  cFalse;
end;

procedure TBaseObject.QBE(columns, where: string;
	ClientDS: TAstaClientDataSet; params: TAstaParamList);
begin

end;

function TBaseObject.sqlGetAll: string;
begin

end;

function TBaseObject.sqlGetField(field: string): string;
begin

end;

function TBaseObject.sqlGetKeyValue(key, value: string): string;
begin

end;

procedure TBaseObject.toGUI(form: TForm);
begin
		 utils.formLimpiarEntradas(form,true);
end;

function TBaseObject.toJsonString: string;
begin

end;

procedure TBaseObject.setAutoCommit(pAutoCommit: boolean);
begin
			autoCommit := pAutoCommit;
end;

procedure TBaseObject.nextID(ClientDS: TAstaClientDataSet);
begin

end;

function TBaseObject.getFechaHoraServer(
	ClientDS: TAstaClientDataSet): TDateTime;
begin
		initDataSet(ClientDS);
		try
//		ClientDS.SQL.Add('SELECT CURRENT_TIMESTAMP AS now FROM RDB$DATABASE');
    ClientDs.SQL.Add('SELECT now() as now');
		ClientDS.Open;
		RESULT :=  ClientDS.fieldbyname('now').AsDateTime;
		except
				 RESULT := now;
		end;
end;

function TBaseObject.getGUID: String;
var  guid : TGUID;
		 sguid : string;
begin
			CreateGUID(guid);
			sguid := GUIDToString(guid);
			utils.PurgarCaracter(sguid,'-');
			utils.PurgarCaracter(sguid,'{');
			utils.PurgarCaracter(sguid,'}');
			RESULT := sguid;

end;

end.
