!
! Verifica se um número inteiro é par ou ímpar
!
PROGRAM par_impar
    IMPLICIT NONE
    INTEGER :: numero
    
    WRITE (*, *) "Informe o numero a analizar!"
    READ (*, *) numero
    IF (MOD(numero, 2) == 0) THEN
        WRITE (*, *) "O numero lido é par!"
    ELSE
        WRITE (*, *) "O numero lido é impar!"
    END IF
    STOP
END PROGRAM par_impar
