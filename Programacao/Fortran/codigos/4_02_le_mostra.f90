!
! Programa que l� e imprime palavras at� que seja encontrada
! a palavra PARE
!
PROGRAM le_mostra
    IMPLICIT NONE
    CHARACTER (LEN = 10) :: palavra
    INTEGER :: contador

	! Apresenta��o da finalidade do programa
    WRITE (*, *) "Programa que l� e imprime palavras at� que seja&
                 & encontrada a palavra PARE, mostrando no final a&
                 & quantidade de palavras lidas:"
    WRITE (*, *)
    ! Inicializa��o do contador
    contador = 0
    ! Solicita a digita��o da primeira palavra
    WRITE (*, *) "Informe uma palavra:"
    READ (*, *) palavra
    DO WHILE (palavra /= "PARE" .AND. palavra /= "Pare" .AND.&
              palavra /= "pare")
        ! Mostra a palavra lida
        WRITE (*, *) palavra
        !contagem da palavra lida
        contador = contador + 1
        ! Solicita a digita��o da pr�xima palavra
        WRITE (*, *) "Informe uma palavra:"
        READ (*, *) palavra
    END DO
    ! Apresenta��o do total de palavras mostradas
    WRITE (*, *)
    WRITE (*, *) "Quantidade de palavras impressas: ", contador
    STOP
END PROGRAM le_mostra