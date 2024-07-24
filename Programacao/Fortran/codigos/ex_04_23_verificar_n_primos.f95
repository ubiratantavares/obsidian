!
! Verificar se N números lidos são ou não primos
!
PROGRAM verificar_n_primos
    IMPLICIT NONE
    INTEGER :: n, divisor, vezes, numero, conta_div
    
    WRITE (*, *) "Verifica se N números lidos são ou não primos:"
    WRITE (*, *) "Informe a quantidade de números para verificar se e primo:"
    READ (*, *) n
    DO vezes = 1, n, 1
        WRITE (*, *) "Informe um inteiro para verificar se ele e ou nao primo:"
        READ (*, *) numero
        conta_div = 0
        DO divisor = 1, numero, 1
            IF (mod(numero, divisor) == 0) THEN
                conta_div = conta_div + 1
            END IF
        END DO
        IF (conta_div == 2) THEN
            WRITE (*, *) "O numero", numero, " eh primo!"
        ELSE
            WRITE (*, *) "O numero", numero, " nao eh primo!"
        END IF
    END DO
    STOP
END PROGRAM verificar_n_primos
