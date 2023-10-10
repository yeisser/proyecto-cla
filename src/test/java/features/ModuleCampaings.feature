
#mvn test -Dcucumber.options="src/test/java/features/ModuloCampanas.feature:685"

Feature: Escenarios Modulo de campañas

  @mobile
  Scenario Outline: CPC1 - Campaña-Validar la funcionalidad correcta con el perfil "JEFE DE OFICINA"
    Given se visualiza la bienvenida al app y el usuario hace click en iniciar con la organización "<organizacion>"
    When el usuario ingresa al app y hago onbording con "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And verifico mensaje El perfil seleccionado no es válido para el flujo individual
    And el cierra la session del App

    Examples:

      | usuario                | password     |
      | mduran@craclasadev.com | Testing.1234 |

  Scenario: CPC2 - Validar la funcionalidad correcta con el perfil "PROMOTOR DE CREDITOS"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And verifico mensaje El perfil seleccionado no es válido para el flujo individual
    And el cierra la session del App

  @mobile
  Scenario: CPC3 - Validar la funcionalidad correcta con el perfil "REPRESENTANTE DE SERVICIO AL CLIENTE
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And verifico mensaje El perfil seleccionado no es válido para el flujo individual
    And el cierra la session del App

  @mobile
  Scenario: CPC4 - Validar la funcionalidad correcta con el perfil "OPERADOR DE CONTACT CENTER"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And verifico mensaje El perfil seleccionado no es válido para el flujo individual
    And el cierra la session del App

  @mobile
  Scenario: CPC5 - Validar la funcionalidad correcta con el perfil "ASESOR DE NEGOCIOS"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And verifico mensaje El perfil seleccionado no es válido para el flujo individual
    And el cierra la session del App

  @mobile
  Scenario Outline: CPC6 - Validar la funcionalidad correcta con el perfil "COORDINADOR DE CREDITOS"
    # Given el usuario ingresa al app y hago onbording con el usuario "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And verifico mensaje El perfil seleccionado no es válido para el flujo individual
    And el cierra la session del App
    Examples:
      | usuario                   | password     |
      | thumpirem@craclasadev.com | Testing.1234 |

  @mobile
  Scenario Outline: CPC7 - Validar la funcionalidad correcta con el perfil "ASESOR CONVENIO"
    # Given el usuario ingresa al app y hago onbording con el usuario "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And verifico mensaje El perfil seleccionado no es válido para el flujo individual
    And el cierra la session del App

    Examples:
      | usuario                   | password     |
      | nenriquez@craclasadev.com | Testing.1234 |

  @mobile
  Scenario Outline: CPC8 - Validar la funcionalidad correcta en la lista desplegable "Tipo de documento
    #Given el usuario ingresa al app y hago onbording con el usuario "<usuario>" y "<password>"
    #When el usuario ingresa al home y hago click en el boton de nueva orden
    #And el usuario hace click en la opcion credito del menu de Tipo de proceso
    #And hago click en el boton siguiente
    #And hago click en la opcion Credito individual del menu Tipo de formulario
    #And hago click en el boton siguiente
    #And hago click en el boton CREAR del menu Confirmacion
    #And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    #And selecciona dentro del menu desplegable el elemento RUC
    #And ingresa el nro del Documento "<Documento>"
    And el cierra la session del App

    Examples:
      | usuario                   | password     | Documento   |
      | nenriquez@craclasadev.com | Testing.1234 | 20601583039 |

  @mobile
  Scenario Outline: CPC9 - Campaña-Validar la funcionalidad correcta en el grabado de mensaje voz
    # Given el usuario ingresa al app y hago onbording con el usuario "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And se habilita mensaje de voz, espero unos seg. y grabo voz
    And click en iniciar grabacion voz
    And hago click en finalizar grabacion de voz
    And el cierra la session del App

    Examples:
      | usuario                   | password     | Documento |
      | nenriquez@craclasadev.com | Testing.1234 | 42325973  |

  @mobile
  Scenario Outline: CPC10 - Validar la funcionalidad correcta en la consulta "Posición consolidada"
    # Given el usuario ingresa al app y hago onbording con el usuario "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And el cierra la session del App

    Examples:
      | usuario                    | password   | Documento |
      | ehuanacuni@craclasadev.com | Andes$2023 | 42325973  |

  @mobile
  Scenario Outline: CPC11 - Campaña-Validar la funcionalidad correcta en la recuperacion de datos
    # Given el usuario ingresa al app y hago onbording con el usuario "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And el cierra la session del App

    Examples:
      | usuario                    | password   | Documento |
      | ehuanacuni@craclasadev.com | Andes$2023 | 42325973  |

  @mobile
  Scenario Outline: CPC12 - Campaña-Validar la funcionalidad correcta en la recuperacion de datos
    # Given el usuario ingresa al app y hago onbording con el usuario "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And el cierra la session del App
    Examples:
      | usuario                    | password   | Documento |
      | ehuanacuni@craclasadev.com | Andes$2023 | 42325973  |

  @mobile
  Scenario Outline: CPC13 - Campaña-Validar  el registro de clientes con  tipos de clientes - Nuevos
    # Given el usuario ingresa al app y hago onbording con el usuario "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona primer item AGROPECUARIOS de subtipo de credito
    And selecciona producto datos de solicitud
    And selecciona subproducto datos de solicitud
    And hago click en tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And el cierra la session del App

    Examples:
      | usuario                    | password   | Documento |
      | ehuanacuni@craclasadev.com | Andes$2023 | 42325973  |

    #Solo se cambia de datos - Cliente no activo
  @mobile
  Scenario Outline: CPC14 - Validar  el registro de clientes con tipos de clientes inactivo
    # Given el usuario ingresa al app y hago onbording con el usuario "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona primer item AGROPECUARIOS de subtipo de credito
    And selecciona producto datos de solicitud

    Examples:
      | usuario                    | password   | Documento |
      | ehuanacuni@craclasadev.com | Andes$2023 | 42325973  |


  @mobile
  Scenario Outline: CPC16 - Validar que los campos esten habilitados en la pestaña mantenimiento de cliente al consultar un cliente nuevo no responde el servicio RENIEC
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And verifico que todos los campos esten habilitados
    And hago click menu Datos de solicitud

    Examples:
      | Documento |
      | 42325973  |

#Incluye al caso de prueba 18,19 y 20
  @mobile
  Scenario Outline: CPC17 - Validar la correcta funcionalidad de datos inhabilitados
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And verifico que todos los campos esten habilitados
    And hago click menu Datos de solicitud

    Examples:
      | Documento |
      | 42325973  |

  @mobile
  Scenario Outline: CPC20 - Validar la correcta funcionalidad de documento adicional "RUC"

    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And verifico que todos los campos esten habilitados
    And hago click menu Datos de solicitud
    And hago click en Clasificacion tipo de persona
    And hago click en opcion Con negocio con RUC

    Examples:
      | Documento |
      | 42325973  |

    #Igual que el caso 22
  @mobile
  Scenario Outline: CPC21 - Validar la correcta funcionalidad de cargo "Otros"
    # # Given el usuario ingresa al app y hago onbording con el usuario "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And verifico que todos los campos esten habilitados
    And hago click menu Datos de solicitud
    And hago click en Clasificacion tipo de persona
    And hago click en opcion Con negocio con RUC
    And selecciona desplegable cargo otros
    And Verifico que el celular sea el <celular_del_cliente>

    Examples:
      | Documento | otros          |
      | 42325973  | OTROS(senalar) |

    #Igual al caso 24
  @mobile
  Scenario Outline: CPC23 - Validar la correcta funcionalidad de cambio de actividad economica principal
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And verifico actividad principal

    Examples:
      | Documento |
      | 42325973  |

  #Igual al caso 24
  @mobile
  Scenario Outline: CPC25 - Validar la correcta funcionalidad de cambio de actividad economica secundaria
    # # Given el usuario ingresa al app y hago onbording con el usuario "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And verifico actividad principal
    And hago click en si tiene actividad secundaria
    And hago click en si tiene actividad secundaria

    Examples:
      | usuario                   | password   | Documento |
      | nenriquez@craclasadev.com | Andes$2023 | 42325973  |

  @mobile
  Scenario Outline: CPC26 - Validar la correcta funcionalidad de cambio de actividad economica secundaria
    # # Given el usuario ingresa al app y hago onbording con el usuario "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And verifico actividad principal
    And hago click en no tiene actividad secundaria

    Examples:
      | usuario                   | password      | Documento |
      | creategui@craclasadev.com | $I$TEMAS.1234 | 42325973  |

  @mobile
  Scenario Outline: CPC27 - Validar la correcta funcionalidad para El tarifario de Cuotas Chiquitas
    # # Given el usuario ingresa al app y hago onbording con el usuario "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona primer item AGROPECUARIOS de subtipo de credito
    And selecciona producto datos de solicitud
    And selecciona subproducto datos de solicitud
    And hago click en tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"


    Examples:
      | usuario                   | password      | Documento | monto   | cuotas |
      | creategui@craclasadev.com | $I$TEMAS.1234 | 42325973  | 1000.01 | 336    |

    #Igual al caso 29
  @mobile
  Scenario Outline: CPC28 - Validar la correcta funcionalidad para El tarifario de Cuotas Chiquitas
    # # Given el usuario ingresa al app y hago onbording con el usuario "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona primer item AGROPECUARIOS de subtipo de credito
    And selecciona producto datos de solicitud
    And selecciona subproducto datos de solicitud
    And hago click en tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"


    Examples:
      | usuario                   | password      | Documento | monto   | cuotas |
      | creategui@craclasadev.com | $I$TEMAS.1234 | 42325973  | 1000.00 | 336    |

  @mobile
  Scenario Outline: CPC30 - Validar la correcta funcionalidad de la Fecha de 1° Cuota
    # # Given el usuario ingresa al app y hago onbording con el usuario "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona primer item AGROPECUARIOS de subtipo de credito
    And selecciona producto datos de solicitud
    And selecciona subproducto datos de solicitud
    And hago click en tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And registro fecha de primera cuota


    Examples:
      | usuario                   | password      | Documento | monto   | cuotas |
      | creategui@craclasadev.com | $I$TEMAS.1234 | 42325973  | 1000.00 | 336    |

  @mobile
  Scenario Outline: CPC30 - Validar la correcta funcionalidad de la Fecha de 1° Cuota
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona primer item AGROPECUARIOS de subtipo de credito
    And selecciona producto datos de solicitud
    And selecciona subproducto datos de solicitud
    And hago click en tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And registro fecha de primera cuota

    Examples:
      | Documento | monto   | cuotas |
      | 42325973  | 1000.00 | 336    |

  @mobile
  Scenario Outline: CPC31 - Validar la correcta funcionalidad de la Fecha de 1° Cuota
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona primer item AGROPECUARIOS de subtipo de credito
    And selecciona producto datos de solicitud
    And selecciona primer item de productos
    And Hago click en suproducto
    And selecciona subproducto datos de solicitud
    And hago click en tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And registro fecha de primera cuota

    Examples:
      | Documento | monto   | cuotas |
      | 42325973  | 1000.00 | 336    |


  @mobile
  Scenario Outline: CPC32 - Validar la funcionalidad correcta del Simulador de Creditos
    ## Given el usuario ingresa al app y hago onbording con el usuario "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona primer item AGROPECUARIOS de subtipo de credito
    And selecciona producto datos de solicitud
    And selecciona subproducto datos de solicitud
    And hago click en tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And selecciona cuotas libres no
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
      | usuario                   | password      | Documento | monto   | cuotas |
      | creategui@craclasadev.com | $I$TEMAS.1234 | 42325973  | 1000.00 | 33     |

  @mobile
  Scenario Outline: CPC33 - Campaña-Validar la funcionalidad correcta del Cronograma de pagos.
    ## Given el usuario ingresa al app y hago onbording con el usuario "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona primer item AGROPECUARIOS de subtipo de credito
    And selecciona producto datos de solicitud
    And selecciona subproducto datos de solicitud
    And hago click en tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And selecciona cuotas libres no
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And selecciono no en el seguro de vida
    And registro fecha de primera cuota
    And selecciona calculo de plazo en días
    And consulta niveles de autonomia de tasa
    And Selecciona tasas
    And selecciona NORMAL de tasas
    And hago click en Simulador crédito
    And Selecciona plan de pagos

    Examples:
      | usuario                   | password      | Documento | monto   | cuotas |
      | creategui@craclasadev.com | $I$TEMAS.1234 | 42325973  | 1000.00 | 33     |

  @mobile1
    #Contiene el caso 35,36 y 37
  Scenario Outline: CPC34 - Campaña-Validar la funcionalidad correcta de la carga de Documentos Virtuales
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona primer item AGROPECUARIOS de subtipo de credito
    And selecciona producto datos de solicitud
    And selecciona subproducto datos de solicitud
    And hago click en tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And selecciona cuotas libres no
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And selecciono no en el seguro de vida
    And selecciona calculo de plazo en días
    And consulta niveles de autonomia de tasa
    And Selecciona tasas
    And selecciona NORMAL de tasas
    And hago click en Simulador crédito
    And Selecciona plan de pagos
    And cambio de pestana hasta documentos
    And click en cantidad de documentos pagare
    And Seleccionar cantidad de documentos pagare
    And click en anverso uno
    And tomo la foto de documento
    And click en anverso uno
    And tomo la foto de documento
    Examples:
      | Documento | monto   | cuotas |
      | 42325973  | 1000.00 | 33     |

    #Se repite para el caso 39
  Scenario Outline: CPC38 - Campaña-Validar la funcionalidad correcta de la carga de Documentos Virtuales
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona primer item AGROPECUARIOS de subtipo de credito
    And selecciona producto datos de solicitud
    And selecciona subproducto datos de solicitud
    And hago click en tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And selecciona cuotas libres no
    And ingreso Monto Solicitado "<monto>"
    And ingreso Nro de cuotas "<cuotas>"
    And selecciono no en el seguro de vida
    And selecciona calculo de plazo en días
    And consulta niveles de autonomia de tasa
    And Selecciona tasas
    And selecciona NORMAL de tasas
    And hago click en Simulador crédito
    And Selecciona plan de pagos
    And cambio de pestana hasta documentos
    And click en cantidad de documentos pagare
    And Seleccionar cantidad de documentos pagare
    And click en anverso uno
    And tomo la foto de documento
    And click en anverso uno
    And tomo la foto de documento
    Examples:
      | Documento | monto   | cuotas |
      | 42325973  | 1000.00 | 33     |


  Scenario Outline: CPC40 - Validar la correcta funcionalidad de Datos de Computo, donde el cliente
    ## Given el usuario ingresa al app y hago onbording con el usuario "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona primer item AGROPECUARIOS de subtipo de credito
    And selecciona producto datos de solicitud
    And selecciona subproducto datos de solicitud
    And hago click en tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And selecciona cuotas libres no
    And ingreso Monto Solicitado "<monto>"
    And verifico que cliente tenga credito activo


    Examples:
      | usuario                  | password      | Documento | monto   |
      | amachaca@craclasadev.com | $I$TEMAS.1234 | 42325973  | 1000.00 |

    #Mismo caso del 40
  Scenario Outline: CPC41 - Validar la correcta funcionalidad de Datos de Computo, donde el cliente
    ## Given el usuario ingresa al app y hago onbording con el usuario "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And ingresa tipo de credito
    And selecciona primer item Microempresas
    And hago click en subtipo de credito
    And selecciona primer item AGROPECUARIOS de subtipo de credito
    And selecciona producto datos de solicitud
    And selecciona subproducto datos de solicitud
    And hago click en tipo de operacion
    And selecciona otorgamiento del tipo de operacion
    And hago click Tipo de cronograma
    And selecciono tipo de cronograma fecha fija
    And selecciona cuotas libres no
    And ingreso Monto Solicitado "<monto>"
    And verifico que cliente tenga credito activo

    Examples:
      | usuario                  | password      | Documento | monto   |
      | amachaca@craclasadev.com | $I$TEMAS.1234 | 42325973  | 1000.00 |

    #Igual que el 43
  Scenario Outline: CPC42 - Validar la precarga del Asesor del Credito activo del cliente en Datos de Computo - campo asesor
    ## Given el usuario ingresa al app y hago onbording con el usuario "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And verifica asesor datos de computo

    Examples:
      | usuario                  | password      | Documento |
      | amachaca@craclasadev.com | $I$TEMAS.1234 | 42325973  |


  @mobile
  Scenario Outline: CPC44 - Validar la precarga del los datos de credito activo para ofertas de ampliacion
    # # Given el usuario ingresa al app y hago onbording con el usuario "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And verifica que no aparezca asesor datos de computo


    Examples:
      | usuario                  | password      | Documento |
      | amachaca@craclasadev.com | $I$TEMAS.1234 | 42325973  |

  @mobile
  Scenario Outline: CPC45 - Validar datos de computo cliente inactivo
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And verifica que no aparezca campo DATOS DE COMPUTO


    Examples:
      | Documento |
      | 42325973  |

  @mobile
  Scenario Outline: CPC46 - Validar datos de computo cliente recurrente
    # # Given el usuario ingresa al app y hago onbording con el usuario "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hace click en la opcion credito del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Credito individual del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And selecciono autorizacion de tratamiento de datos
    And selecciono o no autorizacion de envio de publicidad
    And hago click en consultar cliente
    And consulto posición consolidada
    And consulto tabla posicion consolidada
    And hago click en Mantenimiento cliente
    And hago click menu Datos de solicitud
    And verifica asesor datos de computo

    Examples:
      | usuario               | password     | Documento |
      | ejaen@craclasadev.com | Testing.1234 | 42325973  |
