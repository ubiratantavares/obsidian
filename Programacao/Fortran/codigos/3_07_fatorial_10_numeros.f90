!
! Cálculo do fatorial de 10 números inteiros não negativos
!
PROGRAM multiplica_n_primeiros
    IMPLICIT NONE
    INTEGER :: vezes, numero, fatorial, fator

    ! Apresentação da finalidade do programa
    WRITE (*, *) "Cálculo do fatorial de 10 números:"
    WRITE (*, *)
    DO vezes = 1, 10, 1  ! Repete o cálculo do fatorial 10 vezes
        ! Leitura do valor do número para cálculo do fatorial
        WRITE (*, *) "Informe o valor do número para cálculo do fatorial: "
        READ (*, *) numero
        ! Tem que ter um valor inicial para multiplicar na primeira vez -
        ! também é o fatorial de 0 (zero)
        fatorial = 1
        DO fator = 1, numero, 1
            fatorial = fatorial * fator  ! Formaçao do fatorial
        END DO
        ! Apresentação do fatorial calculado
        WRITE (*, *) "O fatorial de ", numero, " = ", fatorial
    END DO
    STOP
END PROGRAM multiplica_n_primeiros

