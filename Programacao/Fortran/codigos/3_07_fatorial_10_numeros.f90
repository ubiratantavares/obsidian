!
! C�lculo do fatorial de 10 n�meros inteiros n�o negativos
!
PROGRAM multiplica_n_primeiros
    IMPLICIT NONE
    INTEGER :: vezes, numero, fatorial, fator

    ! Apresenta��o da finalidade do programa
    WRITE (*, *) "C�lculo do fatorial de 10 n�meros:"
    WRITE (*, *)
    DO vezes = 1, 10, 1  ! Repete o c�lculo do fatorial 10 vezes
        ! Leitura do valor do n�mero para c�lculo do fatorial
        WRITE (*, *) "Informe o valor do n�mero para c�lculo do fatorial: "
        READ (*, *) numero
        ! Tem que ter um valor inicial para multiplicar na primeira vez -
        ! tamb�m � o fatorial de 0 (zero)
        fatorial = 1
        DO fator = 1, numero, 1
            fatorial = fatorial * fator  ! Forma�ao do fatorial
        END DO
        ! Apresenta��o do fatorial calculado
        WRITE (*, *) "O fatorial de ", numero, " = ", fatorial
    END DO
    STOP
END PROGRAM multiplica_n_primeiros

