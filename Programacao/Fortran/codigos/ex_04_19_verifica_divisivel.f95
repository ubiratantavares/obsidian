!
! Ler dois números e verificar se o primeiro é divisível pelo segundo
!
PROGRAM verifica_divisivel
    IMPLICIT NONE
    INTEGER :: dividendo, divisor
    
    WRITE (*, *) "Le dois números e verifica se o primeiro é divisível pelo segundo:"
    WRITE (*, *) "Informe dois inteiros positivos:"
    READ (*, *) dividendo, divisor
    WRITE(*, *)

    IF (mod(dividendo, divisor) == 0) THEN
        WRITE (*, *) "O numero", dividendo, " eh divisivel por", divisor
    ELSE
        WRITE (*, *) "O numero", dividendo, " nao eh divisivel por", divisor
    END IF
    STOP
END PROGRAM verifica_divisivel
