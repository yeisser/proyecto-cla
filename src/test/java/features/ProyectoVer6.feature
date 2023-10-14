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
  Scenario Outline: CP01 - Kata Mobile - Monto y número de cuotas - El Monto y número de Cuotas deben mostrarse autocompletados y ser editable
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
  Scenario Outline: CP0216 - Condiciones para los días de atraso: Promedio 8 días, máximo hasta 10 días, última cuota hasta 5 días. Realizar otorgamiento de crédito Pyme con 9 días de atraso.  Para tipo de regla Excepcionable.
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
  Scenario Outline: CP0197 - Crédito Estacional: Solo aplica el destino capital de trabajo. Probar realizar solicitud de crédito estacional Pyme con destino capital de trabajo. Para tipo de regla No Excepcionable.
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
  Scenario Outline: CP0200 - Crédito Estacional: Solo aplica el destino capital de trabajo. Probar realizar solicitud de crédito estacional Pyme con destino capital de trabajo. Para tipo de regla No Excepcionable.
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
