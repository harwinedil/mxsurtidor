unit UConstantes;

interface

type
  RNavegator = record
    First :   boolean;
    Previus:  boolean;
    Next:     boolean;
    Last:     boolean;
  end;

const
  //transacciones
  tAdd        :byte= 0;
  tUpdate     :byte= 1;
  tDelete     :byte= 2;
  tGet        :byte= 3;

  //direccion
  dArriba     :byte= 0;
  dAbajo      :byte= 1;
  dIzquierda  :byte= 2;
  dDerecha    :byte= 3;

  //navegacion
  nPrimero    :byte= 0;
  nUltimo     :byte= 255;
  nAnterior   :byte= 1;
  nSiguiente  :byte= 2;

  //caracteres especiales
  ENTER          = #13;
  EOL            = #13#10;
  TAB            = #9;
  Separador      = '|';
  BACK           = #8;
  configLocal    = 'config.dat';

  //niveles de cuentas
  tcTitulo    :byte= 1;
  tcCapitulo  :byte= 2;
  tcGrupo     :byte= 3;
  tcCuenta    :byte= 4;
  tcAnalitica :byte= 5;

  //codigos de retorno
  cOK         :byte= 1;
  cIncomplete :byte= 2;
  cError      :byte= 255;
  cWarning    :byte= 3;
  cNone       :byte= 0;
  cTrue       :byte= 11;
  cFalse      :byte= 10;


  //mensajes
  mNOSupportTransaction = 'Transaccion no Soportada';
  mRecordExist          = 'El Registro ya Existe';
  mRecordInUse          = 'Registro en uso, NO es posible eliminar.';
  mRecordInsert         = 'Transacción Exitosa. El registro ha sido Almacenado.';
  mRecordUpdate         = 'Transacción Exitosa. El registro ha sido Actualizado.';
  mRecordDelete         = 'Transacción Exitosa. El registro ha sido Eliminado.';
  mRecordFound          = 'Registro Encontrado';
  mRecordNOFound        = 'Registro NO Encontrado';
  mNOClassFound         = 'Clase NO encontrada';
  mSuccess              = 'Transacción Exitosa';
  mFieldRequired        = 'Este campo es requerido...';

implementation

end.
