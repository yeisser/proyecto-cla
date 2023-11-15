#mvn test -Dcucumber.options="src/test/java/features/ModuleRecoveries.feature:6"

Feature: Escenarios Modulo de recuperaciones

  @mobile
  Scenario Outline: CP01 - Gestion de Mora - Visualizar dentro del desplegable "Tipo de Documento", los elementos DNI, Carnet de Extranjeria y RUC.
    #Given se visualiza la bienvenida al app y el usuario hace click en iniciar con la organización "<organizacion>"
    When el usuario ingresa al app y hago onbording con "<usuario>" y "<password>"
    And el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And hago click en Tipo de documento
    And selecciona dentro del menu desplegable el elemento CE
    And hago click en Tipo de documento
    And selecciona dentro del menu desplegable el elemento RUC
    And seleciono navegar hacia arriba
    And titulo home es Órdenes
    # And el cierra la session del App

    Examples:
      | organizacion | usuario                  | password     |
      | andesqa      | amachaca@craclasadev.com | Testing.1234 |

  @mobile
  Scenario Outline: CP02 - Gestion de Mora - Validar el correcto funcionamiento del Boton de servicio "Consultar Creditos" para un cliente en tramo prevención, con Tipo de documento DNI y con 3 dias en el atraso de su Cuota.
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la etiqueta de opciones para un cliente con n dias de atraso
    And seleciono navegar hacia arriba
    And titulo home es Órdenes

    Examples:
      | Documento |
      | 31480323  |

  @mobile
  Scenario Outline: CP03 - Gestion de Mora - Validar el correcto funcionamiento del Boton de servicio "Consultar Creditos" para un cliente en tramo contencion, con Tipo de documento DNI y con 4 dias en el atraso de su Cuota.
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la etiqueta de opciones para un cliente con n dias de atraso

    Examples:
      | Documento |
      | 42450397  |

  @mobile
  Scenario Outline: CP04 - Gestion de Mora - Validar el correcto funcionamiento del Boton de servicio "Consultar Creditos" para un cliente en tramo contencion, con Tipo de documento Carnet de Extranjeria y con 4 dias en el atraso de su Cuota.
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento CE
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la etiqueta de opciones para un cliente con n dias de atraso

    Examples:
     | Documento |
     | 001862773 |

  @mobile
  Scenario Outline: CP05 - Gestion de Mora - Validar el correcto funcionamiento del Boton de servicio "Consultar Creditos" para un cliente en tramo Recupero, con Tipo de documento Ruc y con 4 dias en el atraso de su Cuota.
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento RUC
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la etiqueta de opciones para un cliente con n dias de atraso

    Examples:
      | Documento   |
      | 20601583039 |

  @mobile
  Scenario Outline: CP06 - Gestion de Mora - Validar la funcionalidad correcta dentro del desplegable de creditos dentro de la seccion de Creditos
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And seleciono navegar hacia arriba
    And titulo home es Órdenes
    And el cierra la session del App

    Examples:
      | Documento |
      | 42325973  |

  @mobile
  Scenario Outline: CP07 - Gestion de Mora - Validar la funcionalidad correcta del boton de Servicio "Consulta Cliente" para un cliente con 7 dias de atraso en su cuota
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And seleciono navegar hacia arriba
    And titulo home es Órdenes
    And el cierra la session del App

    Examples:
      | Documento |
      | 42325973  |

  @mobile
  Scenario Outline: CP08 - Gestion de Mora - Gestion de Mora - Validar la funcionalidad correcta del boton de reporte "Posición Consolidada"
    Given el usuario ingresa al app y hago onbording con "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And valido la funcionalidad del boton de reporte posicion consolidada
    And seleciono navegar hacia arriba
    #And titulo home es Órdenes
    #And el cierra la session del App

    Examples:
      | usuario                  | password     | Documento |
      | amachaca@craclasadev.com | Testing.1234 | 42325973  |

  @mobile
  Scenario Outline: CP09 - Gestion de Mora - Validar la funcionalidad correcta del boton de "Llamar" CP36-Reporte de Mora-Usuario no tiene cartera de mora

    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And valido la funcionalidad del boton de reporte posicion consolidada
    And seleciono navegar hacia arriba
    #And titulo home es Órdenes
    #And el cierra la session del App

    Examples:
      | Documento |
      | 42325973  |

  @mobile
  Scenario Outline: CP10 - Gestion de Mora - Validar la funcionalidad saldo deudor
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And valido saldo deudor

    Examples:
      | Documento |
      | 42325973  |

  @mobile
  Scenario Outline: CP11 - Gestion de Mora - Validar las  tres ultimas gestiones
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And valido tres ultimas gestiones haciendo click en ultima gestion realizada

    Examples:
      | Documento |
      | 42325973  |

  @mobile
  Scenario Outline: CP12 - Gestion de Mora - Validar que se muestre un mensaje "credito no cuenta con gestiones realizadas"

    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And valido tres ultimas gestiones haciendo click en ultima gestion realizada
    And valido mensaje El crédito no cuenta con gestiones realizadas

    Examples:
      | Documento |
      | 42325973  |


  @mobile
  Scenario Outline: CP13 - Gestion de Mora - Validar que se muestren las garantias del credito seleccionado
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And valido tres ultimas gestiones haciendo click en ultima gestion realizada
    And valido que se muestren las garantias del credito seleccionado

    Examples:
      | Documento |
      | 42325973  |

  @mobile
  Scenario Outline: CP14 - Gestion de Mora - Validar que se muestre un mensaje "Credito no cuenta con garantias"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And valido tres ultimas gestiones haciendo click en ultima gestion realizada
    And Valido que se muestre un mensaje El crédito no cuenta con gestiones realizadas

    Examples:
      | Documento |
      | 42325973  |

  @mobile
  Scenario Outline: CP15 - Gestion de Mora - Validar al seleccionar llamada se visualiza el campo celular
    Given el usuario ingresa al app y hago onbording con "<usuario>" y "<password>"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And ubico la pestaña gestion
    And hago click en el desplegable Accion y selecciono llamada

    Examples:
      | usuario                  | password     | Documento |
      | amachaca@craclasadev.com | Testing.1234 | 42325973  |

  @mobile
  Scenario Outline: CP16 - Gestion de Mora - Validar que se precarge el numero  celular del cliente
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And ubico la pestaña gestion
    And hago click en el desplegable Accion y selecciono llamada
    And Verifico que el celular sea el <celular_del_cliente>

    Examples:
      | Documento | celular_del_cliente |
      | 42325973  | 965341145           |

  @mobile
  Scenario Outline: CP17 - Gestion de Mora - Validar la funcionalidad correcta del boton de "Llamar"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And ubico la pestaña gestion
    And hago click en el desplegable Accion y selecciono llamada
    And Verifico que el celular sea el <celular_del_cliente>
    And Verifico el boton llamar

    Examples:
      | Documento | celular_del_cliente |
      | 42325973  | 965341145           |

  @mobile
  Scenario Outline: CP17 - Gestion de Mora - Validar la funcionalidad correcta del boton de "Llamar"
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And ubico la pestaña gestion
    And hago click en el desplegable Accion y selecciono llamada
    And Verifico que el celular sea el <celular_del_cliente>
    And Verifico el boton llamar

    Examples:
      | Documento | celular_del_cliente |
      | 42325973  | 965341145           |

  @mobile
  Scenario Outline: CP18-Gestion de Mora - Verificar  el ingreso  del campo telefono debe permitir 9 digitos.
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And ubico la pestaña gestion
    And hago click en el desplegable Accion y selecciono llamada
    And Verifico que el celular sea el <celular_del_cliente>

    Examples:
     | Documento | celular_del_cliente |
     | 42325973  | 9653411452          |

  @mobile
  Scenario Outline: CP19 - Gestion de Mora - Validar  el ingreso  del campo telefono
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And ubico la pestaña gestion
    And hago click en el desplegable Accion y selecciono llamada
    And ingresa el nro del celular "<Celular>"
    And verifico que no se pueda escribir el numero de celular

    Examples:
      | Documento | Celular   |
      | 42325973  | 874456123 |

  @mobile
  Scenario Outline: CP20 - Gestion de Mora - Validar al seleccionar visita a titular o visita fiador  se visualiza el campo geoposición gestión
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And ubico la pestaña gestion
    And hago click en el deplegable Accion y seleccion "<Accion>"
    And cuando selecciono Visita a Titular se visualiza el campo Geoposición gestión


    Examples:
      | Documento | Accion           |
      | 42325973  | Visita a Titular |

  @mobile
  Scenario Outline: CP21 - Gestion de Mora - Validar  el ingreso  de la   geolocalizacion sean tomados correctamente
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And ubico la pestaña gestion
    And hago click en el deplegable Accion y seleccion "<Accion>"
    And cuando selecciono Visita a Titular se visualiza geoposición gestión

    Examples:
      | Documento | Accion           |
      | 42325973  | Visita a Titular |

  @mobile
  Scenario Outline: CP22 - Gestion de Mora - Validar que se visualize alfabeticamente y muestra la opcion otros
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And ubico la pestaña gestion
    And hago click en el deplegable Accion y seleccion "<Accion>"
    And cuando selecciono Visita a Titular se visualiza geoposición gestión
    And seleciono tipo de contacto la opcion otros ordenado alfabeticamente de la lista "<Tipo_Contacto>"

    Examples:
      | Documento | Accion           | Tipo_Contacto                                                               |
      | 42325973  | Visita a Titular | Cónyuge,Familiar,Fiador Solidario,Sin Contacto / Inubicable, Titular, Otros |


  @mobile
  Scenario Outline: CP23 - Gestion de Mora - Validar que se muestre los campos nombre del contacto y el desplegable al seleccionar la opcion otros
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And ubico la pestaña gestion
    And hago click en el deplegable Accion y seleccion "<Accion>"
    And cuando selecciono Visita a Titular se visualiza geoposición gestión
    And selecciono tipo de contacto y elijo otros
    And verifico el campo Nombre del contacto
    And verifico el nombre el desplegable Relación con titular
    And seleciono tipo de contacto la opcion otros ordenado alfabeticamente de la lista "<Tipo_Contacto>"

    Examples:
      | Documento | Accion           | Tipo_Contacto                                                               |
      | 42325973  | Visita a Titular | Cónyuge,Familiar,Fiador Solidario,Sin Contacto / Inubicable, Titular, Otros |

  @mobile
  Scenario Outline: CP24 - Gestion de Mora - Validar que se muestre alfabeticamente las opciones del desplegable
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And ubico la pestaña gestion
    And hago click en el deplegable Accion y seleccion "<Accion>"
    And cuando selecciono Visita a Titular se visualiza geoposición gestión
    And selecciono tipo de contacto y elijo otros
    And verifico el campo Nombre del contacto
    And verifico el nombre el desplegable Relación con titular
    And seleciono tipo de contacto la opcion otros ordenado alfabeticamente de la lista "<Tipo_Contacto>"

    Examples:
     | Documento | Accion           | Tipo_Contacto                                                               |
     | 42325973  | Visita a Titular | Cónyuge,Familiar,Fiador Solidario,Sin Contacto / Inubicable, Titular, Otros |

  @mobile
  Scenario Outline: CP25 - Gestion de Mora - Validar que se muestre promesa de pago al seleccionar compromiso de pago
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And ubico la pestaña gestion
    And hago click en el deplegable Accion y seleccion "<Accion>"
    And cuando selecciono Visita a Titular se visualiza geoposición gestión
    And selecciono tipo de contacto y elijo otros
    And verifico el campo Nombre del contacto
    And verifico el nombre el desplegable Relación con titular
    And hago click en desplegable Resultado de gestión
    And ingresa el compromiso de pago version 2 "<valor>"
    And hago click en compromiso de pago

    Examples:
      | Documento | Accion           | valor              |
      | 42325973  | Visita a Titular | Compromiso de pago |

  @mobile
  Scenario Outline: CP26 - Gestion de Mora - Validar la fecha de la promesa de pago
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And ubico la pestaña gestion
    And hago click en el deplegable Accion y seleccion "<Accion>"
    And cuando selecciono Visita a Titular se visualiza geoposición gestión
    And selecciono tipo de contacto y elijo otros
    And verifico el campo Nombre del contacto
    And verifico el nombre el desplegable Relación con titular
    And hago click en desplegable Resultado de gestión
    And ingresa el compromiso de pago version 2 "<valor>"
    And hago click en compromiso de pago

    Examples:
     | Documento | Accion           | valor              |
     | 42325973  | Visita a Titular | Compromiso de pago |

  @mobile
  Scenario Outline: CP27 - Gestion de Mora - Validar la fecha de la promesa de pago
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And ubico la pestaña gestion
    And hago click en el deplegable Accion y seleccion "<Accion>"
    And cuando selecciono Visita a Titular se visualiza geoposición gestión
    And selecciono tipo de contacto y elijo otros
    And verifico el campo Nombre del contacto
    And verifico el nombre el desplegable Relación con titular
    And hago click en desplegable Resultado de gestión
    And ingresa el compromiso de pago version 2 "<valor>"
    And hago click en compromiso de pago
    And selecciono crear recordatorio
    And hago click en crear recordatorio
    And Agrego un titulo al evento
    And espero un min antes de volver a ingresar la hora fin
    And click en hora fin
    And guardo evento
    And termino evento

    Examples:
      | Documento | Accion           | valor              |
      | 42325973  | Visita a Titular | Compromiso de pago |

  @mobile
  Scenario Outline: CP28 - Gestion de Mora - Validar el valor de la promesa de pago debe ser mayor a 0
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And ubico la pestaña gestion
    And hago click en el deplegable Accion y seleccion "<Accion>"
    And cuando selecciono Visita a Titular se visualiza geoposición gestión
    And selecciono tipo de contacto y elijo otros
    And verifico el campo Nombre del contacto
    And verifico el nombre el desplegable Relación con titular
    And hago click en desplegable Resultado de gestión
    And ingresa el compromiso de pago version 2 "<valor>"
    And hago click en compromiso de pago
    And selecciono crear recordatorio
    And hago click en crear recordatorio
    And Agrego un titulo al evento
    And espero un min antes de volver a ingresar la hora fin
    And click en hora fin
    And guardo evento
    And termino evento
    And se registra el monto cero
    And valida mensaje de advertencia El monto de la promesa de pago debe ser mayor a 0.

    Examples:
      | Documento | Accion           | valor              |
      | 42325973  | Visita a Titular | Compromiso de pago |

  @mobile
  Scenario Outline: CP29 - Gestion de Mora - Validar que al seleccionar accion "Visita a titular" o "Visita a fiador" se visualize el campo digitalizacion
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And ubico la pestaña gestion
    And hago click en el deplegable Accion y seleccion "<Accion>"
    And cuando selecciono Visita a Titular se visualiza geoposición gestión
    And selecciono tipo de contacto y elijo otros
    And verifico el campo Nombre del contacto
    And verifico el nombre el desplegable Relación con titular
    And hago click en desplegable Resultado de gestión
    And ingresa el compromiso de pago version 2 "<valor>"
    And hago click en compromiso de pago
    And selecciono crear recordatorio
    And hago click en crear recordatorio
    And Agrego un titulo al evento
    And espero un min antes de volver a ingresar la hora fin
    And click en hora fin
    And guardo evento
    And termino evento
    And se registra el monto cero
    And valida mensaje de advertencia El monto de la promesa de pago debe ser mayor a 0.
    And valida que al seleccionar acción visita a titular se muestre etiqueta DIGITALIZACIÓN

    Examples:
      | Documento | Accion           | valor              |
      | 42325973  | Visita a Titular | Compromiso de pago |

  @mobile
  Scenario Outline: CP30 - Cobranza / Carga de fotos-Validar el campo cantidad de foto de la visita.
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And ubico la pestaña gestion
    And hago click en el deplegable Accion y seleccion "<Accion>"
    And cuando selecciono Visita a Titular se visualiza geoposición gestión
    And selecciono tipo de contacto y elijo otros
    And verifico el campo Nombre del contacto
    And verifico el nombre el desplegable Relación con titular
    And hago click en desplegable Resultado de gestión
    And ingresa el compromiso de pago version 2 "<valor>"
    And hago click en compromiso de pago

    And selecciono crear recordatorio
    And hago click en crear recordatorio
    And Agrego un titulo al evento
    And espero un min antes de volver a ingresar la hora fin
    And click en hora fin
    And guardo evento
    And termino evento
    And se registra el monto cero
    And valida mensaje de advertencia El monto de la promesa de pago debe ser mayor a 0.
    And valida que al seleccionar acción visita a titular se muestre etiqueta DIGITALIZACIÓN
    And valida que haga click en cantidad de fotos de visita
    Examples:
     | Documento | Accion           | valor              |
     | 42325973  | Visita a Titular | Compromiso de pago |

  @mobile
  Scenario Outline: CP31 - Cobranza / nuevos datos de contacto-Verificar  el ingreso  del campo telefono debe permitir 9 digitos.
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And ubico la pestaña gestion
    And selecciono la pestaña nuevos datos de contacto
    And selecciono tipo de telefono celular
    And ingresa el telefono celular
    And Verifico que el celular sea de 9 digitos <celular_del_cliente>

    Examples:
      | Documento | celular_del_cliente |
      | 42325973  | 9653411452          |

  @mobile
  Scenario Outline: CP32 - Cobranza / nuevos datos de contacto Validar  el ingreso  del campo telefono
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And ubico la pestaña gestion
    And selecciono la pestaña nuevos datos de contacto
    And selecciono tipo de telefono celular
    And ingresa el telefono celular
    And Verifico que el celular sea de 9 digitos <celular_del_cliente_mas_nueve_digitos>
    And Ingreso numero de celular contacto "<celular>"

    Examples:
      | Documento | celular_del_cliente_mas_nueve_digitos | celular   |
      | 42325973  | 9653411452                            | 956007685 |

  @mobile
  Scenario Outline: CP33 - Cobranza / nuevos datos de contacto Validar  el ingreso  de la geolocalizacion sean tomados correctamente
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Gestion de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And visualiza dentro de la sección DATOS DEL TITULAR el titulo Tipo de documento
    And selecciona dentro del menu desplegable el elemento DNI
    And ingresa el nro del Documento "<Documento>"
    And hago click consultar creditos y hago click en ok
    And valido la funcionalidad dentro del desplegable de creditos de la seccion de creditos
    And valido la funcionalidad del boton consultar cliente para 7 dias de atraso
    And ubico la pestaña gestion
    And selecciono la pestaña nuevos datos de contacto
    And selecciono tipo de telefono celular
    And ingresa el telefono celular
    And Verifico que el celular sea de 9 digitos <celular_del_cliente_mas_nueve_digitos>
    And Ingreso numero de celular contacto "<celular>"
    And selecciono ubicacion del mapa
    And guardo ubicacion
    Examples:
      | Documento | celular_del_cliente_mas_nueve_digitos | celular   |
      | 42325973  | 9653411452                            | 956007685 |

  @mobile
  Scenario: CP34 - Reporte de Mora-Verificar los campos número de cuenta , documentos, cliente, telefono saldo capital, atraso.
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Reporte de mora del menu Tipo de formulario
    And hago click en el boton CREAR del menu Confirmacion
    And hago click en consultar cartera
    And hago click en tabla clientes en mora


  @mobile
  Scenario: CP36 - Reporte de Mora-Visualizar la cartera de mora
    When el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso
    And hago click en el boton siguiente
    And hago click en la opcion Reporte de mora del menu Tipo de formulario
    And hago click en el boton siguiente
    And hago click en el boton CREAR del menu Confirmacion
    And hago click en consultar cartera
    And hago click en tabla clientes en mora
