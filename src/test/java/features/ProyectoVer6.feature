#mvn test -Dcucumber.options="src/test/java/features/ProyectoVer6.feature:6"

Feature: Escenarios KataMobile y enginee

    #Este feature se va a engine web tomar de ejemplo
  @web
  Scenario Outline: CP001 - Caso enginee como ejemplo
    Given se visualiza la pantalla de bievenida al enginee y hace click en INICIAR SESIÓN
    When el usuario ingresa al engine y hago onbording con "<usuario>" y "<password>"
    And ingresa al home de enginee y hace click en Total de pendientes
    And selecciona el nro de solicitud en engine
    And hago click en Comite de crédito en enginee


    Examples:
      |  usuario                  | password   | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      |  sruiz@craclasadev.com | Andes$2023 | Credito        | Credito_Individual | DNI           | 02379972     |


  @mobile
  Scenario Outline: CP0001 - Kata Mobile - Monto y número de cuotas - El Monto y número de Cuotas deben mostrarse autocompletados y ser editable
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And valido campo monto
    And valido campo cuotas

    Examples:
      | organizacion | usuario                  | password   | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | andesqa      | ncordova@craclasadev.com | Andes$2023 | Credito        | Credito_Individual | DNI           | 02379972     |


  @mobile
  Scenario Outline: CP0008 - Validar No se debe poder registrar una orden con monto mayor al permitido, 10,000.00, para producto Pyme, sub producto Facilito, con destino Capital de trabajo, para Cliente Persona Natural - Recurrente y tipo seguro Desgravamen Individual, Conyugal, Devolución.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona subtipo de credito empresarial
    And selecciona producto PYME
    And selecciona subproducto PYME-FACILITO
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And selecciono Modalidad de credito principal
    And selecciono Destino del credito y hago click en CAPITAL DE TRABAJO
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And selecciono no en el seguro de vida
    And registro fecha de primera cuota
    And selecciona calculo de plazo en días
    And consulta niveles de autonomia de tasa
    And Selecciona tasas
    And selecciona NORMAL de tasas
    And hago click en Simulador crédito
    And Consulta sobreendeudamiento
    And Consulta motor de decision de cliente no bancarizado
    And enviar solicitud
    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | monto | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | 10001 | 336    |

  @mobile
  Scenario Outline: CP009 - Campaña pre aprobada no debe pasar directamente a aprobación, para producto Personal, sub producto Consumo Productivo 2, con destino Libre disponibilidad, para Cliente Persona Natural - Recurrente.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona primer item PERSONAL de subtipo de credito
    And selecciona producto PERSONAL
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And Selecciono documentos virtuales
    And proceso solicitud

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | monto | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | 1500  | 3      |

  @mobile
  Scenario Outline: CP027 - Validar Asignación al nivel autorizador correspondiente por respuesta favorable de Analista de Riesgos, para Cliente Persona Jurídica - Nuevo.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona primer item PERSONAL de subtipo de credito
    And selecciona producto PERSONAL
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And Selecciono documentos virtuales
    And proceso solicitud
    #Este step es reemplazado por el step: "se visualiza la pantalla de bievenida al enginee y hace click en INICIAR SESIÓN"
      #And ingreso a engine como analista de riesgo
    And se visualiza la pantalla de bievenida al enginee y hace click en INICIAR SESIÓN
    And el usuario ingresa al engine y hago onbording con "<usuario>" y "<password>"
    And ingresa al home de enginee y hace click en Total de pendientes

    And acepto solicitud

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | monto | cuotas |   usuario                  | password|
      | Credito        | Credito_Individual | DNI           | 40603206     | 1500  | 3      |  sruiz@craclasadev.com | Andes$2023|

    #POR CONSULTAR - DATA ANALISTA DE RIESGO
  @mobile
  Scenario Outline: CP0025 Validar Analista de riesgos debe revisar las excepciones, para Cliente Persona Natural - Recurrente.
    Given se observa la bienvenida al app y el usuario hace click en iniciar con la organización "<organizacion>"
    When el usuario ingresa al app y hago onbording con "<usuario>" y "<password>"
    And el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And el usuario verifica que tiene campaña y cambia pestaña excepciones
    And el usuario visualiza excepciones manuales de negocio

    Examples:
      | organizacion | usuario                  | password   | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoIngreso |
      | andesqa      | ncordova@craclasadev.com | Andes$2023 | Credito        | Credito_Individual | RUC           | 20602898025  | FIJO        |


  @mobile
    #En consulta
  Scenario Outline: CP0012 - Validar Funcionalidad del Modelo No Bancarizado dependiendo del monto, para producto Personal, sub producto Consumo Productivo 2, para Cliente Persona Natural - Nuevo No Bancarizado.
    Given se observa la bienvenida al app y el usuario hace click en iniciar con la organización "<organizacion>"
    When el usuario ingresa al app y hago onbording con "<usuario>" y "<password>"
    And el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And el usuario verifica que tiene campaña y cambia de pestaña
    And el usuario realiza click en tipo de ingreso "<TipoIngreso>"

    Examples:
      | organizacion | usuario                  | password   | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | andesqa      | ncordova@craclasadev.com | Andes$2023 | Credito        | Credito_Individual | DNI           | 40603206     |

  @mobile
  Scenario Outline: CP0040 - La Impresión contrato con varios intervinientes declarados debe plasmarse en el desembolso, para Pyme.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona subtipo de credito empresarial
    And selecciona producto PYME
    And selecciona subproducto PYME
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And selecciono Modalidad de credito principal
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And selecciono no en el seguro de vida
    And registro fecha de primera cuota
    And selecciona calculo de plazo en días
    And consulta niveles de autonomia de tasa
    And Selecciona tasas
    And selecciona NORMAL de tasas
    And hago click en Simulador crédito
    And Consulta sobreendeudamiento
    And Consulta motor de decision de cliente no bancarizado
    And enviar solicitud
    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 5000  | 336    |

  @mobile

  Scenario Outline: CP0043 - Validar vinculación de Garantía de Hipoteca o vehicular, para producto Personal, sub producto Personal.
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And valido tres ultimas gestiones haciendo click en ultima gestion realizada
    And valido que se muestren las garantias del credito seleccionado

    Examples:
      | TipoDocumento | NumDocumento |
      | DNI           | 40603206     |


  @mobile
  Scenario Outline: CP0055 - Capacidad de pago debe estar entre 0 - 80. Probar Capacidad de pago del cliente se encuentre dentro del rango 0 - 80. Para tipo de regla No Excepcionable
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona subtipo de credito empresarial
    And selecciona producto PYME
    And selecciona subproducto PYME

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 5000  | 336    |

  @mobile
  Scenario Outline: CP0050 - Validar las condiciones correctas  del campo  'Simular crédito', tipo de campo Botón plugin. Si  esta visible , Si  esta habilitado  , Si esta requerido
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    Then valido boton simular credito

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 71431849     |


  @mobile
  Scenario Outline: CP0050 - Validar las condiciones correctas  del campo  'Simular crédito', tipo de campo Botón plugin. Si  esta visible , Si  esta habilitado  , Si esta requerido
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona subtipo de credito empresarial
    And selecciona producto PYME
    And selecciona subproducto PYME
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And selecciono Modalidad de credito principal
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And selecciono no en el seguro de vida
    And registro fecha de primera cuota
    And selecciona calculo de plazo en días
    And consulta niveles de autonomia de tasa
    And Selecciona tasas
    And selecciona NORMAL de tasas
    And hago click en Simulador crédito

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 5000  | 336    |

  @mobile
  Scenario Outline: CP0051 Validar Registro de datos generales del cliente, para Cliente Persona Jurídica - Recurrente
    Given se observa la bienvenida al app y el usuario hace click en iniciar con la organización "<organizacion>"
    When el usuario ingresa al app y hago onbording con "<usuario>" y "<password>"
    And el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And el usuario verifica que tiene campaña y cambia de pestaña
    And el usuario realiza manteniento de cliente

    Examples:
      | organizacion | usuario                  | password   | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoIngreso |
      | andesqa      | ncordova@craclasadev.com | Andes$2023 | Credito        | Credito_Individual | RUC           | 20602898025  | FIJO        |

  @mobile
  Scenario Outline: CP0055 - Capacidad de pago debe estar entre 0 - 80. Probar Capacidad de pago del cliente se encuentre dentro del rango 0 - 80. Para tipo de regla No Excepcionable
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona subtipo de credito empresarial
    And selecciona producto PYME
    And selecciona subproducto PYME

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 5000  | 336    |


  @mobile
  Scenario Outline: CP0057 - Validar las condiciones correctas  del campo  'Simular crédito', tipo de campo Botón plugin. Si  esta visible , Si  esta habilitado  , Si esta requerido
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona subtipo de credito empresarial
    And selecciona producto PYME
    And selecciona subproducto PYME
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And selecciono Modalidad de credito principal
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And selecciono no en el seguro de vida
    And registro fecha de primera cuota
    And selecciona calculo de plazo en días
    And consulta niveles de autonomia de tasa
    And Selecciona tasas
    And selecciona NORMAL de tasas
    And hago click en Simulador crédito
    And Consulta sobreendeudamiento
    And solicita periodo de gracia por "<dias>" dias


    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto | cuotas | dias |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 5000  | 336    |      |

  @mobile
  Scenario Outline: CP0058 - El monto máximo para destino libre disponibilidad es hasta S/ 20,000.00 (monto solicitado por el cliente). Solicitar 20,000 con destino libre disponibilidad con un cliente nuevo.  Para tipo de regla No Excepcionable.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona subtipo de credito empresarial
    And selecciona producto PYME
    And selecciona subproducto PYME
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And selecciono Modalidad de credito principal
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto | cuotas | dias |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 20000 | 336    |      |

  Scenario Outline: CP063 - Sobre la titularidad de la unidad familiar: La unidad familiar debe tener un único titular, pero está prohibido atender a ambos miembros de la unidad familiar.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And ingresa el nro del celular "987654321"
    And ingreso referencia de direccion "<ReferenciaDireccion>"
    And selecciono tipo de vivienda "<TipoVivienda>"
    And selecciono tipo de construccion "<TipoConstruccion>"
    And selecciono tipo de sector "<TipoSector>"
    And ingreso años de residencia "<AñosResidencia>"
    And selecciono ocupacion "<Ocupacion>"
    And selecciono cargo "<Cargo>"
    And ingreso numero de personas dependientes "<NumPersonasDependientes>"
    And ingreso numero de hijos "<NumHijos>"
    And selecciono tipo de ingreso "<TipoIngreso>"
    And selecciono no cambio de actividad principal
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona subtipo de credito CONSUMO
    And selecciona producto PERSONAL
    And selecciona subproducto PERSONAL
    And hago click en tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "4000"
    And ingreso Nro de cuotas "6"
    And marco no en seguro optativos
    And selecciona calculo de plazo en días
    And consulta niveles de autonomia de tasa
    And selecciona NORMAL de tasas
    And hago click en Simulador crédito
    And consulto sobreendeudamiento
    And consulto motor de decision de cliente no bancarizado
    And hago click en el menu variables socioeconomicas
    And selecciono tiempo en domicilio "<TiempoEnDomicilio>"
    And ingreso numero de clientes semanales "<NroClientesSemanales>"
    And Selecciono numero de trabajadores "<NroTrabajadores>"
    And Selecciono tiempo experiencia en el negocio "<ExperienciaNegocio>"
    And selecciono numero de hijos en edad escolar "<HijosEdadEscolar>"
    And selecciono posicion en el hogar "<PosicionHogar>"
    And selecciono Si paga por internet
    And selecciono Distancia del negocio "<DistanciaNegocio>"
    And selecciono Si paga por luz
    And selecciono Si paga por agua
    And hago click en el menu Excepciones
    And verifico el mensaje de excepciones unidad familiar "<Sobre la titularidad de la unidad familiar: La unidad familiar debe tener un único titular, pero está prohibido atender a ambos miembros de la unidad familiar.>"

    Examples:
      | organizacion | usuario                  | password   | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | andesqa      | ncordova@craclasadev.com | Andes$2023 | Credito        | Credito_Individual | DNI           | 46829398     |

  @mobile
  Scenario Outline: CP0065 - Visita de supervisión obligatoria pre desembolso Y/o Verificación. Aprobar crédito Pyme. Para tipo de regla Excepcionable.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona subtipo de credito empresarial
    And selecciona producto PYME
    And selecciona subproducto PYME
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And selecciono Modalidad de credito principal
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And selecciono no en el seguro de vida
    And registro fecha de primera cuota
    And selecciona calculo de plazo en días
    And consulta niveles de autonomia de tasa
    And Selecciona tasas
    And selecciona NORMAL de tasas
    And hago click en Simulador crédito
    And Consulta sobreendeudamiento
    And Consulta motor de decision de cliente no bancarizado
    And enviar solicitud
    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 5000  | 336    |

  @mobile
  Scenario Outline: CP0069 - Validar que Calculado 'Gastos Financieros' Si esté visible, No esté habilitado, No esté requerido y cumpla con la condición 'sumatoriaSaldosIndirectas+cuotaIndirectaFlujo'.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona subtipo de credito empresarial
    And selecciona producto PYME
    And selecciona subproducto PYME
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And selecciono Modalidad de credito principal
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And selecciono no en el seguro de vida
    And registro fecha de primera cuota
    And selecciona calculo de plazo en días
    And consulta niveles de autonomia de tasa
    And Selecciona tasas
    And selecciona NORMAL de tasas
    And hago click en Simulador crédito
    And Consulta sobreendeudamiento
    And Verificar gastos financieros
    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 5000  | 336    |


  @mobile
  Scenario Outline: CP0070 - Visita de supervisión obligatoria pre desembolso Y/o Verificación. Aprobar crédito Pyme. Para tipo de regla Excepcionable.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona subtipo de credito empresarial
    And selecciona producto PYME
    And selecciona subproducto PYME
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And selecciono Modalidad de credito principal
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And selecciono no en el seguro de vida
    And registro fecha de primera cuota
    And selecciona calculo de plazo en días
    And consulta niveles de autonomia de tasa
    And Selecciona tasas
    And selecciona NORMAL de tasas
    And hago click en Simulador crédito
    And Consulta sobreendeudamiento
    And Consulta motor de decision de cliente no bancarizado
    And enviar solicitud
    And aprobar solicitud
    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 4900  | 12     |

  @mobile
  Scenario Outline: CP0074 - Validar que Lista Desplegable '¿Tipo de guardado del formulario?' Si esté visible, No esté habilitado, Si esté requerido, debe contener 'Completo/Parcial'
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona subtipo de credito CONSUMO
    And selecciona producto PERSONAL
    And selecciona subproducto PERSONAL
    And hago click en el menu Datos del conyuge
    And hago click en el menu variables socioeconomicas
    And hago click en el menu Excepciones
    And hago click en el menu Referencias vinculados deudas
    And hago click en menu Analisis cualitativo personal
    And hago click en menu Estados de resultados personas
    And hago click en el menu Garantias
    And hago click en el boton fiadores
    And hago click en crear fiador
    And valido campo Tipo de guardado del formulario


    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 71431849     |

  @mobile
  Scenario Outline: CP0075 Validar Actualización de condiciones de crédito, para producto Pyme, sub producto Pyme, con destino Capital de trabajo, para Cliente Persona Jurídica - Nuevo.
    Given se observa la bienvenida al app y el usuario hace click en iniciar con la organización "<organizacion>"
    When el usuario ingresa al app y hago onbording con "<usuario>" y "<password>"
    And el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And el usuario verifica que tiene campaña y cambia de pestaña
    And el usuario realiza manteniento de cliente
    And verifica creditos vigentes
    And registra condiciones de credito

    Examples:
      | organizacion | usuario                  | password   | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoIngreso |
      | andesqa      | ncordova@craclasadev.com | Andes$2023 | Credito        | Credito_Individual | RUC           | 20602898025  | FIJO        |


  @mobile
  Scenario Outline: CP0076 - Se debe implementar el tarifario paralelo de Cuotas Chiquitas a partir del Servicios de Tasas para el proceso Campaña.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona subtipo de credito empresarial
    And selecciona producto PYME
    And selecciona subproducto PYME
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And selecciono Modalidad de credito principal
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And selecciono no en el seguro de vida
    And registro fecha de primera cuota
    And verifico tarifario de cuotas
    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 4900  | 12     |

  @mobile
  Scenario Outline: CP0079 - El Servicio de Reniec debe funcionar para el proceso de Campaña.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 02040013     |

  @mobile
  Scenario Outline: CP0085 - Validar condiciones correctas en el campo botón servicio "Consultar cliente". El campo botón servicio debe ser visible, habilitado y requerido.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    Then valido boton consultar cliente

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 71431849     |

  @mobile
  Scenario Outline: CP0088 - Validar las condiciones correctas  del campo  'Consultar motor de decisión cliente no bancarizado', tipo de campo Botón Servicio. es visible y habilitado de acuerdo a la precondición
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona subtipo de credito CONSUMO
    And selecciona producto PERSONAL
    And selecciona subproducto PERSONAL
    Then Valido boton Consultar motor de decisión cliente no bancarizado

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 71431849     |


  @mobile
  Scenario Outline: CP00091 - Validar que Botón Servicio 'Consultar garantías Titular y conyuge' Si esté visible, Si esté habilitado, Si esté requerido y cumpla con la condición 'se lleva la información de titular y conyuge para poder consultar y subproducto'.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And hago click en el menu Datos del conyuge
    And hago click en el menu Excepciones
    And hago click en el menu Referencias vinculados deudas
    And hago click en el menu Garantias
    Then valido boton Consultar garantias Titular Conyugue


    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 20066498     |

  @mobile
  Scenario Outline: CP092|94 - Validar que Botón Servicio 'Consultar posición consolidada' Si esté visible, No esté habilitado, No esté requerido
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And hago click en el menu Datos del conyuge
    And hago click en boton editar conyugue
    And autorizo tratamiento de datos de conyugue
    And autorizo envio de publicidad de conyugue
    And el usuario consulta la persona
    Then valido boton posicion consolidada

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 20066498     |

  @mobile
  Scenario Outline: CP093 - Validar que Botón Servicio 'Consultar cónyuge' Si esté visible, Si esté habilitado, No esté requerido
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And hago click en el menu Datos del conyuge
    And hago click en boton editar conyugue
    And autorizo tratamiento de datos de conyugue
    And autorizo envio de publicidad de conyugue
    Then valido boton consultar persona

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 20066498     |

  @mobile
  Scenario Outline: CP00100 - Validar que Calculado 'Nombre Completo' No esté visible, No esté habilitado, No esté requerido y cumpla con la condición 'Mostrar para clientes : 1 Con Id_Cliente y 2 Sin Id_Cliente pero con información recuperada del Servicio RENIEC El orden de mostrado es Primer Nombre + Segundo Nombre + Tercer Nombre + Otros Nombres+ Apellido Paterno+Apellido Materno+ Apellido de Casada'
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And hago click en el menu Datos del conyuge
    And hago click en boton editar conyugue
    And autorizo tratamiento de datos de conyugue
    And autorizo envio de publicidad de conyugue
    And el usuario consulta la persona
    And valido campo nombre completo

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 20066498     |

  @mobile
  Scenario Outline: CP00101 - Validar que Calculado 'Edad' Sí esté visible, Sí esté habilitado, Sí esté requerido y cumpla con la condición 'Calculada de acuerdo a la fecha de nacimiento y debe ser mayor de 18 años'
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And hago click en el menu Datos del conyuge
    And hago click en boton editar conyugue
    And autorizo tratamiento de datos de conyugue
    And autorizo envio de publicidad de conyugue
    And el usuario consulta la persona
    And valido campo edad conyugue

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 20066498     |

  @mobile
  Scenario Outline: CP00102|103 - Validar que Calculado 'Nombre Completo' No esté visible, No esté habilitado, No esté requerido y cumpla con la condición 'Mostrar para clientes : 1 Con Id_Cliente y 2 Sin Id_Cliente pero con información recuperada del Servicio RENIEC El orden de mostrado es Primer Nombre + Segundo Nombre + Tercer Nombre + Otros Nombres+ Apellido Paterno+Apellido Materno+ Apellido de Casada'
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And hago click en el menu Datos del conyuge
    And hago click en boton editar conyugue
    And autorizo tratamiento de datos de conyugue
    And autorizo envio de publicidad de conyugue
    And el usuario consulta la persona
    And el usuario consulta la posicion consolidada
    And hago click en el menu Persona - Datos complementarios
    And valido tiempo en la actividad economica años

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 20066498     |
  @mobile

  Scenario Outline: CP00104 - Validar que Campo de Chequeo 'Consulte flujo de caja para validar si es factible' Si esté visible, Si esté habilitado, Si esté requerido y cumpla con la condición 'se muestra si los campos campoFlujoDeCajaPyme y campoFlujoDeCajaPymeOriginal son diferentes'.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And hago click en el menu Datos del conyuge
    And hago click en boton editar conyugue
    And autorizo tratamiento de datos de conyugue
    And autorizo envio de publicidad de conyugue
    And el usuario consulta la persona
    And el usuario consulta la posicion consolidada
    And hago click en el menu Persona - Datos complementarios
    And valido tiempo en la actividad economica años

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 20066498     |
  @mobile
  Scenario Outline: CP0105|117 - Validar las condiciones correctas  del campo  'Mensaje de Voz', tipo de campo Evento. Si  esta visible , Si  esta habilitado  , Si esta requerido.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    Then validar boton microfono
    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 71431849     |

  @mobile
  Scenario Outline: CP0106 - Validar las condiciones correctas  del campo "Inicio actividad económica". es visible, se habilita de acuerdo a la precondicion, es requerido
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    Then valido campo inicio actividad economica

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | RUC           | 20602898025  |


  @mobile
  Scenario Outline: CP0107 - Validar las condiciones correctas  del campo  'Geoposición Domicilio', tipo de campo GPS Automático. Si  esta visible , Si  esta habilitado  , Si esta requerido.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    Then valido boton Geoposicion domicilio

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 71431849     |


  @mobile
  Scenario Outline: CP0108 - Validar que Imagen 'DNI titular anverso' Si esté visible, Si esté habilitado, No esté requerido.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And hago click en el menu Datos del conyuge
    And hago click en el menu Excepciones
    And hago click en el menu Referencias vinculados deudas
    And hago click en el menu Garantias
    And el usuario ingresa a documentos virtuales
    Then verificar dni anverso

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 20066498     |


  @mobile
  Scenario Outline: CP0109 - Validar condiciones correctas en la lista desplegable "Subproducto". Las opciones de la lista desplegable deben ser visible de acuerdo al tipo de cliente, debe ser habilitado, debe ser requerido.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    Then Valido campo subproducto

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 71431849     |

  @mobile
  Scenario Outline: CP00110 - Validar que Lista Desplegable 'Tipo de referencia' Si esté visible, Si esté habilitado, Si esté requerido, debe contener 'Dig-TipoReferencia'
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And hago click en el menu Datos del conyuge
    And hago click en el menu Excepciones
    And hago click en el menu Referencias vinculados deudas
    And hago click en el boton referencias
    And hago click en agregar referencia
    Then valido campo Tipo referencia

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 20066498     |

  @mobile
  Scenario Outline: CP00111 - Validar que Lista Desplegable 'Frecuencia' Si esté visible, Si esté habilitado, Si esté requerido y cumpla con la condición 'habilitado siempre para el ADN', debe contener 'Dig-Frecuencia'
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And hago click en el menu Datos del conyuge
    And hago click en el menu Excepciones
    And hago click en el menu Referencias vinculados deudas
    And hago click en el boton deudas
    And hago click en agregar deuda
    And seleccionar deuda directa
    Then valido campo Frecuencia

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 20066498     |

  @mobile
  Scenario Outline: CP0112 - Validar las condiciones correctas  del campo  'Llamar', tipo de campo Llamada. Si  esta visible , Si  esta habilitado  , No esta requerido.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And validar campo llamar

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 02040013     |

  @mobile
  Scenario Outline: CP00113 - Validar que Radio Botones '¿Cuotas libres?' Si esté visible, Si esté habilitado, Si esté requerido, debe contener 'Si/No'
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And hago click en el menu Datos del conyuge
    And hago click en el menu Excepciones
    And hago click en el menu Referencias vinculados deudas
    And hago click en el boton deudas
    And hago click en agregar deuda
    Then valido pregunta cuotras libres

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 20066498     |

  @mobile
  Scenario Outline: CP0117 - Validar condiciones correctas en el campo de voz "Mensaje de Voz". El campo de voz es visible si el cliente da su conformidad en el tratamiento de datos, debe ser habilitado, debe ser requerido.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    Then valido boton Mensaje de voz

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 71431849     |


  @mobile
  Scenario Outline: CP0147 - El plazo máximo es hasta 18 meses para montos hasta S/ 8,000.00.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And ingresa el nro del celular "987654321"
    And ingreso referencia de direccion "<ReferenciaDireccion>"
    And selecciono tipo de vivienda "<TipoVivienda>"
    And selecciono tipo de construccion "<TipoConstruccion>"
    And selecciono tipo de sector "<TipoSector>"
    And ingreso años de residencia "<AñosResidencia>"
    And selecciono ocupacion "<Ocupacion>"
    And selecciono cargo "<Cargo>"
    And ingreso numero de personas dependientes "<NumPersonasDependientes>"
    And ingreso numero de hijos "<NumHijos>"
    And selecciono tipo de ingreso "<TipoIngreso>"
    And selecciono no cambio de actividad principal
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona subtipo de credito CONSUMO
    And selecciona producto PERSONAL
    And selecciona subproducto PERSONAL
    And hago click en tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "8000"
    And ingreso Nro de cuotas "12"
    And marco no en seguro optativos
    And selecciona calculo de plazo en días
    And consulta niveles de autonomia de tasa
    And selecciona NORMAL de tasas
    And hago click en Simulador crédito
    And consulto sobreendeudamiento
    And consulto motor de decision de cliente no bancarizado
    And hago click en el menu variables socioeconomicas
    And selecciono tiempo en domicilio "<TiempoEnDomicilio>"
    And ingreso numero de clientes semanales "<NroClientesSemanales>"
    And Selecciono numero de trabajadores "<NroTrabajadores>"
    And Selecciono tiempo experiencia en el negocio "<ExperienciaNegocio>"
    And selecciono numero de hijos en edad escolar "<HijosEdadEscolar>"
    And selecciono posicion en el hogar "<PosicionHogar>"
    And selecciono Si paga por internet
    And selecciono Distancia del negocio "<DistanciaNegocio>"
    And selecciono Si paga por luz
    And selecciono Si paga por agua
    And hago click en el menu Excepciones
    And Consulto reglas caja
    And hago click en el menu Referencias vinculados deudas
    And hago click en el boton referencias
    And hago click en agregar referencia
    And selecciono tipo de referencia "<TipoReferencia1>"
    And selecciono vinculo de referencia "<VinculoReferencia1>"
    And ingreso nombre de referencia "<NombreReferencia1>"
    And ingreso direccion de referencia "<DireccionReferencia1>"
    And ingreso telefono de referencia "<TelefonoReferencia1>"
    And ingreso comentarios sobre referencia "<ComentariosReferencia1>"
    And guardo referencia
    And hago click en agregar referencia
    And selecciono tipo de referencia "<TipoReferencia2>"
    And selecciono vinculo de referencia "<VinculoReferencia2>"
    And ingreso nombre de referencia "<NombreReferencia2>"
    And ingreso direccion de referencia "<DireccionReferencia2>"
    And ingreso telefono de referencia "<TelefonoReferencia2>"
    And ingreso comentarios sobre referencia "<ComentariosReferencia2>"
    And guardo referencia
    And hago click en retroceder referencia
    And hago click en menu Analisis cualitativo personal
    And selecciono ingreso principal "<IngresoPrincipal>"
    And selecciono ingreso secundario "<IngresoSecundario>"
    And selecciono tiempo experiencia en años "<TiempoExperiencia>"
    And selecciono estabilidad laboral "<EstabilidadLaboral>"
    And ingreso nombre empresa "<NombreEmpresa>"
    And ingreso Ruc empresa "<RUCEmpresa>"
    And selecciono sector laboral "<SectorLaboral>"
    And selecciono referencia de ubicacion de trabajo "<ReferenciaUbicacion>"
    And selecciono documento de ingresos "<DocumentoIngresos>"
    And selecciono SI en capacidad de ahorro
    And hago click en menu Estados de resultados personas
    And ingreso el ingreso neto del titular "<IngresoNetoTitular>"
    And ingreso comentarios de propuesta de credito
    And hago click en el menu Garantias
    And consulto garantias titutlar conyugue
    And marco NO en requiere garantia
    And el usuario ingresa a documentos virtuales
    And proceso solicitud
    And hago click en enviar

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | ReferenciaDireccion      | TipoVivienda | TipoConstruccion | TipoSector | AñosResidencia | Ocupacion | Cargo   | NumPersonasDependientes | NumHijos | TipoIngreso | TiempoEnDomicilio | NroClientesSemanales | NroTrabajadores | ExperienciaNegocio | HijosEdadEscolar | PosicionHogar | DistanciaNegocio | TipoReferencia1 | VinculoReferencia1 | NombreReferencia1      | DireccionReferencia1      | TelefonoReferencia1      | ComentariosReferencia1      | TipoReferencia2 | VinculoReferencia2 | NombreReferencia2      | DireccionReferencia2      | TelefonoReferencia2      | ComentariosReferencia2      | IngresoPrincipal | IngresoSecundario | TiempoExperiencia | EstabilidadLaboral | NombreEmpresa      | RUCEmpresa  | SectorLaboral | ReferenciaUbicacion      | DocumentoIngresos | IngresoNetoTitular |
      | Credito        | Credito_Individual | DNI           | 70087556     | tet referencia direccion | FAMILIAR     | MATERIAL NOBLE   | URBANO     | 3              | ABOGADO   | AUDITOR | 0                       | 0        | BOLETA      | Más de 24 meses   | 10                   | Solo yo         | 2-3 años           | No tengo         | Padre líder   | Menos de 1 hora  | Personal        | Vecino             | NombreReferencia1 test | DireccionReferencia1 test | TelefonoReferencia1 test | ComentariosReferencia1 test | Laboral         | Jefe inmediato     | NombreReferencia2 test | DireccionReferencia2 test | TelefonoReferencia2 test | ComentariosReferencia2 test | Dependiente      | Dependiente       | Más de 3 años     | Indeterminado      | NombreEmpresa test | 20765465411 | Privado       | ReferenciaUbicacion test | Boleta de pago    | 10000              |

  @mobile
  Scenario Outline: CP0152 - La modalidad de pago estacional NO aplica para los productos : Personal, Convenio y Contra depósito y sus campañas
  Probar con producto Personal Para tipo de regla No Excepcionable.
    Given se observa la bienvenida al app y el usuario hace click en iniciar con la organización "<organizacion>"
    When el usuario ingresa al app y hago onbording con "<usuario>" y "<password>"
    And el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And validar campo llamar

    Examples:
      | organizacion | usuario                  | password   | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | andesqa      | ncordova@craclasadev.com | Andes$2023 | Credito        | Credito_Individual | DNI           | 02040013     |

  @mobile
  Scenario Outline: CP0170 - No puede otorgar créditos a sí mismo o familiares.
    Given se observa la bienvenida al app y el usuario hace click en iniciar con la organización "<organizacion>"
    When el usuario ingresa al app y hago onbording con "<usuario>" y "<password>"
    And el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And verifico el mensaje No puede otorgar créditos a sí mismo o familiares

    Examples:
      | organizacion | usuario                  | password   | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | andesqa      | ncordova@craclasadev.com | Andes$2023 | Credito        | Credito_Individual | DNI           | 46829398     |
  @mobile
  Scenario Outline: CP0172 - Antiguedad de los vehiculos evaluados: Los vehículos de Transporte Público y Particular, deberán tener una antigüedad máxima de 15 años según fecha de fabricación. Probar cuando la antiguedad del vehiculo sea de 15 años Para tipo de regla Excepcionable.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And ingresa el nro del celular "987654321"
    And ingreso referencia de direccion "<ReferenciaDireccion>"
    And selecciono tipo de vivienda "<TipoVivienda>"
    And selecciono tipo de construccion "<TipoConstruccion>"
    And selecciono tipo de sector "<TipoSector>"
    And ingreso años de residencia "<AñosResidencia>"
    And selecciono ocupacion "<Ocupacion>"
    And selecciono cargo "<Cargo>"
    And ingreso numero de personas dependientes "<NumPersonasDependientes>"
    And ingreso numero de hijos "<NumHijos>"
    And selecciono tipo de ingreso "<TipoIngreso>"
    And selecciono no cambio de actividad principal
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona subtipo de credito CONSUMO
    And selecciona producto PERSONAL
    And selecciona subproducto PERSONAL
    And hago click en tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "4000"
    And ingreso Nro de cuotas "6"
    And marco no en seguro optativos
    And selecciona calculo de plazo en días
    And consulta niveles de autonomia de tasa
    And selecciona NORMAL de tasas
    And hago click en Simulador crédito
    And consulto sobreendeudamiento
    And consulto motor de decision de cliente no bancarizado
    And hago click en el menu variables socioeconomicas
    And selecciono tiempo en domicilio "<TiempoEnDomicilio>"
    And ingreso numero de clientes semanales "<NroClientesSemanales>"
    And Selecciono numero de trabajadores "<NroTrabajadores>"
    And Selecciono tiempo experiencia en el negocio "<ExperienciaNegocio>"
    And selecciono numero de hijos en edad escolar "<HijosEdadEscolar>"
    And selecciono posicion en el hogar "<PosicionHogar>"
    And selecciono Si paga por internet
    And selecciono Distancia del negocio "<DistanciaNegocio>"
    And selecciono Si paga por luz
    And selecciono Si paga por agua
    And hago click en el menu Excepciones
    And verifico el mensaje de excepciones vehicular "<Antiguedad de los vehiculos evaluados: Los vehículos de Transporte Público y Particular, deberán tener una antigüedad máxima de 15 años según fecha de fabricación. Probar cuando la antiguedad del vehiculo sea de 15 años Para tipo de regla Excepcionable.>"

    Examples:
      | organizacion | usuario                  | password   | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | andesqa      | ncordova@craclasadev.com | Andes$2023 | Credito        | Credito_Individual | DNI           | 46829398     |

  @mobile
  Scenario Outline: CP0173 - Clasificación crediticia de los intervinientes en los últimos 12 meses reportados (Hasta 2 CPP siempre y cuando no se trate del último mes). Probar con una operación de otorgamiento. Para tipo de regla Excepcionable (Manual).
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And ingresa el nro del celular "987654321"
    And ingreso referencia de direccion "<ReferenciaDireccion>"
    And selecciono tipo de vivienda "<TipoVivienda>"
    And selecciono tipo de construccion "<TipoConstruccion>"
    And selecciono tipo de sector "<TipoSector>"
    And ingreso años de residencia "<AñosResidencia>"
    And selecciono ocupacion "<Ocupacion>"
    And selecciono cargo "<Cargo>"
    And ingreso numero de personas dependientes "<NumPersonasDependientes>"
    And ingreso numero de hijos "<NumHijos>"
    And selecciono tipo de ingreso "<TipoIngreso>"
    And selecciono no cambio de actividad principal
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona subtipo de credito CONSUMO
    And selecciona producto PERSONAL
    And selecciona subproducto PERSONAL
    And hago click en tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "4000"
    And ingreso Nro de cuotas "6"
    And marco no en seguro optativos
    And selecciona calculo de plazo en días
    And consulta niveles de autonomia de tasa
    And selecciona NORMAL de tasas
    And hago click en Simulador crédito
    And consulto sobreendeudamiento
    And consulto motor de decision de cliente no bancarizado
    And hago click en el menu variables socioeconomicas
    And selecciono tiempo en domicilio "<TiempoEnDomicilio>"
    And ingreso numero de clientes semanales "<NroClientesSemanales>"
    And Selecciono numero de trabajadores "<NroTrabajadores>"
    And Selecciono tiempo experiencia en el negocio "<ExperienciaNegocio>"
    And selecciono numero de hijos en edad escolar "<HijosEdadEscolar>"
    And selecciono posicion en el hogar "<PosicionHogar>"
    And selecciono Si paga por internet
    And selecciono Distancia del negocio "<DistanciaNegocio>"
    And selecciono Si paga por luz
    And selecciono Si paga por agua
    And hago click en el menu Excepciones
    And verifico el mensaje de excepciones "<Clasificación crediticia de los intervinientes en los últimos 12 meses reportados (Hasta 2 CPP siempre y cuando no se trate del último mes). Probar con una operación de otorgamiento. Para tipo de regla Excepcionable (Manual).>"

    Examples:
      | organizacion | usuario                  | password   | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | andesqa      | ncordova@craclasadev.com | Andes$2023 | Credito        | Credito_Individual | DNI           | 46829398     |

  @mobile
  Scenario Outline: CP0177 - El monto máximo para destino libre disponibilidad es hasta S/ 20,000.00 (monto solicitado por el cliente).
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And selecciono tipo de ingreso "<TipoIngreso>"
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona subtipo de credito CONSUMO
    And selecciona producto PERSONAL
    And selecciona subproducto PERSONAL
    And hago click en tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "20000"
    And ingreso Nro de cuotas "12"
    And marco no en seguro optativos
    And selecciona calculo de plazo en días
    And consulta niveles de autonomia de tasa
    And selecciona NORMAL de tasas
    And hago click en Simulador crédito
    And consulto sobreendeudamiento
    And hago click en el menu Datos del conyuge
    And hago click en el menu variables socioeconomicas
    And selecciono tiempo en domicilio "<TiempoEnDomicilio>"
    And ingreso numero de clientes semanales "<NroClientesSemanales>"
    And Selecciono numero de trabajadores "<NroTrabajadores>"
    And Selecciono tiempo experiencia en el negocio "<ExperienciaNegocio>"
    And selecciono numero de hijos en edad escolar "<HijosEdadEscolar>"
    And selecciono posicion en el hogar "<PosicionHogar>"
    And selecciono Si paga por internet
    And selecciono Distancia del negocio "<DistanciaNegocio>"
    And selecciono Si paga por luz
    And selecciono Si paga por agua
    And hago click en el menu Excepciones
    And Consulto reglas caja
    And hago click en el menu Referencias vinculados deudas
    And hago click en el boton referencias
    And hago click en agregar referencia
    And selecciono tipo de referencia "<TipoReferencia1>"
    And selecciono vinculo de referencia "<VinculoReferencia1>"
    And ingreso nombre de referencia "<NombreReferencia1>"
    And ingreso direccion de referencia "<DireccionReferencia1>"
    And ingreso telefono de referencia "<TelefonoReferencia1>"
    And ingreso comentarios sobre referencia "<ComentariosReferencia1>"
    And guardo referencia
    And hago click en agregar referencia
    And selecciono tipo de referencia "<TipoReferencia2>"
    And selecciono vinculo de referencia "<VinculoReferencia2>"
    And ingreso nombre de referencia "<NombreReferencia2>"
    And ingreso direccion de referencia "<DireccionReferencia2>"
    And ingreso telefono de referencia "<TelefonoReferencia2>"
    And ingreso comentarios sobre referencia "<ComentariosReferencia2>"
    And guardo referencia
    And hago click en retroceder referencia
    And hago click en menu Analisis cualitativo personal
    And selecciono ingreso principal "<IngresoPrincipal>"
    And selecciono ingreso secundario "<IngresoSecundario>"
    And selecciono tiempo experiencia en años "<TiempoExperiencia>"
    And selecciono estabilidad laboral "<EstabilidadLaboral>"
    And ingreso nombre empresa "<NombreEmpresa>"
    And ingreso Ruc empresa "<RUCEmpresa>"
    And selecciono sector laboral "<SectorLaboral>"
    And selecciono referencia de ubicacion de trabajo "<ReferenciaUbicacion>"
    And selecciono documento de ingresos "<DocumentoIngresos>"
    And selecciono SI en capacidad de ahorro
    And hago click en menu Estados de resultados personas
    And ingreso el ingreso neto del titular "<IngresoNetoTitular>"
    And ingreso comentarios de propuesta de credito
    And hago click en el menu Garantias
    And consulto garantias titutlar conyugue
    And marco NO en requiere garantia
    And el usuario ingresa a documentos virtuales
    And proceso solicitud
    And hago click en enviar


    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | ReferenciaDireccion      | TipoVivienda | TipoConstruccion | TipoSector | AñosResidencia | Ocupacion | Cargo   | NumPersonasDependientes | NumHijos | TipoIngreso | TiempoEnDomicilio | NroClientesSemanales | NroTrabajadores | ExperienciaNegocio | HijosEdadEscolar | PosicionHogar | DistanciaNegocio | TipoReferencia1 | VinculoReferencia1 | NombreReferencia1      | DireccionReferencia1      | TelefonoReferencia1      | ComentariosReferencia1      | TipoReferencia2 | VinculoReferencia2 | NombreReferencia2      | DireccionReferencia2      | TelefonoReferencia2      | ComentariosReferencia2      | IngresoPrincipal | IngresoSecundario | TiempoExperiencia | EstabilidadLaboral | NombreEmpresa      | RUCEmpresa  | SectorLaboral | ReferenciaUbicacion      | DocumentoIngresos | IngresoNetoTitular |
      | Credito        | Credito_Individual | DNI           | 41063101     | tet referencia direccion | FAMILIAR     | MATERIAL NOBLE   | URBANO     | 3              | ABOGADO   | AUDITOR | 0                       | 0        | BOLETA      | Más de 24 meses   | 10                   | Solo yo         | 2-3 años           | No tengo         | Padre líder   | Menos de 1 hora  | Personal        | Vecino             | NombreReferencia1 test | DireccionReferencia1 test | TelefonoReferencia1 test | ComentariosReferencia1 test | Laboral         | Jefe inmediato     | NombreReferencia2 test | DireccionReferencia2 test | TelefonoReferencia2 test | ComentariosReferencia2 test | Dependiente      | Dependiente       | Más de 3 años     | Indeterminado      | NombreEmpresa test | 20765465411 | Privado       | ReferenciaUbicacion test | Boleta de pago    | 10000              |

  @mobile
  Scenario Outline: CP0201 - Crédito Estacional: La frecuencia es unicuota y su plazo máximo es hasta 120 días.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And selecciono tipo de credito "<TipoCredito>"
    And hago click en subtipo de credito
    And selecciona subtipo de credito empresarial
    And selecciona producto PYME
    And selecciona subproducto PYME
    And hago click en tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And selecciona modalidad de credito "<ModalidadCredito>"
    And selecciono Destino del credito y hago click en CAPITAL DE TRABAJO
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma periodo Fijo
    And seleccino frecuencia "<Frecuencia>"
    And ingreso cantidad en frecuencia en dias "<CantidadFrencuenciaDias>"
    Then valido advertencia El plazo solicitado incumple con las condiciones permitidas.

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoCredito   | ModalidadCredito | Frecuencia | CantidadFrencuenciaDias |
      | Credito        | Credito_Individual | DNI           | 70846807     | MICROEMPRESAS | ESTACIONAL       | Unicuota   | 130                     |


  @mobile
  Scenario Outline: CP0202 - Producto Personal: El plazo mínimo es 03 meses. credito con plazo mayor igual a 03 meses. Para tipo de regla No Excepcionable.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And ingresa el nro del celular "987654321"
    And ingreso referencia de direccion "<ReferenciaDireccion>"
    And selecciono tipo de vivienda "<TipoVivienda>"
    And selecciono tipo de construccion "<TipoConstruccion>"
    And selecciono tipo de sector "<TipoSector>"
    And ingreso años de residencia "<AñosResidencia>"
    And selecciono ocupacion "<Ocupacion>"
    And selecciono cargo "<Cargo>"
    And ingreso numero de personas dependientes "<NumPersonasDependientes>"
    And ingreso numero de hijos "<NumHijos>"
    And selecciono tipo de ingreso "<TipoIngreso>"
    And selecciono no cambio de actividad principal
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona subtipo de credito CONSUMO
    And selecciona producto PERSONAL
    And selecciona subproducto PERSONAL
    And hago click en tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "4000"
    And ingreso Nro de cuotas "6"
    And marco no en seguro optativos
    And selecciona calculo de plazo en días
    And consulta niveles de autonomia de tasa
    And selecciona NORMAL de tasas
    And hago click en Simulador crédito
    And consulto sobreendeudamiento
    And consulto motor de decision de cliente no bancarizado
    And hago click en el menu variables socioeconomicas
    And selecciono tiempo en domicilio "<TiempoEnDomicilio>"
    And ingreso numero de clientes semanales "<NroClientesSemanales>"
    And Selecciono numero de trabajadores "<NroTrabajadores>"
    And Selecciono tiempo experiencia en el negocio "<ExperienciaNegocio>"
    And selecciono numero de hijos en edad escolar "<HijosEdadEscolar>"
    And selecciono posicion en el hogar "<PosicionHogar>"
    And selecciono Si paga por internet
    And selecciono Distancia del negocio "<DistanciaNegocio>"
    And selecciono Si paga por luz
    And selecciono Si paga por agua
    And hago click en el menu Excepciones
    And hago click en el menu Referencias vinculados deudas
    And hago click en el boton referencias
    And hago click en agregar referencia
    And selecciono tipo de referencia "<TipoReferencia1>"
    And selecciono vinculo de referencia "<VinculoReferencia1>"
    And ingreso nombre de referencia "<NombreReferencia1>"
    And ingreso direccion de referencia "<DireccionReferencia1>"
    And ingreso telefono de referencia "<TelefonoReferencia1>"
    And ingreso comentarios sobre referencia "<ComentariosReferencia1>"
    And guardo referencia
    And hago click en agregar referencia
    And selecciono tipo de referencia "<TipoReferencia2>"
    And selecciono vinculo de referencia "<VinculoReferencia2>"
    And ingreso nombre de referencia "<NombreReferencia2>"
    And ingreso direccion de referencia "<DireccionReferencia2>"
    And ingreso telefono de referencia "<TelefonoReferencia2>"
    And ingreso comentarios sobre referencia "<ComentariosReferencia2>"
    And guardo referencia
    And hago click en retroceder referencia
    And hago click en menu Analisis cualitativo personal
    And selecciono ingreso principal "<IngresoPrincipal>"
    And selecciono ingreso secundario "<IngresoSecundario>"
    And selecciono tiempo experiencia en años "<TiempoExperiencia>"
    And selecciono estabilidad laboral "<EstabilidadLaboral>"
    And ingreso nombre empresa "<NombreEmpresa>"
    And ingreso Ruc empresa "<RUCEmpresa>"
    And selecciono sector laboral "<SectorLaboral>"
    And selecciono referencia de ubicacion de trabajo "<ReferenciaUbicacion>"
    And selecciono documento de ingresos "<DocumentoIngresos>"
    And selecciono SI en capacidad de ahorro
    And hago click en menu Estados de resultados personas
    And ingreso el ingreso neto del titular "<IngresoNetoTitular>"
    And ingreso comentarios de propuesta de credito
    And hago click en el menu Garantias
    And consulto garantias titutlar conyugue
    And marco NO en requiere garantia
    And el usuario ingresa a documentos virtuales
    And proceso solicitud
    And hago click en enviar


    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | ReferenciaDireccion      | TipoVivienda | TipoConstruccion | TipoSector | AñosResidencia | Ocupacion | Cargo   | NumPersonasDependientes | NumHijos | TipoIngreso | TiempoEnDomicilio | NroClientesSemanales | NroTrabajadores | ExperienciaNegocio | HijosEdadEscolar | PosicionHogar | DistanciaNegocio | TipoReferencia1 | VinculoReferencia1 | NombreReferencia1      | DireccionReferencia1      | TelefonoReferencia1      | ComentariosReferencia1      | TipoReferencia2 | VinculoReferencia2 | NombreReferencia2      | DireccionReferencia2      | TelefonoReferencia2      | ComentariosReferencia2      | IngresoPrincipal | IngresoSecundario | TiempoExperiencia | EstabilidadLaboral | NombreEmpresa      | RUCEmpresa  | SectorLaboral | ReferenciaUbicacion      | DocumentoIngresos | IngresoNetoTitular |
      | Credito        | Credito_Individual | DNI           | 70846807     | tet referencia direccion | FAMILIAR     | MATERIAL NOBLE   | URBANO     | 3              | ABOGADO   | AUDITOR | 0                       | 0        | BOLETA      | Más de 24 meses   | 10                   | Solo yo         | 2-3 años           | No tengo         | Padre líder   | Menos de 1 hora  | Personal        | Vecino             | NombreReferencia1 test | DireccionReferencia1 test | TelefonoReferencia1 test | ComentariosReferencia1 test | Laboral         | Jefe inmediato     | NombreReferencia2 test | DireccionReferencia2 test | TelefonoReferencia2 test | ComentariosReferencia2 test | Dependiente      | Dependiente       | Más de 3 años     | Indeterminado      | NombreEmpresa test | 20765465411 | Privado       | ReferenciaUbicacion test | Boleta de pago    | 10000              |

  @mobile
  Scenario Outline: CP0203 - Producto Personal: credito con plazo menor a 03 meses. Para tipo de regla No Excepcionable.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And ingresa el nro del celular "987654321"
    And ingreso referencia de direccion "<ReferenciaDireccion>"
    And selecciono tipo de vivienda "<TipoVivienda>"
    And selecciono tipo de construccion "<TipoConstruccion>"
    And selecciono tipo de sector "<TipoSector>"
    And ingreso años de residencia "<AñosResidencia>"
    And selecciono ocupacion "<Ocupacion>"
    And selecciono cargo "<Cargo>"
    And ingreso numero de personas dependientes "<NumPersonasDependientes>"
    And ingreso numero de hijos "<NumHijos>"
    And selecciono tipo de ingreso "<TipoIngreso>"
    And selecciono no cambio de actividad principal
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona subtipo de credito CONSUMO
    And selecciona producto PERSONAL
    And selecciona subproducto PERSONAL
    And hago click en tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "4000"
    And ingreso Nro de cuotas "2"
    Then valido advertencia El plazo solicitado incumple con las condiciones permitidas.

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | ReferenciaDireccion      | TipoVivienda | TipoConstruccion | TipoSector | AñosResidencia | Ocupacion | Cargo   | NumPersonasDependientes | NumHijos | TipoIngreso | TiempoEnDomicilio | NroClientesSemanales | NroTrabajadores | ExperienciaNegocio | HijosEdadEscolar | PosicionHogar | DistanciaNegocio | TipoReferencia1 | VinculoReferencia1 | NombreReferencia1      | DireccionReferencia1      | TelefonoReferencia1      | ComentariosReferencia1      | TipoReferencia2 | VinculoReferencia2 | NombreReferencia2      | DireccionReferencia2      | TelefonoReferencia2      | ComentariosReferencia2      | IngresoPrincipal | IngresoSecundario | TiempoExperiencia | EstabilidadLaboral | NombreEmpresa      | RUCEmpresa  | SectorLaboral | ReferenciaUbicacion      | DocumentoIngresos | IngresoNetoTitular |
      | Credito        | Credito_Individual | DNI           | 70846807     | tet referencia direccion | FAMILIAR     | MATERIAL NOBLE   | URBANO     | 3              | ABOGADO   | AUDITOR | 0                       | 0        | BOLETA      | Más de 24 meses   | 10                   | Solo yo         | 2-3 años           | No tengo         | Padre líder   | Menos de 1 hora  | Personal        | Vecino             | NombreReferencia1 test | DireccionReferencia1 test | TelefonoReferencia1 test | ComentariosReferencia1 test | Laboral         | Jefe inmediato     | NombreReferencia2 test | DireccionReferencia2 test | TelefonoReferencia2 test | ComentariosReferencia2 test | Dependiente      | Dependiente       | Más de 3 años     | Indeterminado      | NombreEmpresa test | 20765465411 | Privado       | ReferenciaUbicacion test | Boleta de pago    | 10000              |


  @mobile
  Scenario Outline: CP0301 - Validar que no se debe poder elegir credito paralelo o estacional cuando el titular del credito no tiene ningun credito activo para Flujo campaña.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona primer item PERSONAL de subtipo de credito
    And selecciona producto PERSONAL
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And verifico mensaje de credito paralelo

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | monto | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | 1500  | 3      |

  @mobile
  Scenario Outline: CP0313 - Validar que las deudas (directas, indirectas) se precargue correctamente en el subformulario deudas el cual debe ser corrobarado en la posicion integral de intervinientes del corebank.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And el usuario ingresa a datos de solicitud
    And hago click en el menu Excepciones
    And hago click en el menu Referencias vinculados deudas
    And hago click en el boton deudas
    And valido existencia de deudas

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 47911932     |

  @mobile
  Scenario Outline: CP0320 - Validar y verificar que el campo TEA% tenga 4 decimales en el acta de resolución para campaña aprobada, persona natural recurrente.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And el usuario ingresa a datos de solicitud
    And valida campo TEA

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | Credito        | Credito_Individual | DNI           | 01279895     |

  @mobile
  Scenario Outline: CP0321 - Validar y verificar que el campo TEM% tenga 4 decimales en el acta de resolución para campaña aprobada, persona natural recurrente.
    Given se observa la bienvenida al app y el usuario hace click en iniciar con la organización "<organizacion>"
    When el usuario ingresa al app y hago onbording con "<usuario>" y "<password>"
    And el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And el usuario ingresa a datos de solicitud
    And marco no en seguro optativos
    And selecciona calculo de plazo en días
    And consulta niveles de autonomia de tasa
    And selecciona NORMAL de tasas

    And valida campo TEM

    Examples:
      | organizacion | usuario                  | password   | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | andesqa      | ncordova@craclasadev.com | Andes$2023 | Credito        | Credito_Individual | DNI           | 02040013     |

  @mobile
  Scenario Outline: CP0114 - Validar las condiciones correctas  del campo "Se borrara los datos  de la persona ¿Esta seguro de continuar?". es visible, esta habilitado, es requerido.
    Given se observa la bienvenida al app y el usuario hace click en iniciar con la organización "<organizacion>"
    When el usuario ingresa al app y hago onbording con "<usuario>" y "<password>"
    And el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And valida boton consultar cliente

    Examples:
      | organizacion | usuario                  | password   | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | andesqa      | ncordova@craclasadev.com | Andes$2023 | Credito        | Credito_Individual | DNI           | 02040013     |

  @mobile
  Scenario Outline: CP0114 - Validar las condiciones correctas  del campo "Se borrara los datos  de la persona ¿Esta seguro de continuar?". es visible, esta habilitado, es requerido.
    Given se observa la bienvenida al app y el usuario hace click en iniciar con la organización "<organizacion>"
    When el usuario ingresa al app y hago onbording con "<usuario>" y "<password>"
    And el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And validar campo se borrara los datos de la persona

    Examples:
      | organizacion | usuario                  | password   | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento |
      | andesqa      | ncordova@craclasadev.com | Andes$2023 | Credito        | Credito_Individual | DNI           | 02040013     |


  @mobile
  Scenario Outline: CP0204 - Kata Mobile - Probar un credito con destino libre disponibilidad Para tipo de regla No Excepcionable
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona primer item AGROPECUARIOS de subtipo de credito
    And selecciona producto CONVENIO
    And selecciona subproducto CONVENIO
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto   | cuotas |
      | Credito        | Credito_Individual | DNI           | 28691188     | CONSUMO  | 1000.01 | 336    |

  @mobile
  Scenario Outline: CP0213 -  Credi Chamba: El numero máximo de entidades del Cliente incluyendo Caja los Andes es 3 para SOLTEROS y 4 para Clientes con Conyugue
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona primer item AGROPECUARIOS de subtipo de credito
    And selecciona producto CONVENIO
    And selecciona subproducto CONVENIO
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And hago click en el menu Datos del conyuge
    And hago click en el menu Excepciones
    And verifico regla max de entidades es tres para clientes solteros

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto   | cuotas |
      | Credito        | Credito_Individual | DNI           | 28691188     | CONSUMO  | 1000.01 | 336    |

  @mobile
    #Pendiente el caso no se entiende.
  Scenario Outline: CP0216 - Condiciones para los días de atraso: Promedio 8 días, máximo hasta 10 días, última cuota hasta 5 días. Realizar otorgamiento de crédito Pyme con 9 días de atraso.  Para tipo de regla Excepcionable
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona primer item AGROPECUARIOS de subtipo de credito
    And selecciona producto CONVENIO
    And selecciona subproducto CONVENIO
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And hago click en el menu Datos del conyuge
    And hago click en el menu Excepciones
    And verifico regla max de entidades es tres para clientes solteros

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto   | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 1000.01 | 336    |

  @mobile
       #Pendiente el caso no se entiende. Se envió correo
  Scenario Outline: CP0197 - Crédito Estacional: Solo aplica el destino capital de trabajo. Probar realizar solicitud de crédito estacional Pyme con destino capital de trabajo. Para tipo de regla No Excepcionable
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona primer item AGROPECUARIOS de subtipo de credito
    And selecciona producto CONVENIO
    And selecciona subproducto CONVENIO
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And hago click en el menu Datos del conyuge
    And hago click en el menu Excepciones
    And verifico regla max de entidades es tres para clientes solteros

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto   | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 1000.01 | 336    |

  @mobile
    #Pendiente el caso no se entiende. Se envió correo
  Scenario Outline: CP0200 - Crédito Estacional: Solo aplica el destino capital de trabajo. Probar realizar solicitud de crédito estacional Pyme con destino capital de trabajo. Para tipo de regla No Excepcionable
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona primer item AGROPECUARIOS de subtipo de credito
    And selecciona producto CONVENIO
    And selecciona subproducto CONVENIO
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And hago click en el menu Datos del conyuge
    And hago click en el menu Excepciones
    And verifico regla max de entidades es tres para clientes solteros

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto   | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 1000.01 | 336    |

  @mobile
  Scenario Outline: CP0206 - Producto Convenio: Solo aplica los destinos libre disponibilidad, compra de deuda y agua saneamiento. Probar un credito con agua y sanemamiento Para tipo de regla No Excepcionable
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona primer item AGROPECUARIOS de subtipo de credito
    And selecciona producto CONVENIO
    And selecciona subproducto CONVENIO
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And selecciono agua saneamiento del Destino del crédito

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto   | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 1000.01 | 336    |

  @mobile
  Scenario Outline: CP0207 - Producto Convenio: Solo aplica los destinos libre disponibilidad, compra de deuda y agua saneamiento. Probar un credito con destino diferente a libre disponiblidad, compra deuda y agua saneamiento. Para tipo de regla No Excepcionable
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona primer item AGROPECUARIOS de subtipo de credito
    And selecciona producto CONVENIO
    And selecciona subproducto CONVENIO
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And selecciono agua saneamiento del Destino del crédito

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto   | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 1000.01 | 336    |

  @mobile
  Scenario Outline: CP0211 - Tu Credi Chamba: La frecuencia de pago solo debe de ser mensual. Probar un credito con la frecuencia mensual Para tipo de regla No Excepcionable
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona primer item AGROPECUARIOS de subtipo de credito
    And selecciona producto PERSONAL
    And selecciona subproducto credichamba
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto   | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 1000.01 | 336    |

  @mobile
  Scenario Outline: CP0212 - Tu Credi Chamba: La frecuencia de pago solo debe de ser mensual. Probar un credito con la frecuencia diferente a la mensual Para tipo de regla No Excepcionable.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona subtipo de credito CONSUMO
    And selecciona producto PERSONAL
    And selecciona subproducto credichamba
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And selecciono frecuencia Bimensual

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto   | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 1000.01 | 336    |

  @mobile
    #Se requiere data para avanzar con el caso
  Scenario Outline: CP0240 - Tu Credi Chamba: No se puede realizar un OTORGAMIENTO o AMPLIACIÓN para Clientes con Clasificación Interna E. Realizar un OTORGAMIENTO  para Clientes con Clasificación Interna E . Para tipo de regla No Excepcionable.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona subtipo de credito CONSUMO
    And selecciona producto PERSONAL
    And selecciona subproducto credichamba
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And selecciono frecuencia Bimensual

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto   | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 1000.01 | 336    |

  @mobile
    #Se requiere data para avanzar con el caso
  Scenario Outline: CP0241 - Tu Credi Chamba: No se puede realizar un OTORGAMIENTO o AMPLIACIÓN para Clientes con Clasificación Interna E. Realizar una AMPLIACION para Clientes con Clasificación Interna E . Para tipo de regla No Excepcionable.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona subtipo de credito CONSUMO
    And selecciona producto PERSONAL
    And selecciona subproducto credichamba
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And selecciono frecuencia Bimensual

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto   | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 1000.01 | 336    |

  @mobile
    #En consulta de datos
  Scenario Outline: CP0258 - ACTIVIDADES NO ADMITIDAS:No serán sujetos de elección las actividades de naturaleza ilegal, altamente especulativa u otras que impliquen contaminación o daño del medio ambiente. Considerando otorgamiento de crédito Personal (incluyendo campañas) con actividad de naturaleza ilegal. Para tipo de regla Excepcionable.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona subtipo de credito CONSUMO
    And selecciona producto PERSONAL
    And selecciona subproducto credichamba
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And selecciono frecuencia Bimensual

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto   | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 1000.01 | 336    |

  @mobile
    #En consulta
  Scenario Outline: CP0259 - Visita de supervisión obligatoria pre desembolso Y/o Verificación. Para tipo de regla Excepcionable.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona subtipo de credito CONSUMO
    And selecciona producto PERSONAL
    And selecciona subproducto credichamba
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And selecciono frecuencia Bimensual

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto   | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 1000.01 | 336    |

  @mobile
  Scenario Outline: CP0262 - COMPRA DE DEUDA: Solo está permitido los tipos de operación Otorgamiento y ampliación; y la modalidad de crédito Principal o paralelo. Considerando tipo de operación otorgamiento con modalidad de crédito principal. Para tipo de regla No Excepcionable.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona subtipo de credito CONSUMO
    And selecciona producto PERSONAL
    And selecciona subproducto credichamba
    And hago click en tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And selecciono Modalidad de credito principal

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto   | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 1000.01 | 336    |

  @mobile
  Scenario Outline: CP0265 - Crédito Pyme: El plazo para destino Agua y Saneamiento es hasta 36 meses y con garantía real es hasta 60 meses. Probar considerar  Otorgar crédito Pyme con plazo para destino Agua y Saneamiento menor a 36 meses. Para tipo de regla Excepcionable
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona subtipo de credito empresarial
    And selecciona producto PYME
    And selecciona subproducto PYME
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And selecciono Modalidad de credito principal
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto   | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 1000.01 | 336    |

  @mobile
  Scenario Outline: CP0269 - Crédito Pyme: El plazo para destino Agua y Saneamiento es hasta 36 meses y con garantía real es hasta 60 meses. Probar considerar  Ampliar crédito Pyme con plazo para destino Agua y Saneamiento menor a 36 meses. Para tipo de regla Excepcionable.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona subtipo de credito empresarial
    And selecciona producto PYME
    And selecciona subproducto PYME
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And selecciono Modalidad de credito principal
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto   | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 1000.01 | 336    |

  @mobile
  Scenario Outline: CP0270 - Crédito Pyme: El plazo para destino Agua y Saneamiento es hasta 36 meses y con garantía real es hasta 60 meses. Probar considerar  Ampliar crédito Pyme con plazo para destino Agua y Saneamiento mayor a 36 meses. Para tipo de regla Excepcionable.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona subtipo de credito empresarial
    And selecciona producto PYME
    And selecciona subproducto PYME
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And selecciono Modalidad de credito principal
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto   | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 1000.01 | 336    |

  @mobile
  Scenario Outline: CP0272 - Crédito Facilito: El monto total de endeudamiento (Monto Solicitado + Saldo Capital Total) debe ser menor o igual a 5 mil soles. Para tipo de regla No Excepcionable.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona subtipo de credito empresarial
    And selecciona producto PYME
    And selecciona subproducto PYME
    And selecciona subproducto PYME-FACILITO
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciono Modalidad de credito principal
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And selecciono no en el seguro de vida
    And registro fecha de primera cuota
    And selecciona calculo de plazo en días
    And consulta niveles de autonomia de tasa
    And Selecciona tasas
    And selecciona NORMAL de tasas
    And hago click en Simulador crédito
    And Consulta sobreendeudamiento

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 8000  | 336    |

  @mobile
  Scenario Outline: CP0273 - Periodo de gracia, hasta 90 (Con y sin pago de intereses y no aplica para créditos estacionales) solo para destino activo fijo. Probar considerar  Otorgar crédito Pyme Facilito con destino Activo Fijo y periodo de gracia menor a 90. Para tipo de regla No Excepcionable.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona subtipo de credito empresarial
    And selecciona producto PYME
    And selecciona subproducto PYME
    And selecciona subproducto PYME-FACILITO
    And hago click en tipo de operacion
    And selecciona ampliacion del tipo de operacion
    And selecciono Modalidad de credito principal
    And selecciono Destino del credito y hago click en LIBRE DISPONIBILIDAD
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And selecciono no en el seguro de vida
    And registro fecha de primera cuota
    And selecciona calculo de plazo en días
    And consulta niveles de autonomia de tasa
    And Selecciona tasas
    And selecciona NORMAL de tasas
    And hago click en Simulador crédito
    And Consulta sobreendeudamiento

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 8000  | 336    |

  @mobile
  Scenario Outline: CP0275 - Tu Credi Chamba PYME: Solo aplica el destino de crédito ACTIVO FIJO. Probar con destino de credito distinto de Activo Fijo. Para tipo de regla No Excepcionable.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona primer item PERSONAL de subtipo de credito
    And selecciona producto PERSONAL
    And selecciona subproducto credichamba

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 1500  | 3      |

  @mobile
  Scenario Outline: CP0276 - Tu Credi Chamba PYME: Solo aplica el destino de crédito ACTIVO FIJO. Probar con destino de credito Activo Fijo. Para tipo de regla No Excepcionable.
    Given el usuario ingresa al home y hace click en el boton de nueva orden
    And el usuario hace click en la opcion "<TipoFormulario>" del menu
    And el usuario hace click en la opcion "<TipoFormulario2>" del menu
    And el usuario hace click en boton crear
    And el usuario selecciona el tipo de documento "<TipoDocumento>" e ingresa el numero de documento "<NumDocumento>"
    And Autoriza el tratamiento de sus datos personales
    And el usuario autoriza el envio de publicidad
    And el usuario consulta el cliente
    And el usuario consulta la posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona item CONSUMO
    And hago click en subtipo de credito
    And selecciona primer item PERSONAL de subtipo de credito
    And selecciona producto PERSONAL
    And selecciona subproducto credichamba

    Examples:
      | TipoFormulario | TipoFormulario2    | TipoDocumento | NumDocumento | TipoItem | monto | cuotas |
      | Credito        | Credito_Individual | DNI           | 40603206     | CONSUMO  | 1500  | 3      |
