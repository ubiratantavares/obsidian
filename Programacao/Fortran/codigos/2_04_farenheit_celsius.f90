!
! Programa para conversao de uma temperatura em Farenheit para Celsius
!
PROGRAM farenheit_celsius
    IMPLICIT NONE
    REAL :: farenheit, celsius
    
    ! Apresenta��o da finalidade do programa
    WRITE (*, *) "Programa para conversao de uma temperatura em Farenheit para Celsius:"
    WRITE (*, *)
    ! Entrada da temperatura em Farenheit
    WRITE (*, *) "Informe a temperatura em Farenheit para ser convertida: "
    READ (*, *) farenheit
    ! Convers�o para Celsius
    celsius = 5 *(farenheit - 32) / 9
    ! Apresen��o dos resultados
    WRITE (*, *) "Temperatura original = ", farenheit, "graus Farenheit"
    WRITE (*, *)
    WRITE (*, *) "Temperatura convertida = ", celsius, "graus Celsius"
    STOP
END PROGRAM farenheit_celsius
