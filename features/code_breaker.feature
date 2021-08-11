Feature: Encontrar un numero

    Encontrar un numero random

    Scenario: Pantalla bienvenida
    When inicio la aplicación
    Then muestra titulo "Bienvenido a Codebreaker"
    And muestra boton "Iniciar juego"

#    Scenario: Inicio el juego
#    Given inicio la aplicación
#    Then muestra cuadro de entrada de datos "user_guess"
#    And muestra boton de guess "guess"

    Scenario: Arriesgo un número y es correcto
    Given inicio la aplicación con numero secreto 4
    When arriesga 4
    Then muestra mensaje '["4", "¡Número correcto!"]'

    Scenario: Arriesgo un número y es incorrecto
    Given inicio la aplicación con numero secreto 3
    When arriesga 3
    Then muestra mensaje '["3", ":("]'