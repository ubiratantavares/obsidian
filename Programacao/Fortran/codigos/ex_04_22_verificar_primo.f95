!
! Verificar se um n�mero lido � primo ou n�o;
!
PROGRAM verificar_primo
    IMPLICIT NONE
    INTEGER :: divisor, numero, conta_div
    
    WRITE (*, *) "Verifica se um n�mero lido e primo ou n�o:"
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
    STOP
END PROGRAM verificar_primo
