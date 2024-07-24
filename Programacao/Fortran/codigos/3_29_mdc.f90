!
! Programa para calcular o MDC de dois inteiros positivos
!
PROGRAM mdc
    IMPLICIT NONE
    INTEGER :: dividendo, divisor, resto
 
    WRITE(*, *) "Informe os numeros para calculo do MDC: "
    READ(*, *) dividendo, divisor
    resto = MOD(dividendo, divisor)
    DO WHILE (resto /= 0)
        dividendo = divisor
        divisor = resto
        resto = MOD(dividendo, divisor)
    END DO
    WRITE (*, *) "MDC = ", divisor
    STOP
END PROGRAM mdc
