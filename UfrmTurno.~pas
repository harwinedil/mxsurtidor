unit UfrmTurno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UfrmBaseIntro, DB, AstaDrv2, AstaClientDataset, ImgList,
  TFlatTitlebarUnit, ComCtrls, ToolWin, ExtCtrls, StdCtrls,
  TFlatComboBoxUnit, Mask, TFlatMaskEditUnit, TFlatEditUnit,
  SUIPageControl, SUITabControl, Grids, BaseGrid, AdvGrid, AdvCGrid,
  TFlatSpinEditUnit, ToolEdit, CurrEdit,Uclassecurity_mxuser,Uclassurtidor_manguera,
  UGralutilidades,Uclasgeneral_cotizacionme,UfrmSelectBomba, Buttons,
  Uclassurtidor_factura,strUtils,UfrmCierresPetrobox,
  UConstantes,Uclassurtidor_turno,Uclassurtidor_turnomanguera, JvExMask,
  JvToolEdit, JvExStdCtrls, JvCombobox, JvEdit, SUIComboBox, DBCtrls,
  SUIDBCtrls, SUIEdit, ScktComp, AstaCustomSocket, AstaClientSocket;

const
     mManguerades = 0;
     mProductodes = 1;
     mElectronicoI= 2;
     mElectronicoF= 3;
     mMecanicoI   = 4;
     mMecanicoF   = 5;
     mVolumen     = 6;
     mPU          = 7;
     mImporte     = 8;
     mMangueraID  = 9;
     mProductoID  = 10;
     mDif         = 11;

     rProducto    = 0;
     rVolumen     = 1;
     rImporte     = 2;
     rFacturado   = 3;
     rSinFactura  = 4;
		 rProductoID  = 5;

		 fFecha			  = 0;
		 fDosis				= 1;
		 fNro					= 2;
     fNIT         = 3;
     fNombre      = 4;
     fPlaca       = 5;
     fVeh         = 6;
     fVia         = 7;
     fProductoDes = 8;
     fVolumen     = 9;
     fPU          = 10;
     fImporte     = 11;
     fsyncromsg   = 12;
     fiddespacho  = 13;
     fsyncro      = 14;

     vNro         = 0;
     vCodigo      = 1;
     vNombre      = 2;
     vVale        = 3;
     vFacturaNro  = 4;
     vProducto    = 5;
     vVolumen     = 6;
     vImporte     = 7;

     tNro         = 0;
     tTarjeta     = 1;
     tNombre      = 2;
     tVoucher     = 3;
     tFactura     = 4;
     tProducto    = 5;
     tVolumen     = 6;
     tImporte     = 7;

     cNro         = 0;
     cBomba       = 1;
     cManguera    = 2;
     cTransacc    = 3;
     cProducto    = 4;
     cVolumen     = 5;
     cImporte     = 6;

type
  TfrmTurno = class(TfrmBaseIntro)
    Panel2: TPanel;
    lCode: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    LID: TLabel;
    Label3: TLabel;
    Lini: TLabel;
    lFin: TLabel;
    lCentro: TFlatTitlebar;
    cPage: TsuiPageControl;
    suiTabSheet1: TsuiTabSheet;
    suiTabSheet2: TsuiTabSheet;
    suiTabSheet3: TsuiTabSheet;
    suiTabSheet4: TsuiTabSheet;
    suiTabSheet5: TsuiTabSheet;
    suiTabSheet6: TsuiTabSheet;
    Panel4: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cTOTALBS: TCurrencyEdit;
    cTotalUSD: TCurrencyEdit;
    Label11: TLabel;
    cTotalCash: TCurrencyEdit;
    Label12: TLabel;
    cTotalVale: TCurrencyEdit;
    Label13: TLabel;
    cTotalTarjeta: TCurrencyEdit;
    Label14: TLabel;
    cTotalCalib: TCurrencyEdit;
    cTC: TCurrencyEdit;
    Label15: TLabel;
    cTotalProcess: TCurrencyEdit;
    Label16: TLabel;
    cTotalVendido1: TCurrencyEdit;
    Label17: TLabel;
    cDifference: TCurrencyEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Panel6: TPanel;
    Panel5: TPanel;
    Label7: TLabel;
    gResumen: TAdvColumnGrid;
    Panel3: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    cTotalVendido: TCurrencyEdit;
    cTotalFactura: TCurrencyEdit;
    cTotalsinFactura: TCurrencyEdit;
    gManguera: TAdvColumnGrid;
    gVale: TAdvColumnGrid;
    gTarjeta: TAdvColumnGrid;
    gCalibra: TAdvColumnGrid;
    gFacturas: TAdvColumnGrid;
    Label6: TLabel;
    Label25: TLabel;
    qSuc: TAstaClientDataSet;
    qVendedor: TAstaClientDataSet;
    qProducto: TAstaClientDataSet;
    qManguera: TAstaClientDataSet;
    bAdicionar: TSpeedButton;
    qTipodePago: TAstaClientDataSet;
    qVehiculo: TAstaClientDataSet;
    cDAYTIME: TJvDateEdit;
    cSuc: TsuiDBLookupComboBox;
    cSELLERID: TsuiDBLookupComboBox;
    cHorario: TsuiComboBox;
    dssuc: TDataSource;
    dsvendedor: TDataSource;
    cStatus: TsuiComboBox;
    cCode: TsuiEdit;
    socketPetrobox: TAstaClientSocket;
    qPetrobox: TAstaClientDataSet;
    procedure bSaveClick(Sender: TObject);
    procedure cDAYTIMEExit(Sender: TObject);
    procedure cPageChange(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure gMangueraEditingDone(Sender: TObject);
    procedure cTotalVendido1Change(Sender: TObject);
    procedure cTotalFacturaChange(Sender: TObject);
    procedure cCODEExit(Sender: TObject);
    procedure cHorarioExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure socketPetroboxConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure socketPetroboxDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure bSyncroClick(Sender: TObject);
    procedure cTotalVendidoChange(Sender: TObject);
    procedure sumTotalRecaudado(Sender:TObject);
    procedure cTOTALBSChange(Sender: TObject);
    procedure cSucExit(Sender: TObject);
    procedure cTotalUSDExit(Sender: TObject);
    procedure cTCExit(Sender: TObject);
    procedure cTotalUSDChange(Sender: TObject);
    procedure cTCChange(Sender: TObject);
    procedure cTotalProcessChange(Sender: TObject);
  private
      turno    : Tsurtidor_turno;
      tc       : Tgeneral_cotizacionme;
      transaction : byte;
      facturas : TList;
      masiva   : boolean;
      idcierre :string;
  public
			procedure init;		override;
			procedure Save;		override;
			procedure loadConfig; override;
			procedure freeAll;   override;
			procedure updateData; override;
      function  isGUIOK   : boolean;
      procedure loadRegistro;
      procedure showregistro;
      procedure syncro; override;

      procedure MangueraTOGrid(P:Tsurtidor_turnomanguera; i:word);
      function  MangueraFROMgrid(i:word): Psurtidor_turnomanguera;
      procedure addMangueraAlTurno(man:Tsurtidor_manguera;i:word);
      procedure updateTotalesProducto;
      function  existeManguera(id:string):boolean;

      procedure addProductoResumen(producto:string);
      function  existeProductoResumen(producto: string) : boolean;
      procedure getTotalesProducto(fila:word);
      procedure addManguerasManual(listaBombas:string);

      procedure habilitarCampos;
      procedure addFactura(factura:Tsurtidor_factura);
      procedure addVale(factura:Tsurtidor_factura);
      procedure addTarjeta(factura:Tsurtidor_factura);
      procedure addCalibra(factura:Tsurtidor_factura);
      procedure updateTotalesFacturas;
      function  existeFacturaGrid(iddespacho:string) : boolean;
      function  getTotalFacturas(producto:integer) : Currency;
  end;

var
  frmTurno: TfrmTurno;

implementation
USES UfrmMain;
{$R *.dfm}
{ TfrmTurno }

procedure TfrmTurno.freeAll;
begin
  inherited;
  utils.LiberarLista(facturas);
  FreeAndNil(turno);
  FreeAndNil(tc);
  qSuc.Close;
  qVendedor.Close;
end;

procedure TfrmTurno.init;
begin
  inherited;
  turno := Tsurtidor_turno.Create;
  updateData;
  cDAYTIME.Date := now;
  transaction := tAdd;
  tc := Tgeneral_cotizacionme.Create;
  facturas := TList.Create;
  masiva   := false;
  idcierre := '';

	socketPetrobox.Address := IfThen(frmMAIN.configLocal.Values[kPetroboxServer]='','127.0.0.1',frmMAIN.configLocal.Values[kPetroboxServer]);
	socketPetrobox.Port		:= StrToInt( IfThen((frmMAIN.configLocal.Values[kPetroboxPort])='','7001',frmMAIN.configLocal.Values[kPetroboxPort]));
  socketPetrobox.ApplicationName    := frmMAIN.appName;
  socketPetrobox.ApplicationVersion := frmMAIN.version;
  socketPetrobox.UserName           := Guser.login;
	socketPetrobox.Active := true;


  habilitarCampos;
end;

function TfrmTurno.isGUIOK: boolean;
begin
     RESULT := FALSE;

     if cSuc.Text='' then
     begin
          showmsg('Debe seleccionar sucursal');
          cSuc.SetFocus; exit;
     end;

     if cCODE.Text='' then
     begin
          showmsg('Debe introducir codigo');
          cCODE.SetFocus; exit;
     end;

     if not utils.esfechaValida(cDAYTIME.Text) then
     begin
          showmsg(frmMAIN.getLabel(mFechaNOValida));
          cDAYTIME.SetFocus; exit;
     end;


     if cSELLERID.Text='' then
     begin
          showmsg('Debe seleccionar vendedor');
          cSELLERID.SetFocus; exit;
     end;

     if cHorario.Text='' then
     begin
          showmsg('Debe seleccionar Horario');
          cHorario.SetFocus; exit;
     end;

     if cTC.Value = 0 then
     begin
          showmsg('Debe introducti TC del dia');
          cTC.SetFocus; exit;
     end;

       if cTotalVendido.Value=0 then
       begin
            showmsg('Debe introducir volumenes vendidos');
            cPage.ActivePageIndex := 1;
            Exit;
       end;

       if gManguera.RowCount <= 2 then
       begin
            showmsg('Debe introducir datos de mangueras...');
            cPage.ActivePageIndex := 1;
            Exit;
       end;
       
     RESULT := TRUE;
end;

procedure TfrmTurno.loadConfig;
begin
  inherited;
  cPage.Pages[0].Caption := frmMAIN.getLabel(cPage.Pages[0].Caption);
  cPage.Pages[1].Caption := frmMAIN.getLabel(cPage.Pages[1].Caption);
  cPage.Pages[2].Caption := frmMAIN.getLabel(cPage.Pages[2].Caption);
  cPage.Pages[3].Caption := frmMAIN.getLabel(cPage.Pages[3].Caption);
  cPage.Pages[4].Caption := frmMAIN.getLabel(cPage.Pages[4].Caption);
  cPage.Pages[5].Caption := frmMAIN.getLabel(cPage.Pages[5].Caption);
  lCentro.Caption := frmMAIN.getLabel(lCentro.Caption);
end;

procedure TfrmTurno.loadRegistro;
var  PM : Psurtidor_turnomanguera;
     i : byte;
begin
     if transaction= tAdd then
        turno.init;
    //llenar el registro a partir del form
     with turno do
     begin
          code           := cCODE.Text;
          daytime        := StrToDateTime(cDAYTIME.Text);
          shedule_id     := frmMAIN.getParamID(tHorario,cHorario.Text);
          if utils.esfechaValida(Lini.Caption) then
          timeini        := StrToDateTime(Lini.Caption)
          else
              timeini    := 0;
          if utils.esfechaValida(lFin.Caption) then
          timeend        := StrToDateTime(lFin.Caption)
          else
              timeend    := 0;

          tc             := cTC.Value;
          total_sold     := cTotalVendido.Value;
          total_bs       := cTOTALBS.Value;
          total_usd      := cTotalUSD.Value;
          total_cash     := cTotalCash.Value;
          total_vale     := cTotalVale.Value;
          total_card     := cTotalTarjeta.Value;
          total_check    := 0;
          total_proceeds := cTotalProcess.Value;
          total_calib    := cTotalCalib.Value;
          difference     := cDifference.Value;
          total_invoice  := cTotalFactura.Value;
          seller_id      := qVendedor.Lookup('nombre',cSELLERID.Text,'ID');
          estacionid     := VarToStr(qSuc.Lookup('description',cSuc.Text,'data0'));
          suc_id         := integer(qSuc.Lookup('description',cSuc.Text,'ID'));
          company_id     := GUser.company_id;
          data0          := '';
          data1          := '';
          ucreated_id    := GUser.id;
          uupdated_id    := GUser.id;
          concurrency    := 0;
          status_id      := 0;
          data0          := idcierre;
          manual         := IfThen(data0 = '','1','0');
     end;

        for i:=1 to gManguera.RowCount-2 do
        begin
          PM := MangueraFROMgrid(i);
          turno.mangueras.Add(PM);
        end;
end;

function TfrmTurno.MangueraFROMgrid(i: word): Psurtidor_turnomanguera;
var  PM : Psurtidor_turnomanguera;
begin
          new(PM);
          PM^ := Tsurtidor_turnomanguera.Create ();
          PM.id              := 0;
          PM.item            := i;
          PM.turno_id        := '0';
          PM.manguera_id     := gManguera.Cells[mmangueraID,i];
          PM.producto_id     := gManguera.Ints[mproductoID,i];
          PM.pu              := gManguera.Floats[mPU,i];
          PM.electronico_ini := gManguera.Floats[mElectronicoI,i];
          PM.electronico_fin := gManguera.Floats[mElectronicoF,i];
          PM.mecanico_ini    := gManguera.Floats[mMecanicoI,i];
          PM.mecanico_fin    := gManguera.Floats[mMecanicoF,i];
          PM.mecanico_vol    := gManguera.Floats[mVolumen,i];
          PM.mecanico_imp    := gManguera.Floats[mImporte,i];
          RESULT := PM;
end;

procedure TfrmTurno.MangueraTOGrid(P:Tsurtidor_turnomanguera;
  i: word);
begin
     gManguera.Cells[mmanguerades,i+1]    := qManguera.Lookup('ID',P.manguera_id,'descripcion');
     gManguera.Cells[mProductodes,i+1]    := qProducto.Lookup('ID',P.producto_id,'descripcion');
     gManguera.Cells[mElectronicoI,i+1]   := utils.toString(P.electronico_ini,2);
     gManguera.Cells[mElectronicoF,i+1]   := utils.toString(P.electronico_fin,2);
     gManguera.Cells[mmecanicoI,i+1]      := utils.toString(P.mecanico_ini,2);
     gManguera.Cells[mmecanicoF,i+1]      := utils.toString(P.mecanico_fin,2);
     gManguera.Cells[mPU,i+1]             := utils.toString(P.pu,2);
     gManguera.Cells[mvolumen,i+1]        := utils.toString(P.mecanico_vol,2);
     gManguera.Cells[mimporte,i+1]        := utils.toString(P.mecanico_imp,2);
     gManguera.Cells[mmangueraID,i+1]     := P.manguera_id;
     gManguera.Ints[mProductoID,i+1]      := P.producto_id;
     gManguera.Cells[mDIf,i+1]            := utils.toString(P.mecanico_vol - (P.electronico_fin - P.electronico_ini),2);
     addProductoResumen(qProducto.Lookup('ID',P.producto_id,'descripcion'));
end;

procedure TfrmTurno.Save;
begin
  inherited;
  if not isGUIOK then exit;
  if Application.MessageBox(Pchar('Esta seguro que desea guardar el Turno?'), 'Confirmar...',
          MB_ICONQUESTION OR MB_YESNO ) <> ID_YES then Exit;
  loadRegistro;

  try
  tc.fecha := utils.toFechaRangoIni(StrToDate(cDAYTIME.Text));
  tc.mn    := cTC.Value;
  if not tc.exist(cds) then
        tc.save(cds,tAdd);

  if turno.save(cds,transaction)= cTrue  then
  begin
     showmsg(frmMAIN.getLabel(mSuccess));
     LID.Caption := turno.id;
     cStatus.Items.IndexOf(VarToStr(frmMAIN.getParamKEY0(turno.status_id)));
     transaction := tUpdate;
     habilitarCampos;
  end;

  except on E:Exception do
         Application.MessageBox(PChar('Error: '+e.message),Pchar(frmMain.getlabel(capError)),MB_ICONERROR);
  end;

end;

procedure TfrmTurno.showregistro;
var  i : word;
     P : Psurtidor_turnomanguera;
begin
     cSuc.KeyValue               := turno.suc_id;
     cCODE.Text                  := turno.code;
     cDAYTIME.Text               := DateToStr(turno.daytime);
     cSELLERID.KeyValue          := turno.seller_id;
     cHorario.ItemIndex          := cHorario.Items.IndexOf( frmMAIN.getParamKEY0(turno.shedule_id) );
     LID.Caption                 := turno.id;
     Lini.Caption                := DateTimeToStr(turno.timeini);
     lFin.Caption                := DateTimeToStr(turno.timeend);

     cTOTALBS.Value              := turno.total_bs;
     cTotalUSD.Value             := turno.total_usd;
     cTC.Value                   := turno.tc;
     cTotalCash.Value            := turno.total_cash;
     cTotalVale.Value            := turno.total_vale;
     cTotalTarjeta.Value         := turno.total_card;
     cTotalCalib.Value           := turno.total_calib;
     cTotalProcess.Value         := turno.total_proceeds;
     cTotalVendido1.Value        := turno.total_sold;
     cTotalVendido.Value         := turno.total_sold;
     cTotalFactura.Value         := turno.total_invoice;
     cTotalsinFactura.Value      := turno.total_sold - turno.total_invoice;
     cStatus.ItemIndex           := cStatus.Items.IndexOf(VarToStr(frmMAIN.getParamKEY0(turno.status_id)));

     if turno.mangueras.Count>0 then
     begin
        for i:=0 to turno.mangueras.Count-1 do
        begin
             P := turno.mangueras.Items[i];
             MangueraTOGrid(P^,i);
        end;
        gManguera.RowCount := turno.mangueras.Count+2;
        updateTotalesProducto;
        habilitarCampos;                        
     end;
end;

procedure TfrmTurno.updateData;
begin
  inherited;
  try
    //obtenemos sucursales activas para el usuario
    if qSuc.Active then qSuc.Close;
    qSuc.ParamByName('user_id').AsInteger   := GUser.id;
    qSuc.ParamByName('company_id').AsInteger:= Guser.company_id;
    qSuc.Open;
    qSuc.SortDataSetByFieldName('description',false);

    Application.ProcessMessages;

    //obtenemos lista de vendedores
{    if qVendedor.Active then qVendedor.Close;
    qVendedor.Open;
    qVendedor.SortDataSetByFieldName('nombre',false);
 }

    cHorario.Items := frmMAIN.getParamList(tHorario);
    cHorario.ItemIndex := 0;
    Application.ProcessMessages;
    cStatus.Items  := frmMAIN.getParamList(tEstadoTurno);
    cStatus.ItemIndex := 0;
    Application.ProcessMessages;

    if qProducto.Active then qProducto.Close;
    qProducto.Open;

    if qTipodePago.Active then qTipodePago.Close;
    qTipodePago.Open;

    if qVehiculo.Active then qVehiculo.Close;
    qVehiculo.Open;

    Application.ProcessMessages;
  except on E:Exception do
        Application.MessageBox(PChar('Error: '+e.message),Pchar(frmMain.getlabel(capError)),MB_ICONERROR);
  end;

end;

procedure TfrmTurno.bSaveClick(Sender: TObject);
begin
  Save;
end;

procedure TfrmTurno.cDAYTIMEExit(Sender: TObject);
begin
  inherited;
  if utils.esfechaValida(cDAYTIME.Text) then
  begin
     tc.fecha := utils.toFechaRangoIni(StrToDate(cDAYTIME.Text));
     tc.QBE(cds);
     tc.fromClientDataSet(cds);
     cTC.Value := tc.mn;
  end;
end;

procedure TfrmTurno.cPageChange(Sender: TObject);
begin
     bAdicionar.Enabled := false;             
     if cPage.ActivePageIndex = 1 then
         bAdicionar.Enabled :=  bAdicionar.Tag=0
     else if cPage.ActivePageIndex = 5 then
          bAdicionar.Enabled := bAdicionar.Tag <= 1;
end;

procedure TfrmTurno.bAdicionarClick(Sender: TObject);
var  l : string;
begin
  inherited;
  if cPage.ActivePageIndex = 1 then //bombas
  begin
       qManguera.Close;
       if cSuc.Text='' then
       begin
            showmsg('Debe seleccionar sucursal...');
            cSuc.SetFocus; Exit;
       end;
       qManguera.ParamByName('estacion').AsString := qSuc.Lookup('id',cSuc.KeyValue,'data0');
       qManguera.Open;
       qManguera.SortDataSetByFieldName('descripcion',false);

       frmSelectBomba := TfrmSelectBomba.Create(self);
       if frmSelectBomba.ShowModal = mrYes then //si ok
       begin
            l := frmSelectBomba.getSelectionList;
            addManguerasManual(l);
       end;
  end;
end;

procedure TfrmTurno.addMangueraAlTurno(man: Tsurtidor_manguera;i:word);
var  turnoManguera : Tsurtidor_turnomanguera;
begin
     turnoManguera := Tsurtidor_turnomanguera.Create;
     turnoManguera.id         := 0;
     turnoManguera.turno_id   := turno.id;
     turnoManguera.manguera_id:= man.id;
     turnoManguera.producto_id:= man.producto_id;
     turnoManguera.pu         := qProducto.Lookup('id',man.producto_id,'Precio');
     turnoManguera.electronico_ini := 0;
     turnoManguera.electronico_fin := 0;
     turnoManguera.mecanico_ini    := man.mecanico;
     turnoManguera.mecanico_fin    := man.mecanico;
     turnoManguera.mecanico_vol    := 0;
     turnoManguera.mecanico_imp    := 0;
     MangueraTOGrid(turnoManguera,i);
end;

procedure TfrmTurno.gMangueraEditingDone(Sender: TObject);
var  f : integer;
begin
     f := gManguera.Row;
     gManguera.Cells[mVolumen,f] := utils.toString(gManguera.floats[mMecanicoF,f]-gManguera.Floats[mMecanicoI,f],2);
     gManguera.Cells[mImporte,f] := utils.toString(gManguera.Floats[mVolumen,f]*gManguera.Floats[mPU,f],2);
     gManguera.Cells[mDif,f]     := utils.toString(gManguera.Floats[mVolumen,f] - (gManguera.Floats[mElectronicoF,f] - gManguera.Floats[mElectronicoI,f]),2);
     updateTotalesProducto;
end;

procedure TfrmTurno.updateTotalesProducto;
var i : word;
begin
     //totales
     gManguera.Cells[mImporte,gManguera.RowCount-1] := utils.toString(gManguera.ColumnSum(mImporte,1,gManguera.RowCount-2),2);

     for i:=1 to gResumen.RowCount-2 do
          getTotalesProducto(i);

     turno.total_sold     := gResumen.ColumnSum(rImporte,1,gResumen.RowCount-2);
     turno.total_invoice  := gResumen.ColumnSum(rFacturado,1,gResumen.RowCount-2);

     gResumen.Cells[rImporte,gResumen.RowCount-1]   := utils.toString(turno.total_sold,2);
     gResumen.Cells[rVolumen,gResumen.RowCount-1]   := utils.toString(gResumen.ColumnSum(rVolumen,1,gResumen.RowCount-2),2);
     gResumen.Cells[rfacturado,gResumen.RowCount-1] := utils.toString(turno.total_invoice,2);
     gResumen.Cells[rsinFactura,gResumen.RowCount-1]:= utils.toString(gResumen.ColumnSum(rsinFactura,1,gResumen.RowCount-2),2);


     cTotalVendido1.Value := turno.total_sold;
     cTotalVendido.Value  := turno.total_sold;
     cTotalFactura.Value  := turno.total_invoice;
     cTotalsinFactura.Value:= cTotalVendido.Value - cTotalFactura.Value;

end;

function TfrmTurno.existeManguera(id: string): boolean;
var  i : Word;
begin
     result := false;
     for i:=1 to gManguera.RowCount-2 do
     begin
          if gManguera.Cells[mMangueraID,i] = ID then
          begin
               result := true;
               Exit;
          end;
     end;
end;

procedure TfrmTurno.addProductoResumen(producto: string);
begin
     IF NOT existeProductoResumen(producto) then
     begin
          gResumen.AddRow;
          gResumen.Cells[rProducto,gResumen.RowCount-2] := producto;
          gResumen.Cells[rproductoID,gResumen.RowCount-2]:= qProducto.Lookup('descripcion',producto,'ID');
     end;
end;

function TfrmTurno.existeProductoResumen(producto: string): boolean;
var  i : word;
begin
     result := false;
     for i:=1 to gResumen.RowCount-2 do
     begin
          if gresumen.Cells[rProducto,i]= producto then
          begin
               RESULT := TRUE;
               eXIT;
          end;
     end;
end;

procedure TfrmTurno.getTotalesProducto(fila:word);
var  i : word;
     vol, imp: Currency;
begin
     vol := 0;
     imp := 0;

     for i:=1 to gManguera.RowCount-2 do
     begin
          if   gManguera.Cells[mProductodes,i] = gResumen.Cells[rProducto,fila] then
          begin
               vol := vol + gManguera.Floats[mVolumen,i];
               imp := imp + gManguera.Floats[mImporte,i];
          end;
     end;
     gResumen.Cells[rVolumen,fila] := utils.toString(vol,2);
     gResumen.Cells[rImporte,fila] := utils.toString(imp,2);
     gResumen.Cells[4,fila]        := utils.toString(imp-gResumen.Floats[3,fila],2);
end;

procedure TfrmTurno.cTotalVendido1Change(Sender: TObject);
begin
  cDifference.Value := cTotalProcess.Value - cTotalVendido1.Value;
end;

procedure TfrmTurno.cTotalFacturaChange(Sender: TObject);
begin
  inherited;
  cTotalsinFactura.Value := cTotalVendido.Value - cTotalFactura.Value;
end;

procedure TfrmTurno.cCODEExit(Sender: TObject);
begin
  inherited;
  if cCODE.Text='' then exit;

  if transaction=tAdd then
     turno.init;
  turno.code    := cCODE.Text;
  turno.suc_id  := integer(qSuc.Lookup('description',cSuc.Text,'ID'));
  turno.company_id := Guser.company_id ;
  turno.QBE(cds);

  if not cds.IsEmpty then
  begin
      turno.fromClientDataSet(cds);
      showregistro;
      transaction := tUpdate;
      habilitarCampos;
  end;
end;

procedure TfrmTurno.habilitarCampos;
begin
     if transaction = tAdd then
     begin
          bAdicionar.Enabled := true;
          bAdicionar.Tag     := 0;
          bSyncro.Enabled    := true;
          gManguera.Columns.Items[mMecanicoF].ReadOnly := false;
     end
     else begin //actualizar
          bAdicionar.Enabled := false;
          bAdicionar.Tag     := 2;
          bSyncro.Enabled    := false;
          gManguera.Columns.Items[mMecanicoF].ReadOnly := true;

          if turno.status_id in [eCerrado,eSyncronizando,eTermimado] then
          begin
            bSave.Enabled      := false;
            cTOTALBS.ReadOnly  := true;
            cTotalUSD.ReadOnly := true;
            cTC.ReadOnly       := true;
          end;

     end;
{
     if turno.status_id=eAbierto then
     begin
          bAdicionar.Enabled := true;
          bAdicionar.Tag     := 0;
          bSyncro.Enabled    := true;
          gManguera.Columns.Items[mMecanicoF].ReadOnly := false;
     end;

     if turno.status_id=ePorFacturar then
     begin
          bAdicionar.Enabled := true;
          bAdicionar.Tag     := 1;
          bSyncro.Enabled    := true;
          gManguera.Columns.Items[mMecanicoF].ReadOnly := false;
     end;

     if turno.status_id in [eCerrado,eSyncronizando,eTermimado]  then
     begin
          bAdicionar.Enabled := false;
          bAdicionar.Tag     := 2;
          bSave.Enabled      := false;
          bSyncro.Enabled    := false;
          gManguera.Columns.Items[mMecanicoF].ReadOnly := true;
          cTOTALBS.ReadOnly  := true;
          cTotalUSD.ReadOnly := true;
          cTC.ReadOnly       := true;
     end;
 }
end;

procedure TfrmTurno.cHorarioExit(Sender: TObject);
begin
  if (cHorario.Text='') and (utils.esfechaValida(cDAYTIME.Text)) then
  begin
       Lini.Caption := cDAYTIME.Text+' '+frmMAIN.getParamValue(cHorario.Text,'Value1');
       lFin.Caption := cDAYTIME.Text+' '+frmMAIN.getParamValue(cHorario.Text,'Value2');
  end;
end;

procedure TfrmTurno.addManguerasManual(listaBombas: string);
var  man : Tsurtidor_manguera;
     i:word;
begin
     if listaBombas<>'' then //si hay seleccion
      begin
           man := Tsurtidor_manguera.Create;
           try
                  man.QBE(cds,'bomba_id in ('+listabombas+')');
                  i := gManguera.RowCount-2;
                  while not cds.Eof do
                  begin
                       man.fromClientDataSet(cds);
                       if not existeManguera(man.id) then
                       begin
                          addMangueraAlTurno(man,i);
                          inc(i);
                       end;
                       cds.Next;
                  end;
                  gManguera.RowCount := i+2;
           finally
                  FreeAndNil(man);
           end;
      end;
end;

procedure TfrmTurno.addFactura(factura: Tsurtidor_factura);
var  i : word;
begin
//adiciona la factura al grid
//segun tipo de operacion si es calibracion adiciona a calibraciones
//segun tipo de pago
//si es vale adiciona a solapa vales
//si es tarjeta adiciona a solapa tarjetas
     gFacturas.AddRow;
     i := gFacturas.RowCount-2;
     if not existeFacturaGrid(factura.despacho_id) then
     begin
          gFacturas.Dates[fFecha,i]                := factura.diahora;
          gFacturas.Cells[fDosis,i]                := factura.dosificacion_id;
          gFacturas.Cells[fNro,i]                  := IntToStr(factura.factura_nro);
          gFacturas.Cells[fNIT,i]                  := factura.nit;
          gFacturas.Cells[fNombre,i]               := factura.nombre;
          gFacturas.Cells[fPlaca,i]                := factura.patente;
          gFacturas.Cells[fVeh,i]                  := VarToStr(qVehiculo.Lookup('id',factura.veh_id,'descripcion'));
          gFacturas.Cells[fVia,i]                  := VarToStr(qTipodePago.Lookup('id',factura.tipopago_id,'descripcion'));
          gFacturas.Cells[fProductoDes,i]          := VarToStr(qProducto.Lookup('id',factura.producto_id,'Abrev'));
          gFacturas.Cells[fVolumen,i]              := utils.toString(factura.volumen,2);
          gFacturas.Cells[fPU,i]                   := utils.toString(factura.precio,2);
          gFacturas.Cells[fImporte,i]              := utils.toString(factura.total_venta,2);
          gFacturas.Cells[fsyncromsg,i]            := factura.syncromsg;
          gFacturas.Cells[fiddespacho,i]           := factura.despacho_id;
          gFacturas.Cells[fsyncro,i]               := factura.syncro;

          if factura.operacion_id = toCalibracion then
             addCalibra(factura);

          case factura.tipopago_id of
               tpVale :  addVale(factura);
               tpTarjetaCredito,tpTarjetaDebito,tpTarjetaATC,tpTarjetaLinkSer: addTarjeta(factura);
          end;

          if not masiva then
             updateTotalesFacturas;
     end;

end;

procedure TfrmTurno.addCalibra(factura: Tsurtidor_factura);
var  fila:word;
begin
     if factura = NIL then exit;

     if gCalibra.RowCount = 2 then
        gCalibra.AddRow
     else if gCalibra.Cells[0,gCalibra.RowCount-2] <>'' then
          gCalibra.AddRow;

     fila := gCalibra.RowCount-2;

     gCalibra.Ints[0,fila]     := fila;
     gCalibra.Cells[1,fila]    := qManguera.Lookup('id',factura.manguera_id,'bomba');
     gCalibra.Cells[2,fila]    := qManguera.Lookup('id',factura.manguera_id,'descripcion');
     gCalibra.Cells[3,fila]    := factura.id;
     gCalibra.Cells[4,fila]    := qProducto.Lookup('id',factura.producto_id,'descripcion');
     gCalibra.Cells[5,fila]    := utils.toString(factura.volumen,2);
     gCalibra.Cells[6,fila]    := utils.toString(factura.precio,2);
     gCalibra.Cells[7,fila]    := utils.toString(factura.total_venta,2);

end;

procedure TfrmTurno.addTarjeta(factura: Tsurtidor_factura);
var  fila:word;
begin
     if factura = NIL then exit;

     if gTarjeta.RowCount = 2 then
        gTarjeta.AddRow
     else if gTarjeta.Cells[0,gTarjeta.RowCount-2] <>'' then
          gTarjeta.AddRow;

     fila := gTarjeta.RowCount-2;

     gTarjeta.Ints[0, fila]      := fila;
     gTarjeta.Cells[1,fila]      := qTipodePago.Lookup('id',factura.tipopago_id,'descripcion');
     gTarjeta.Cells[2,fila]      := factura.cliente_id;
     gTarjeta.Cells[3,fila]      := factura.nombre;
     gTarjeta.Cells[4,fila]      := factura.vale_document;
     gTarjeta.Ints[5,fila]       := factura.factura_nro;
     gTarjeta.Cells[6,fila]      := qProducto.Lookup('id',factura.producto_id,'Abrev');
     gTarjeta.Cells[7,fila]      := utils.toString(factura.volumen,2);
     gTarjeta.Cells[8,fila]      := utils.toString(factura.precio,2);
     gTarjeta.Cells[9,fila]      := utils.toString(factura.total_venta,2);
end;

procedure TfrmTurno.addVale(factura: Tsurtidor_factura);
var  fila:word;
begin
     if factura = NIL then exit;

     if gVale.RowCount = 2 then
        gVale.AddRow
     else if gVale.Cells[0,gVale.RowCount-2] <>'' then
          gVale.AddRow;

     fila := gVale.RowCount-2;
     gVale.Ints[0, fila]      := fila;
     gVale.Cells[1,fila]      := factura.cliente_id;
     gVale.Cells[2,fila]      := factura.nombre;
     gVale.Cells[3,fila]      := factura.vale_document;
     gVale.Ints[4,fila]       := factura.factura_nro;
     gVale.Cells[5,fila]      := qProducto.Lookup('id',factura.producto_id,'Abrev');
     gVale.Cells[6,fila]      := utils.toString(factura.volumen,2);
     gVale.Cells[7,fila]      := utils.toString(factura.precio,2);
     gVale.Cells[8,fila]      := utils.toString(factura.total_venta,2);

end;

procedure TfrmTurno.updateTotalesFacturas;
var  i:word;
begin
  //total facturas
     gFacturas.Floats[11,gFacturas.RowCount-1] := gFacturas.ColumnSum(11,1,gFacturas.RowCount-2);
     gFacturas.Cells[4,gFacturas.RowCount-1]   := 'Facturas: '+ IntToStr(gFacturas.RowCount-2);
     cTotalFactura.Value                       := gFacturas.Floats[11,gFacturas.RowCount-1];

  //total Calibraciones
     gCalibra.Floats[7,gCalibra.RowCount-1]    := gCalibra.ColumnSum(7,1,gCalibra.RowCount-2);
     gCalibra.Cells[2,gCalibra.RowCount-1]     := 'Calibraciones: '+IntToStr(gCalibra.RowCount-2);
     cTotalCalib.Value                         := gCalibra.Floats[7,gCalibra.RowCount-1];

  //total tarjetas
     gTarjeta.Floats[9,gTarjeta.RowCount-1]    := gTarjeta.ColumnSum(9,1,gTarjeta.RowCount-2);
     gTarjeta.Cells[3,gTarjeta.RowCount-1]     := 'Tarjetas: '+IntToStr(gTarjeta.RowCount-2);
     cTotalTarjeta.Value                       := gTarjeta.Floats[9,gTarjeta.RowCount-1];

  //total Vales
     gVale.Floats[8,gVale.RowCount-1]          := gVale.ColumnSum(8,1,gVale.RowCount-2);
     gVale.Cells[2,gVale.RowCount-1]           := 'Vales: '+IntToStr(gVale.RowCount-2);
     cTotalVale.Value                          := gVale.Floats[8,gVale.RowCount-1];

  //sumar el efectivo  confirmar y revisar este punto todavia
//     cTotalCash.Value  := cTotalFactura.Value - cTotalVale.Value-cTotalTarjeta.Value-cTotalCalib.Value;

  //ahora actualizar facturado por producto
  for i:= 1 to gResumen.RowCount-2 do
  begin
       gResumen.Cells[3, i] := utils.toString(getTotalFacturas(gResumen.Ints[5,i]),2);
       gResumen.Cells[4,i ] := utils.toString(gResumen.Floats[2,i]-gResumen.Floats[3,i]);
  end;
end;

function TfrmTurno.existeFacturaGrid(iddespacho: string): boolean;
var i : word;
begin
     RESULT := false;

     for i:=1 to gFacturas.RowCount-2 do
     begin
          if gFacturas.Cells[fiddespacho,i] = iddespacho then
          begin
               RESULT := TRUE;
               EXIT;
          end;
     end;
end;

procedure TfrmTurno.FormActivate(Sender: TObject);
begin
  inherited;
  cDAYTIME.Height := 22;
end;

procedure TfrmTurno.socketPetroboxConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  inherited;
  bSyncro.Enabled := true;

end;

procedure TfrmTurno.socketPetroboxDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  inherited;
  bSyncro.Enabled           := false;
end;

procedure TfrmTurno.syncro;
var  i:word;
     turnomanguera: Tsurtidor_turnomanguera;
     manguera: Tsurtidor_manguera;
     listaManguera,coma:string;
     factura : Tsurtidor_factura;
begin
//primero buscamos validamos   sucursal, codigo,fecha, vendedor y turno
          if cSuc.Text='' then
          begin
               showmsg('Debe seleccionar sucursal...');
               cSuc.SetFocus; Exit;
          end;

          if trim(cCode.Text)='' then
          begin
               showmsg('Debe ingresar codigo de asignacion...');
               cCode.SetFocus; Exit;
          end;

          if not utils.esfechaValida(cDAYTIME.Text) then
          begin
               showmsg('Debe ingresar fecha valida...');
               cDAYTIME.SetFocus; Exit;
          end;

          if cSELLERID.Text='' then
          begin
               showmsg('Debe seleccionar un vendedor...');
               cSELLERID.SetFocus; Exit;
          end;

          if cHorario.Text='' then
          begin
               showmsg('Debe seleccionar Horario');
               cHorario.SetFocus; Exit;
          end;
   TRY
//ahora buscamos los turnos en petrobox con los datos anteriores y mostramos para que el usuario elija uno
        qPetrobox.SQL.Clear;
        qPetrobox.Close;
        qPetrobox.SQL.Add('SELECT a.IDCIERRE, a.SURTIDORESenTURNO,a.INICIO, a.FIN, a.expendio as Despachado ');
        qPetrobox.SQL.Add('FROM  CIERRES a');
        qPetrobox.SQL.Add('WHERE diahora between :desde and :hasta');
        qPetrobox.SQL.Add('AND IDVENDEDOR =:idvendedor AND IDESTACION =:idestacion');

        qPetrobox.ParamByName('desde').AsDateTime := utils.toFechaRangoIni(cDAYTIME.Date);
        qPetrobox.ParamByName('hasta').AsDateTime := utils.toFechaRangoFin(cDAYTIME.Date);
        qPetrobox.ParamByName('idvendedor').AsString := VarToStr(cSELLERID.KeyValue);
        qPetrobox.ParamByName('idestacion').AsString := VarToStr(qSuc.Lookup('id',cSuc.KeyValue,'data0'));
        qPetrobox.Open;

        if qPetrobox.IsEmpty then
        begin
             Application.MessageBox(Pchar('No Existen turnos de '+cSELLERID.text+' el dia '+cDAYTIME.text),'Sincronizar turnos desde Petrobox',MB_ICONEXCLAMATION);
             Exit;
        end;

        //abrimos las mangueras
        qManguera.Close;
        qManguera.ParamByName('estacion').AsString := qSuc.Lookup('id',cSuc.KeyValue,'data0');
        qManguera.Open;
        qManguera.SortDataSetByFieldName('descripcion',false);


        //creamos un form nuevo y vaciamos el query para seleccionar un turno
        frmCierrePetrobox := TfrmCierrePetrobox.Create(Application);
        frmCierrePetrobox.lCaption.Caption := 'Turnos del dia '+cDAYTIME.Text+' vendedor: '+cSELLERID.Text;

        i := 1;
        while not qPetrobox.Eof do
        begin
             frmCierrePetrobox.grid.Cells[0,i]   := qPetrobox.fieldbyname('IDCIERRE').AsString;
             frmCierrePetrobox.grid.Cells[1,i]   := qPetrobox.fieldbyname('SURTIDORESenTURNO').AsString;
             frmCierrePetrobox.grid.Cells[2,i]   := qPetrobox.fieldbyname('INICIO').AsString;
             frmCierrePetrobox.grid.Cells[3,i]   := qPetrobox.fieldbyname('FIN').AsString;
             frmCierrePetrobox.grid.Cells[4,i]   := qPetrobox.fieldbyname('Despachado').AsString;
             qPetrobox.Next;
             inc(i);
        end;

        frmCierrePetrobox.grid.RowCount := qPetrobox.RecordCount+1;
        frmCierrePetrobox.grid.Row      := 1;

        if frmCierrePetrobox.ShowModal = mrOk then
        begin
           idcierre := frmCierrePetrobox.grid.Cells[0,frmCierrePetrobox.grid.row];
           Lini.Caption := frmCierrePetrobox.grid.Cells[2,frmCierrePetrobox.grid.row];
           lFin.Caption := frmCierrePetrobox.grid.Cells[3,frmCierrePetrobox.grid.row];

           //si el cierre elegido ya fue importado avisar y salir
           turno.init;
           turno.data0 := idcierre;
           turno.QBE(cds);

           if not cds.IsEmpty then
           begin
                Application.MessageBox('El Cierre de Petrobox seleccionado ya ha sido Importado. Favor verifique.','Sincronizar turnos desde Petrobox',MB_ICONEXCLAMATION);
                Exit;
           end;

        end
        else  Exit;   //si cancelar termina el proceso

//una vez elegido el turno recuperamos las mangueras con las numeraciones automaticas para que
//el operador ponga las manuales.
        qPetrobox.SQL.Clear;
        qPetrobox.Close;
        qPetrobox.SQL.Add('SELECT 0 as id, 0 as item, '+#39+'0'+#39+' as turno_id, a.idbomba as manguera_id,p.IDPRODUCTO as producto_id, p.PRECIO_01 as pu, a.INICIOVOLUMENCAT1 as electronico_ini,');
        qPetrobox.SQL.Add('a.FINVOLUMENCAT1 as electronico_fin, 0 as mecanico_ini, 0 as mecanico_fin, 0 as mecanico_vol, 0 as mecanico_imp');
        qPetrobox.SQL.Add('FROM CIERREDETALLELITROS a join BOMBAS b on a.idbomba = b.IDBOMBA');
        qPetrobox.SQL.Add('join TANQUES t on b.idtanque=t.IDTANQUE ');
        qPetrobox.SQL.Add('join PRODUCTOS p on t.IDPRODUCTO=p.IDPRODUCTO');
        qPetrobox.SQL.Add('where idcierre = :cierre');
        qPetrobox.ParamByName('cierre').AsString := idcierre;
        qPetrobox.Open;

        manguera := Tsurtidor_manguera.Create;
        turnomanguera := Tsurtidor_turnomanguera.Create;
        i := gManguera.RowCount-2;
        coma := '';
        listaManguera:= '';

        TRY
        while not qPetrobox.Eof do
        begin
             turnomanguera.fromClientDataSet(qPetrobox);

             if not existeManguera(turnomanguera.manguera_id) then
             begin
                 manguera.init;
                 manguera.id  := turnomanguera.manguera_id;
                 manguera.QBE(cds);
                 manguera.fromClientDataSet(cds);
                 turnomanguera.mecanico_ini := manguera.mecanico;
                 turnomanguera.mecanico_fin := manguera.mecanico;
                 MangueraTOGrid(turnomanguera,i);
                 inc(i);
                 listaManguera := listaManguera + coma + #39+turnomanguera.manguera_id+#39;
                 coma := ',';
             end;
             qPetrobox.Next;
        end;

        gManguera.RowCount := i + 2;
        cPage.ActivePageIndex := 1;

        FINALLY
               FreeAndNil(manguera);
               FreeAndNil(turnoManguera);
        END;

//una vez hecho esto recuperamos las facturas en una lista para revision y posterior guardado.
      qPetrobox.Close;
      qPetrobox.SQL.Clear;
      qPetrobox.SQL.Add('SELECT a.IDDESPACHO as id, a.IDDESPACHO as despacho_id, '+#39+'0'+#39+' as turno_id, a.DIAHORA, a.VOLUMEN,a.TOTAL_VENTA,a.PRECIO,');
      qPetrobox.SQL.add('a.IDBOMBA as manguera_id,a.IDPRODUCTO as producto_id, z.CODIGO_TARJETA as codigo_tarjeta, a.PATENTE,v.IDTIPODEVEHICULO as veh_id, v.idpais as pais,');
      qPetrobox.SQL.add('a.VALEDECREDITO as vale_document, c.CODIGO as cliente_id, a.CLIENTETRIBUTO as nit, a.CLIENTEDESCRIPCION as nombre, a.IDTIPODEPAGO as tipopago_id, a.IDTIPODEOPERACION as operacion_id,');
      qPetrobox.SQL.add('a.FACTURANUMERO as factura_nro, d.CODIGOALFANUMERICO as dosificacion_id, a.ANULADA as estado, a.CODIGODECONTROL as codigo_control, s.NUMEROAUTORIZACION as autorizacion_sus,');
      qPetrobox.SQL.add('a.PRECIOTERCEROS as precio_terceros, a.NROFACTURATERCEROS as nrofactura_terceros,'+#39+''+#39+' as obs, a.DIAHORA as updated, 0 as uupdated_id,');
      qPetrobox.SQL.add('0 as syncro, '+#39+''+#39+' as syncromsg, a.DIAHORA as syncdate, '+#39+'1'+#39+' as automatica');
      qPetrobox.SQL.add('FROM DESPACHADO a join VEHICULOS v on a.IDVEHICULO=v.IDVEHICULO');
      qPetrobox.SQL.add('join CENTRODECOSTOS c on a.IDCENTRODECOSTO=c.IDCENTRODECOSTOS');
      qPetrobox.SQL.add('join DOSIFICACIONES d on a.IDDOSIFICACION=d.IDDOSIFICACION');
      qPetrobox.SQL.add('left join AUTORIZACIONES_SUST_CONTROLADAS s on a.IDAUTORIZACIONSUSTANCIAS=s.IDAUTORIZACIONSUSTANCIAS');
      qPetrobox.SQL.add('left join ZEXT_DESPACHADO_TARJETA z on a.IDDESPACHO = z.DESPACHADO_IDDESPACHO');
      qPetrobox.SQL.Add('where a.IDBOMBA in ('+listaManguera+')');          //mangueras
      qPetrobox.SQL.Add('and a.IDVENDEDOR =:vendedor');
      qPetrobox.SQL.Add('and a.IDESTACION =:estacion');
      qPetrobox.SQL.add('and a.DIAHORA between :desde and :hasta');

      qPetrobox.ParamByName('vendedor').AsString        := VarToStr(cSELLERID.KeyValue);
      qPetrobox.ParamByName('estacion').AsString        := VarToStr(qSuc.Lookup('id',cSuc.KeyValue,'data0'));
      qPetrobox.ParamByName('desde').AsDateTime         := StrToDateTime(Lini.Caption);
      qPetrobox.ParamByName('hasta').AsDateTime         := StrToDateTime(lFin.Caption);
      qPetrobox.Open;

      qPetrobox.First;
      factura := Tsurtidor_factura.Create;
      masiva  := true;

      TRY
      while not qPetrobox.Eof do
      begin
           factura.fromClientDataSet(qPetrobox);
           //hacemos algunos ajustes a cada factura antes de almacenar
           if factura.estado = 'No' then
              factura.estado := qProducto.Lookup('ID',factura.producto_id,'Abrev')
           else begin//facturas anuladas = Si
                factura.estado      := 'A';
                factura.volumen     := 0;
                factura.total_venta := 0;
                factura.precio      := 0;
                factura.cliente_id  := '0';
                factura.nit         := '0';
                factura.nombre      := 'ANULADA';
                factura.codigo_control := '0';
           end;

           //verificar que hacer con los clientes (tal vez algo con biopetrol)
           addFactura(factura);
           qPetrobox.Next;
      end;
      FINALLY
           FreeAndNil(factura);
           masiva  := false;
           updateTotalesFacturas;
      END;

      //una vez recuperada una asignacion no puede volver a recuperar otra
        bSyncro.Enabled := false;
    EXCEPT on E:Exception do
           begin
                Application.MessageBox(Pchar('Error al sincronizar con servidor Petrobox: '+e.Message),'Error',MB_ICONERROR);
           end;
    END;
end;

procedure TfrmTurno.bSyncroClick(Sender: TObject);
begin
  syncro;
end;

procedure TfrmTurno.cTotalVendidoChange(Sender: TObject);
begin
  inherited;
  cTotalVendido1.Value := cTotalVendido.Value;
end;

procedure TfrmTurno.sumTotalRecaudado(Sender: TObject);
begin
     cTotalProcess.Value := cTotalCash.Value + cTotalVale.Value + cTotalTarjeta.Value+ cTotalCalib.Value;
end;

function TfrmTurno.getTotalFacturas(producto: integer): Currency;
var  i:word;
begin
     RESULT := 0;
     for i:=1 to gFacturas.RowCount-2 do
     begin
          if qProducto.Lookup('id',producto,'Abrev') = gFacturas.Cells[8,i] then
               RESULT := RESULT + gFacturas.Floats[11,i];
     end;
end;

procedure TfrmTurno.cTOTALBSChange(Sender: TObject);
begin
  inherited;
  cTotalCash.Value := cTOTALBS.Value + (cTotalUSD.Value*cTC.Value);
end;

procedure TfrmTurno.cSucExit(Sender: TObject);
begin
  inherited;
  qVendedor.Close;
  if cSuc.Text='' then exit;
  qVendedor.ParamByName('estacion').AsString := qSuc.Lookup('id',cSuc.KeyValue,'data0');
  qVendedor.Open;
  qVendedor.SortDataSetByFieldName('nombre',false);
end;

procedure TfrmTurno.cTotalUSDExit(Sender: TObject);
begin
  inherited;
  cTotalCash.Value := cTOTALBS.Value + cTotalUSD.Value;
end;

procedure TfrmTurno.cTCExit(Sender: TObject);
begin
  inherited;
  cTotalCash.Value := cTOTALBS.Value + (cTotalUSD.Value*cTC.Value);
end;

procedure TfrmTurno.cTotalUSDChange(Sender: TObject);
begin
  cTotalCash.Value := cTOTALBS.Value + (cTotalUSD.Value*cTC.Value);
end;

procedure TfrmTurno.cTCChange(Sender: TObject);
begin
  cTotalCash.Value := cTOTALBS.Value + (cTotalUSD.Value*cTC.Value);
end;

procedure TfrmTurno.cTotalProcessChange(Sender: TObject);
begin
  cDifference.Value := cTotalProcess.Value - cTotalVendido1.Value;
end;

initialization
   RegisterClass(TfrmTurno);
end.
