#mvn test -Dcucumber.options="src/test/java/features/ModuleRecoveries.feature:6"

Feature: Escenarios Modulo de recuperaciones

  @mobile
  Scenario Outline: CP01 - Kata Mobile - Monto y número de cuotas - El Monto y número de Cuotas deben mostrarse autocompletados y ser editable.
    Given el usuario se conecta a kata engine e ingresa al login
    When el usuario ingresa al engine y hago onbording con "<usuario>" y "<password>"

    Examples:
      | usuario                  | password      |
      | ncordova@craclasadev.com | Andes$2023    |

  @mobile
  Scenario Outline: CP0204 - Kata Mobile - Probar un credito con destino libre disponibilidad Para tipo de regla No Excepcionable.
    Given el usuario se conecta a kata engine e ingresa al login
    When el usuario ingresa al engine y hago onbording con "<usuario>" y "<password>"

    Examples:
      | usuario                  | password      |
      | ncordova@craclasadev.com | Andes$2023    |