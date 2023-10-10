#mvn test -Dcucumber.options="src/test/java/features/ModuleRecoveries.feature:6"

Feature: Escenarios Modulo de recuperaciones

  @mobile
  Scenario Outline: CP01000 - Kata Mobile - Monto y número de cuotas - El Monto y número de Cuotas deben mostrarse autocompletados y ser editable.
    Given se visualiza la bienvenida al app y el usuario hace click en iniciar con la organización "<organizacion>"
    When el usuario ingresa al app y hago onbording con "<usuario>" y "<password>"
    And el usuario ingresa al home y hago click en el boton de nueva orden
    And el usuario hago click en la opcion cobranza del menu de Tipo de proceso


    Examples:
      | organizacion | usuario                  | password     |
      | andesqa      | amachaca@craclasadev.com | Testing.1234 |
      | andesqa      | ncordova@craclasadev.com | Andes$2023   |

  @mobile
  Scenario Outline: CP01 - Kata Mobile - Monto y número de cuotas - El Monto y número de Cuotas deben mostrarse autocompletados y ser editable.
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

