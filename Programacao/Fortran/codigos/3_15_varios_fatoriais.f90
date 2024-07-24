!
! Programa para calcular o fatorial de ários numeros inteiros até que seja
! lido um valor negativo)
!
PROGRAM fatorial_varios
    IMPLICIT NONE
    INTEGER :: numero, fatorial, fator

    WRITE(*, *) "Calculo do fatorial de um numero:"
    WRITE(*, *)
    WRITE(*, *) "Informe um numero para calculo do fatorial: "
    READ (*, *) numero
    DO WHILE (numero >= 0)
        fatorial = 1
        DO fator = 1, numero, 1
            fatorial = fatorial * fator
        END DO
        WRITE(*, *) "O fatorial de ", numero, " = ", fatorial
        WRITE(*, *)
        WRITE(*, *) "Informe um numero para calculo do fatorial: "
        READ (*, *) numero
    END DO
    STOP
END PROGRAM fatorial_varios
