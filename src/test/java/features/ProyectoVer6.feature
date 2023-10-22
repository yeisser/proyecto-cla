#mvn test -Dcucumber.options="src/test/java/features/ModuleRecoveries.feature:6"

Feature: Escenarios Modulo de recuperaciones

  @web
    #Este feature se va a engine web tomar de ejemplo
  Scenario Outline: CP001 - Kata Mobile - Monto y número de cuotas - El Monto y número de Cuotas deben mostrarse autocompletados y ser editable
    Given se visualiza la bienvenida al app y el usuario hace click en iniciar con la organización "<organizacion>"
    When el usuario ingresa al app y hago onbording con "<usuario>" y "<password>"
    And el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso

    Examples:
      | organizacion | usuario                  | password     |
      | andesqa      | amachaca@craclasadev.com | Testing.1234 |
      | andesqa      | ncordova@craclasadev.com | Andes$2023   |

  @mobile
  Scenario Outline: CP0001 - Kata Mobile - Monto y número de cuotas - El Monto y número de Cuotas deben mostrarse autocompletados y ser editable
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


