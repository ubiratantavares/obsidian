!
! Programa para converter 10 graus Farenheit para graus Celsius:
!
PROGRAM converte

    ! Apresenta�ao da finalidade do programa
    WRITE (*, *) "Convers�o de 10 graus Farenheit para graus Celsius:"
    WRITE (*, *)
    ! Apresenta�ao do dado de origem
    WRITE (*, *) "Graus Farenheit = ", 10
    ! Apresenta��o do dado convertido
    WRITE (*, *) "Graus Celsius = ", 5.0 / 9.0 * (10 - 32)
    STOP
END PROGRAM converte
