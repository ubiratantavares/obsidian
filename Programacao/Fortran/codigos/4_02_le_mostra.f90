!
! Programa que lê e imprime palavras até que seja encontrada
! a palavra PARE
!
PROGRAM le_mostra
    IMPLICIT NONE
    CHARACTER (LEN = 10) :: palavra
    INTEGER :: contador

	! Apresentação da finalidade do programa
    WRITE (*, *) "Programa que lê e imprime palavras até que seja&
                 & encontrada a palavra PARE, mostrando no final a&
                 & quantidade de palavras lidas:"
    WRITE (*, *)
    ! Inicialização do contador
    contador = 0
    ! Solicita a digitação da primeira palavra
    WRITE (*, *) "Informe uma palavra:"
    READ (*, *) palavra
    DO WHILE (palavra /= "PARE" .AND. palavra /= "Pare" .AND.&
              palavra /= "pare")
        ! Mostra a palavra lida
        WRITE (*, *) palavra
        !contagem da palavra lida
        contador = contador + 1
        ! Solicita a digitação da próxima palavra
        WRITE (*, *) "Informe uma palavra:"
        READ (*, *) palavra
    END DO
    ! Apresentação do total de palavras mostradas
    WRITE (*, *)
    WRITE (*, *) "Quantidade de palavras impressas: ", contador
    STOP
END PROGRAM le_mostra