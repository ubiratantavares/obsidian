!
! Programa que mostra os tamanhos da �rea de impress�o de valores constantes
!
PROGRAM impressao

    ! Apresenta��o da finalidade do programa
    WRITE (*, *) "Programa que mostra os tamanhos da �rea de impress�o de valores&
                 & constantes:" ! linha de continua�ao
    WRITE (*, *)
    WRITE (*, *) "|", 123, "|", 123.456, "|", "cadeia", "|", 123.45678E-5, "|" 
    WRITE (*, *) "..........................................................|" 
    STOP
END PROGRAM impressao
