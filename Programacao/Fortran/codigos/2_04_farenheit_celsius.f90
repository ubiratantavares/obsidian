!
! Programa para conversao de uma temperatura em Farenheit para Celsius
!
PROGRAM farenheit_celsius
    IMPLICIT NONE
    REAL :: farenheit, celsius
    
    ! Apresentação da finalidade do programa
    WRITE (*, *) "Programa para conversao de uma temperatura em Farenheit para Celsius:"
    WRITE (*, *)
    ! Entrada da temperatura em Farenheit
    WRITE (*, *) "Informe a temperatura em Farenheit para ser convertida: "
    READ (*, *) farenheit
    ! Conversão para Celsius
    celsius = 5 *(farenheit - 32) / 9
    ! Apresenção dos resultados
    WRITE (*, *) "Temperatura original = ", farenheit, "graus Farenheit"
    WRITE (*, *)
    WRITE (*, *) "Temperatura convertida = ", celsius, "graus Celsius"
    STOP
END PROGRAM farenheit_celsius
