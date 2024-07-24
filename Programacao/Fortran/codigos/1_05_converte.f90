!
! Programa para converter 10 graus Farenheit para graus Celsius:
!
PROGRAM converte

    ! Apresentaçao da finalidade do programa
    WRITE (*, *) "Conversão de 10 graus Farenheit para graus Celsius:"
    WRITE (*, *)
    ! Apresentaçao do dado de origem
    WRITE (*, *) "Graus Farenheit = ", 10
    ! Apresentação do dado convertido
    WRITE (*, *) "Graus Celsius = ", 5.0 / 9.0 * (10 - 32)
    STOP
END PROGRAM converte
