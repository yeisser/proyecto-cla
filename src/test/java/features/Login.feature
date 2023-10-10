Feature: Escenarios validación de login


  @mobile
  Scenario Outline: Validar se pueda realizar login y cerrar session
    Given carga la aplicacion Formiik New
    When el ingresa "<usuario>" y "<password>"
    And el presiona enter en Sign in
    Then validar realice login exitosamente
    And titulo home es Órdenes
    And el cierra la session del App

    Examples:
      | usuario                                  | password  |
      | usuario30@cajalosandesqa.onmicrosoft.com | Calidad30 |

  @mobile
  Scenario: Validar mensaje cuando no ingresa usuario
    Given carga la aplicacion Formiik New
    When el presiona enter en Sign in
    Then el mensaje cuando no se ingresa usuario sera To sign in, start by entering a user ID.


  @mobile
  Scenario Outline: Validar mensaje cuando no ingresa password
    Given carga la aplicacion Formiik New
    When el ingresa "<usuario>" y "<password>"
    And el presiona enter en Sign in
    Then el mensaje cuando no se ingresa password sera Please enter your password.

    Examples:
      | usuario                                  | password |
      | usuario30@cajalosandesqa.onmicrosoft.com |          |


  @mobile1
  Scenario Outline: Validar mensaje cuando usuario o password son incorrectos
    Given carga la aplicacion Formiik New
    When el ingresa "<usuario>" y "<password>"
    And el presiona enter en Sign in
    Then el mensaje cuando usuario o password son incorrectos sera We don't recognize this user ID or password

    Examples:
      | usuario | password |
      | carlos  | 123      |
