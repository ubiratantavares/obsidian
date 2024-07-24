!
! Programa para apresentar a Tabela ASCII
!
PROGRAM tabela_ascii
	IMPLICIT NONE
    CHARACTER (LEN = 1) :: qq
    INTEGER :: decimal

	! Apresentação da finalidade do programa
    WRITE (*, *) "Apresenta a Tabela ASCII:"
    WRITE (*, *)

    ! O DO gera todos os números decimais da Tabela ASCII
    DO decimal = 0, 255, 1
        ! Apresentação de uma linha da tabela
        WRITE (*, "(a10, i3, 4x, a12, a1)") "Decimal = ", decimal, "Caractere = ", ACHAR(decimal)
        ! Limitador para apresentação de 20 linha por vez e esperar para continuar
        IF (MOD(decimal, 20) == 19) THEN
            WRITE (*, *) "Pressione qualquer tecla seguida de <ENTER> para continuar..."
            READ (*, *) qq
        END IF
    END DO
    STOP
END PROGRAM tabela_ascii
