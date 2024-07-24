!
! Converte 10 temperaturas em graus Farenheit para graus Celsius
!
PROGRAM converte_10_temperaturas
    IMPLICIT NONE
    INTEGER :: contador
    REAL :: farenheit, celsius
 
    ! Apresentação da finalidade do programa
    WRITE (*, *) "Converte 10 temperaturas em graus Farenheit para graus Celsius:"
    WRITE (*, *)
    DO contador = 1, 10, 1  ! repete a conversão 10 vezes
        ! Leitura de uma temperatura em graus Farenheit
        WRITE(*, *) "Informe uma temperatura em Farenheit: "
        READ(*, *) farenheit
        ! Converte a temperatura lida para Celsius
        celsius = 5.0 / 9 *(farenheit - 32)
        ! Mostra a temperatura convertida em Celsius
        WRITE(*, *) "A temperatura convertida em Celsius é ", celsius
    END DO
    STOP
END PROGRAM converte_10_temperaturas
