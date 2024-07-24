!
! Programa para apresentar a Tabela ASCII
!
PROGRAM tabela_ascii
	IMPLICIT NONE
    CHARACTER (LEN = 1) :: qq
    INTEGER :: decimal

	! Apresenta��o da finalidade do programa
    WRITE (*, *) "Apresenta a Tabela ASCII:"
    WRITE (*, *)

    ! O DO gera todos os n�meros decimais da Tabela ASCII
    DO decimal = 0, 255, 1
        ! Apresenta��o de uma linha da tabela
        WRITE (*, "(a10, i3, 4x, a12, a1)") "Decimal = ", decimal, "Caractere = ", ACHAR(decimal)
        ! Limitador para apresenta��o de 20 linha por vez e esperar para continuar
        IF (MOD(decimal, 20) == 19) THEN
            WRITE (*, *) "Pressione qualquer tecla seguida de <ENTER> para continuar..."
            READ (*, *) qq
        END IF
    END DO
    STOP
END PROGRAM tabela_ascii
