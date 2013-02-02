program MXSurtidor;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  UfrmMAIN in 'UfrmMAIN.pas' {frmMAIN},
  UclasGENPERSON in 'UclasGENPERSON.pas',
  UclasGENSUC in 'UclasGENSUC.pas',
  UclasSYSROL in 'UclasSYSROL.pas',
  UclasSYSUSER in 'UclasSYSUSER.pas',
  uLkJSON in 'uLkJSON.pas',
  UfrmBase1 in 'UfrmBase1.pas' {frmBase1},
  UfrmBaseIntro in 'UfrmBaseIntro.pas' {frmBaseIntro},
  UfrmBuscar in 'UfrmBuscar.pas' {frmBuscar},
  UfrmMXUser in 'UfrmMXUser.pas' {frmMXUser},
  UfrmIntroDobleList in 'UfrmIntroDobleList.pas' {frmIntroDobleList},
  UfrmIntroRol in 'UfrmIntroRol.pas' {frmIntroRol},
  UfrmSysPerson in 'UfrmSysPerson.pas' {frmSysPerson},
  UfrmSysRol in 'UfrmSysRol.pas' {frmSysRol},
  UGralUtilidades in '..\common\UGralUtilidades.pas',
  UGralConstantes in '..\common\UGralConstantes.pas',
  UGralEstructuras in '..\common\UGralEstructuras.pas',
  UBaseObject in '..\MXServer\UBaseObject.pas',
  UConstantes in '..\MXServer\UConstantes.pas',
  ufrmSplash in 'ufrmSplash.pas' {splash},
  UfrmVendedor in 'UfrmVendedor.pas' {frmVendedor},
  UfrmTurno in 'UfrmTurno.pas' {frmTurno},
  Uclassurtidor_vendedor in 'Uclassurtidor_vendedor.pas',
  UfrmProducto in 'UfrmProducto.pas' {frmsurProducto},
  Uclassurtidor_producto in 'Uclassurtidor_producto.pas',
  Uclassurtidor_bomba in 'Uclassurtidor_bomba.pas',
  UfrmBombas in 'UfrmBombas.pas' {frmBomba},
  Uclassurtidor_manguera in 'Uclassurtidor_manguera.pas',
  UfrmCotizacionME in 'UfrmCotizacionME.pas' {frmCotizacionME},
  Uclassurtidor_dosis in 'Uclassurtidor_dosis.pas',
  UfrmManguera in 'UfrmManguera.pas' {frmManguera},
  Uclassecurity_option in 'Uclassecurity_option.pas',
  Uclasgeneral_cotizacionme in 'Uclasgeneral_cotizacionme.pas',
  UfrmDosis in 'UfrmDosis.pas' {frmDosis},
  UfrmIntroFactura in 'UfrmIntroFactura.pas' {frmIntroFactura},
  Uclassecurity_mxuser_roles in 'Uclassecurity_mxuser_roles.pas',
  Uclassecurity_mxuser in 'Uclassecurity_mxuser.pas',
  UfrmGenSuc in 'UfrmGenSuc.pas' {frmgenSuc},
  Uclassurtidor_turnomanguera in 'Uclassurtidor_turnomanguera.pas',
  Uclassurtidor_turno in 'Uclassurtidor_turno.pas',
  UfrmSelectBomba in 'UfrmSelectBomba.pas' {frmSelectBomba},
  Uclassurtidor_factura in 'Uclassurtidor_factura.pas',
  UfrmIntroCotizacion in 'UfrmIntroCotizacion.pas' {frmIntroCotizacion},
  UfrmSurtidorFactura in 'UfrmSurtidorFactura.pas' {frmSurtidorFactura},
  Uclassecurity_company in '..\MXTransporte\Uclassecurity_company.pas',
  Uclassecurity_option_privilegies in '..\MXTransporte\Uclassecurity_option_privilegies.pas',
  UfrmLogin in '..\MXTransporte\UfrmLogin.pas' {frmLogin},
  UfrmCierresPetrobox in 'UfrmCierresPetrobox.pas' {frmCierrePetrobox};

{$R *.res}

begin
 try
  Application.Initialize;
  Application.Title := 'MXSurtidor';
  Application.CreateForm(TfrmMAIN, frmMAIN);
  Application.Run;
  finally
     try
        Application.Terminate;
     except
           //nada
     end;
  end;



end.
