!
! Programa que mostra os tamanhos da área de impressão de valores constantes
!
PROGRAM impressao

    ! Apresentação da finalidade do programa
    WRITE (*, *) "Programa que mostra os tamanhos da área de impressão de valores&
                 & constantes:" ! linha de continuaçao
    WRITE (*, *)
    WRITE (*, *) "|", 123, "|", 123.456, "|", "cadeia", "|", 123.45678E-5, "|" 
    WRITE (*, *) "..........................................................|" 
    STOP
END PROGRAM impressao
